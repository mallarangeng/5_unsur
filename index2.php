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
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>PPG Tangerang Barat</title>
<!--
<link id="favicon" rel="shortcut icon" href="images/favicon/favicon.png" />
-->
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="bootstrap/source-sans-pro/source-sans-pro.css" rel="stylesheet" type="text/css" />
  <link href="bootstrap/css/custom.css" rel="stylesheet" type="text/css" />
    <script src="bootstrap/js/jquery-1.10.2.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript"></script>
  	<link href="jquery/jquery-ui.css" rel="stylesheet" type="text/css" />  
	<script src="jquery/jquery-ui.js"></script>
  <script src="scripts/aplikasi.js"></script>
 	<link href="images/logo.png" rel="shortcut icon" />
  <!--  datepicker -->
  <link rel="stylesheet" href="datepicker/jquery-ui.css">
  <script src="datepicker/jquery-1.10.2.js"></script>
  <script src="datepicker/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
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

</head>


<body>
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

<h2 ><small><span class="glyphicon glyphicon-user " aria-hidden="true"></span><strong>&nbsp;Hi : <?php echo $_SESSION['level'];?> <?php echo $_SESSION['nm_kelompok'];?> </strong></small></h2><hr>
     

  

      <?php
                                if (!isset($_GET['r'])){
                                    include('view/home/home.php');
                                }else{
                                    $r  = $_GET['r'];
                                    $pg = $_GET['pg'];
                                        include "view/".$r.'/'.$pg.".php";
                                }
                            ?>


  
      </div>

 <footer>
      <div class="container-fluid">
        <hr>
        <small>Copyright &copy;PPG Tangerang Barat <?php echo date('Y'); ?><br>Whatsapp : 085715887704</small>
      </footer>
      <hr>
    </div>
</body>
</html>
