<?php 
  error_reporting(0);
  class Database {
  private $dbHost="localhost";
  private $dbUser="root";
  private $dbPass="900973";
  private $dbName="limaunsur";
  function connectMySQL() {
  mysql_connect($this->dbHost, $this->dbUser, $this->dbPass);
  mysql_select_db($this->dbName) or die ("Database Tidak Ditemukan di Server"); 
  }
  }

  class User
  {
    
    function cek_login($id_kelompok, $password) 
      {
        #untuk memastikan user id yang di input adalah tipe data integer karena id_kelomok terdiri dari angka
        #untuk salah satu pencegahan sql injection
        $id_kelompok = (int)$_POST['id_kelompok'];
        $password = md5($password);
        $result = mysql_query("SELECT * FROM kelompok WHERE id_kelompok='$id_kelompok' AND password='$password'");
        $user_data = mysql_fetch_array($result);
        $no_rows = mysql_num_rows($result);
        if ($no_rows == 1) 
        {
          $_SESSION['login'] = TRUE;
          $_SESSION['id_kelompok'] = $user_data['id_kelompok'];
          $_SESSION['nm_kelompok'] = $user_data['nm_kelompok'];
          $_SESSION['parent'] = $user_data['parent'];
          $_SESSION['level'] = $user_data['level'];
          return TRUE;
        }
          else 
            {
              return FALSE;
            }
      }
    // Ambil Sesi 
    function get_sesi() 
      {
        return $_SESSION['login'];
      }
  
    // Logout 
    function user_logout()
      {
        $_SESSION['login'] = FALSE;
        session_destroy();
      }
    }

class Kelompok {
  // Tampilkan data data kelompok
  function tampilKelompok() {
          $query = mysql_query("Select k1.*,k2.nm_kelompok as desa from kelompok as k1 left join kelompok as k2 on k1.parent= k2.id_kelompok ORDER BY parent");
          while($row=mysql_fetch_array($query))
          $data[]=$row;
          return $data;
  }
    function profile() {
      $query = mysql_query("SELECT * FROM kelompok WHERE id_kelompok='$_SESSION[id_kelompok]'");
      while($row=mysql_fetch_array($query))
      $data[]=$row;
      return $data;
  }
    function tampilKelompokdesa() {
      $query = mysql_query("SELECT * FROM kelompok WHERE parent='$_SESSION[id_kelompok]'");
      while($row=mysql_fetch_array($query))
      $data[]=$row;
      return $data;
  }
  function tampilDesa() {
      $query = mysql_query("SELECT * FROM kelompok WHERE parent='0' AND aktif='0' ");
      while($row=mysql_fetch_array($query))
      $data[]=$row;
      return $data;
  }
  function bacaKelompok($id_kelompok)
          {
        $query=mysql_query("SELECT * FROM kelompok WHERE id_kelompok='$_GET[id_kelompok]'");
        $data=mysql_fetch_array($query);
        $data[]=$row;
        if(isset($data)){
          return $data;
        }
      }

   function tambahKelompok($id_kelompok,$nm_kelompok,$parent,$alamat,$nohp,$penjab,$password,$level)
    {
      $query="INSERT INTO kelompok (id_kelompok,nm_kelompok,parent,alamat,nohp,penjab,password,level)
      VALUES('$id_kelompok','$nm_kelompok','$parent','$alamat','$nohp','$penjab','$password','$level')";
      $hasil= mysql_query($query);
    }

     function updateKelompok ($id_kelompok,$nm_kelompok,$parent,$alamat,$nohp,$penjab,$password,$level)
    {
      if (empty($password)){
      $query=mysql_query("UPDATE kelompok SET nm_kelompok='$nm_kelompok', parent='$parent', alamat='$alamat',nohp='$nohp', penjab='$penjab',
      level='$level'  WHERE id_kelompok='$id_kelompok'");
    }
    else 
    {
      $query=mysql_query("UPDATE kelompok SET nm_kelompok='$nm_kelompok', parent='$parent', alamat='$alamat',nohp='$nohp', penjab='$penjab',
        password='$password',level='$level'  WHERE id_kelompok='$id_kelompok'");
    }
   }



  function desaShow() {
      $query = mysql_query("SELECT id_kelompok, nm_kelompok, penjab,nohp,
      (SELECT COUNT(parent) AS tot_klp FROM kelompok WHERE parent !='0' AND aktif='0')tot_klp,
      (SELECT COUNT(id_lap) AS tot_lap FROM laporan as l left join kelompok as k on l.id_kelompok=k.id_kelompok
       WHERE  tanggal LIKE'$_GET[periode]%' AND stat='1') tot_lap
       FROM kelompok WHERE parent='0' AND aktif='0'");
      while($row=mysql_fetch_array($query))
      $data[]=$row;
      return $data;
  }

  }

  /**
  * class object laporan 
  */
  class Laporan
  {
    
    function tambahLap($id_lap,$id_kelompok,$tanggal,$ket,$date_on,$stat)
    {
      if($_POST){
      # Cek nomor faktur di database
      $tanggal=$_POST['tanggal'];#ambil strin tanggal dari parameter 
      $periode=substr($tanggal,0,7);
      $cek_period=mysql_num_rows(mysql_query
      ("SELECT tanggal FROM laporan WHERE tanggal LIKE'$periode%' AND id_kelompok='$_SESSION[id_kelompok]' "));
      # Kalau nomor faktur sudah ada
      if ($cek_period > 0){
        echo "<script type='text/javascript'>window.alert('Laporan Musyawrah untuk periode ini sudah pernah dibuat !')</script>";
      }
      # Kalau nomor faktur belum ada silahkan di simpan
else{
      $query="INSERT INTO laporan (id_lap,id_kelompok,tanggal,ket,date_on,stat)
      VALUES('$id_lap','$id_kelompok','$tanggal','$ket','$date_on','$stat')";
      $hasil= mysql_query($query);
    }
     }
   }
    function tampilLap2() {
      $query = mysql_query("SELECT * FROM laporan ORDER BY tanggal ASC");
      while($row=mysql_fetch_array($query))
      $data[]=$row;
      return $data;
  }
      function tampilLapdesa($tanggal) {
      $query = mysql_query("select * from laporan as l left join kelompok as k on l.id_kelompok=k.id_kelompok
       WHERE parent='$_SESSION[id_kelompok]' AND tanggal LIKE'$_GET[periode]%' AND stat='1'");
      while($row=mysql_fetch_array($query))
      $data[]=$row;
      return $data;
  }
     function tampilLapdaerah($tanggal) {
      $query = mysql_query("select * from laporan as l left join kelompok as k on l.id_kelompok=k.id_kelompok
       WHERE parent='$_GET[desa]' AND stat='1' AND tanggal LIKE'$_GET[periode]%'");
      while($row=mysql_fetch_array($query))
      $data[]=$row;
      return $data;
  }
    function laporanBulanan() {
      $query = mysql_query("SELECT CONCAT(YEAR(tanggal),'-',mid(tanggal,6,2)) AS tahun_bulan, COUNT(*) AS jumlah_bulanan
      FROM laporan as l left join kelompok as k on l.id_kelompok=k.id_kelompok
      WHERE parent='$_SESSION[id_kelompok]' AND stat='1' GROUP BY YEAR(tanggal),MONTH(tanggal)");
      while($row=mysql_fetch_array($query))
      $data[]=$row;
      return $data;
  }
      function laporanDaerah() {
      $query = mysql_query("SELECT CONCAT(YEAR(tanggal),'-',mid(tanggal,6,2)) AS tahun_bulan, COUNT(*) AS jumlah_bulanan
      FROM laporan as l left join kelompok as k on l.id_kelompok=k.id_kelompok
      WHERE  stat='1' GROUP BY YEAR(tanggal),MONTH(tanggal)");
      while($row=mysql_fetch_array($query))
      $data[]=$row;
      return $data;
  }
  function tampilLap() {
      $query = mysql_query("SELECT id_lap, id_kelompok, tanggal,ket,date_on,stat,
      (SELECT COUNT(id_detail) AS tot_poin FROM detail WHERE laporan.id_lap=detail.id_lap)tot_poin
      FROM laporan WHERE id_kelompok='$_SESSION[id_kelompok]' ORDER BY tanggal ASC");
      while($row=mysql_fetch_array($query))
      $data[]=$row;
      return $data;
    }

    function bacaLap($id_lap)
          {
        $query=mysql_query("SELECT * FROM laporan WHERE id_lap='$_GET[id_lap]'");
        $data=mysql_fetch_array($query);
        $data[]=$row;
        if(isset($data)){
          return $data;
        }
      }

    function updateLap ($id_lap,$id_kelompok,$tanggal,$ket,$date_on,$stat)
    {
      if($_POST){
      # Cek nomor faktur di database
      $tanggal=$_POST['tanggal'];#ambil strin tanggal dari parameter 
      $periode=substr($tanggal,0,7);
      $cek_period=mysql_num_rows(mysql_query
      ("SELECT tanggal FROM laporan WHERE tanggal LIKE '$periode%' AND id_kelompok='$_SESSION[id_kelompok]' "));
      # Kalau nomor faktur sudah ada
      if ($cek_period > 1){
        echo "<script type='text/javascript'>window.alert('Laporan Musyawrah untuk periode ini sudah pernah dibuat !')</script>";
      }
      # Kalau nomor faktur belum ada silahkan di simpan
else{
      $query=mysql_query("UPDATE laporan SET id_kelompok='$id_kelompok', tanggal='$tanggal',ket='$ket',date_on='$date_on',
        stat='$stat'WHERE id_lap='$id_lap'");
    }
  }
}
    
  }
  /**
  * 
  */
  class Detail
  {
    
    function tambahDetail($id_detail,$id_lap,$kendala,$solusi,$ket,$stat,$publis)
    {
      $query="INSERT INTO detail (id_detail,id_lap,kendala,solusi,ket,stat,publis)
      VALUES('$id_detail','$id_lap','$kendala','$solusi','$ket','$stat','$publis')";
      $hasil= mysql_query($query);
    }

      function tampilDetail() {
      $query = mysql_query("SELECT a.*,b.*,c.* FROM kelompok a,laporan b, detail c where a.id_kelompok=b.id_kelompok AND b.id_lap=c.id_lap AND c.id_lap='$_GET[id_lap]'");
      while($row=mysql_fetch_array($query))
      $data[]=$row;
      return $data;
  }
        function tampilDetailPending() {
      $query = mysql_query("SELECT a.*,b.*,c.* FROM kelompok a,laporan b, detail c where a.id_kelompok=b.id_kelompok AND b.id_lap=c.id_lap AND c.stat='Pending' AND a.id_kelompok='$_SESSION[id_kelompok]'");
      while($row=mysql_fetch_array($query))
      $data[]=$row;
      return $data;
  }
    function timelineDetail() {
      $query = mysql_query("SELECT a.*,b.*,c.* FROM kelompok a,laporan b, detail c where a.id_kelompok=b.id_kelompok AND b.id_lap=c.id_lap");
      while($row=mysql_fetch_array($query))
      $data[]=$row;
      return $data;
  }
  function bacaDetail($id_detail)
          {
        $query=mysql_query("SELECT a.*,b.*,c.* FROM kelompok a,laporan b, detail c where a.id_kelompok=b.id_kelompok AND b.id_lap=c.id_lap AND c.id_detail='$_GET[id_detail]'");
        $data=mysql_fetch_array($query);
        $data[]=$row;
        if(isset($data)){
          return $data;
        }
      }
       function updateDetail ($id_detail,$id_lap,$kendala,$solusi,$ket,$stat,$publis)
    {
      $query=mysql_query("UPDATE detail SET id_lap='$id_lap', kendala='$kendala',solusi='$solusi',ket='$ket',stat='$stat',
        publis='$publis'WHERE id_detail='$id_detail'");
    }
  }
  /**
  * 
  */
  class Menu
  {
      function tampilMenu(){
    $query = mysql_query("SELECT * FROM menu ORDER BY id_menu,parent");
    while($row=mysql_fetch_array($query))
      $data[]=$row;
    if(isset($data)){
      return $data;
    }
  }
    
      function tambahMenu($id_menu,$title, $folder,$link, $level,$parent, $icon, $urut) {
    $query = "INSERT INTO menu (id_menu,title, folder, link,level, parent, icon, urut)
              VALUES ('$id_menu','$title', '$folder', '$link', '$level', '$parent', '$icon', '$urut')";
    $hasil = mysql_query($query);
  }

    function comboParent(){
    $query =  mysql_query("select id_menu,title from menu where parent='0'");
    while($row=mysql_fetch_array($query))
      $data[]=$row;
    if(isset($data)){
      return $data;
    }
  }
    function bacaMenu($id_menu)
      {
      $query=mysql_query("SELECT * FROM menu WHERE id_menu='$_GET[id_menu]'");
      $data=mysql_fetch_array($query);
      $data[]=$row;
      if(isset($data)){
        return $data;
      }
    }
     function updateMenu ($id_menu,$title, $folder,$link, $level,$parent, $icon, $urut)
    {
      $query=mysql_query("UPDATE menu SET title='$title', folder='$folder',link='$link',level='$level',parent='$parent',
        icon='$icon',urut='$urut'  WHERE id_menu='$id_menu'");
    }
      function menuNavigasi($user){
        $menu = mysql_query("SELECT * FROM menu WHERE parent='0' AND level='$_SESSION[level]' ORDER BY urut ASC");
    while($row=mysql_fetch_array($menu))
      $data[]=$row;
    if (isset($data)){
      return($data);
    }
  }
  function subMenuNavigasi($menu){
    $smenu = mysql_query("select * from menu where parent='$menu'");
    //$smenu = mysql_query("SELECT a.username,b.id_menu,b.baca,b.tulis,c.* FROM ms_user a, ms_menu_user b, ms_menu c WHERE a.username=b.username AND b.id_menu=c.id_menu AND a.username ='$user' AND b.baca='Y' AND c.parent='$menu' AND a.blokir='N' ORDER BY urut ASC");
    $ada    = mysql_num_rows($smenu);
    //ini asalah
    #ini adalah 
    if($ada==0){
      $data[]=$ada;
      if (isset($data)){
        return false;
      } 
    }else{
      while($row=mysql_fetch_array($smenu))
        $data[]=$row;
      if (isset($data)){
        return($data);
      }
    }
  }
  }

function rupiah($nilai, $pecahan = 0) {
    return number_format($nilai, $pecahan, ',', '.');
}
  

?>
