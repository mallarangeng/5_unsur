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
        <th>No</th>
        <th>KETERANGAN</th>
      </tr>
    </thead>
    <tbody>
    <?php
      $arraylaporan=$laporan->tampilLapdesa();
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
        
        <td><small><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>&nbsp;<font class="merah"><?php echo DateToIndo($data['tanggal']) ?></font></small>&nbsp;<font class="hijaumuda"><span class="glyphicon glyphicon-map-marker " aria-hidden="true"></span>&nbsp;<?php echo $data['nm_kelompok']; ?></font><br><?php echo $data['ket']; ?>
        <p>
          <a class="btn btn-info btn-xs" href="?r=detail&pg=detail_desa&id_lap=<?php echo $data['id_lap']; ?>" role="button"><span class="badge"><?php echo $data['tot_poin']; ?></span>Baca</a>&nbsp;
    
          
        </td>
      </tr>
<?php
}
}
else {{
  echo '<div class="alert alert-danger" role="alert">
  <span class="glyphicon glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  Data untuk periode bulan ini belum dikirim
</div>';
}}

?>

    </tbody>
  </table>