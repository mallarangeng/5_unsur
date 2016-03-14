<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$laporan = new laporan();
$detail = new detail();
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
    ?>


      <tr>
        <td class="warning"><strong><?php echo $b=$b+1;?></strong>&nbsp;<small><?php echo $data['kendala']; ?></small></td>
        <td class="success"><strong><?php echo $c=$c+1;?></strong>&nbsp;<small><?php echo $data['solusi']; ?> </small>
          <br>
          <a class="btn btn-warning btn-xs" href="?r=detail&pg=notulen_edit&id_detail=<?php echo $data['id_detail']; ?>&id_lap=<?php echo $_GET['id_lap']; ?>">Edit</a>
<?php echo $data['publis']; ?>
        </td>
        
        
      </tr>
<?php
}
}
?>

    </tbody>
  </table>

 <a class="btn btn-info btn-xs" href="?r=detail&pg=notulen_form&id_lap=<?php echo $_GET['id_lap'] ?>" role="button">Tambah Notulen</a>