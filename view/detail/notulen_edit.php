<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$laporan = new laporan();
$detail = new detail();
$data  = $detail->bacaDetail($id_detail);
?>

 <form role="form" action="" method="post" class="form-horizontal col-md-4">
  <div class="form-group">
    <label for="email">Kendala</label>
    <input type="hidden" name="id_detail" value="<?php echo $data['id_detail']; ?>">
    <input type="hidden" name="id_lap" value="<?php echo $data['id_lap']; ?>">
    <textarea class="form-control" name="kendala" rows="3" placeholder="Masukan kendala disni..." required><?php echo $data['kendala']; ?></textarea>
  </div>

  <div class="form-group">
    <label for="pwd">Solusi Alternatif / Saran</label>
    <textarea class="form-control" rows="3" name="solusi" placeholder="Masukan saran / solusi alternatif .." required><?php echo $data['solusi']; ?></textarea>
    
  </div>
  <div class="form-group">
    <label>Keterangan Tambahan Jika diperlukan</label>
    <input name="ket" type="text" class="form-control" value="<?php echo $data['ket']; ?>" placeholder="Optional ... ">
    <input name="stat" type="hidden" value="<?php echo $data['stat']; ?>">
  </div>
    <div class="form-group">
    <label>Status</label>
    <select required class="form-control" name="stat">
      <option value="<?php echo $data['stat']; ?>"><?php echo $data['stat']; ?></option>
    <option value="Selesai">Selesai</option>
    <option value="Proses">Proses</option>
  </select>
  
  </div>
    <div class="form-group">
    <label for="email">Publis</label>
      <select required class="form-control" name="publis">
	  <option value="<?php echo $data['publis']; ?>"><?php echo $data['publis']; ?></option>
    <option value="Bagikan">Bagikan</option>
    <option value="Sembunyikan">Sembunyikan</option>
	</select>
    <br>
     <input type="submit" name="update" value="Update" class="btn btn-info">&nbsp;
     <input type="button" name="batal" value="Batal"  onClick="history.back()" class="btn btn-danger">
     </div>
</form>
<?php
  if($_POST['update']){
  $detail->updateDetail(
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