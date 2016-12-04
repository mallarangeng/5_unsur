<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$conten = new conten();
$p  = $conten->bacaPe($id);
#cegah akses tanpa melalui login
$user = new User();
$id_kelompok = $_SESSION['id_kelompok'];
if (!$user->get_sesi())
{
header("location:index.html");
}
#close akses tanpa login
?>

<body>
 <table id="example" class="table table-striped table-bordered">
    <thead>
      <tr>
        <th>Judul</th>
        <th>Kategori</th>
        <th>Label</th>
        <th>Tanggal</th>
        <th>Publish</th>
        <th>Aksi</th>
      </tr>
    </thead>
    <tbody>
    <?php
      $arrayconten=$conten->tampilKall();
      if (count($arrayconten)) {
      foreach($arrayconten as $d) {
    ?>

      <tr>
       
        <td><a href="?r=conten&pg=read&id=<?php echo $d['id']; ?>"><?php echo $d['judul']; ?></a><br></td>
        <td><?php echo $d['kategori']; ?></td>
        <td><?php echo $d['label']; ?></td>
        <td><?php echo  DateToIndo ($d['tgl']); ?></td>
        <td><?php echo $d['publish']; ?></td>
        <td><a href="?r=conten&pg=conten_change&id=<?php echo $d['id']; ?>"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></td>
      </tr>
<?php
}
}
?>
    </tbody>
  </table>
 <a class="btn btn-info btn-xs" href="?r=conten&pg=conten_form" role="button">Tambah Data</a><br>
 </div>