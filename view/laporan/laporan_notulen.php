<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
#cegah akses tanpa melalui login
$user = new User();
$id_kelompok = $_SESSION['id_kelompok'];
if (!$user->get_sesi())
{
header("location:index.html");
}
?>
<body>
 <table id="example" class="table table-striped table-bordered">
    <thead>
      <tr>
        <th></th>
        <th>Tanggal</th>
        <th>Nama Kelompok</th>
        <th>Penrobos PPG</th>
        <th>Hadir ?</th>
        <th>Kendala</th>
        <th>Solusi</th>
      </tr>
    </thead>
    <tbody>
    <?php
      $arraydetail=$detail->tampilNotulen();
      if (count($arraydetail)) {
      foreach($arraydetail as $data) {
          if($data['tot_poin']=='0'){
                  $aa='danger';
                  $bb='';
                }else { 
                  $aa='success';
                  $bb='disabled';
                }
    ?>
      <tr>
      <td></td>
       <td><?php echo $data['tanggal']; ?></td>
        <td><?php echo $data['nm_kelompok']; ?></td>
        <td><?php echo $data['nama']; ?></td>
        <td><?php echo $data['turba']; ?></td>
        <td class="danger"><small><?php echo $data['kendala']; ?></small></td>
        <td class="success"><small><?php echo $data['solusi']; ?><small></td>
        </tr>
<?php
}
}
?>
    </tbody>
  </table>




