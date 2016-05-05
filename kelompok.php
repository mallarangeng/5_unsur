<?php
include'class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
?>

<html>
<head>
  <title>Data table kelompok</title>

<!-- data tables -->
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="bootstrap/css/dataTables.bootstrap.css">
<link rel="stylesheet" type="text/css" href="bootstrap/css/dataTables.tableTools.css">

<script type="text/javascript" language="javascript" src="bootstrap/js/jquery-1.11.3.js"></script>
<script type="text/javascript" language="javascript" src="bootstrap/js/jquery.dataTables.js"></script>
<script type="text/javascript" language="javascript" src="bootstrap/js/dataTables.bootstrap.js"></script>
<script type="text/javascript" language="javascript" src="bootstrap/js/dataTables.tableTools.js"></script>

<!-- data tables -->


</head>
<style type="text/css">
div.dataTables_length{
  float:left !important;
}
</style>

<script type="text/javascript" language="javascript" class="init">
$(document).ready(function() {
  $('#example').dataTable( {
     "lengthMenu": [[10,15, 25, 50, -1], [10,15, 25, 50, "All"]],
        "dom": 'T<"clear">lfrtip',
        "tableTools": {
            "sSwfPath": "img/copy_csv_xls_pdf.swf"
        }
    } );
} );
</script>
<style type="text/css" class="init"></style>

<body>
 <table id="example" class="table table-striped table-bordered">
    <thead>
      <tr>
        <th>No</th>
        <th>Id Kelompok</th>
        <th>Nama Kelompok</th>
        <th>Nama Desa</th>
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
        <td><?php echo $data['desa']; ?></td>
        <td><?php echo $data['parent']; ?></td>
        <td><?php echo $data['alamat']; ?></td>
        <td><?php echo $data['nohp']; ?></td>
        <td><?php echo $data['penjab']; ?></td>
        <td><?php echo $data['password']; ?></td>
        <td><?php echo $data['level']; ?></td>
       
        <td><a href="?r=kelompok&pg=kelompok_edit&id_kelompok=<?php echo $data['id_kelompok']; ?>&desa=<?php echo $data['desa']; ?>"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a></td>
      </tr>
<?php
}
}
?>

    </tbody>
  </table>
 <a class="btn btn-info btn-xs" href="?r=kelompok&pg=kelompok_form" role="button">Tambah Data</a>

</body>
</html>


