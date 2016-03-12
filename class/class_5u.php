<?php 
  error_reporting(0);
  class Database {
  private $dbHost="localhost";
  private $dbUser="root";
  private $dbPass="";
  private $dbName="limaunsur";
  function connectMySQL() {
  mysql_connect($this->dbHost, $this->dbUser, $this->dbPass);
  mysql_select_db($this->dbName) or die ("Database Tidak Ditemukan di Server"); 
  }
  }

  class User
  {
    
    function cek_login($kd_admin, $password) 
      {
        $password = md5($password);
        $result = mysql_query("SELECT * FROM admin WHERE kd_admin='$kd_admin' AND password='$password'");
        $user_data = mysql_fetch_array($result);
        $no_rows = mysql_num_rows($result);
        if ($no_rows == 1) 
        {
          $_SESSION['login'] = TRUE;
          $_SESSION['kd_admin'] = $user_data['kd_admin'];
          $_SESSION['nm_admin'] = $user_data['nm_admin'];
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
      $query = mysql_query("SELECT * FROM kelompok");
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
      function tampilKoor() {
      $query = mysql_query("SELECT id_koor, nm_koor, ket,
      (SELECT SUM(kredit) AS total_kredit FROM transaksi WHERE transaksi.id_koor=koordinator.id_koor)total_kredit,
      (SELECT SUM(debit) AS total_debit FROM transaksi WHERE transaksi.id_koor=koordinator.id_koor)total_debit
      FROM koordinator");
      while($row=mysql_fetch_array($query))
      $data[]=$row;
      return $data;
  }

   function tambahKelompok($id_kelompok,$nm_kelompok,$parent,$alamat,$nohp,$penjab,$password,$level)
    {
      $query="INSERT INTO kelompok (id_kelompok,nm_kelompok,parent,alamat,nohp,penjab,password,level)
      VALUES('$id_kelompok','$nm_kelompok','$parent','$alamat','$nohp','$penjab','$password','$level')";
      $hasil= mysql_query($query);
    }

  }

  /**
  * 
  */
  class Trans
  {
    function tambahTrans($kd_admin,$id_koor,$tanggal,$kredit,$debit,$ket)
    {
      $query="INSERT INTO transaksi (kd_trans,kd_admin,id_koor,tanggal,kredit,debit,ket)
      VALUES('$kd_trans','$kd_admin','$id_koor','$tanggal','$kredit','$debit','$ket')";
      $hasil= mysql_query($query);
    }    
    function tampilTrans2($id_koor) {
      $query = mysql_query("SELECT kd_trans, kd_admin, id_koor,tanggal,kredit,debit,ket 
      (SELECT COUNT(kode_file) AS tot_arsip FROM datafile Where transaksi.kd_trans=datafile.kd_trans ) tot_arsip,
      FROM transaksi WHERE id_koor='$_GET[id_koor]' ORDER BY tanggal ");
  }

      function tampilTrans($id_koor) {
      $query = mysql_query("SELECT * FROM transaksi WHERE id_koor='$_GET[id_koor]' ORDER BY tanggal");
      while($row=mysql_fetch_array($query))
      $data[]=$row;
      return $data;
  }

    function bacaTrans($kd_trans)
          {
        $query=mysql_query("SELECT * FROM transaksi WHERE kd_trans='$_GET[kd_trans]'");
        $data=mysql_fetch_array($query);
        $data[]=$row;
        if(isset($data)){
          return $data;
        }
      }

      function updateTrans ($kd_trans,$kd_admin,$id_koor,$tanggal,$kredit,$debit,$ket)
    {
      $query=mysql_query("UPDATE transaksi SET kd_admin='$kd_admin', id_koor='$id_koor',tanggal='$tanggal',kredit='$kredit',
        debit='$debit',ket='$ket'WHERE kd_trans='$kd_trans'");
    }
    
  }
  class Datafile  {
  
      function tambahDatafile($kd_trans,$nama_file,$gambar)
      {
          $query="INSERT INTO datafile(kd_trans,nama_file,gambar)
          VALUES('$kd_trans','$nama_file','$gambar')";
          move_uploaded_file($_FILES['gambar']['tmp_name'],"file_gambar/".$gambar);
          $hasil= mysql_query($query);
      }
  
  function tampilDatafile($kd_trans)
     {
          $query = mysql_query("SELECT * FROM datafile WHERE kd_trans='$_GET[kd_trans]'");
          while($row=mysql_fetch_array($query))
          $data[]=$row;
          return $data;
    }
  
  function bacaDatafile ($field,$kode_file)
    {
        $query=mysql_query("SELECT * FROM datafile WHERE kode_file='$kode_file'");
        $data=mysql_fetch_array($query);
        if ($field == 'kode_file') return $data['kode_file'];
        else if ($field == 'kd_trans') return $data['kd_trans'];
        else if ($field == 'nama_file') return $data['nama_file'];
        else if ($field == 'gambar') return $data['gambar'];
    }
  function updateDatafile ($kode_file,$kd_trans,$nama_file,$gambar)
    {
      if (empty($gambar)){
      $query=mysql_query("UPDATE datafile SET
      kd_trans='$kd_trans',nama_file='$nama_file'WHERE kode_file='$kode_file'");
      $hasil= mysql_query($query);
        echo"<meta http-equiv='refresh' content='0;url=?r=datafile&pg=file_data&kd_trans=".$_GET['kd_trans']."'>";
    }
    
  else 
    {
  $query=mysql_query("UPDATE datafile SET
  kd_trans='$kd_trans',nama_file='$nama_file',gambar='$gambar' WHERE kode_file='$kode_file'");
  move_uploaded_file($_FILES['gambar']['tmp_name'],"file_gambar/".$gambar);
  $hasil= mysql_query($query);
     echo"<meta http-equiv='refresh' content='0;url=?r=datafile&pg=file_data&kd_trans=".$_GET['kd_trans']."'>";
  }
  }
}
function rupiah($nilai, $pecahan = 0) {
    return number_format($nilai, $pecahan, ',', '.');
}
  

?>
