<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$laporan = new laporan();

#cegah akses tanpa melalui login
$user = new User();
$id_kelompok = $_SESSION['id_kelompok'];
if (!$user->get_sesi())
{
header("location:index.html");
}
#close akses tanpa login
?>

 <form role="form" action="" method="post" class="form-horizontal col-md-6">
    <div class="form-group">
    <label>Judul</label>
    <input name="id" type="hidden" value="" class="form-control" required>
    <input name="judul" type="text" value="" class="form-control" required>
  </div>
  <div class="form-group">
    <label>Conten</label>
    <textarea class="form-control" rows="3" name="solusi" placeholder="" required></textarea>
    <input name="date" type="hidden" value="<?php echo date('Y-m-d'); ?>" class="form-control" required>
  </div>
    <div class="form-group">
    <label>Publish ?</label>
    <select required class="form-control" name="publish">
    <option value="Y">Y</option>
    <option value="N">N</option>
  </select>
  </div>
  <div class="form-group">
    <label>Tanggal Publish :</label>
    <?php echo DateToIndo(date('Y-m-d')); ?>
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
