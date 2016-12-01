<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$conten = new conten();
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
<div class="row">
  <div class="col-md-8">
 <table id="example" class="table table-striped table-bordered">
    <thead>
      <tr>
        <th>Judul</th>
        <th>Tanggal</th>
        <th>Publish</th>
        <th>Aksi</th>
      </tr>
    </thead>
    <tbody>
    <?php
      $arrayconten=$conten->tampilK();
      if (count($arrayconten)) {
      foreach($arrayconten as $d) {
    ?>

      <tr>
       
        <td><a href="?r=conten&pg=read&id=<?php echo $d['id']; ?>"><?php echo $d['judul']; ?></a><br></td>
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
 <div class="col-md-4"> <div class="alert alert-info" role="alert">
      
      <strong>Penggerak Pembina Generus (PPG) Tangbar</strong><br><hr>
          <a href="?r=conten&pg=read&id=1">Peran dan tugas lima (5) Unsur</a><br>
      <a href="?r=conten&pg=read&id=2">Tugas Tugas bidang </a><br>
      <a href="?r=conten&pg=read&id=3">6 Aspek Standar Keberhasilan Generus</a><br>
      <a href="?r=conten&pg=read&id=4">Petunjuk Teknis Pelaksanaan Musyawarah lima (5) Unsur</a><br>
        </div>
</div>
</div>