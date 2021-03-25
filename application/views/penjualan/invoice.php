<div class="card border-dark text-dark">
    <div class="pdd-vertical-5 pdd-horizon-10 border bottom print-invisible">
        <ul class="list-unstyle list-inline text-right">
            <li class="list-inline-item">
                <a href="#" class="btn text-gray text-hover display-block padding-10 no-mrg-btm" onclick="window.print();">
                    <i class="ti-printer text-info pdd-right-5"></i>
                    <b>Print</b>
                    <a href="<?php echo base_url('index.php/Penjualan/update_invoice') ?>" name="submit" class="btn btn-dan">
        <i class="ti-reload pdd-right-5"></i>
        <span>SELESAI</span>
                </a>
            </li>
        </ul>
    </div>
    
    </a>
    <div class="card-body">
        <div class="pdd-horizon-30">
            <div class="mrg-top-15">
                <div class="inline-block">
                    <address class="pdd-left-10 mrg-top-20">
                        <b class="text-dark">Nota,</b><br>
                        <span>Bengkel Manggala Motor</span><br>
                        <span>Jl. Diponegoro, Bedungan, Sempu, Limpung, Kab. Batang 51271</span><br>
                        <abbr>Phone:</abbr>
                        <span>082242783390</span>
                    </address>
                </div>
                <div class="pull-right">
                    <h2>INVOICE</h2>
                </div>
            </div>
            <div class="row mrg-top-20">
                <div class="col-md-9 col-sm-9">
                    <h3 class="pdd-left-10 mrg-top-10">Invoice To:</h3>
                    <address class="pdd-left-10 mrg-top-10">
                        <b class="text-dark"></b><br>
                        <span></span><br>
                        <span></span>
                    </address>
                </div>
                <div class="col-md-3 col-sm-3">
                    <div class="mrg-top-80">
                        <div class="text-dark text-uppercase inline-block"><b>Invoice No :</b></div>
                        <div class="pull-right"><?php echo no_faktur() ?></div>
                    </div>
                    <div class="">
                        <div class="text-dark text-uppercase inline-block"><b>Date :</b></div>
                        <div class="pull-right"><?php echo tgl_indo(tanggal()) ?></div>
                    </div>
                </div>
            </div>
            <div class="row mrg-top-20">
                <div class="col-md-12">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama Barang</th>
                                <th>Quantity</th>
                                <th>Harga</th>
                            
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $total = 0;
                            $no = 1;
                            foreach ($record as $jual) {
                                ?>
                        <tr>
                                <td><?php echo $no ?></td>
                                <td><?php echo $jual->nama_barang ?></td>
                                <td><?php echo $jual->jumlah ?> Unit</td>
                                <td>Rp <?php echo rupiah($jual->harga)?></td>   
                                                   
                         </tr>
                         <?php 
                                $no++;
                                $total = $total + ($jual->harga * $jual->jumlah);
                           
                          }                          
                          ?>
                     </table>
                     <div class='row mrg-top-30'>
                     <div class='col-md-12'>
                   <div class='pull-right text-left'>
                  <p></p>
                 <p></p>
                <hr>
            
              <h3><b>Total : -------</b> Rp <?php echo rupiah ($total)?> </h3>
              <h3><b></b> <?php echo terbilang($total)?> Rupiah</h3>
             </div>
         </div>
      </div>
                        <div class="row mrg-top-30">
                            <div class="col-md-12">
                                <div class="border top bottom pdd-vertical-20">
                                    <p class="text-opacity"><small>Terimakasih Telah Berbelanja Senang Bisa Membantu</small></p>
                                </div>
                            </div>
                        </div>
                        <div class="row mrg-vertical-20">
                             <div class="col-md-6 text-left">
                                <small>*Pengembalian barang harus disertai dengan nota ASLI</small>
                                <br>
                                <small>*Cek kembali barang dan kembalian saat menerima nota</small>
                                <br>
                                <small>*Keluhan dan pengembalian barang hanya dilayani 1 hari setelah pembelian</small>
                            </div>
                            <div class="col-md-6 text-right">
                                <small><b>Phone:</b> 082242783390</small>
                                <br>
                                <small>Bengkel Manggala Motor</small>
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
</div>
