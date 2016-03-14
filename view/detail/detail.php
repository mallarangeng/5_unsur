<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$laporan = new laporan();
$detail = new detail();
?>
 
 <table class="table table-bordered">
    <thead>
      <tr>
        <th>No</th>
        <th>Kendala</th>
        <th>Solusi</th>
        
        <th>Status</th>
        <th>Publis</th>
        <th>Edit</th>
      </tr>
    </thead>
    <tbody>
    <?php
      $arraydetail=$detail->tampilDetail();
      if (count($arraydetail)) {
      foreach($arraydetail as $data) {
    ?>


      <tr>
        <td><?php echo $c=$c+1;?></td>
        <td><?php echo $data['kendala']; ?></td>
        <td><?php echo $data['solusi']; ?></td>
        
        <td><?php echo $data['stat']; ?></td>
        <td><?php echo $data['publis']; ?></td>
        <td><a href="?r=laporan&pg=kelompok_edit&id_kelompok=<?php echo $data['id_kelompok']; ?>"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></td>
      </tr>
<?php
}
}
?>

    </tbody>
  </table>

 <a class="btn btn-info btn-xs" href="?r=detail&pg=notulen_form&id_lap=<?php echo $_GET['id_lap'] ?>" role="button">Tambah Notulen</a>