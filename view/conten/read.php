<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$conten = new conten();
$d  = $conten->bacaK($id);
#cegah akses tanpa melalui login
$user = new User();
$id_kelompok = $_SESSION['id_kelompok'];
if (!$user->get_sesi())
{
header("location:index.html");
}
#close akses tanpa login
?>

<h2><strong><?php echo $d['judul']; ?></strong></h2><br>
<font align="justify">
<?php echo $d['conten']; ?></font>
<hr>
<a class="btn btn-primary btn-sm" href="index.php" role="button">Kembali</a><br>
