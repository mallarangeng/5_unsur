<?php  
error_reporting(0);
session_start();
include_once'class/class_5u.php';
// instance objek db dan user
$user = new User();
$db = new Database();
// koneksi ke MySQL via method
$db->connectMySQL();
// cek apakah user login atau tidak via method
if($user->get_sesi()) {
  header("location:index.php");
}
if($_SERVER["REQUEST_METHOD"] == "POST") {
  $login=$user->cek_login($_POST['id_kelompok'], $_POST['password']);
  if($login) {
     // login sukses, arahkan ke file index.php
    header("location:index.php");
  }
  else {
  // login gagal, beri peringatan dan kembali ke file index.php
 header("location:login.php?r=error");
  }
}
?>
<title>SITEM KBM PPG TANGERANG BARAT</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="bootstrap/css/login.css" rel="stylesheet" type="text/css" />
 <script src="bootstrap/js/jquery-1.10.2.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>

<link href="images/logo.png" rel="shortcut icon" />
        <body>
            <div class="container">
                <div class="row vertical-offset-100">
                    <div class="col-md-4 col-md-offset-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">                                
                                <div class="row-fluid user-row">
                                    <img src="images/logo-ppg.png" width="180" class="img-responsive" alt="Conxole Admin"/>
                                </div>
                            </div>
                            <br>
                            <center><strong>SELAMAT DATANG DI SISTEM KBM PPG TANGERANG BARAT</strong></center>
                            <div class="panel-body">
                                <?php if($_GET['r']=='error') { echo'
<div class="alert alert-danger alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <span class="glyphicon glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span><strong>&nbsp;Info&nbsp;</strong>User atau password yang anda masukan salah !
</div>'
; } ?>
                                <form accept-charset="UTF-8" action="?op=in" method="post" role="form" class="form-signin">
                                    <fieldset>
                                        <label class="panel-login">
                                            <div class="login_result"></div>
                                        </label>
                                        <input class="form-control" placeholder="Masukan User ID" id="username" name="id_kelompok" type="text" required>
                                        <input class="form-control" placeholder="Masukan Password" id="password" name="password" type="password" required>
                                        
                                        <input class="btn btn-lg btn-success btn-block" type="submit" id="login" value="Masuk">
                                    </fieldset>
                                </form>
                                <center><small>M5U-TB ver. 1.0 © <a href="http://ppg-tangbar.com">ppg-tangbar.com</a>&nbsp;2016 by ICT Team Technical Support : 0857 1588 7704 (WhatsApp)</small></center>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </body>
            </div>
<script type="text/javascript">
$(document).ready(function() {
    $(document).mousemove(function(event) {
        TweenLite.to($("body"), 
        .5, {
            css: {
                backgroundPosition: "" + parseInt(event.pageX / 8) + "px " + parseInt(event.pageY / '12') + "px, " + parseInt(event.pageX / '15') + "px " + parseInt(event.pageY / '15') + "px, " + parseInt(event.pageX / '30') + "px " + parseInt(event.pageY / '30') + "px",
                "background-position": parseInt(event.pageX / 8) + "px " + parseInt(event.pageY / 12) + "px, " + parseInt(event.pageX / 15) + "px " + parseInt(event.pageY / 15) + "px, " + parseInt(event.pageX / 30) + "px " + parseInt(event.pageY / 30) + "px"
            }
        })
    })
})
            </script>