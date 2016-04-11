<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$laporan = new laporan();
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
      $arraylaporan=$laporan->laporanBulanan();
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
        
        <td><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>&nbsp;<a href="?r=laporan&pg=laporan_desa&periode=<?php echo $data['tahun_bulan']; ?>"><?php echo $data['tahun_bulan']; ?>&nbsp; Lihat</a></td>
      </tr>
<?php
}
}

?>

    </tbody>
  </table>