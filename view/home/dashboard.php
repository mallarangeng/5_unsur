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
$datai  = $laporan->hitungindesa();
?>
<html>
  <head>
    <title>Dashboard</title>
  </head>

  <body>
    <h3>Dashboard</h3>
    <div class="row">    
  <div class="col-sm-4">
    <div class="alert alert-info" role="alert">
      
      <strong>Top Artikel Internet security</strong><br>
      Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
    </div>
</div>
</div>
<a href=""><small><span class="glyphicon glyphicon-time " aria-hidden="true"></span>&nbsp;Timeline 5 Unsur Kendala & Solusi</small></a>
  <br>
  </body>

</html>