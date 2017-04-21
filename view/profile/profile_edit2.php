<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$datak  = $kelompok->bacaKelompok($id_kelompok);
$id_kelompok = $_SESSION['id_kelompok'];
?>
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
    <input type="text" name="nohp" class="form-control" value="<?php echo $datak['nohp']; ?>" required>
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

  <!--
  log untuk pembuatan user activity
  -->
  <input type="hidden" name="id_kelompok" value="<?php echo $datak['id_kelompok']; ?>">
  <input type="hidden" name="nama" value="Mengedit data profie">
  <input type="text" name="waktu" value="<?php echo date("Y-m-d h:i:sa"); ?>">
  <input type="hidden" name="link" value="">
