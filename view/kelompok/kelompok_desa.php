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
<div class="table-responsive"> 
 <table class="table table-hover">
    <thead>
      <tr>
        <th>No</th>       
        <th>Nama Kelompok</th>
        <th>Alamat</th>
        <th>Penjab</th>
        <th>No Hp</th>
      </tr>
    </thead>
    <tbody>
    <?php
      $arraykelompok=$kelompok->tampilKelompokdesa();
      if (count($arraykelompok)) {
      foreach($arraykelompok as $data) {
    ?>
      <tr>
        <td><?php echo $c=$c+1;?></td>  
        <td><?php echo $data['nm_kelompok']; ?></td>
        <td><?php echo $data['alamat']; ?></td>
        <td><?php echo $data['penjab']; ?></td>
        <td><?php echo $data['nohp']; ?></td>
        </tr>
<?php
}
}
?>
    </tbody>
  </table>
</div>