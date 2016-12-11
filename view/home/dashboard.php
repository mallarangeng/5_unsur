<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$laporan = new laporan();
$conten = new conten();
$p  = $conten->bacaP($id);
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
    <div class="alert alert-success" role="alert">
      <strong>INFORMASI / PENGUMUMAN</strong><br>
      <?php
      $arrayconten=$conten->tampilKinfo();
      if (count($arrayconten)) {
      foreach($arrayconten as $d) {
    ?>
      <ul>
      <li><a href="?r=conten&pg=read&id=<?php echo $p['id']; ?>"><?php echo $p['judul']; ?></a>&nbsp;<font color="red"> <?php echo $d['label']; ?></font></li>
      </ul>
          <?php
  }
}
    ?>
    </div>
</div>
    
  <div class="col-sm-4">
    <div class="alert alert-info" role="alert">
      
      <strong>Penggerak Pembina Generus (PPG) Tangbar</strong><br><hr>
        <?php
      $arrayconten=$conten->tampilKartikel();
      if (count($arrayconten)) {
      foreach($arrayconten as $d) {
    ?>
<ul>
  <li><a href="?r=conten&pg=read&id=<?php echo $d['id']; ?>"><?php echo $d['judul']; ?>&nbsp;<font color="red"> <?php echo $d['label']; ?></font></a></li>
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
      <a class="btn btn-primary btn-lg" href="?r=laporan&pg=laporan" role="button">Buat Laporan</a> &nbsp; <a class="btn btn-success btn-lg lihat-jadwal" href="" role="button">Jadwal Turba</a><br><br>
    <?php
   }
 }
 ?>


<br>
<a href="?r=home&pg=timeline"><span class="glyphicon glyphicon-time " aria-hidden="true"></span>&nbsp;Timeline 5 Unsur Kendala & Solusi</a>
  <br>
<!-- MODAL PENGUMUMAN-->
 <div class="modal fade" id="modal-jadwal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-sm" role="document">
              <form role="form" action="" method="post">
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
                </form>
            </div>
        </div>



<!-- END MODAL -->

  </body>

</html>