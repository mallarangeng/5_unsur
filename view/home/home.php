<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$laporan = new laporan();
$detail = new detail();
?>
<div class="alert alert-danger alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <span class="glyphicon glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span><strong>&nbsp;Warning!&nbsp;</strong>Untuk keamanan data silahkan lakukan penggantian password !
</div>
<h2 ><small><span class="glyphicon glyphicon-time " aria-hidden="true"></span>&nbsp;Timeline 5 Unsur Kendala & Solusi</small></h2>
<table class="table table-hover">
    <thead>
      <tr>
        
        <th></th>
        <th></th>
        
       
      </tr>
    </thead>
    <tbody>
    <?php
      $arraydetail=$detail->timelineDetail();
      if (count($arraydetail)) {
      foreach($arraydetail as $data) {
        if($data['stat']=='Selesai'){
                  $aa='primary';
                }else if($data['stat']=='Proses'){
                  $aa='danger';
                }
        if($data['publis']=='Bagikan'){
                  $bb='success';
                }else if($data['publis']=='Sembunyikan'){
                  $bb='default';
                }
    ?>


      <tr>
        <td><font class="hijaumuda"><span class="glyphicon glyphicon-map-marker " aria-hidden="true"></span>&nbsp;<?php echo $data['nm_kelompok']; ?></font></td>
        <td >&nbsp;&nbsp;
      <small><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>&nbsp;<font class="merah"><?php echo DateToIndo($data['tanggal']) ?></font></small></td>
      </tr>
      <tr>
        <td><small>Kendala :<?php echo $data['kendala']; ?></small></td>
        <td ><small>Solusi :<?php echo $data['solusi']; ?> </small>      
        </td>
      </tr>
      <?php
}
}
?>

    </tbody>
  </table>
<input type="button" name="" value="Baca semua hasil musyawarah" class="btn btn-danger btn-xs"><p>