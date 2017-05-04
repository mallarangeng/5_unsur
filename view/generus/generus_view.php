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
  <button type="button" class="btn btn-success ubah-generus" data-id="<?php echo $d['nig']; ?>">
<span class="glyphicon glyphicon-saved"></span>  UBAH DATA</button>
    <a  class="btn btn-primary" href="?r=generus&pg=generus"><span class="glyphicon glyphicon-arrow-left"></span>   KEMBALI</a></td>
    <hr>
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
      <tr class="info">
        <td>Nig</td>
        <td>: <?php echo $d['nig']; ?></td>
      </tr>
      <tr>
        <td>Nama</td>
        <td>: <strong><?php echo $d['nama']; ?></strong></td>
      <tr class="info">
        <td>Tempat, Tgl Lahir</td>
        <td>: <?php echo $d['tempat_lahir']; ?>, <?php echo $d['tgl_lahir']; ?>, Usia : <?php echo umur($d['tgl_lahir']); ?> Tahun</td>
      </tr>
         <tr>
        <td>Jenis Kelamin</td>
        <td>: <?php echo $d['jekel']; ?></td>
      </tr>
         <tr class="info">
        <td>Golongan Darah</td>
        <td>: <?php echo $d['gol_darah']; ?></td>
      </tr>
       <tr>
        <td>Alamat</td>
        <td>:<?php echo $d['alamat']; ?></td>
      </tr>
       <tr class="info">
        <td>Nomor HP</td>
        <td>: <?php echo $d['nohp']; ?></td>
      </tr>
       <tr >
        <td>Nama Orang Tua</td>
        <td>: Ayah : <?php echo $d['nm_ayah']; ?> - Ibu : <?php echo $d['nm_ibu']; ?></td>
      </tr>
        <tr class="info">
        <td>Date Input </td>
        <td>: <small><?php echo $d['date_input']; ?></small> Last Update : <small><?php echo $d['date_update']; ?></small></td>
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

   <div class="modal fade" id="modal-ubah-generus" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">    
                <div class="modal-content">
                <form action="" method="post" enctype="multipart/form-data" class="form-horizontal" role="form">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title" id="myModalLabel"></h4>
                    </div>
                   
                    <div class="modal-body">
                    
                    </div>

                    <div class="modal-footer">
                        <input type="submit" name="update_data" value="Update Data" class="btn btn-success">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>
                   </form>
                    
                </div>
            </div>
        </div>

  <?php if ($_POST['update_data']){
  $tgl_lahir=$_POST['thn'].'-'.$_POST['bln'].'-'.$_POST['tgl'];
  $nig_foto=$_POST['nig'];
  $generus->updateGenerus(
  $_POST['nig'],
  $_POST['id_kelompok'],
  $_POST['nama'],
  $_POST['tempat_lahir'],
  $tgl_lahir,
  $_POST['jekel'],
  $_POST['gol_darah'],
  $_POST['alamat'],
  $_POST['nohp'],
  $_POST['nm_ayah'],
  $_POST['nm_ibu'],
  $_POST['id_kat'],
  $foto=$nig_foto."_".$_FILES['foto']['name'],
  $_POST['date_input'],
  $_POST['date_update']);
  echo"<meta http-equiv='refresh' content='0;url=?r=generus&pg=generus_view&nig=$_GET[nig]'>";
  }
  ?>