<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$generus = new generus();
#cegah akses tanpa melalui login
$user = new User();
$id_kelompok = $_SESSION['id_kelompok'];
if (!$user->get_sesi())
{
header("location:index.html");
}
#close akses tanpa login
?>
<div class="alert alert-success alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <span class="glyphicon glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span><strong>&nbsp;SISTEM INFORMASI GENERUS&nbsp;</strong>
</div>
<body>
  <button type="button" class="btn btn-info add-generus" data-id="<?php echo $_SESSION['id_kelompok']; ?>">TAMBAH DATA</button>
  <hr>
 <table id="example" class="table table-striped table-bordered">
    <thead>
      <tr>
        <th>NIG</th>
        <th>NAMA</th>
        <th>TEMPAT LAHIR</th>
        <th>TGL LAHIR</th>
        <th>JNS KELAMIN</th>
        <th>NAMA AYAH</th>
        <th>NAMA IBU</th>
        <th>KELOMPOK</th>
        <th>AKSI</th>
      </tr>
    </thead>
    <tbody>
    <?php
      $arraygenerus=$generus->tampilGenerus();
      if (count($arraygenerus)) {
      foreach($arraygenerus as $data) {
    ?>
      <tr>
       <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>Change</td>
      </tr>
<?php
}
}
?>
    </tbody>
  </table>
   <div class="modal fade" id="modal-generus" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">    
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title" id="myModalLabel"></h4>
                    </div>
                    <div class="modal-body">
                    </div>
                    <div class="modal-footer">
                        <input type="submit" name="simpan" value="Simpan Data" class="btn btn-info">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>