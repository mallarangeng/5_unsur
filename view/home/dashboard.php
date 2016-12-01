<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$laporan = new laporan();
$conten = new conten();
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
      
      <strong>Penggerak Pembina Generus (PPG) Tangbar</strong><br><hr>
        <?php
      $arrayconten=$conten->tampilK();
      if (count($arrayconten)) {
      foreach($arrayconten as $d) {
    ?>
<ul>
  <li><a href="?r=conten&pg=read&id=<?php echo $d['id']; ?>"><?php echo $d['judul']; ?></a></li>
</ul>
    <?php
  }
}
    ?>
    </div>
</div>
</div>
<a href=""><small><span class="glyphicon glyphicon-time " aria-hidden="true"></span>&nbsp;Timeline 5 Unsur Kendala & Solusi</small></a>
  <br>
  </body>

</html>