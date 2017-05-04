<?php
  function base_url ()
    {
      return sprintf("http://localhost/apps/limaunsur/");
      #panggil fungsi ini dengan cara di (echo base_url();)
    }
function kdauto($tabel, $inisial){
	$struktur	= mysql_query("SELECT * FROM $tabel");
	$field		= mysql_field_name($struktur,0);
	$panjang	= mysql_field_len($struktur,0);

 	$qry	= mysql_query("SELECT max(".$field.") FROM ".$tabel);
 	$row	= mysql_fetch_array($qry); 
 	if ($row[0]=="") {
 		$angka=0;
	}
 	else {
 		$angka		= substr($row[0], strlen($inisial));
 	}
	
 	$angka++;
 	$angka	=strval($angka); 
 	$tmp	="";
 	for($i=1; $i<=($panjang-strlen($inisial)-strlen($angka)); $i++) {
		$tmp=$tmp."0";	
	}
 	return $inisial.$tmp.$angka;
}

// Konvesi dd-mm-yyyy -> yyyy-mm-dd
function tgl_ind_to_eng($tgl) {
	$tgl_eng=substr($tgl,6,4)."-".substr($tgl,3,2)."-".substr($tgl,0,2); 
	return $tgl_eng;
}

// Konvesi yyyy-mm-dd -> dd-mm-yyyy
function tgl_eng_to_ind($tgl) {
	$tgl_ind=substr($tgl,8,2)."-".substr($tgl,5,2)."-".substr($tgl,0,4);
	return $tgl_ind;
}
function tglSkrg(){
  date_default_timezone_set('Asia/Jakarta');
  $tgl  = date("Y-m-d h:m:s");
  return $tgl;
  }
function umur($tgl_lahir,$delimiter='-') {
    
    list($tahun,$bulan,$hari) = explode($delimiter, $tgl_lahir); 
    $selisih_hari = date('d') - $hari;
    $selisih_bulan = date('m') - $bulan;
    $selisih_tahun = date('Y') - $tahun;
    if ($selisih_hari < 0 || $selisih_bulan < 0) {
        $selisih_tahun--;
    }
    return $selisih_tahun;
}

function format_angka($angka) {
	$hasil = number_format($angka,0, ",",".");
	return $hasil;
}

function terbilang($x)
{
  $abil = array("", "Satu", "Dua", "Tiga", "Empat", "Lima", "Enam", "Tujuh", "Delapan", "Sembilan", "Sepuluh", "Sebelas");
  if ($x < 12)
    return " " . $abil[$x];
  elseif ($x < 20)
    return Terbilang($x - 10) . " Belas" ;
  elseif ($x < 100)
    return Terbilang($x / 10) . " Puluh" . Terbilang($x % 10);
  elseif ($x < 200)
    return " seratus" . Terbilang($x - 100);
  elseif ($x < 1000)
    return Terbilang($x / 100) . " Ratus" . Terbilang($x % 100);
  elseif ($x < 2000)
    return " seribu" . Terbilang($x - 1000);
  elseif ($x < 1000000)
    return Terbilang($x / 1000) . " Ribu" . Terbilang($x % 1000);
  elseif ($x < 1000000000)
    return Terbilang($x / 1000000) . " Juta" . Terbilang($x % 1000000);
}

  function DateToIndo($date) 
    {   // fungsi atau method untuk mengubah tanggal ke format indonesia
      // variabel BulanIndo merupakan variabel array yang menyimpan nama-nama bulan
      $BulanIndo = array("Jan", "Feb", "Mar","Apr", "Mei", "Juni","Juli", "Ags", "Sep","Okt", "Nov", "Des");
      $tahun = substr($date, 0, 4); // memisahkan format tahun menggunakan substring
      $bulan = substr($date, 5, 2); // memisahkan format bulan menggunakan substring
      $tgl   = substr($date, 8, 2); // memisahkan format tanggal menggunakan substring
      $result = $tgl . " " . $BulanIndo[(int)$bulan-1] . " ". $tahun;
      return($result);
    }
  function tanggal_indo($tanggal, $cetak_hari = false)
{
  $hari = array ( 1 =>    'Senin',
        'Selasa',
        'Rabu',
        'Kamis',
        'Jumat',
        'Sabtu',
        'Minggu'
      );
      
  $bulan = array (1 =>   'Januari',
        'Februari',
        'Maret',
        'April',
        'Mei',
        'Juni',
        'Juli',
        'Agustus',
        'September',
        'Oktober',
        'November',
        'Desember'
      );
  $split    = explode('-', $tanggal);
  $tgl_indo = $split[2] . ' ' . $bulan[ (int)$split[1] ] . ' ' . $split[0];
  
  if ($cetak_hari) {
    $num = date('N', strtotime($tanggal));
    return $hari[$num] . ', ' . $tgl_indo;
  }
  return $tgl_indo;
}

?>