<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$laporan = new laporan();
$detail = new detail();
?>
 
<h2 ><small><span class="glyphicon glyphicon-time " aria-hidden="true"></span>&nbsp;Timeline Lima Unsur</small><hr></h2>
<dl>
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
  <dt><span class="glyphicon glyphicon-map-marker " aria-hidden="true"></span>&nbsp;Pondok Makmur&nbsp;&nbsp;
      <small><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>&nbsp;12 Januari 2016</small>
  </dt>
  <dd><font class="text-info"><cite title="Source Title">Kendala</cite>&nbsp;:&nbsp;<?php echo $data['kendala']; ?></font><br>
    <font class="text-success"><cite title="Source Title">Solusi</cite>&nbsp;:&nbsp;<?php echo $data['solusi']; ?></font><hr></dd>
  <?php
}
}

  ?>
</dl>
<input type="button" name="" value="Baca semua hasil musyawarah" class="btn btn-danger btn-xs"><p>