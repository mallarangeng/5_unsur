<?php
include'../../class/class_5u.php';
include'../../class/function.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$laporan = new laporan();
#cegah akses tanpa melalui login
$user = new User();
#close akses tanpa login
?><div class="panel-body">
                <div class="form-group">
                    <label class="col-sm-4 control-label">Nama Konsumen</label>
                 <div class="col-sm-6">
                                   
                    <input type="text" placeholder="nama" class="form-control " id="nama">
                </div>
                </div><br>
                    <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Lahir</label>
           <div class="col-sm-2">
                            <select class="form-control " id="tgl" required>
                            <?PHP for ($hari=1; $hari<=31; $hari++){ ?>
                            <option value="<?php echo $hari; ?>"><?php echo $hari; ?></option>
                            <?php } ?>
                            </select>
                </div>
                 <div class="col-sm-3">
                            <select class="form-control " id="bln" required>
                            <?php $nmbln = array("jan","Feb","Mar","Apr","Mei","Jun","Juli","Ags","Sep","Okt","Nov","Des"); ?>
                            <?PHP for ($bln=1; $bln<=12; $bln++){ ?>
                            <option value="<?php echo $bln; ?>"><?php echo $nmbln[$bln-1]; ?></option>
                            <?php } ?>
                            </select>
                </div>
                                <div class="col-sm-3">
                            <select class="form-control "  id="thn" required>
                            
                            <?PHP for ($thn=1930; $thn<=2015; $thn++){ ?>
                            <option value="<?php echo $thn; ?>"><?php echo $thn; ?></option>
                            <?php } ?>
                            </select>
                </div>

             </div><br>
        <div class="form-group">
            <label class="col-sm-4 control-label">Jenis Kelamin</label>
            <div class="col-sm-4">
               <select class="form-control " id="jenis_kel" required>
                            <option value="L">Laki Laki</option>
                            <option value="P">Perempuan</option>
                            </select>
            </div>
                                
        </div><br>

      
        <div class="form-group">
            <label class="col-sm-4 control-label">Alamat</label>
            <div class="col-sm-8">
                <input type="text" placeholder="Alamat" class="form-control " id="alamat">
            </div>
        </div><br>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Nomor HP</label>
                       <div class="col-sm-6">
                <input type="text" placeholder="Nomor HP" class="form-control " id="hp">
            </div>
        </div><br>
        <div class="form-group">
            <label class="col-sm-4 control-label">Email</label>
            <div class="col-sm-6">
                <input type="text" placeholder="Email" class="form-control " id="email">
            </div>
        </div><br>
        <div class="form-group">
            <label class="col-sm-4 control-label">Keterangan</label>
            <div class="col-sm-6">
                <input type="text" placeholder="Keterangan" class="form-control " id="ket">
                
            </div>
        </div><br>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nomor KTP</label>
            <div class="col-sm-6">
                <input type="text" placeholder="Nomor KTP" class="form-control " id="ktp">
            </div>
        </div><br>
        <div class="hr-line-dashed"></div>

                </div>