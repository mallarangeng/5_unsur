<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$laporan = new laporan();
$detail = new detail();
$datal  = $laporan->bacaLap($id_lap);
?>
<form role="form" action="" method="post" class="form-horizontal col-md-4">
<div class="panel panel-info">
    <div class="panel-heading">KIRIM LAPORAN </div>
      <div class="panel-body">
        <p>Kirimkan Hasil musyawarah anda kepada desa dan daerah ? </p>
       <input name="id_lap" type="hidden" value="<?php echo $datal['id_lap']; ?>" class="form-control" required>
    <input name="id_kelompok" type="hidden" value="<?php echo $datal['id_kelompok']; ?>" class="form-control" required>
    <input name="tanggal" type="hidden" value="<?php echo $datal['tanggal']; ?>" id="datepicker" class="form-control" required>
    <input name="ket" type="hidden" value="<?php echo $datal['ket']; ?>" class="form-control" required>
    <input name="date_on" type="hidden" value="<?php echo $datal['date_on']; ?>" class="form-control" required>
    <input name="stat" type="hidden" class="form-control" value="1" required>


        <input type="button" name="batal" value="Batal"  onClick="history.back()" class="btn btn-danger">
        <input type="submit" name="update" value="Kirim Laporan" class="btn btn-info">
</div>
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
  $_POST['stat']);
   echo"<meta http-equiv='refresh' content='0;url=?r=laporan&pg=laporan'>";
  }
?>