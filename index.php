<?php
error_reporting(0);
include_once 'class/class.php';
$db = new Database();
$db->connectMySQL();
$konfirmasi = new Konfirmasi();
?>


<html>
<head>
<title>Konfirmasi</title>
<link href="bootstrap-3.3.5-dist/css/bootstrap.css" rel="stylesheet" type="text/css">
<script src="bootstrap-3.3.5-dist/js/bootstrap.js"></script>
</head>
<style type="text/css">
.kecil {
	font-size: 13px;
}

</style>
<body>
<div class="container">
 

              <?php
                if (!isset($_GET['r'])){
                  include('view/konfirmasi-data.php');

                }else{
                  $page = $_GET['r'];
                  include "view/".$page .".php";
                }
              ?>


 </div>
</body>

</html>