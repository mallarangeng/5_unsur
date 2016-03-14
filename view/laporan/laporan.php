<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$laporan = new laporan();
?>
<div class="table-responsive"> 
 <table class="table table-hover">
    <thead>
      <tr>
        <th>No</th>
        <th>Tanggal Musyawarah</th>
        <th>Keterangan</th>
        <th>Point Musyawarah</th>
        <th>Status</th>
        <th>Edit</th>
      </tr>
    </thead>
    <tbody>
    <?php
      $arraylaporan=$laporan->tampillap();
      if (count($arraylaporan)) {
      foreach($arraylaporan as $data) {
    ?>

      <tr>
        <td><?php echo $c=$c+1;?></td>
        <td><?php echo $data['tanggal']; ?></td>
        <td><?php echo $data['ket']; ?></td>
        <td><a class="btn btn-info btn-xs" href="?r=detail&pg=detail&id_lap=<?php echo $data['id_lap']; ?>" role="button"><span class="badge"><?php echo $data['tot_poin']; ?></span> Point </a>
        </td>
        <td><button class="btn btn-success btn-xs" disabled="disabled" type="button">Telah dilaporkan</button></td>
        <td><a href="?r=laporan&pg=laporan_edit&id_lap=<?php echo $data['id_lap']; ?>"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></td>
      </tr>
<?php
}
}

?>

    </tbody>
  </table>
</div>
 <a class="btn btn-info btn-xs" href="?r=laporan&pg=laporan_form" role="button">Tambah Data</a>