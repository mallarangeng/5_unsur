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
    <div class="alert alert-danger" role="alert">
      <strong>PENGUMUMAN</strong><br>
      ..
    </div>
</div>
    
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
<?php
if (isset($_SESSION['level']))
{
  if ($_SESSION['level'] == "Kelompok")
   {  
    ?>
      <a class="btn btn-primary btn-lg" href="?r=laporan&pg=laporan" role="button">Buat Laporan</a> &nbsp; <a class="btn btn-success btn-lg" href="?r=laporan&pg=laporan" role="button">Jadwal Turba</a><br><br>
    <?php
   }
 }
 ?>


<br>
<a href=""><span class="glyphicon glyphicon-time " aria-hidden="true"></span>&nbsp;Timeline 5 Unsur Kendala & Solusi</a>
  <br>
  </body>

</html>