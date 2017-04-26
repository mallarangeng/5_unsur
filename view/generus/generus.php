<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$generus = new generus();
#cegah akses tanpa melalui login
$user = new User();
$id_kelompok = $_SESSION['id_kelompok'];
if (!$user->get_sesi())
{
header("location:index.html");
}
#close akses tanpa login
$dodol= $generus->bacaGenerus($nig);
?>

<body>
<div class="alert alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <span class="glyphicon glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span><strong>&nbsp;SISTEM INFORMASI GENERUS&nbsp;</strong>
</div>
  <button type="button" class="btn btn-info add-generus" data-id="<?php echo $_SESSION['id_kelompok'];?>">TAMBAH DATA</button>
  <hr>
  <div class="table-responsive">
 <table id="example" class="table table-striped table-bordered">
    <thead>
      <tr>
        <th>NIG</th>
        <th>NAMA</th>
        <th>TGL LAHIR</th>
        <th>USIA</th>
        <th>JEKEL</th>
        <th>HP</th>
        <th>KELOMPOK</th>
        <th>KATEGORI</th>
        <th>TGL INPUT</th>
        <th>TGL UPDATE</th>
        <th>AKSI</th>
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
        <td><a href="" class="detail-generus" data-id="<?php echo $d['nig']; ?>"><?php echo $d['nama']; ?><a></td>
        <td><?php echo $d['tgl_lahir']; ?></td>
        <td><?php echo umur($d['tgl_lahir']); ?> Thn</td>
        <td><?php echo $d['jekel']; ?></td>
        <td><?php echo $d['nohp']; ?></td>
        <td><?php echo $d['nm_kelompok']; ?></td>
        <td><?php echo $d['kategori']; ?></td>
        <td><?php echo $d['date_input']; ?></td>
        <td><?php echo $d['date_update']; ?></td>
        <td>
          <button type="button" class="btn btn-danger btn-xs ukaskus" data-id="<?php echo $d['nig']; ?>">Ubah Data</button>
      </tr>
<?php
}
}
?>
    </tbody>
  </table>
  </div>
   <div class="modal fade" id="modal-generus" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
                        <input type="submit" name="simpan" value="Simpan Data" class="btn btn-info">
                        <input type="submit" name="update" value="Update Data" class="btn btn-success">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>
                   </form>
                    
                </div>
            </div>
        </div>
<?php
if ($_POST['simpan']){
  $tgl_lahir=$_POST['thn'].'-'.$_POST['bln'].'-'.$_POST['tgl'];
  $nig_foto=$_POST['nig'];
  $generus->tambahGenerus(
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
   echo"<meta http-equiv='refresh' content='0;url=?r=generus&pg=generus'>";  
  }
  ?>
   <div class="modal fade" id="detail-generus" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>
                   </form>
                    
                </div>
            </div>
        </div>
