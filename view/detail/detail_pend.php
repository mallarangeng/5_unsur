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
?>
 <table class="table table-hover">
    <thead>
      <tr>
        
        <th>Kendala</th>
        <th class="info">Solusi</th>
        
       
      </tr>
    </thead>
    <tbody>
    <?php
      $arraydetail=$detail->tampilDetailPending();
      if (count($arraydetail)) {
      foreach($arraydetail as $data) {
        if($data['stat']=='Selesai'){
                  $aa='primary';
                }else if($data['stat']=='Pending'){
                  $aa='danger';
                }
        if($data['publis']=='Bagikan'){
                  $bb='success';
                }else if($data['publis']=='Sembunyikan'){
                  $bb='default';
                }
    ?>


      <tr>
        <td><strong><?php echo $b=$b+1;?></strong>&nbsp;<?php echo $data['kendala']; ?></td>
        <td class="info"><strong><?php echo $c=$c+1;?></strong>&nbsp;<?php echo $data['solusi']; ?> </td>
      </tr>
        <tr>
        <td class=""><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>&nbsp;<font class="merah"><?php echo DateToIndo($data['tanggal']) ?></font></td>
        <td class="info"><span class="label label-<?php echo $aa; ?>"><?php echo $data['stat']; ?></span>&nbsp;<span class="label label-<?php echo $bb; ?>">Di <?php echo $data['publis']; ?></span></td>
      </tr>
<?php
}
}
?>

    </tbody>
  </table>

<!--
<dl class="dl-horizontal">
  <dt><span class="label label-warning">Edit</span></dt>
  <dd>&nbsp;<small>Digunakan Untuk Mengubah isi point musyawarah</small></dd>
  <dt><span class="label label-primary">Selesai</span></dt>
  <dd>&nbsp;<small>Jika Kendala dalam musyawarah terselesaikan</small></dd>
  <dt><span class="label label-danger">Pending</span></dt>
  <dd>&nbsp;<small>Jika Kendala dalam musyawarah Belum terselesaikan</small></dd>
  <dt><span class="label label-default">Disembunyikan</span></dt>
  <dd>&nbsp;<small>Point musyawarah bersifat private tidak bisa dibaca oleh KBM atau 5 Unsur kelompok kelompok lain</small></dd>
  <dt><span class="label label-success">Dibagikan</span></dt>
  <dd>&nbsp;<small>Point musyawarah bersifat public dapat dibaca oleh KBM atau 5 Unsur kelompok kelompok lain</small></dd>
</dl>
-->
  
