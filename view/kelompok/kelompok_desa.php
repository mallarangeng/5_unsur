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
       
        <th>Nama Kelompok</th>
        <th>Parent</th>
        <th>Alamat</th>
        <th>No Hp</th>
        <th>Penjab</th>
      </tr>
    </thead>
    <tbody>
    <?php
      $arraykelompok=$kelompok->tampilKelompokdesa();
      if (count($arraykelompok)) {
      foreach($arraykelompok as $data) {
    ?>

      <tr>
        <td><?php echo $c=$c+1;?></td>
        
        <td><?php echo $data['nm_kelompok']; ?></td>
        <td><?php echo $data['parent']; ?></td>
        <td><?php echo $data['alamat']; ?></td>
        <td><?php echo $data['nohp']; ?></td>
        <td><?php echo $data['penjab']; ?></td>
        </tr>
<?php
}
}
?>

    </tbody>
  </table>
</div>