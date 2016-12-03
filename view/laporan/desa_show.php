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
<div class="row">
  <div class="col-md-8">
    <table class="table table-hover">
    <thead>
      <tr>
        <th>NO</th>
        <th>DESA</th>
        <th>LIHAT</th>
      </tr>
    </thead>
    <tbody>
    <?php
      $arraykelompok=$kelompok->desaShow();
      if (count($arraykelompok)) {
      foreach($arraykelompok as $data) {
    ?>
      <tr>
        <td><?php echo $c=$c+1;?></td>
        <td><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>&nbsp;<strong><?php echo $data['nm_kelompok']; ?></strong>
            <br><font color="#5bc0de"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;<?php echo $data['penjab']; ?><br><span class="glyphicon glyphicon-phone" aria-hidden="true"></span>&nbsp;<?php echo $data['nohp']; ?></font>
        </td>
        <td><a class="btn btn-info" href="?r=laporan&pg=laporan_daerah&periode=<?php echo $_GET['periode'];?>&desa=<?php echo $data['id_kelompok']; ?>" role="button">LIHAT LAPORAN</a></td>
        </tr>
<?php
}
}
?>

    </tbody>
  </table>

  </div>
  <div class="col-md-4"><div class="alert alert-info" role="alert">
      <strong>DASHBOARD LAPORAN</strong><br>
      Laporan
    </div></div>
</div>


 
 