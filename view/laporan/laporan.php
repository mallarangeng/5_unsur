<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$laporan = new laporan();
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
          &nbsp;<a class="kirim-laporan btn btn-warning btn-xs" href="?r=laporan&pg=laporan_edit&id_lap=<?php echo $data['id_lap']; ?>">Edit</a>&nbsp;<button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target=".bs-example-modal-sm">Small modal</button>
          &nbsp;
          
          <input type="submit" name="update" value="<?php echo $cc; ?>" class="btn <?php echo $aa; ?> btn-xs" <?php echo $bb; ?> >
          
        </td>
      </tr>
<?php
}
}

?>

    </tbody>
  </table>
 <a class="btn btn-info btn-xs" href="?r=laporan&pg=laporan_form" role="button">Tambah Data</a>


 <!--  Modal untuk kirim data -->
 <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <strong>KIRIM LAPORAN</strong>
      </div>
      <div class="modal-body">
        <p>Kirimkan Hasil musyawarah anda kepada desa dan daerah ?</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
        <button type="button" class="btn btn-info">Kirim Laporan</button>
      </div>
    </div>
  </div>
</div>
<!--  akhir Modal untuk kirim data -->