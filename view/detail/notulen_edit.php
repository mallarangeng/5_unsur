<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$laporan = new laporan();
$detail = new detail();
$data  = $detail->bacaDetail($id_detail);
#close akses tanpa login
?>

  <div class="form-group">
    <label for="email">Kendala <?php echo $_GET['id_detail']; ?></label>
    <input type="hidden" name="id_detail" value="<?php echo $data['id_detail']; ?>">
    <input type="hidden" name="id_lap" value="<?php echo $data['id_lap']; ?>">
    <textarea class="form-control" name="kendala" rows="3" placeholder="Masukan kendala disni..." required><?php echo $data['kendala']; ?></textarea>
  </div>

  <div class="form-group">
    <label for="pwd">Solusi Alternatif / Saran</label>
    <textarea class="form-control" rows="3" name="solusi" placeholder="Masukan saran / solusi alternatif .." required><?php echo $data['solusi']; ?></textarea>
    <input name="ket" type="hidden" class="form-control" value="<?php echo $data['ket']; ?>" placeholder="Optional ... ">
    <input name="stat" type="hidden" value="<?php echo $data['stat']; ?>">
  </div>
  <!--
  <div class="form-group">
    <label>Keterangan Tambahan Jika diperlukan</label>
    
  </div>
-->
    <div class="form-group">
    <label>Status</label>
    <select required class="form-control" name="stat">
      <option value="<?php echo $data['stat']; ?>"><?php echo $data['stat']; ?></option>
    <option value="Progres">Progres</option>
    <option value="Selesai">Selesai</option>
    <option value="Pending">Pending</option>
  </select>
  
  </div>
    <div class="form-group">
    <label for="email">Share</label>
      <select required class="form-control" name="publis">
	  <option value="<?php echo $data['publis']; ?>"><?php echo $data['publis']; ?></option>
    <option value="Bagikan">Bagikan</option>
    <option value="Sembunyikan">Sembunyikan</option>
	</select>
    </div>
