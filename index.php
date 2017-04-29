<?php
//error_reporting(0);
session_start();
include'class/class_5u.php';
include'class/function.php';
$db = new Database();
// koneksi ke MySQL via method
$db->connectMySQL();
// script untuk user taruh sisi bos hahha semangat untuk kodingya
$user = new User();
$laporan = new laporan();
$detail = new detail();
$menu = new menu();
#session nama lengkap
//$nm_lengkap = $_SESSION['fullname'];
if (!$user->get_sesi())
{
header("location:login.php");
}
if ($_GET['r'] == 'logout')
{
$user->user_logout();
header("location:login.php");
}
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=2.0">
	<!--<meta charset="utf-8">
	<meta name="viewport" content="initial-scale=1.0, maximum-scale=2.0">-->
	<title>KBM PPG-TANGBAR</title>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/dataTables.bootstrap.css">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/dataTables.tableTools.css">
	
	<script type="text/javascript" language="javascript" src="bootstrap/js/jquery-1.11.3.js"></script>
	<script type="text/javascript" language="javascript" src="bootstrap/js/jquery.dataTables.js"></script>
	<script type="text/javascript" language="javascript" src="bootstrap/js/dataTables.bootstrap.js"></script>
	<script type="text/javascript" language="javascript" src="bootstrap/js/dataTables.tableTools.js"></script>
	<!--<script type="text/javascript" language="javascript" src="../resources/syntax/shCore.js"></script>
	<script type="text/javascript" language="javascript" src="../resources/demo.js"></script>-->
  <!--
  <link href="bootstrap/source-sans-pro/source-sans-pro.css" rel="stylesheet" type="text/css" />
  -->
  <link href="bootstrap/css/custom.css" rel="stylesheet" type="text/css" />

    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript"></script>
    <link href="jquery/jquery-ui.css" rel="stylesheet" type="text/css" />  
  <script src="jquery/jquery-ui.js"></script>
  <script src="scripts/aplikasi.js"></script>
    <link href="images/logo.png" rel="shortcut icon" />

<!--  datepicker -->
  <link rel="stylesheet" href="datepicker/jquery-ui.css">
 
  <script src="datepicker/jquery-ui.js"></script>
  <link rel="stylesheet" href="resources/demos/style.css">
  <script>
  $(function() {
    $( "#datepicker" ).datepicker({
      changeMonth: true,
      changeYear: true,
      dateFormat: "yy-mm-dd"
    });
  });
  </script>
  <!-- close   datepicker -->

<script src="ckeditor/ckeditor.js"></script>

</head>
<style type="text/css">
div.dataTables_length{
	float:left !important;
}
</style>

<body>
<script type="text/javascript" language="javascript" class="init">
$(document).ready(function() {
	$('#example').dataTable( {
		 "lengthMenu": [[10,15, 25, 50, -1], [10,15, 25, 50, "All"]],
        "dom": 'T<"clear">lfrtip',
        "tableTools": {
            "sSwfPath": "img/copy_csv_xls_pdf.swf"
        }
    } );
} );
</script>
<style type="text/css" class="init"></style>

<div class="navbar navbar-default navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <a href="index.php" class="navbar-brand"><font class="info_color">LIMA UNSUR</font></a>
          <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        
        <div class="navbar-collapse collapse" id="navbar-main">
          <ul class="nav navbar-nav">
            <li><a href="index.php"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>&nbsp;Home</a></li>
             <?php
            $arrayMenu = $menu->menuNavigasi();
          if(isset($arrayMenu) && $arrayMenu !=NULL){
            foreach($arrayMenu as $data){
          ?>    
           
           <li><a href="?r=<?php echo $data['folder']?>&pg=<?php echo $data['link']?>"><span class="glyphicon <?php echo $data['icon']?>" aria-hidden="true"></span>&nbsp;<?php echo $data['title']?></a></li>
              <?php
            }
          }
      ?>
      <li><a href="?r=logout"><span class="glyphicon glyphicon-off " aria-hidden="true"></span>&nbsp;Logout</a></li>
           <!--
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="themes">Setting<span class="caret"></span></a>
              <ul class="dropdown-menu" aria-labelledby="themes">
             
                <li><a href="index.php?page=pem_show">User</a></li>
               
               </ul>
            </li>
     
  
             <li>
              <a href="?r=kelompok&pg=kelompok">Kelompok</a>
            </li>
          </ul>

          <ul class="nav navbar-nav navbar-right">
                       <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="download">Hy &nbsp;<strong><?php echo $_SESSION['nm_kelompok'];?> </strong><span class="caret"></span></a>
              <ul class="dropdown-menu" aria-labelledby="download">
                <li><a href="">About</a></li>
                <li><a href="?r=logout">Logout</a></li>
                </ul>
            </li>
          </ul>

        -->

        </div>
      
      </div>
    </div>
      <!--BODY
      !-->
<div class="container-fluid">
    <br>
<p>
<br>

<h2 ><small><span class="glyphicon glyphicon-user " aria-hidden="true"></span><strong>&nbsp; <?php echo $_SESSION['level'];?> <?php echo $_SESSION['nm_kelompok'];?> </strong></small></h2><hr>
  
		 <?php
                                if (!isset($_GET['r'])){
                                    include('view/home/dashboard.php');
                                }else{
                                    $r  = $_GET['r'];
                                    $pg = $_GET['pg'];
                                        include "view/".$r.'/'.$pg.".php";
                                }
                            ?>
                            <br>
</div>
      <div class="well well-sm"><small><i>M5U-TB ver. 1.0 &copy; <a href="https://ppg-tangbar.com/">ppg-tangbar.com</a>&nbsp;<?php echo date('Y'); ?> by ICT Team<br>Technical Support : 0857 1588 7704 (WhatsApp)</i></small></div>
      </body>
</html>