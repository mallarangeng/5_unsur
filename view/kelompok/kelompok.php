<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
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
        
        <th>Nama Desa</th>
        <th>Nama Kelompok</th>
        <th>Id Kelompok</th>
        <th>Parent</th>
        <th>Alamat</th>
        <th>No Hp</th>
        <th>Penjab</th>
        <th>Password</th>
        
        <th>Level</th>
        <th>Aksi</th>
      </tr>
    </thead>
    <tbody>
    <?php
      $arraykelompok=$kelompok->tampilKelompok();
      if (count($arraykelompok)) {
      foreach($arraykelompok as $data) {
    ?>

      <tr>
       <td><?php echo $data['desa']; ?></td>
        <td><?php echo $data['nm_kelompok']; ?></td>
        <td><?php echo $data['id_kelompok']; ?></td>
        <td><?php echo $data['parent']; ?></td>
        <td><?php echo $data['alamat']; ?></td>
        <td><?php echo $data['nohp']; ?></td>
        <td><?php echo $data['penjab']; ?></td>
        <td><?php echo $data['password']; ?></td>
        <td><?php echo $data['level']; ?></td>
       
        <td><a href="?r=kelompok&pg=kelompok_edit&id_kelompok=<?php echo $data['id_kelompok']; ?>&desa=<?php echo $data['desa']; ?>"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></td>
      </tr>
<?php
}
}
?>

    </tbody>
  </table>
 <a class="btn btn-info btn-xs" href="?r=kelompok&pg=kelompok_form" role="button">Tambah Data</a>