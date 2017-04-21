<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$laporan = new laporan();
$detail = new detail();
if (isset($_GET['aksi']))
{
  if ($_GET['aksi'] == 'hapus')
  {
    // baca ID dari parameter ID lama pinjaman yang akan dihapus
    $id_detail = $_GET['id_detail'];
    // proses hapus data lama pinjaman berdasarkan ID via method
    $detail->hapusdetail($id_detail);  
  }
}
?>