<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
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

 <form role="form" action="" method="post" class="form-horizontal col-md-6">
    <div class="form-group">
    <label>Judul</label>
    <input name="judul" type="text" value="" class="form-control" required>
  </div>
    <div class="form-group">
    <label>Kategori</label>
    <select  class="form-control" name="kategori" required>
      <option value="Artikel">Artikel</option>
    <option value="Info">Info</option>
    
  </select>
  </div>
  <div class="form-group">
    <label>Conten</label>
    <textarea class="form-control" id="text-ckeditor" rows="10" name="conten"></textarea>
    <script>CKEDITOR.replace('text-ckeditor');</script>
    <input name="tgl" type="hidden" value="<?php echo date('Y-m-d'); ?>" class="form-control" required>
  </div>
    <div class="form-group">
    <label>Publish ?</label>
    <select class="form-control" name="publish" required>
    <option value="Y">Y</option>
    <option value="N">N</option>
  </select>
  </div>
    <div class="form-group">
    <label>Label</label>
    <input name="label" type="text"class="form-control">
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
  $conten->tambahKonten(
  $_POST['id'],
  $_POST['judul'], 
  $_POST['kategori'],  
  $_POST['conten'],
  $_POST['tgl'],
  $_POST['publish'], 
  $_POST['label']);
   echo"<meta http-equiv='refresh' content='0;url=?r=conten&pg=conten'>";
  }
?>
