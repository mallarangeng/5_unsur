<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
?>
 <form role="form" action="" method="post" class="form-horizontal col-md-4">
  <div class="form-group">
    <label>Nama Kelompok</label>
    <input name="nm_kelompok" type="text" class="form-control" required>
  </div>
    <div class="form-group">
    <label>Parent / Desa / Daerah</label>
    <select required class="form-control" name="parent">
	  <option value="0">Pilih Parent</option>
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
    <input name="alamat" type="text" class="form-control" required>
  </div>
  <div class="form-group">
    <label>Nomor Handphone</label>
    <input type="text" name="nohp" class="form-control" required>
  </div>
  <div class="form-group">
    <label>Penjab KBM Desa/Kelompok</label>
    <input name="penjab" type="text" class="form-control" required>
  </div>
  <div class="form-group">
    <label>Level User</label>
    <select required class="form-control" name="level">
    <option value="Kelompok">Kelompok</option>
    <option value="Desa">Desa</option>
    <option value="Daerah">Daerah</option>
  </select>
  </div>
    <div class="form-group">
    <label>Password</label>
    <input type="password" name="password" class="form-control" required>
  </div>
    
  <div class="form-group">
    <input type="submit" name="simpan" value="Simpan" class="btn btn-info">
    &nbsp;
    <button type="submit" class="btn btn-danger">Batal</button>
  </div>
</form>

<?php
  if($_POST['simpan']){
  $kelompok->tambahKelompok(
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
