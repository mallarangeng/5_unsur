<?php
include'../../class/class_5u.php';
include'../../class/function.php';
$db = new Database();
$db->connectMySQL();
$kelompok = new kelompok();
$laporan = new laporan();
$detail = new detail();
$generus = new generus();
#cegah akses tanpa melalui login
#close akses tanpa login
?>

            <div class="panel with-nav-tabs panel-default">
                <div class="panel-heading">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab1default" data-toggle="tab">Data Diri</a></li>
                            <li><a href="#tab2default" data-toggle="tab">Kelengkapan Data</a></li>
                            <!--
                            <li><a href="#tab3default" data-toggle="tab">Default 3</a></li>
                          -->
                        </ul>
                </div>
                <div class="panel-body">
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="tab1default">
                            <!-- Name Section -->
                              <div class="row">
                                <div class="col-md-8 col-md-offset-1">
                                  
                                   
                                      <label>Nama Lengkap :</label>
                                      <div class="form-group">

                                        <div class="col-sm-6">
                                          <input type="hidden" name="nig" value="<?php echo kdauto("generus","937"); ?>">
                                          <input type="hidden" name="id_kelompok" value="<?php echo $_GET['id_kelompok']; ?>">
                                          <input type="text" name="nama" placeholder="Nama Lengkap" class="form-control" required>
                                        </div>
                                      </div>
                                      <label>Tempat Lahir :</label>
                                      <div class="form-group">
                                        <div class="col-sm-6">
                                          <input type="text" name="tempat_lahir" placeholder="Tempat Lahir" class="form-control" required>
                                        </div>
                                      </div>

                                      <label>Tanggal Lahir :</label>
                                      <div class="form-group">
                                        <div class="col-sm-4">
                                          <select name="tgl" placeholder="Gender" class="form-control" required>
                                            <option value="">Tanggal</option>
                                             <?PHP for ($hari=1; $hari<=31; $hari++){ ?>
                                              <option value="<?php echo $hari; ?>"><?php echo $hari; ?></option>
                                              <?php } ?>
                                              </select>

                                          </select>
                                        </div>
                                        <div class="col-sm-4">
                                          <select name="bln" placeholder="Gender" class="form-control" required>
                                            <option value="">Bulan</option>
                                            <?php $nmbln = array("jan","Feb","Mar","Apr","Mei","Jun","Juli","Ags","Sep","Okt","Nov","Des"); ?>
                                            <?PHP for ($bln=1; $bln<=12; $bln++){ ?>
                                            <option value="<?php echo $bln; ?>"><?php echo $nmbln[$bln-1]; ?></option>
                                            <?php } ?>
                                          </select>
                                        </div>
                                        <div class="col-sm-4">
                                          <select name="thn" class="form-control" required>
                                            <option value="">Tahun</option>
                                            <?PHP for ($thn=1980; $thn<=2017; $thn++){ ?>
                                            <option value="<?php echo $thn; ?>"><?php echo $thn; ?></option>
                                            <?php } ?>
                                          </select>
                                        </div>
                                      </div>
                                      <!-- Text input-->
                                      <!-- Text input-->
                                      <label>Jenis Kelamin :</label>
                                      <div class="form-group">
                                        <div class="col-sm-4">
                                          <select name="jekel" class="form-control" required>
                                            <option value="">Jenis Kelamin</option>
                                            <option value="Laki Laki">Laki Laki</option>
                                            <option value="Perempuan">Perempuan</option>
                                          </select>
                                        </div>
                                      </div>
                                          <label>Golongan Darah</label>
                                      <div class="form-group">
                                        <div class="col-sm-4">
                                          <select name="gol_darah" class="form-control" required>
                                            <option value="">Golongan Darah</option>
                                            <option value="A">A</option>
                                            <option value="B">B</option>
                                            <option value="AB">AB</option>
                                            <option value="O">O</option>
                                            <option value="-">Lainya</option>

                                          </select>
                                        </div>
                                      </div>
                            <!-- Emergency Contact Section -->
                                      <!-- Form Name -->
                                
                                </div><!-- /.col-lg-12 -->
                            </div><!-- /.row -->
                            <!-- Payment Modal -->
                        </div>
                        <div class="tab-pane fade" id="tab2default">
                            <div class="row">
                                <div class="col-md-8 col-md-offset-1">
                                 
                                      <label>Alamat</label>
                                      <div class="form-group">
                                        <div class="col-sm-10">
                                          <input type="text" name="alamat" placeholder="Alamat" class="form-control" required>
                                        </div>
                                      </div>
                                      <label>Nomor HP</label>
                                      <div class="form-group">
                                        <div class="col-sm-6">
                                          <input type="text" name="nohp" placeholder="Nomor HP" class="form-control" required>
                                        </div>
                                      </div>      
                            <!-- Parent/Guadian Contact Section -->
                                      <!-- Form Name -->
                                      <label>Nama Orang Tua</label>
                                      <!-- Text input-->
                                      <div class="form-group">
                                        <div class="col-sm-6">
                                          <input type="text" name="nm_ayah" placeholder="Nama ayah" class="form-control" required>
                                        </div>
                                        <div class="col-sm-6">
                                          <input type="text" name="nm_ibu" placeholder="Nama Ibu" class="form-control" required>
                                        </div>
                                      </div>
                                       <label>Tingkatan / Paket</label>
                                      <div class="form-group">
                                        <div class="col-sm-4">
                                          <select name="id_kat" class="form-control" required>
                                            <option value="">Pilih Kategori</option>
                                            <?php
                                            $arraygenerus=$generus->tampilKategori();
                                            if (count($arraygenerus)) {
                                            foreach($arraygenerus as $data) {
                                          ?>
                                            <option value="<?php echo $data['id_kat']; ?>"><?php echo $data['id_kat']; ?>-<?php echo $data['kategori']; ?></option>
                                          <?php
                                          }
                                          } ?>
                                          </select>
                                        </div>
                                       
                                      </div>
                                          <label>Foto</label>
                                        <div class="form-group">
                                        <div class="col-sm-4">
                                        
                                                  
                                                  <input type="file" name="foto" required>
                                                   <input type="hidden" name="date_input" value="<?php echo tglSkrg(); ?>">
                                                  <input type="hidden" name="date_update" value="">
                                                  
                                     
                                        </div>
                                      </div>
                            <!-- Emergency Contact Section -->
                                      <!-- Form Name -->
                                  
                                </div><!-- /.col-lg-12 -->
                            </div>
                        </div>
                        <!-- panel 3 di non aktifkan 
                        <div class="tab-pane fade" id="tab3default">Default 3</div>
                      -->
                    </div>
                </div>
            </div>