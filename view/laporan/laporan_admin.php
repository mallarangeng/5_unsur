<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
#cegah akses tanpa melalui login
$user = new User();
$id_kelompok = $_SESSION['id_kelompok'];
if (!$user->get_sesi())
{
header("location:index.html");
}
if (isset($_GET['aksi']))
{
  if ($_GET['aksi'] == 'hapus')
  {
    // baca ID dari parameter ID lama pinjaman yang akan dihapus
    $id_lap = $_GET['id_lap'];
    // proses hapus data lama pinjaman berdasarkan ID via method
    $laporan->hapuslaporan($id_lap);  
  }
}
?>
<body>
 <table id="example" class="table table-striped table-bordered">
    <thead>
      <tr>
        <th>Tanggal</th>
        <th>Parent</th>
        <th>Nama Kelompok</th>
        <th>Penrobos PPG</th>
        <th>Hadir ?</th>
        <th>Point</th>
        <th>Baca</th>
        <th>Hapus</th>
      </tr>
    </thead>
    <tbody>
    <?php
      $arraylaporan=$laporan->tampilLapadmin();
      if (count($arraylaporan)) {
      foreach($arraylaporan as $data) {
          if($data['tot_poin']=='0'){
                  $aa='danger';
                  $bb='';
                }else { 
                  $aa='success';
                  $bb='disabled';
                }
    ?>
      <tr>
       <td><?php echo $data['tanggal']; ?></td>
       <td><?php echo $data['parent']; ?></td>
        <td><?php echo $data['nm_kelompok']; ?></td>
        <td><?php echo $data['nama']; ?></td>
        <td><?php echo $data['turba']; ?></td>
        <td><a href="?r=detail&pg=detail_admin&id_lap=<?php echo $data['id_lap']; ?>"><?php echo $data['tot_poin']; ?>&nbsp;Point</a></td>
        <td><button type="button" class="btn btn-info btn-xs baca-laporan-private" data-id="<?php echo $data['id_lap'];?>">Baca Laporan</button></d>
        <td><a href="?r=laporan&pg=laporan_admin&aksi=hapus&id_lap=<?php echo $data['id_lap'];?>" class="btn btn-<?php echo $aa; ?> btn-xs <?php echo $bb; ?>">Hapus Data</a></td>
      </tr>
<?php
}
}
?>
    </tbody>
  </table>

   <div class="modal fade" id="modal-baca-private" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
              
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
                
            </div>
        </div>




