<?php
include'../../class/class_5u.php';
include'../../class/function.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$laporan = new laporan();
$detail = new detail();
#cegah akses tanpa melalui login
#close akses tanpa login
?>
  <div class="form-group">
    <label for="email">Kendala</label>
    <input type="hidden" name="id_detail" value="<?php echo kdauto("detail",""); ?>">
    <input type="hidden" name="id_lap" value="<?php echo $_GET['id_lap'] ?>">
    <textarea class="form-control" name="kendala" rows="6" placeholder="Masukan kendala disini..." required></textarea>
  </div>

  <div class="form-group">
    <label for="pwd">Solusi Alternatif / Saran</label>
    <textarea class="form-control" rows="6" name="solusi" placeholder="Masukan saran / solusi alternatif .." required></textarea>
    <input name="ket" type="hidden" class="form-control" placeholder="Optional ... ">
    <input name="stat" type="hidden">
  </div>
  <!--
  <div class="form-group">
    <label>Keterangan Tambahan Jika diperlukan</label>
    
  </div>
-->
  <div class="form-group">
    <label>Status</label>
    <select required class="form-control" name="stat">
    <option value="Progres">Progres</option>
    <option value="Selesai">Selesai</option>
    <option value="Pending">Pending</option>
  </select>
  
  </div>
      <div class="form-group">
    <label for="email">Share</label>
  <select required class="form-control" name="publis">
    <option value="Sembunyikan">Sembunyikan</option>
	  <option value="Bagikan">Bagikan</option>
	  
	</select>
    </div>
