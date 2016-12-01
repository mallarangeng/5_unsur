<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$laporan = new laporan();
$datal  = $laporan->bacaLap($id_lap);
if ($_SESSION['id_kelompok']!=$datal['id_kelompok']) {
    die ("<font color='#FF0000'>Akses User Tidak Sah</font>");
 } else {
    echo ('<font color="#66CC00">Data Valid</font>');
  }

  #cegah akses tanpa melalui login
$user = new User();
$id_kelompok = $_SESSION['id_kelompok'];
if (!$user->get_sesi())
{
header("location:index.html");
}
#close akses tanpa login
?>
 <form role="form" action="" method="post" class="form-horizontal col-md-4">
    <div class="form-group">
    <label>Tanggal dan periode Musyawarah</label>
    <input name="id_lap" type="hidden" value="<?php echo $datal['id_lap']; ?>" class="form-control" required>
    <input name="id_kelompok" type="hidden" value="<?php echo $datal['id_kelompok']; ?>" class="form-control" required>
    <input name="tanggal" type="text" value="<?php echo $datal['tanggal']; ?>" id="datepicker" class="form-control" required>
  </div>

    <input name="ket" type="hidden" value="<?php echo $datal['ket']; ?>" class="form-control" required>
    <input name="date_on" type="hidden" value="<?php echo $datal['date_on']; ?>" class="form-control" required>
    <input name="stat" type="hidden" class="form-control" value="<?php echo $datal['stat']; ?>" required>
 
  <div class="form-group">
    <label>Nama Pengurus yang hadir</label>
    <input name="nama" type="text" class="form-control" value="<?php echo $datal['nama']; ?>" placeholder="Nama Pengurus yang hadir">
  </div>
   <div class="form-group">
    <label>Dihadiri Pengurus PPG ?</label>
    <select required class="form-control" name="turba">
      <option value="<?php echo $datal['turba']; ?>"><?php echo $datal['turba']; ?></option>
    <option value="Ya">Ya</option>
    <option value="Tidak">Tidak</option>
  </select>
  </div>
  <!--
  <div class="form-group">
    <label>Status</label>
    <input name="stat" type="text" class="form-control" value="" required>
  </div>
    -->
  <div class="form-group">
    <input type="submit" name="update" value="Update" class="btn btn-info">
    &nbsp;
     <input type="button" name="batal" value="Batal"  onClick="history.back()" class="btn btn-danger">
  </div>
</form>
<?php
  if($_POST['update']){
  $laporan->updateLap(
  $_POST['id_lap'],  
  $_POST['id_kelompok'],
  $_POST['tanggal'],
  $_POST['ket'],
  $_POST['date_on'],
  $_POST['stat'],
  $_POST['turba'],
  $_POST['nama']);
   echo"<meta http-equiv='refresh' content='0;url=?r=laporan&pg=laporan'>";
  }
?>
