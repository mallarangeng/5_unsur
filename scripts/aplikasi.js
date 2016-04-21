$(function () {
	    var main = "view/laporan/laporan_data.php";
    $("#data-laporan").load(main);
        $(".tambah-laporan").click(function(e){
        e.preventDefault();
        //memanggil modal untuk konsumen
        $("#modal-laporan-add").modal('show');
        $(".modal-title").html('Tambah Laporan');
        $.post("view/laporan/laporan_form.php",
            {id:$(this).attr('data-id')},
            function(html){
                $(".modal-body").html(html);
            }
        );
        //alert("sd");
    });

});