 $(function(){
             $(document).on('click','.edit-profile',function(e){
                e.preventDefault();
                $("#modal-profile").modal('show');
                $(".modal-title").html('UBAH PROFILE KELOMPOK');
                $.get("view/profile/profile_edit2.php",
                    {id_kelompok:$(this).attr('data-id')},
                    function(html){
                        $(".modal-body").html(html);
                    }   
                );
            });
     
               $(document).on('click','.add-notulen',function(e){
                e.preventDefault();
                $("#modal-add-notulen").modal('show');
                $(".modal-title").html('TAMBAH NOTULEN');
                $.get("view/detail/notulen_form.php",
                    {id_lap:$(this).attr('data-id')},
                    function(html){
                        $(".modal-body").html(html);
                    }   
                );
            });
               $(document).on('click','.edit-notulen',function(e){
                e.preventDefault();
                $("#modal-edit-notulen").modal('show');
                $(".modal-title").html('UBAH NOTULEN');
                $.get("view/detail/notulen_edit.php",
                    {id_detail:$(this).attr('data-id')},
                    function(html){
                        $(".modal-body").html(html);
                    }   
                );
            });
                $(document).on('click','.lihat-jadwal',function(e){
                e.preventDefault();
                $("#modal-jadwal").modal('show');
                $(".modal-title").html('LIHAT JADWAL TURBA');
                $.get("view/jadwal/modal.php",
                    {id_lap:$(this).attr('data-id')},
                    function(html){
                        $(".modal-body").html(html);
                    }   
                );
            });
                $(document).on('click','.kirim-laporan',function(e){
                e.preventDefault();
                $("#modal-kirim-laporan").modal('show');
                 $(".modal-title").html('KIRIM LAPORAN');
                $.get("view/laporan/laporan_send.php",
                {id_lap:$(this).attr('data-id')},
                 function(html){
                        $(".modal-body").html(html);
                    }   
                );
            });

                $(document).on('click','.add-laporan',function(e){
                e.preventDefault();
                $("#modal-add-laporan").modal('show');
                 $(".modal-title").html('TAMBAHKAN LAPORAN');
                $.get("view/laporan/laporan_form_modal.php",
                {id_info:$(this).attr('data-id')},
                 function(html){
                        $(".modal-body").html(html);
                    }   
                );
            });
                $(document).on('click','.baca-laporan-private',function(e){
                e.preventDefault();
                $("#modal-baca-private").modal('show');
                 $(".modal-title").html('NOTULEN MUSYAWARAH');
                $.get("view/detail/detail_private.php",
                {id_lap:$(this).attr('data-id')},
                 function(html){
                        $(".modal-body").html(html);
                    }   
                );
            });
                $(document).on('click','.baca-laporan',function(e){
                e.preventDefault();
                $("#modal-baca-notulen").modal('show');
                 $(".modal-title").html('NOTULEN MUSYAWARAH');
                $.get("view/detail/detail_desa.php",
                {id_lap:$(this).attr('data-id')},
                 function(html){
                        $(".modal-body").html(html);
                    }   
                );
            });
                $(document).on('click','.add-harga',function(e){
                e.preventDefault();
                $("#modal-harga").modal('show');
                 $(".modal-title").html('TAMBAH HARGA');
                $.get("view/harga/harga_form.php",
                {id_mat:$(this).attr('data-id')},
                 function(html){
                        $(".modal-body").html(html);
                    }   
                );
            });
                $(document).on('click','.detail-harga',function(e){
                e.preventDefault();
                $("#modal-detail-harga").modal('show');
                 $(".modal-title").html('DETAIL HARGA');
                $.get("view/harga/harga_lihat.php",
                {id_mat:$(this).attr('data-id')},
                 function(html){
                        $(".modal-body").html(html);
                    }   
                );
            });
                $(document).on('click','.upload-gambar',function(e){
                e.preventDefault();
                $("#modal-upload-gambar").modal('show');
                 $(".modal-title").html('UPLOAD GAMBAR');
                $.get("view/gambar/gambar_form.php",
                {id_mat:$(this).attr('data-id')},
                 function(html){
                        $(".modal-body").html(html);
                    }   
                );
            });
                 $(document).on('click','.lihat-gambar',function(e){
                e.preventDefault();
                $("#modal-lihat-gambar").modal('show');
                 $(".modal-title").html('LIHAT GAMBAR');
                $.get("view/gambar/gambar_lihat.php",
                {id_mat:$(this).attr('data-id')},
                 function(html){
                        $(".modal-body").html(html);
                    }   
                );
            });

                $(document).on('click','.add-generus',function(e){
                e.preventDefault();
                $("#modal-generus").modal('show');
                 $(".modal-title").html('FORM DATA GENERUS');
                $.get("view/generus/generus_form.php",
                {id_kelompok:$(this).attr('data-id')},
                 function(html){
                        $(".modal-body").html(html);
                    }   
                );
            });
                $(document).on('click','.ubah-generus',function(e){
                e.preventDefault();
                $("#modal-ubah-generus").modal('show');
                 $(".modal-title").html('UBAH DATA GENERUS');
                $.get("view/generus/generus_ubah.php",
                {nig:$(this).attr('data-id')},
                 function(html){
                        $(".modal-body").html(html);
                    }   
                );
            });
                 $(document).on('click','.detail-generus',function(e){
                e.preventDefault();
                $("#detail-generus").modal('show');
                 $(".modal-title").html('INFORMASI GENERUS');
                $.get("view/generus/generus_detile.php",
                {nig:$(this).attr('data-id')},
                 function(html){
                        $(".modal-body").html(html);
                    }   
                );
            });  
         
        });