<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$laporan = new laporan();
$detail = new detail();
#cegah akses tanpa melalui login
$user = new User();
$id_kelompok = $_SESSION['id_kelompok'];
if (!$user->get_sesi())
{
header("location:index.html");
}
#close akses tanpa login
?>
 
 <table class="table table-hover">
    <thead>
      <tr>
        
        <th>Kendala</th>
        <th>Solusi</th>
        
       
      </tr>
    </thead>
    <tbody>
    <?php
      $arraydetail=$detail->tampilDetail();
      if (count($arraydetail)) {
      foreach($arraydetail as $data) {
        if($data['stat']=='Selesai'){
                  $aa='success';
                }else if($data['stat']=='Pending'){
                  $aa='danger';
                }
                else if($data['stat']=='Progres'){
                  $aa='warning';
                }
        if($data['publis']=='Bagikan'){
                  $bb='info';
                }else if($data['publis']=='Sembunyikan'){
                  $bb='default';
                }
    ?>


      <tr>
        <td class=""><strong><?php echo $b=$b+1;?>)</strong>&nbsp;<small><?php echo $data['kendala']; ?></small></td>
        <td class="info"><strong><?php echo $c=$c+1;?>)</strong>&nbsp;<small><?php echo $data['solusi']; ?></small>      
        </td>
      </tr>
      <tr>
        <td class=""><small><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>&nbsp;<font class="merah"><?php echo DateToIndo($data['tanggal']) ?></font></small>&nbsp;&nbsp;<a class="btn btn-info btn-xs edit-notulen" data-id="<?php echo $data['id_detail']; ?>" href="">Edit</a></td>
        <td class="info"><span class="label label-<?php echo $aa; ?>"><?php echo $data['stat']; ?></span>&nbsp;<span class="label label-<?php echo $bb; ?>">Di <?php echo $data['publis']; ?></span></td>
      </tr>
<?php
}
}
?>

    </tbody>
  </table>

 <a class="btn btn-info btn-sm add-notulen" href="" data-id="<?php echo $_GET['id_lap'] ?>" role="button">Tambah Notulen</a>&nbsp;<a class="btn btn-primary btn-sm" href="?r=laporan&pg=laporan" role="button">Kembali</a>
 <p>
 <div class="modal fade" id="modal-add-notulen" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <form role="form" action="" method="post">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title" id="myModalLabel"></h4>
                    </div>
                    <div class="modal-body">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
                         <input type="submit" name="add_notulen" value="Simpan data" class="btn btn-info">
                    </div>
                </div>
                </form>
            </div>
        </div>
        <?php
  if($_POST['add_notulen']){
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

<!--
<dl class="dl-horizontal">
  <dt><span class="label label-warning">Edit</span></dt>
  <dd>&nbsp;<small>Digunakan Untuk Mengubah isi point musyawarah</small></dd>
  <dt><span class="label label-primary">Selesai</span></dt>
  <dd>&nbsp;<small>Jika Kendala dalam musyawarah terselesaikan</small></dd>
  <dt><span class="label label-danger">Pending</span></dt>
  <dd>&nbsp;<small>Jika Kendala dalam musyawarah Belum terselesaikan</small></dd>
  <dt><span class="label label-default">Disembunyikan</span></dt>
  <dd>&nbsp;<small>Point musyawarah bersifat private tidak bisa dibaca oleh KBM atau 5 Unsur kelompok kelompok lain</small></dd>
  <dt><span class="label label-success">Dibagikan</span></dt>
  <dd>&nbsp;<small>Point musyawarah bersifat public dapat dibaca oleh KBM atau 5 Unsur kelompok kelompok lain</small></dd>
</dl>
-->
 <div class="modal fade" id="modal-edit-notulen" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <form role="form" action="" method="post">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title" id="myModalLabel"></h4>
                    </div>
                    <div class="modal-body">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
                         <input type="submit" name="update_notulen" value="Ubah data" class="btn btn-info">
                    </div>
                </div>
                </form>
            </div>
        </div>
  <?php
  if($_POST['update_notulen']){
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
