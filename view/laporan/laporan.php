<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$laporan = new laporan();
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
        <th>No</th>
        <th>Keterangan</th>
      </tr>
    </thead>
    <tbody>
    <?php
      $arraylaporan=$laporan->tampillap();
      if (count($arraylaporan)) {
      foreach($arraylaporan as $data) {
              if($data['stat']=='1'){
                  $aa='btn-success';
                  $bb='disabled';
                  $cc='Telah Dikirim';
                }else if($data['stat']=='0'){
                  $aa='btn-primary';
                  $bb='';
                  $cc='Belum Dikirim';
                }
    ?>

      <tr>
        <td><?php echo $c=$c+1;?></td>
        
        <td><span class="glyphicon glyphicon-calendar " aria-hidden="true"></span>&nbsp;<?php echo DateToIndo($data['tanggal']) ?><br><?php echo $data['ket']; ?>
        <p>
          <a class="btn btn-info btn-xs" href="?r=detail&pg=detail&id_lap=<?php echo $data['id_lap']; ?>" role="button"><span class="badge"><?php echo $data['tot_poin']; ?></span> Point </a>&nbsp;
          &nbsp;<a class="btn btn-warning btn-xs" href="?r=laporan&pg=laporan_edit&id_lap=<?php echo $data['id_lap']; ?>">Edit</a>
          &nbsp;<!--<button type="button" class="btn btn-danger btn-xs" data-id="<?php echo $data['id_lap']; ?>"data-toggle="modal" data-target=".bs-example-modal-sm">Small modal</button>-->
          <a class="btn <?php echo $aa; ?> btn-xs  <?php echo $bb; ?> kirim-laporan" href="" data-id="<?php echo $data['id_lap'] ?>"><?php echo $cc; ?></a>
        </td>
      </tr>
<?php
}
}
?>

    </tbody>
  </table>
 <a class="btn btn-info btn-xs" href="?r=laporan&pg=laporan_form" role="button">Tambah Data</a>
  
 <div class="modal fade" id="modal-kirim-laporan" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
                         <input type="submit" name="send_laporan" value="Kirim Laporan" class="btn btn-info">
                    </div>
                </div>
                </form>
            </div>
        </div>
 <?php
  if($_POST['send_laporan']){
  $laporan->updateLap(
  $_POST['id_lap'],  
  $_POST['id_kelompok'],
  $_POST['tanggal'],
  $_POST['ket'],
  $_POST['date_on'],
  $_POST['stat']);
   echo"<meta http-equiv='refresh' content='0;url=?r=laporan&pg=laporan'>";
  }
?>
