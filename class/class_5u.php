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
        $password = md5($password);
        $result = mysql_query("SELECT * FROM kelompok WHERE id_kelompok='$id_kelompok' AND password='$password'");
        $user_data = mysql_fetch_array($result);
        $no_rows = mysql_num_rows($result);
        if ($no_rows == 1) 
        {
          $_SESSION['login'] = TRUE;
          $_SESSION['id_kelompok'] = $user_data['id_kelompok'];
          $_SESSION['nm_kelompok'] = $user_data['nm_kelompok'];
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
  // Tampilkan data data bank 
  function tampilKelompok() {
      $query = mysql_query("SELECT * FROM kelompok ORDER BY parent,id_kelompok");
      while($row=mysql_fetch_array($query))
      $data[]=$row;
      return $data;
  }
  function tampilDesa() {
      $query = mysql_query("SELECT * FROM kelompok WHERE parent='0'");
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
      $query=mysql_query("UPDATE kelompok SET nm_kelompok='$nm_kelompok', parent='$parent',
        alamat='$alamat', nohp='$nohp', penjab='$penjab', password='$password', level='$level' WHERE id_kelompok='$id_kelompok'");
    }

  }

  /**
  * 
  */
  class Laporan
  {
    function tambahLap($id_lap,$id_kelompok,$tanggal,$ket,$date_on,$stat)
    {
      $query="INSERT INTO laporan (id_lap,id_kelompok,tanggal,ket,date_on,stat)
      VALUES('$id_lap','$id_kelompok','$tanggal','$ket','$date_on','$stat')";
      $hasil= mysql_query($query);
    }
    function tampilLap2() {
      $query = mysql_query("SELECT * FROM laporan");
      while($row=mysql_fetch_array($query))
      $data[]=$row;
      return $data;
  }
  function tampilLap() {
      $query = mysql_query("SELECT id_lap, id_kelompok, tanggal,ket,date_on,stat,
      (SELECT COUNT(id_detail) AS tot_poin FROM detail WHERE laporan.id_lap=detail.id_lap)tot_poin
      FROM laporan WHERE id_kelompok='$_SESSION[id_kelompok]'");
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
      $query=mysql_query("UPDATE laporan SET id_kelompok='$id_kelompok', tanggal='$tanggal',ket='$ket',date_on='$date_on',
        stat='$stat'WHERE id_lap='$id_lap'");
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
      $query = mysql_query("SELECT * FROM detail WHERE id_lap='$_GET[id_lap]'");
      while($row=mysql_fetch_array($query))
      $data[]=$row;
      return $data;
  }
  function bacaDetail($id_detail)
          {
        $query=mysql_query("SELECT * FROM detail WHERE id_detail='$_GET[id_detail]'");
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

function rupiah($nilai, $pecahan = 0) {
    return number_format($nilai, $pecahan, ',', '.');
}
  

?>
