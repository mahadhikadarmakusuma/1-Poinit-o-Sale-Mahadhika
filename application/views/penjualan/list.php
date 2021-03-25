<div class="card border-success text-dark">
    <div class="card-heading border bottom bg-info">
        <h4 class="card-title">TRANSAKSI PENJUALAN</h4>
    </div>
    <div class="mrg-top-1">
        <div class="row">
            <div class="col-md-8 ml-auto mr-auto">
                <div class="row">
                    <div class="col-md-6">
                            <div class="form-group">
                                <label>Jenis Penjualan</label>
                                <?php echo cmb_dinamis('pembeli', 'tbl_pembeli', 'nama_pembeli','id_pembeli',NULL,'id="id_pembeli"') ?>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>tanggal</label>
                                <div class="timepicker-input input-group">
                                    <span class="input-group-addon">
                                        <i class="ti-calendar"></i>
                                    </span>
                                    <input type="date" value="<?php echo tanggal() ?>" readonly="" class="form-control datepicker-2" placeholder="" data-provide="datepicker">
                                </div>
                            </div>
                        </div>

                    <div class="col-md-4">
                        <div class="form-group">
                            <label>kode barang</label>
                            <?php echo cmb_dinamis('kd_barang','tbl_barang','kd_barang','kd_barang',null,"id='kd_barang' onChange='isi_otomatis()'") ?>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <label>Nama Barang</label>
                            <input type="text" name="nama_barang" id="nama_barang" class="form-control" readonly=""  placeholder="masukan nama barang">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Satuan</label>
                            <input type="text" class="form-control" name="satuan" id="barang_satuan" readonly="" placeholder="sataun">
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>STOCK</label>
                            <input type="number" id="stok" name="stok" readonly="" class="form-control"  placeholder="harga pokok">
                        </div>
                    </div>
                    <div c
                    lass="col-md-3">
                        <div class="form-group">
                            <label>Harga Rp</label>
                            <input type="number" name="harga" id="harga_jual" readonly="" class="form-control"  placeholder="harga jual">
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <label>Jumlah</label>
                            <input type="number" name="jumlah" id="jumlah" value="1" ="" class="form-control"  placeholder="jumlah pemebelian">
                        </div>
                    </div>
                    <div class="col-md-3">
                            <div class="form-group">
                                <label>NO FAKTUR</label>
                                <input type="text" name="no_faktur" id="no_faktur"  class="form-control" required=""  placeholder="Masukkan no faktur">
                            </div>
                        </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Masukan Belanjaan</label>
                            <button type="submit" onclick="keranjang_belanja()" name="submit" class="btn btn-primary btn-sm">BELANJA</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                            <div class="form-group">
                                <label>Selesai Belanja</label>
                                <button type="submit" id="submit" onclick="selesai()" class="btn btn-danger">SELESAI</button>
                           </div>
                        </div>
                </div>       
            </div>
        </div>
    </div>
</div>

<div class="col-md-12">
    <div class="card border-info text-dark">
        <div class="card-heading border bottom bg-info">
            <h4 class="card-title">TRANSAKSI PENJUALAN</h4>
        </div>

        <div id="list"> 

        </div>
    </div>
</div>



<div class="col-md-12">
    <div class="card border-dark text-dark">
        <div class="card-heading border bottom bg-info">
            <h4 class="card-title">INVOICE</h4>
        </div>
        <div id="cetak"> 

        </div>


    </div>
</div>



<script src="<?php echo base_url() ?>assets/jquery.min.js"></script>
<script type="text/javascript">
    function selesai() {
       var id_pembeli = $("#id_pembeli").val();                                   
       var jumlah = $("#jumlah").val();
       var kd_barang = $("#kd_barang").val();
        $.ajax({
            type: 'GET',
            url: '<?php echo base_url() ?>index.php/Penjualan/selesai',
            data:'id_pembeli='+id_pembeli+'&jumlah='+jumlah+'&kd_barang='+kd_barang,
            success: function (html) {
            swal("Berhasil!", "Sukses belanja, Lihat invoice", "success");
            cetak_laporan()
            load_data_temp();
              }
           });
     }   

        function load_data_temp() {
          $.ajax({
             type: 'GET',
             url: '<?php echo base_url() ?>index.php/Penjualan/load_temp',
             data: '',
             success: function (html) {
             $("#list").html(html);
              }
           });
        }

        function cancel(id) {
           $.ajax({
               type: 'GET',
               url: '<?php echo base_url() ?>index.php/Penjualan/cancel',
               data: 'no_faktur=' + id,
               success: function (html) {
                swal("Berhasil", "Berhasil di batalkan", "success");
                 load_data_temp();
              }
         });
      }

        function keranjang_belanja() {
                var no_faktur = $("#no_faktur").val();
                var id_pembeli= $("#id_pembeli").val();
                var kd_barang = $("#kd_barang").val();
                var nama_barang = $("#nama_barang").val();
                var barang_satuan = $("#barang_satuan").val();
                var stok = parseInt($("#stok").val());
                var harga_jual = $("#harga_jual").val();
                var jumlah = parseInt($("#jumlah").val());                  
                    if (kd_barang == 0) {
                        swal("Masukan Kode Barang", "GAGAL", "warning");
                    } else if(id_pembeli==''){
                        swal("GAGAL", "Masukan Nama Suplier", "warning");
                        die;
                    } else if(no_faktur==''){
                        swal("GAGAL", "Masukan Nomor Faktur!", "warning");
                        die;
                    }else if (nama_barang == 0) {
                        swal("Kode Barang Salah", "Anda Tidak Mempunyai Kode Barang Seperti Yang Anda Masukan", "warning");
                    }else if(barang_satuan==''){
                        alert('masukan satuan barang')
                    } else if (jumlah == 0) {
                        swal("GAGAL", "Masukan Jumlah", "warning");
                    }else if (jumlah >= stok) {
                        swal("GAGAL", "Jumlah yang anda masukan melebihi stok anda", "warning");
                    }else{
                        $.ajax({
                        type: 'GET',
                        url: '<?php echo base_url() ?>index.php/Penjualan/keranjang',
                        data: 'kd_barang=' + kd_barang + '&nama_barang=' + nama_barang + '&barang_satuan=' + barang_satuan + '&stok=' + stok + '&harga_jual=' + harga_jual + '&jumlah=' + jumlah+ '&id_pembeli=' + id_pembeli+ '&no_faktur=' + no_faktur,
                        success: function (html) {
                        swal("Berhasil!", "Masuk Ke Keranjang belanja", "success");
                        load_data_temp();
                  }
             });
           }
       }


                                function isi_otomatis() {
                                    var kd_barang = $("#kd_barang").val();
                                    $.ajax({
                                        url: "<?php echo base_url() ?>index.php/Penjualan/form_penjualan_autocomplit",
                                        type: "GET",
                                        data: "kd_barang=" + kd_barang,
                                        success: function (data) {
                                            var json = data,
                                                    obj = JSON.parse(json);
                                            $("#nama_barang").val(obj.nama_barang);
                                            $("#barang_satuan").val(obj.barang_satuan);
                                            $("#stok").val(obj.stok_barang);
                                            $("#harga_jual").val(obj.harga_jual);

                                        }
                                    });
                                }

                                function cetak_laporan() {
                                    $.ajax({
                                        type: 'GET',
                                        url: '<?php echo base_url() ?>index.php/Penjualan/cetak',
                                        data: '',
                                        success: function (html) {
                                            $("#cetak").html(html);
                                            load_data_temp();
                                        }
                                    });
                                }
</script>
