<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$datak  = $kelompok->bacaKelompok($id_kelompok);
if ($_SESSION['id_kelompok']!=$datak['id_kelompok']) {
    die ("<font color='#FF0000'>Akses User Tidak Sah</font>");
 } else {
    echo ('<font color="#66CC00">Data Valid</font>');
  } 
?>
 <form role="form" action="" method="post" class="form-horizontal col-md-4">
  <div class="form-group">
    <label>Nama Kelompok</label>
    <input name="nm_kelompok" type="text" class="form-control" value="<?php echo $datak['nm_kelompok']; ?>" readonly>
    <input type="hidden" name="parent" value="<?php echo $datak['parent']; ?>">
  </div>
    
  <div class="form-group">
    <label>Alamat</label>
    <input name="alamat" type="text" class="form-control" value="<?php echo $datak['alamat']; ?>" required>
  </div>
  <div class="form-group">
    <label>Nomor Handphone</label>
    <input type="text" name="nohp" class="form-control" value=" <?php echo $datak['nohp']; ?>" required>
  </div>
  <div class="form-group">
    <label>Penjab KBM Desa/Kelompok</label>
    <input name="penjab" type="text" class="form-control" value="<?php echo $datak['penjab']; ?>" required>
    <input type="hidden" name="level" value="<?php echo $datak['level']; ?>">
  </div>
    <div class="form-group">
    <label>Password</label>
    <input type="password" name="password" class="form-control" value="" placeholder="Kosongkan jika tidak dirubah">
    <input type="hidden" name="id_kelompok" class="form-control" value="<?php echo $datak['id_kelompok']; ?>" required>
    <input type="hidden" name="aktif" class="form-control" value="0" required>
  </div>
    
  <div class="form-group">
    <input type="submit" name="update" value="Update" class="btn btn-info">
    &nbsp;
     <input type="button" name="batal" value="Batal"  onClick="history.back()" class="btn btn-danger">
  </div>
</form>
<?php
if($_POST['update']){
  $id_kelompok=$_POST[id_kelompok];  
  $nm_kelompok=$_POST['nm_kelompok'];
  $parent=$_POST['parent'];
  $alamat=$_POST['alamat'];
  $nohp=$_POST['nohp'];
  $penjab=$_POST['penjab'];
  $password=$_POST['password'];
  $level=$_POST['level'];
  if (empty($password)){
  $kelompok->updateKelompok($id_kelompok,$nm_kelompok,$parent,$alamat,$nohp,$penjab,$password,$level);
  echo"<meta http-equiv='refresh' content='0;url=?r=profile&pg=profile_show'>";
  }
  else {

  $id_kelompok=$_POST[id_kelompok];  
  $nm_kelompok=$_POST['nm_kelompok'];
  $parent=$_POST['parent'];
  $alamat=$_POST['alamat'];
  $nohp=$_POST['nohp'];
  $penjab=$_POST['penjab'];
  $password=md5($_POST['password']);
  $level=$_POST['level'];
  $kelompok->updateKelompok($id_kelompok,$nm_kelompok,$parent,$alamat,$nohp,$penjab,$password,$level);
  echo"<meta http-equiv='refresh' content='0;url=?r=profile&pg=profile_show'>";
}
  }
  ?>

