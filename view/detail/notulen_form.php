<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$laporan = new laporan();
$detail = new detail();
?>

 <form role="form" action="" method="post" class="form-horizontal col-md-4">
  <div class="form-group">
    <label for="email">Kendala</label>
    <input type="hidden" name="id_detail" value="<?php echo kdauto("detail",""); ?>">
    <input type="hidden" name="id_lap" value="<?php echo $_GET['id_lap'] ?>">
    <textarea class="form-control" name="kendala" rows="3" placeholder="Masukan kendala disni..." required></textarea>
  </div>

  <div class="form-group">
    <label for="pwd">Solusi Alternatif / Saran</label>
    <textarea class="form-control" rows="3" name="solusi" placeholder="Masukan saran / solusi alternatif .." required></textarea>
    
  </div>
  <div class="form-group">
    <label>Keterangan Tambahan Jika diperlukan</label>
    <input name="ket" type="text" class="form-control" placeholder="Optional ... ">
    <input name="stat" type="hidden">
  </div>
  <div class="form-group">
    <label>Status</label>
    <select required class="form-control" name="stat">
    <option value="Selesai">Selesai</option>
    <option value="Pending">Pending</option>
  </select>
  
  </div>
      <div class="form-group">
    <label for="email">Share</label>
  <select required class="form-control" name="publis">
	  <option value="Bagikan">Bagikan</option>
	  <option value="Sembunyikan">Sembunyikan</option>
	</select>
    <br>
     <input type="submit" name="simpan" value="Simpan" class="btn btn-info">&nbsp;
     <input type="button" name="batal" value="Batal"  onClick="history.back()" class="btn btn-danger">
     </div>
</form>


<?php
  if($_POST['simpan']){
  $detail->tambahDetail(
  $_POST['id_detail'],  
  $_POST['id_lap'],
  $_POST['kendala'],
  $_POST['solusi'],
  $_POST['ket'],
  $_POST['stat'],
  $_POST['publis']);
   echo"<meta http-equiv='refresh' content='0;url=?r=detail&pg=detail&id_lap=".$_GET['id_lap']."'>";
  }
?>