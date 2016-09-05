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
<!--
<div class="alert alert-danger alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <span class="glyphicon glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span><strong>&nbsp;Warning!&nbsp;</strong>Untuk keamanan data silahkan lakukan penggantian password !
</div> -->
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
        <td class="info">&nbsp;&nbsp;
      <small><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>&nbsp;<font class="merah"><?php echo DateToIndo($data['tanggal']) ?></font></small></td>
      </tr>
      <tr>
        <td><strong>Kendala :</strong><br><?php echo $data['kendala']; ?></td>
        <td class="info"><strong>Solusi :</strong><br><?php echo $data['solusi']; ?> </td>
      </tr>
      <?php
}
}
?>
    </tbody>
</table>
<span class="label label-info">Klik tahun dan bulan untuk melihat data yang lain</span>
<nav>
  <ul class="pagination">
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a href="?r=home&pg=home&thn=2016&bln=<?php echo date('m'); ?>">2016</a></li>
    <?php
      $arraylaporan=$detail->pagetimeline();
      if (count($arraylaporan)) {
      foreach($arraylaporan as $data) {
    ?>
    <li><a href="?r=home&pg=home&thn=2016&bln=<?php echo $data['bulan'];?>"><?php echo $data['bulan']; ?></a></li>
    <li>
      <?php 
    }}
    ?>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>

