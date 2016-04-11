<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
?>
<div class="table-responsive"> 
 <table class="table table-hover">
    <thead>
      <tr>
        <th>No</th>
        <th>Id Kelompok</th>
        <th>Nama Kelompok</th>
        <th>Parent</th>
        <th>Alamat</th>
        <th>No Hp</th>
        <th>Penjab</th>
        <th>Password</th>
        
        <th>Level</th>
        <th>Aksi</th>
      </tr>
    </thead>
    <tbody>
    <?php
      $arraykelompok=$kelompok->tampilKelompok();
      if (count($arraykelompok)) {
      foreach($arraykelompok as $data) {
    ?>

      <tr>
        <td><?php echo $c=$c+1;?></td>
        <td><?php echo $data['id_kelompok']; ?></td>
        <td><?php echo $data['nm_kelompok']; ?></td>
        <td><?php echo $data['parent']; ?></td>
        <td><?php echo $data['alamat']; ?></td>
        <td><?php echo $data['nohp']; ?></td>
        <td><?php echo $data['penjab']; ?></td>
        <td><?php echo $data['password']; ?></td>
        <td><?php echo $data['level']; ?></td>
       
        <td><a href="?r=kelompok&pg=kelompok_edit&id_kelompok=<?php echo $data['id_kelompok']; ?>&direct=kelompok"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></td>
      </tr>
<?php
}
}
?>

    </tbody>
  </table>
</div>
 <a class="btn btn-info btn-xs" href="?r=kelompok&pg=kelompok_form" role="button">Tambah Data</a>