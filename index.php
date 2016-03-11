<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>PPG Tangerang Barat</title>
<link id="favicon" rel="shortcut icon" href="images/favicon/favicon.png" />
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="bootstrap/source-sans-pro/source-sans-pro.css" rel="stylesheet" type="text/css" />
  <link href="bootstrap/css/custom.css" rel="stylesheet" type="text/css" />
    <script src="bootstrap/js/jquery-1.10.2.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript"></script>
  	<link href="jquery/jquery-ui.css" rel="stylesheet" type="text/css" />  
	<script src="jquery/jquery-ui.js"></script>
 	<link href="images/logo.png" rel="shortcut icon" />
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
          	   <li>
              <a href="">Laporan</a>
            </li>
            <!--
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="themes">Profile &nbsp;<span class="caret"></span></a>
              <ul class="dropdown-menu" aria-labelledby="themes">
                <li><a href="index.php?r=transaksi&pg=rekap_data">Visi</a></li>
                 <li><a href="index.php?r=transaksi&pg=rekap_data">Struktur Org</a></li>
                <li class="divider"></li>
                <li><a href="index.php?page=pem_show">Misi</a></li>
                
               
               </ul>
            </li>
          -->
              <li>
              <a href="#teamppg">Laporan I</a>
            </li>
             <li>
              <a href="?r=kelompok&pg=kelompok">Kelompok</a>
            </li>
          </ul>

          <ul class="nav navbar-nav navbar-right">
                       <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="download">Hendri Mamang !<span class="caret"></span></a>
              <ul class="dropdown-menu" aria-labelledby="download">
                <li><a href="">About</a></li>
                <li><a href="">Setting</a></li>
                </ul>
            </li>
          </ul>

        </div>
      </div>
    </div>
      <!--BODY
      !-->
    
    <div class="container-fluid">
      <br>
<p>
<br>
<p>
  <h3> <span class="glyphicon glyphicon-th" aria-hidden="true"></span> Dashboard </h3>
  <hr>
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
        <div class="row">
          <div class="col-lg-12">
            <ul class="list-unstyled">
              <li class="pull-right"><a href="#top"></a></li>          
            </ul>
            <p><a href="" rel="nofollow"	>PPG Tangerang Barat  <?php echo date('Y'); ?></a> Design Build With <a href="https://github.com/twbs/bootstrap" target="_blank" rel="nofollow">Framework Bootstrap</a></p>

          </div>
        </div>

      </footer> 
    </div>


</body>
</html>
