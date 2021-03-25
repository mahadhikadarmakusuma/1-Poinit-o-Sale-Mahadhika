<div class="row">
       
<div class="col-md-12">
        <div id="accordion-2" class="accordion panel-group" role="tablist" aria-multiselectable="true">
            <div class="panel panel-default border-warning">
                <div class="panel-heading text-light bg-warning" role="tab" id="heading-2-Two">
                    <h4 class="panel-title">
                        <a class="collapsed text-light" data-toggle="collapse" data-parent="#accordion-2" href="#collapse-2-Two" aria-expanded="false" class="collapsed">
                            <span><b>Laporan Penjulan Perbulan<b></span> 
                            <i class="icon ti-arrow-circle-down"></i> 
                        </a>
                    </h4>
                </div>
                <div id="collapse-2-Two" class="panel-collapse collapse" style="">
                    <div class="panel-body">
                        <p>
                        <table class="table-responsive">
                            <tr>
                                <td>Pilih Bulan</td>
                                <td><input type="number" name="bulan" id="lap_bulan"  class="form-control-sm" placeholder="contoh 02" aria-controls="dt-opt"></td>
                            </tr>
                            <hr>
                        </table>
                        <div id="bulan">

                        </div>
                        </p>
                    </div>
                </div>
            </div>

            <div class="panel panel-default border-success">
                <div class="panel-heading  bg-success " role="tab" id="heading-2-Three">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion-2" href="#collapse-2-Three" class="collapsed text-light" aria-expanded="false">
                        <span>Laporan Data Barang</span>
                            <i class="icon ti-arrow-circle-down"></i> 
                        </a>
                    </h4>
                </div>
                <div id="collapse-2-Three" class="collapse panel-collapse">
                <div class="panel-body card-block text-bold">
                        <p>
                        <table class="table table-responsive">
                            <?php
                            $urut = 0;
                            $nomor = 0;
                            $grup = '-';
                            foreach ($data as $d) {
                                if ($grup == '-' || $grup != $d['nama_kategori']) {
                                    $kat = $d['nama_kategori'];
                                    if ($grup != '-')
                                        echo "</table><br>";
                                        echo "<tr><td colspan='6'><b>kategori : $kat</b></td></tr>";
                                        echo " <table class='table table-responsive'>";
                                        echo "<tr>
                                        <thead class>
                                            <th scope='col'>Kode Barang</th>
                                            <th scope='col'>Nama Barang</th>
                                            <th scope='col'>Kategori</th>
                                            <th scope='col'>Satuan</th>
                                            <th scope='col'>Harga Jual</th>
                                            <th scope='col'>Stok</th>
                                            </thead>";
                                }
                                $grup = $d['nama_kategori'];
                                if ($urut == 500) {
                                    
                                    echo "<div class='pagebreak'> </div> ";
                                }
                                ?>
                                <tr>
                                    
                                    <td><?php echo $d['kd_barang'] ?></td>
                                    <td><?php echo $d['nama_barang'] ?></td>
                                    <td><?php echo $d['nama_kategori'] ?></td>
                                    <td><?php echo $d['satuan'] ?></td>
                                    <td>Rp <?php echo rupiah ($d['harga_jual']);?></td>
                                    <td><?php echo $d['stok_barang'] ?></td>
                                </tr>
                                <?php
                            }
                            ?>
                        </table>
                        </p>
                        <table class="table table-responsive" align="center" style="width: 800px; border: none; margin-top: 5px; margin-bottom: 20px;">
                            <tr>
                                <td></td>
                        </table>

                        <table class="table table-responsive" align="center" style="width: 800px; border: none; margin-top: 5px; margin-bottom: 20px;">
                            <tr>
                                <td alifn="right">Batang, <?php echo tgl_indo(tanggal()) ?> </td>
                            </tr>
                            
                            <tr>
                                <td align="left"><?php echo $this->session->userdata('nama_lengkap') ?></td>
                            </tr>
                        </table> 
                        </p>
                    </div>
                </div>
            </div>
    </div>    
        <div id="accordion-2" class="accordion panel-group" role="tablist" aria-multiselectable="true">
            <div class="panel panel-default border-primary">
                <div class="panel-heading bg-danger text-light " role="tab" id="heading-2-One">
                    <h4 class="panel-title">
                        <a class="collapsed text-light" data-toggle="collapse" data-parent="#accordion-2" href="#collapse-2-One" aria-expanded="false">
                            <span><b>Jurnal Laporan Penjualan dan Pembelian<b></span>
                            <i class="icon ti-arrow-circle-down"></i> 
                        </a>
                    </h4>
                </div>
                <div id="collapse-2-One" class="collapse panel-collapse" >
                <table class="table table-responsive">
                <thead>
                        <tr>
                            <th>No.</th>
                            <th>Nama Barang</th>
                            <th>No. Faktur</th>
                            <th>Kode Barang</th>
                            <th>Tanggal Beli</th>
                            <th>Harga Jual</th>
                            <th>Jumlah</th>
                        </tr>
                <?php
                    $no = 1+ $this->uri->segment(3);
                    foreach ($laporan as $row)  {
                                   
                       ?>
                       </thead>
                       <tr>
                       <td><?php echo $no ?></td>
                       <td><?php echo $row->nama_barang?></td>
                       <td><?php echo $row->no_faktur ?></td>
                       <td><?php echo $row->kd_barang ?></td>
                       <td><?php echo tgl_indo($row->tanggal_beli) ?></td>
                       <td>Rp <?php echo rupiah ($row->harga) ?></td>
                       <td><?php echo $row->jumlah ?> Unit</td>
                    </tr>
                <?php
                $no++;
                        }
                ?>
                
        </table>
            
        <p>
        <hr>

        <div class="panel panel-default border-success">
            <div class="card-heading  bg-info border bottom">
                <h4 class="card-title text-light">Pembelian Suplier dan Pengembalian</h4>
            </div>
                <table class="table table-lg table-hover table-responsive" role="grid" aria-describedby="">
                    <thead class="theme-colors">
                    <tr>
                        <th>No. </th>
                        <th>Nama Barang </th>
                        <th>No. Faktur</th>
                        <th>Tanggal Beli</th>
                        <th>Jumlah</th>
                        <th>Harga</th>
                        <th>Total</th>
                        </tr>
                    <?php
                        $no = 1+ $this->uri->segment(3);
                        foreach ($laba as $row) {
                    ?>
                        </thead>
                        <tr>
                                <td><?php echo $no?></td>
                                <td><?php echo $row->nama_barang?></td>
                                <td><?php echo $row->no_faktur?></td>
                                <td><?php echo $row->tanggal_beli?></td>
                                <td><?php echo $row->jumlah?> Unit</td>
                                <td>Rp <?php echo rupiah ($row->harga)?></td>
                                <td>Rp <?php echo rupiah ($row->total_belanja)?></td>
                         </tr>
                         <?php
                            $no++;
                        }
                        ?>
                </table>
            </div>
        </div>
        
                <table class="table table-lg table-hover table-responsive border-info" role="grid" aria-describedby="">
                    <thead class="bg-success-inverse text-light">
                        <tr>
                            <th>Dilakukan penjulan sekitar :</th>
                            <th class="left">
                                <?php
                                $lap=$this->db->query("SELECT sum(jumlah) as total FROM `tbl_penjualan`")->result();
                                foreach ($lap as $row){
                                    ?>
                                 <?php echo ($row->total)?> Unit
                                       <p></p>
                                  <td>
                                  
                                  </td>
                                  <?php
                                }
                                ?>
                            </th>
                        </tr>
                    </thead>
                    <tbody class="border-success text-dark">
                        <tr>
                            <td>Berikut rincian penghasilan dari toko secara keseluruhan</td>
                        </tr>
                   </tbody>
                   <tbody><tr>
                   <td>Total penjualan barang :  </td>
                   <th class="left">
                   <?php
                    $totj=$this->db->query("SELECT sum(total_belanja) as totju FROM `tbl_penjualan`")->result();
                    foreach ($totj as $totaljual){
                        ?>
                        Rp <?php echo rupiah($totaljual->totju)?>
                        
                        
                        <?php
                    }
                   ?>
                   </tr></tbody>
                   <tbody><tr>
                   <td>Total pembelian stok barang :  </td>
                   <th class="left">
                   <?php
                    $totb=$this->db->query("SELECT sum(total_belanja) as totbe FROM `tbl_beli_suplier`")->result();
                    foreach ($totb as $totalbeli){
                        ?>
                        Rp <?php echo rupiah($totalbeli->totbe)?>
                        
                        
                        <?php
                    }
                   ?>
                   </tr></tbody>

                   <tbody><tr>
                   <td>Total stok barang :  </td>
                   <th class="left">
                   <?php
                    $stokb=$this->db->query("SELECT sum(stok_barang) as stokbar FROM `v_barang`")->result();
                    foreach ($stokb as $stokbarang){?>
                        
                        <?php echo rupiah ($stokbarang->stokbar) ?> Unit
                        
                        
                    <?php
                    }
                   ?>
                   <!-- </tr></tbody>

                   <tbody><tr>
                   <td>Total keuntungan :  </td>
                   <th class="left">
                   <?php
                    $keuntungan=$totalb-$totalj;
                    
                   ?>
                   </tr></tbody> -->

                </table>
                
            </div>
                        </p>
                        </p>
                    </div>
                </div>
            </div>
            
        
</div>                


<script src="<?php echo base_url() ?>assets/jquery.min.js"></script>
<script type="text/javascript">
                        $(document).ready(function () {

                                    load_data();
                                    
                                });
                               

                                function load_data(query)
                                {
                                    $.ajax({
                                        url: "<?php echo base_url() ?>index.php/Laporan/perbulan",
                                        method: "POST",
                                        data: {query: query},
                                        success: function (data)
                                        {
                                            $('#bulan').html(data);
                                        }
                                    });
                                }
                                $('#lap_bulan').keyup(function () {
                                    var bulan = $(this).val();
                                    if (bulan != '')
                                    {
                                        load_data(bulan);
                                    } else
                                    {
                                        load_data();
                                    }
                                });

                                function printDiv(elementId) {
                                    var a = document.getElementById('printing-css').value;
                                    var b = document.getElementById(elementId).innerHTML;
                                    window.frames["print_frame"].document.title = document.title;
                                    window.frames["print_frame"].document.body.innerHTML = '<style>' + a + '</style>' + b;
                                    window.frames["print_frame"].window.focus();
                                    window.frames["print_frame"].window.print();
                                }

</script>