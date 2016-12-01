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
        <th>KETERANGAN</th>
      </tr>
    </thead>
    <tbody>
    <?php
      $arraylaporan=$laporan->tampilLapdesa();
      if (count($arraylaporan)) {
      foreach($arraylaporan as $data) {
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
        <td><?php echo $c=$c+1;?></td>
        
        <td><small><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>&nbsp;<font class="merah"><?php echo DateToIndo($data['tanggal']) ?></font></small>&nbsp;<font class="hijaumuda"><span class="glyphicon glyphicon-map-marker " aria-hidden="true"></span>&nbsp;<?php echo $data['nm_kelompok']; ?></font><br><?php echo $data['ket']; ?>
        <p>
          
          <a class="btn btn-info btn-xs baca-laporan" href="" data-id="<?php echo $data['id_lap']; ?>" role="button">BACA lAPORAN</a>&nbsp;<!-- <a class="btn btn-info btn-xs" href="./pdf.php" role="button" target="_blank">Cetak</a> -->
       </td>
      </tr>
<?php
}
}
else {{
  echo '<div class="alert alert-danger" role="alert">
  <span class="glyphicon glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  Data untuk periode bulan ini belum dikirim
</div>';
}}

?>

    </tbody>
  </table>


 <div class="modal fade" id="modal-baca-notulen" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
              
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title" id="myModalLabel"></h4>
                    </div>
                    <div class="modal-body">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                         
                    </div>
                </div>
                
            </div>
        </div>