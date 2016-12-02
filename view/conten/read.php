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

<h2><?php echo $d['judul']; ?></h2>
<font color="#5bc0de"><small>
<span class="glyphicon glyphicon-user" aria-hidden="true"></span>&nbsp;<i>Published by Admin</i>&nbsp;
<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>&nbsp;<i><?php echo DateToIndo($d['tgl']) ?></i><p>
</font></small>
<font align="justify">
<?php echo $d['conten']; ?></font>
<hr>
<a class="btn btn-primary btn-sm" href="index.php" role="button">Kembali</a><br>
