<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
?>
 <table class="table table-hover">
    <thead>
      <tr>
        <th>No</th>
        <th>Desa</th>
        <th>Lap</th>
        <th>Lihat</th>
      </tr>
    </thead>
    <tbody>
    <?php
      $arraykelompok=$kelompok->desaShow();
      if (count($arraykelompok)) {
      foreach($arraykelompok as $data) {
    ?>

      <tr>
        <td><?php echo $c=$c+1;?></td>
        <td><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>&nbsp;<strong><?php echo $data['nm_kelompok']; ?></strong>
            <br><small><font class="hijaumuda"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;<font class="hijaumuda"><?php echo $data['penjab']; ?><br><span class="glyphicon glyphicon-phone" aria-hidden="true"></span>&nbsp;<?php echo $data['nohp']; ?></font></small>
        </td>
        <td><?php echo $data['tot_lap']; ?> dari <?php echo $data['tot_klp']; ?></td>
        <td><a class="btn btn-success btn-xs" href="?r=laporan&pg=laporan_daerah&periode=<?php echo $_GET['periode'];?>&desa=<?php echo $data['id_kelompok']; ?>" role="button">Lihat</a></td>
       
        
        </tr>
<?php
}
}
?>

    </tbody>
  </table>
 