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

 <form role="form" action="" method="post" class="form-horizontal col-md-4">
    <div class="form-group">
    <label>Tanggal dan periode Musyawarah</label>
    <input name="id_lap" type="hidden" value="<?php echo kdauto("laporan","1"); ?>" class="form-control" required>
    <input name="id_kelompok" type="hidden" value="<?php echo $_SESSION['id_kelompok'];?>" class="form-control" required>
    <div class="input-group">
                                <input name="tanggal" type="text" id="datepicker" value="<?php echo date('Y-m-d'); ?>" class="form-control" required> <span class="input-group-addon"><i id="calIconTourDateDetails" class="glyphicon glyphicon-th"></i></span>

                            </div>

  </div>
 
    <input name="ket" type="hidden" class="form-control" value="Musyawarah 5 Unsur" required>
    <input name="date_on" type="hidden" value="<?php echo date('Y-m-d'); ?>" class="form-control" required>
    <input name="stat" type="hidden" class="form-control" placeholder="Optional..">
  <div class="form-group">
    <label>Nama Pengurus yang hadir</label>
    <input name="nama" type="text" class="form-control" placeholder="Nama Pengurus yang hadir">
  </div>
  <div class="form-group">
    <label>Dihadiri Pengurus PPG ?</label>
    <select class="form-control" name="turba" required>
    <option value="Ya">Ya</option>
    <option value="Tidak">Tidak</option>
  </select>
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
  $_POST['stat'],
  $_POST['turba'],
  $_POST['nama']);
   echo"<meta http-equiv='refresh' content='0;url=?r=laporan&pg=laporan'>";
  }
?>
