<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
?>
<div class="alert alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <span class="glyphicon glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span><strong>&nbsp;Profile&nbsp;</strong> Anda dapat melakukan update data dan penggantian password
</div>
 <table class="table table-hover">
    <thead>
      <tr>
       
        <th>User Id</th>
        <th><?php echo $_SESSION['level'];?></th>
        <th>Penjab</th>
        <th>Ubah</th>
      </tr>
    </thead>
    <tbody>
    <?php
      $arraykelompok=$kelompok->profile();
      if (count($arraykelompok)) {
      foreach($arraykelompok as $data) {
    ?>
      <tr>
        <td><?php echo $data['id_kelompok']; ?></td>
        <td><?php echo $data['nm_kelompok']; ?><br><small><font class="hijaumuda"><?php echo $data['alamat']; ?></font></small></td>
        <td><?php echo $data['penjab']; ?><br><small><font class="hijaumuda"><?php echo $data['nohp']; ?></font></small></td>
        <td><a href="?r=profile&pg=profile_edit&id_kelompok=<?php echo $data['id_kelompok']; ?>"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></td>
      </tr>
<?php
}
}
?>

    </tbody>
  </table>
