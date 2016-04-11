<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$datak  = $kelompok->bacaKelompok($id_kelompok);
?>
 <form role="form" action="" method="post" class="form-horizontal col-md-4">
  <div class="form-group">
    <label>Nama Kelompok</label>
    <input name="nm_kelompok" type="text" class="form-control" value="<?php echo $datak['nm_kelompok']; ?>"required>
  </div>
    <div class="form-group">
    <label>Parent / Desa / Daerah</label>
    <select required class="form-control" name="parent">
	  <option value="0"><?php echo $datak['nm_kelompok']; ?></option>
    <?php
      $arraykelompok=$kelompok->tampilDesa();
      if (count($arraykelompok)) {
      foreach($arraykelompok as $data) {
    ?>
    <option value="<?php echo $data['id_kelompok']; ?>"><?php echo $data['nm_kelompok']; ?></option>
    <?php
  }
}
    ?>
	 
	</select>
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
  </div>
  <div class="form-group">
    <label>Level User</label>
    <select required class="form-control" name="level">
    <option value="<?php echo $datak['level']; ?>"><?php echo $datak['level']; ?></option>
    <option value="Kelompok">Kelompok</option>
    <option value="Desa">Desa</option>
    <option value="Daerah">Daerah</option>
  </select>
  </div>
    <div class="form-group">
    <label>Password</label>
    <input type="password" name="password" class="form-control" value="" required>
    <input type="hidden" name="id_kelompok" class="form-control" value=" <?php echo $datak['id_kelompok']; ?>" required>
  </div>
    
  <div class="form-group">
    <input type="submit" name="update" value="Simpan" class="btn btn-info">
    &nbsp;
     <input type="button" name="batal" value="Batal"  onClick="history.back()" class="btn btn-danger">
  </div>
</form>

<?php
  if($_POST['update']){
  $kelompok->updateKelompok(
  $_POST['id_kelompok'],  
  $_POST['nm_kelompok'],
  $_POST['parent'],
  $_POST['alamat'],
  $_POST['nohp'],
  $_POST['penjab'],
  $_POST['password'],
  $_POST['level']);
   echo"<meta http-equiv='refresh' content='0;url=?r=kelompok&pg=kelompok'>";
  }
?>
