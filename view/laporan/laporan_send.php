<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$laporan = new laporan();
$detail = new detail();
$datal  = $laporan->bacaLap($id_lap);
#cegah akses tanpa melalui login
$user = new User();
?>

        <p>Kirimkan Hasil musyawarah anda kepada desa dan daerah ? </p>
       <input name="id_lap" type="hidden" value="<?php echo $datal['id_lap']; ?>" class="form-control" required>
    <input name="id_kelompok" type="hidden" value="<?php echo $datal['id_kelompok']; ?>" class="form-control" required>
    <input name="tanggal" type="hidden" value="<?php echo $datal['tanggal']; ?>" id="datepicker" class="form-control" required>
    <input name="ket" type="hidden" value="<?php echo $datal['ket']; ?>" class="form-control" required>
    <input name="date_on" type="hidden" value="<?php echo $datal['date_on']; ?>" class="form-control" required>
    <input name="stat" type="hidden" class="form-control" value="1" required>

