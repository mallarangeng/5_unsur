<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$laporan = new laporan();

?>

 <form role="form" action="" method="post" class="form-horizontal col-md-4">
    <div class="form-group">
    <label>Tanggal dan periode Musyawarah</label>
    <input name="id_lap" type="hidden" value="<?php echo kdauto("laporan","1"); ?>" class="form-control" required>
    <input name="id_kelompok" type="hidden" value="<?php echo $_SESSION['id_kelompok'];?>" class="form-control" required>
    <input name="tanggal" type="text" id="datepicker" class="form-control" required>
  </div>
  <div class="form-group">
    <label>Keterangan</label>
    <input name="ket" type="text" class="form-control" required>
    <input name="date_on" type="hidden" value="<?php echo date('Y-m-d'); ?>" class="form-control" required>
  </div>
  <div class="form-group">
    <label>Status</label>
    <input name="stat" type="text" class="form-control" required>
  </div>
    
  <div class="form-group">
    <input type="submit" name="simpan" value="Simpan" class="btn btn-info">
    &nbsp;
     <input type="button" name="batal" value="Batal"  onClick="history.back()" class="btn btn-danger">
  </div>
</form>

<?php
  if($_POST['simpan']){
  $laporan->tambahLap(
  $_POST['id_lap'],  
  $_POST['id_kelompok'],
  $_POST['tanggal'],
  $_POST['ket'],
  $_POST['date_on'],
  $_POST['stat']);
   echo"<meta http-equiv='refresh' content='0;url=?r=laporan&pg=laporan'>";
  }
?>
