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
    <div class="alert alert-success" role="alert">
    
<?php
if (isset($_SESSION['level']))
{
  if ($_SESSION['level'] == "Kelompok")
   {  
    ?>
        
      
      <strong>LAPORAN KELOMPOK &nbsp;<span class="badge"></span></strong><br>

    
    <?php
   }
   else if ($_SESSION['level'] == "Desa")
   {
    ?>
        
      <strong>LAPORAN MASUK &nbsp;<span class="badge"><?php echo $datai['inboxdesa']; ?></span></strong><br>
             <?php
      $arraylaporan=$laporan->tampilLapdesa();
      if (count($arraylaporan)) {
      foreach($arraylaporan as $data) {
    ?>
    <?php echo $c=$c+1;?>.<?php echo $data['nm_kelompok']; ?> - <?php echo DateToIndo($data['tanggal']) ?> 
    

    <br>
    <?php 
  }
}
    ?>
    <?php
       
   }
   else if ($_SESSION['level'] == "Daerah")
   {
       ?>
      
      <strong>LAPORAN Daerah &nbsp;<span class="badge">42</span></strong><br>
      Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
    
    <?php
   }
   else if ($_SESSION['level'] == "Admin")
   {
       ?>
      
      <strong>LAPORAN Admin &nbsp;<span class="badge">42</span></strong><br>
      Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
    
    <?php
   }
}
if (!isset($_SESSION['level']))
{
  header('location:login.php');
}
 ?>
</div>
</div> 
    
  <div class="col-sm-4">
    <div class="alert alert-danger" role="alert">
      
      <strong>LAPORAN MASUK</strong><br>
      Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
    </div>
</div>

  <div class="col-sm-4">
    <div class="alert alert-info" role="alert">
      
      <strong>Top Artikel Internet security</strong><br>
      Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
    </div>
</div>
</div>
  </body>

</html>