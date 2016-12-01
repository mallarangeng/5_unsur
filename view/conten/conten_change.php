<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$conten = new conten();
$d  = $conten->bacaK($id);
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
    <input name="judul" type="text" value="<?php echo $d['judul'];?>" class="form-control" required>
    <input name="id" type="hidden" value="<?php echo $d['id'];?>" class="form-control" required>
  </div>
  <div class="form-group">
    <label>Conten</label>
    <textarea class="form-control" rows="10" name="conten"><?php echo $d['conten'];?></textarea>
    <input name="tgl" type="hidden" value="<?php echo $d['tgl'];?>" class="form-control" required>
  </div>
    <div class="form-group">
    <label>Publish ?</label>
    <select required class="form-control" name="publish">
    <option value="<?php echo $d['publish'];?>"><?php echo $d['publish'];?></option>
    <option value="Y">Y</option>
    <option value="N">N</option>
  </select>
  </div>
  <div class="form-group">
    <label>Tanggal Publish :</label>
    <?php echo DateToIndo(date('Y-m-d')); ?>
  </div>
 
  <div class="form-group">
    <input type="submit" name="update" value="Simpan" class="btn btn-info">
    &nbsp;
     <input type="button" name="batal" value="Batal"  onClick="history.back()" class="btn btn-danger">
  </div>
</form>

<?php
  if($_POST['update']){
  $conten->updateK(
  $_POST['id'],
  $_POST['judul'],  
  $_POST['conten'],
  $_POST['tgl'],
  $_POST['publish']);
   echo"<meta http-equiv='refresh' content='0;url=?r=conten&pg=conten'>";
  }
?>
