<?php
include'../../class/class_5u.php';
include'../../class/function.php';
$dodolb = new Database();
$dodolb->connectMySQL();
$kelompok = new kelompok();
$laporan = new laporan();
$dodoletail = new detail();
$generus = new generus();
$dodol= $generus->bacaGenerus($nig);
#cegah akses tanpa melalui login
#close akses tanpa login
?>
           
                <div class="panel-heading">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tabke1" data-toggle="tab">Data Diri</a></li>
                            <li><a href="#tabke2" data-toggle="tab">Kelengkapan Data</a></li>
                            <!--
                            <li><a href="#tab3default" data-toggle="tab">Default 3</a></li>
                          -->
                        </ul>
                </div>
                <div class="panel-body">
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="tabke1">
                            <!-- Name Section -->
                              <div class="row">
                                <div class="col-md-8 col-md-offset-1">
                                  
                                   
                                      <label>Nama Lengkap :</label>
                                      <div class="form-group">

                                        <div class="col-sm-6">
                                          
                                          <input type="text" name="nig" value="<?php echo $dodol['nig'] ?>">
                                          <input type="hidden" name="id_kelompok" value="<?php echo $dodol['id_kelompok'] ?>">
                                          <input type="text" name="nama" placeholder="Nama Lengkap" class="form-control" value="<?php echo $dodol['nama'] ?>" required>
                                        </div>
                                      </div>
                                      <label>Tempat Lahir :</label>
                                      <div class="form-group">
                                        <div class="col-sm-6">
                                          <input type="text" name="tempat_lahir" placeholder="Tempat Lahir" class="form-control" value="<?php echo $dodol['tempat_lahir'] ?>" required>
                                        </div>
                                      </div>

                                        <?php
                                          $tanggal=explode('-',$dodol['tgl_lahir']);
                                          ?> 
                                      <label>Tanggal Lahir :</label>
                                      <div class="form-group">
                                        <div class="col-sm-4">
                                          <select name="tgl" placeholder="Gender" class="form-control" required>
                                            <option value="<?php echo $tanggal[2]; ?>"><?php echo $tanggal[2]; ?></option>
                                             <?PHP for ($hari=1; $hari<=31; $hari++){ ?>
                                              <option value="<?php echo $hari; ?>"><?php echo $hari; ?></option>
                                              <?php } ?>
                                              </select>

                                          </select>
                                        </div>
                                        <div class="col-sm-4">
                                          <select name="bln" placeholder="Gender" class="form-control" required>
                                            <option value="<?php echo $tanggal[1]; ?>"><?php echo $tanggal[1]; ?></option>
                                            <?php $nmbln = array("jan","Feb","Mar","Apr","Mei","Jun","Juli","Ags","Sep","Okt","Nov","Des"); ?>
                                            <?PHP for ($bln=1; $bln<=12; $bln++){ ?>
                                            <option value="<?php echo $bln; ?>"><?php echo $nmbln[$bln-1]; ?></option>
                                            <?php } ?>
                                          </select>
                                        </div>
                                        <div class="col-sm-4">
                                          <select name="thn" class="form-control" required>
                                            <option value="<?php echo $tanggal[0]; ?>"><?php echo $tanggal[0]; ?></option>
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
                                            <option value="<?php echo $dodol['jekel'] ?>">Jenis Kelamin</option>
                                            <option value="Laki Laki">Laki Laki</option>
                                            <option value="Perempuan">Perempuan</option>
                                          </select>
                                        </div>
                                      </div>
                                          <label>Golongan Darah</label>
                                      <div class="form-group">
                                        <div class="col-sm-4">
                                          <select name="gol_darah" class="form-control" required>
                                            <option value="<?php echo $dodol['gol_darah'] ?>"><?php echo $dodol['gol_darah'] ?></option>
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
                        <div class="tab-pane fade" id="tabke2">
                            <div class="row">
                                <div class="col-md-8 col-md-offset-1">
                                 
                                      <label>Alamat</label>
                                      <div class="form-group">
                                        <div class="col-sm-10">
                                          <input type="text" name="alamat" placeholder="Alamat" class="form-control" value="<?php echo $dodol['alamat'] ?>" required>
                                        </div>
                                      </div>
                                      <label>Nomor HP</label>
                                      <div class="form-group">
                                        <div class="col-sm-6">
                                          <input type="text" name="nohp" placeholder="Nomor HP" class="form-control" value="<?php echo $dodol['nohp'] ?>" required>
                                        </div>
                                      </div>      
                            <!-- Parent/Guadian Contact Section -->
                                      <!-- Form Name -->
                                      <label>Nama Orang Tua</label>
                                      <!-- Text input-->
                                      <div class="form-group">
                                        <div class="col-sm-6">
                                          <input type="text" name="nm_ayah" placeholder="Nama ayah" class="form-control" value="<?php echo $dodol['nm_ayah'] ?>" required>
                                        </div>
                                        <div class="col-sm-6">
                                          <input type="text" name="nm_ibu" placeholder="Nama Ibu" class="form-control" value="<?php echo $dodol['nm_ibu'] ?>" required>
                                        </div>
                                      </div>
                                       <label>Tingkatan / Paket</label>
                                      <div class="form-group">
                                        <div class="col-sm-4">
                                          <select name="id_kat" class="form-control" required>
                                            <option value="<?php echo $dodol['id_kat'] ?>"><?php echo $dodol['kategori'] ?></option>
                                            <?php
                                            $arraygenerus=$generus->tampilKategori();
                                            if (count($arraygenerus)) {
                                            foreach($arraygenerus as $dodolata) {
                                          ?>
                                            <option value="<?php echo $dodolata['id_kat']; ?>"><?php echo $dodolata['id_kat']; ?>-<?php echo $dodolata['kategori']; ?></option>
                                          <?php
                                          }
                                          } ?>
                                          </select>
                                        </div>
                                       
                                      </div>
                                          <label>Foto</label>
                                        <div class="form-group">
                                        <div class="col-sm-4">
                                         <label class="btn btn-info btn-file">
                                            Cari File Foto <input type="file" name="foto" hidden>
                                        </label>
                                                   <input type="hidden" name="date_input" value="<?php echo $dodol['date_input'] ?>">
                                                  <input type="hidden" name="date_update" value="<?php echo tglSkrg(); ?>">
                                                  
                                     
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
         