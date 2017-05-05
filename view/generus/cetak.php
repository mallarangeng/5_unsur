<?php
include'../../class/class_5u.php';
include'../../class/function.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$generus = new generus();
#cegah akses tanpa melalui login
$user = new User();
?>
<!DOCTYPE html>
<html>
<head>
  <title>Sistem Informasi Generus</title>
  <link rel="stylesheet" type="text/css" href="../../bootstrap/css/bootstrap.css">
  <link href="../../images/logo.png" rel="shortcut icon" />
</head>
<body>
<div class="container">
<div class="table-responsive">
<h3><strong>CETAK DATA GENERUS</strong></h3>
<ol class="breadcrumb">
  <li><a href="cetak.php"><strong>Home</strong></a></li>
  <li><a href="?r=kategori">Kategori</a></li>
  <li><a href="?r=jekel"">Jenis Kelamin</a></li>
  <li><a href="#">Kategori & Jenis Kelamin</a></li>
  <li class="active">Data</li>
</ol>
<?php
if ($_GET['r'] == "kategori")
   { 
?>
<form class="form-inline">
       <div class="form-group">
        <div class="col-sm-4">
          <select name="jekel" class="form-control" required>
            <option value="">Jenis Kelamin</option>
            <option value="Laki Laki">Laki Laki</option>
            <option value="Perempuan">Perempuan</option>
          </select>
        </div>
      </div>
  <button type="submit" class="btn btn-info">Tampilkan Data</button>
</form>
<?php

}
   ?> 
   <?php
if ($_GET['r'] == "jekel")
   { 
?>
<form class="form-inline">
  <div class="form-group">
    <input type="email" class="form-control" id="exampleInputEmail2" placeholder="jane.doe@example.com">
  </div>
  <button type="submit" class="btn btn-info">Tampilkan Data</button>
</form>
<?php

}
   ?>
<br>
 <table id="example" class="table table-striped table-bordered">
    <thead>
      <tr>
        <th>NIG</th>
        <th>NAMA</th>
        <th>KELOMPOK</th>
        <th>KETERANGAN</th>
        
      </tr>
    </thead>
    <tbody>
    <?php
      $arraygenerus=$generus->tampilGenerus();
      if (count($arraygenerus)) {
      foreach($arraygenerus as $d) {
    ?>
      <tr>
       <td><?php echo $d['nig']; ?></td>
        <td><?php echo $d['nama']; ?></td>
        <td><?php echo $d['nm_kelompok']; ?></td>
        <td></td>
      </tr>
<?php
}
}
?>
    </tbody>
  </table>
  </div>
  </div>
</body>
</html>
