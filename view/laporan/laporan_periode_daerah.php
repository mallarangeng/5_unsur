<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$laporan = new laporan();

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
        <th>NO</th>
        <th>PERIODE LAPORAN</th>
      </tr>
    </thead>
    <tbody>
    <?php
      $arraylaporan=$laporan->laporanDaerah();
      if (count($arraylaporan)) {
      foreach($arraylaporan as $data) {
              if($data['stat']=='1'){
                  $aa='btn-success';
                  $bb='disabled';
                  $cc='Telah Dikirim';
                }else if($data['stat']=='0'){
                  $aa='btn-primary';
                  $bb='';
                  $cc='Belum Dikirim';
                }
    ?>
      <tr>
        <td><?php echo $c=$c+1;?></td>
        <td>
          <a class="btn btn-info" href="?r=laporan&pg=desa_show&periode=<?php echo $data['tahun_bulan']; ?>" role="button"><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>&nbsp;<?php echo $data['tahun_bulan']; ?> &nbsp;LIHAT LAPORAN</a>
          </td>
      </tr>
<?php
}
}

?>

    </tbody>
  </table>