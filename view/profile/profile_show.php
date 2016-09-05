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
#close akses tanpa login
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
        <td><a class="btn btn-info btn-xs edit-profile" href="#" role="button" data-id="<?php echo $data['id_kelompok'] ?>">Ubah</a>
        </td>
      </tr>
<?php
}
}
?>

    </tbody>
  </table>
        <!-- modal detail pelamar-->
        <div class="modal fade" id="modal-profile" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <form role="form" action="" method="post">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <h4 class="modal-title" id="myModalLabel"></h4>
                    </div>
                    <div class="modal-body">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
                         <input type="submit" name="update_kelompok" value="Update" class="btn btn-info">
                         </div>
                </div>
                </form>
            </div>
        </div>
        <?php
if($_POST['update_kelompok']){
  $id_kelompok=$_POST[id_kelompok];  
  $nm_kelompok=$_POST['nm_kelompok'];
  $parent=$_POST['parent'];
  $alamat=$_POST['alamat'];
  $nohp=$_POST['nohp'];
  $penjab=$_POST['penjab'];
  $password=$_POST['password'];
  $level=$_POST['level'];
  if (empty($password)){
  $kelompok->updateKelompok($id_kelompok,$nm_kelompok,$parent,$alamat,$nohp,$penjab,$password,$level);
  echo"<meta http-equiv='refresh' content='0;url=?r=profile&pg=profile_show'>";
  }
  else {

  $id_kelompok=$_POST[id_kelompok];  
  $nm_kelompok=$_POST['nm_kelompok'];
  $parent=$_POST['parent'];
  $alamat=$_POST['alamat'];
  $nohp=$_POST['nohp'];
  $penjab=$_POST['penjab'];
  $password=md5($_POST['password']);
  $level=$_POST['level'];
  $kelompok->updateKelompok($id_kelompok,$nm_kelompok,$parent,$alamat,$nohp,$penjab,$password,$level);
  echo"<meta http-equiv='refresh' content='0;url=?r=profile&pg=profile_show'>";
}
  }
  ?>