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
        <span aria-hidden="true">2016</span>
      </a>
    </li>
    <li><a href="#">Jan</a></li>
    <li><a href="#">Feb</a></li>
    <li><a href="#">Mar</a></li>
    <li><a href="#">Apr</a></li>
    <li><a href="#">Mei</a></li>
    <li><a href="#">Jun</a></li>
    <li><a href="#">Jul</a></li>
    <li><a href="#">Ags</a></li>
    <li><a href="#">Sep</a></li>
    <li><a href="#">Okt</a></li>
    <li><a href="#">Nov</a></li>
    <li><a href="#">Des</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>

