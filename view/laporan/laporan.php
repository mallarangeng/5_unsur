<?php
include'../../class/class_5u.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$laporan = new laporan();
?>
 <table class="table table-hover">
    <thead>
      <tr>
        <th>No</th>
        <th>Keterangan</th>
      </tr>
    </thead>
    <tbody>
    <?php
      $arraylaporan=$laporan->tampillap();
      if (count($arraylaporan)) {
      foreach($arraylaporan as $data) {
              if($data['stat']=='1'){
                  $aa='btn-success';
                  $bb='disabled';
                  $cc='Telah Dikirim';
                }else if($data['stat']=='0'){
                  $aa='btn-primary';
                  $bb='';
                  $cc='Belum Dikirim';
                }
    ?>

      <tr>
        <td><?php echo $c=$c+1;?></td>
        
        <td><strong><?php echo tgl_eng_to_ind($data['tanggal']);?></strong><br><?php echo $data['ket']; ?>
        <p>
          <a class="btn btn-info btn-xs" href="?r=detail&pg=detail&id_lap=<?php echo $data['id_lap']; ?>" role="button"><span class="badge"><?php echo $data['tot_poin']; ?></span> Point </a>&nbsp;
          &nbsp;<a class="btn btn-warning btn-xs" href="?r=laporan&pg=laporan_edit&id_lap=<?php echo $data['id_lap']; ?>">Edit</a>
          &nbsp;
          
          <input type="submit" name="update" value="<?php echo $cc; ?>" class="btn <?php echo $aa; ?> btn-xs" <?php echo $bb; ?> >
          
        </td>
      </tr>
<?php
}
}

?>

    </tbody>
  </table>
 <a class="btn btn-info btn-xs" href="?r=laporan&pg=laporan_form" role="button">Tambah Data</a>