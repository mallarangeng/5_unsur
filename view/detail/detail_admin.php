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
if (isset($_GET['aksi']))
{
  if ($_GET['aksi'] == 'hapus')
  {
    // baca ID dari parameter ID lama pinjaman yang akan dihapus
    $id_detail = $_GET['id_detail'];
    // proses hapus data lama pinjaman berdasarkan ID via method
    $detail->hapusdetail($id_detail);  
  }
}
?>
 
 <table class="table table-hover">
    <thead>
      <tr>
        <th>Kendala</th>
        <th>Solusi</th>
      </tr>
    </thead>
    <tbody>
    <?php
      $arraydetail=$detail->tampilDetail();
      if (count($arraydetail)) {
      foreach($arraydetail as $data) {
        if($data['stat']=='Selesai'){
                  $aa='success';
                }else if($data['stat']=='Pending'){
                  $aa='danger';
                }
                else if($data['stat']=='Progres'){
                  $aa='warning';
                }
        if($data['publis']=='Bagikan'){
                  $bb='info';
                }else if($data['publis']=='Sembunyikan'){
                  $bb='default';
                }
    ?>
      <tr>
        <td class=""><strong><?php echo $b=$b+1;?>)</strong>&nbsp;<small><?php echo $data['kendala']; ?></small></td>
        <td class="info"><strong><?php echo $c=$c+1;?>)</strong>&nbsp;<small><?php echo $data['solusi']; ?></small>      
        </td>
      </tr>
      <tr>
        <td class=""><small><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>&nbsp;<font class="merah"><?php echo DateToIndo($data['tanggal']) ?></font></small>&nbsp;&nbsp;<a class="btn btn-info btn-xs edit-notulen" data-id="<?php echo $data['id_detail']; ?>" href="">Edit</a>
          &nbsp;<a class="btn btn-danger btn-xs" href="?r=detail&pg=detail_admin&aksi=hapus&id_detail=<?php echo $data['id_detail'];?>&id_lap=<?php echo $data['id_lap'];?>">hapus</a>
        </td>
        <td class="info"><span class="label label-<?php echo $aa; ?>"><?php echo $data['stat']; ?></span>&nbsp;<span class="label label-<?php echo $bb; ?>">Di <?php echo $data['publis']; ?></span></td>
      </tr>
<?php
}
}
?>
    </tbody>
  </table>
