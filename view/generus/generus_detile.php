<?php
include'../../class/class_5u.php';
include'../../class/function.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$laporan = new laporan();
$detail = new detail();
$generus = new generus();
$d= $generus->bacaGenerus($nig);
?>
<div class="row">
  <div class="col-md-8">
<table class="table">
    <thead>
      <tr>
        <th>BIODATA</th>
        <th></th>
      </tr>
    </thead>
    <tbody>
      <tr class="success">
        <td>Nig</td>
        <td><?php echo $d['nig']; ?></td>
      </tr>
      <tr>
        <td>Nama</td>
        <td><?php echo $d['nama']; ?></td>
      <tr class="success">
        <td>Tempat, Tgl Lahir</td>
        <td><?php echo $d['tempat_lahir']; ?>, <?php echo $d['tgl_lahir']; ?>, Usia : <?php echo umur($d['tgl_lahir']); ?> Tahun</td>
      </tr>
         <tr>
        <td>Jenis Kelamin</td>
        <td><?php echo $d['jekel']; ?></td>
      </tr>
         <tr class="success">
        <td>Golongan Darah</td>
        <td><?php echo $d['gol_darah']; ?></td>
      </tr>
       <tr>
        <td>Alamat</td>
        <td><?php echo $d['alamat']; ?></td>
      </tr>
       <tr class="success">
        <td>Nomor HP</td>
        <td><?php echo $d['nohp']; ?></td>
      </tr>
       <tr >
        <td>Nama Orang Tua</td>
        <td>Ayah : <?php echo $d['nm_ayah']; ?> - Ibu : <?php echo $d['nm_ibu']; ?></td>
      </tr>
        <tr class="success">
        <td>Date</td>
        <td><?php echo $d['date_input']; ?>-<?php echo $d['date_update']; ?> </td>
      </tr>

    </tbody>
  </table>
  
  </div>
  <div class="col-md-4">
  <p>
  <br>
  <p>
  	<img src="file_foto/<?php echo $d['foto']; ?>" class="img-responsive" alt="Cinque Terre">


  </div>
</div>