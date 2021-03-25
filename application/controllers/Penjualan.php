<?php
class Penjualan extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('Model_barang');
        $this->load->model('Model_penjualan');
        chek_akses_modul();
        chek_seesion();
    }

    function index() {
        $this->template->load('template', 'penjualan/list');
    }
    
    function form_penjualan_autocomplit() {
        $kd_barang = $_GET['kd_barang'];
        $sql_barang = "SELECT tb.nama_barang,ts.satuan,tb.harga_jual,tb.stok_barang FROM tbl_barang as tb, tbl_satuan as ts where tb.barang_satuan=ts.id_satuan and kd_barang='$kd_barang' ";
        $barang = $this->db->query($sql_barang)->row_array();
        $data = array(
            'nama_barang'   => $barang['nama_barang'],
            'barang_satuan' => $barang['satuan'],
            'stok_barang'   => $barang['stok_barang'],
            'harga_jual'    => $barang['harga_jual'],
        );
        echo json_encode($data);
    }

    function keranjang() {
        $this->Model_penjualan->insert();
    }

    function load_temp() {
        echo "<div class='table-overflow table-responsive'>
                    <table class='table table-responsive'>
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>NO FAKTUR</th>
                                <th>KD BARANG</th>
                                <th>NAMA BARANG</th>
                                <th>SATUAN</th>
                                <th>HARGA</th>
                                <th>JUMLAH BELI</th>
                                <th>TOTAL BELANJA</th>
                                <th>AKSI</th>
                            </tr>
                        </thead>";
        $data = $this->Model_penjualan->show_temp()->result();
        $no = 1;
        foreach ($data as $d) {
            echo "<tr>"
            . "<td>$no</td>"
            . "<td>$d->no_faktur"
            . "<td>$d->kd_barang</td>"
            . "<td>$d->nama_barang</td>"
            . "<td>$d->Satuan</td>"
            . "<td>Rp ".rupiah($d->harga)."</td>"
            . "<td>$d->jumlah Unit</td>"
            . "<td>Rp ".rupiah($d->total_belanja)."</td>"
            . "<td><button type='submit'onclick='cancel($d->no_faktur)' class='btn btn-danger btn-rounded btn-sm'>Cancel</button></td>"
            . "</tr>";
            $no++;
        }
     echo "</table>
             </div>";
    }

    function cancel() {
        $id = $_GET['no_faktur'];
        $this->Model_penjualan->cancel($id);
    }

    function selesai() {
        $jumlah         =$_GET['jumlah'];
        $kd_barang      =$_GET['kd_barang'];
        $id_pembeli     =$_GET['id_pembeli'];
        $query          ="update tbl_penjualan set status=1 where id_pembeli=$id_pembeli";
        $this->db->query($query);
        $this->db->query("update v_barang set stok_barang=stok_barang-$jumlah where kd_barang='$kd_barang'");
    }

    function cetak() {
        echo "<table class='table-overflow'>
                <table class='table'>
                        <thead>
                            <tr>
                            <th>No</th>
                            <th>NO FAKTUR</th>
                            <th>KD BARANG</th>
                            <th>NAMA BARANG</th>
                            <th>SATUAN</th>
                            <th>HARGA</th>
                            <th>JUMLAH BELI</th>
                            <th>TOTAL BELANJA</th>
                            </tr>
                        </thead>";
        $data = $this->Model_penjualan->show_laporan()->result();
        $total = 0;
        $no = 1;
        foreach ($data as $d) {
            echo "<tr>"
            . "<td>$no</td>"
            . "<td>$d->no_faktur"
            . "<td>$d->kd_barang</td>"
            . "<td>$d->nama_barang</td>"
            . "<td>$d->Satuan</td>"
            . "<td>Rp ".rupiah($d->harga)."</td>"
            . "<td>$d->jumlah Unit</td>"
            . "<td>Rp ".rupiah($d->total_belanja)."</td>"
            . "<td><button type='submit'onclick='cancel($d->no_faktur)' class='btn btn-danger btn-rounded btn-sm'>Cancel</button></td>"
               ."</tr>";
            $no++;
           $total = $total + ($d->harga * $d->jumlah);
        }
        function cancel() {
            $id = $_GET['no_faktur'];
            $this->Model_penjualan->cancel($id);
        }
        echo "</table>
                     <div class='row mrg-top-30'>
                   <div class='col-md-12'>
                   <div class='pull-right text-right'>
                   <p></p>
                  <p></p>
                 <hr>
               <h3><b>Total :</b>Rp ".rupiah($total)."</h3>
              </div>
             <a href='".base_url('index.php/Penjualan/invoice')."' class='btn text-gray text-hover display-block padding-10 no-mrg-btm'>
            <i class='ti-printer text-info pdd-right-5'></i>
           <b>Print</b>
          </a>
         </div>
      </div>";
    }
    
    function invoice(){
      $data['record']=$this->Model_penjualan->show_laporan()->result();  
      $this->template->load('template','penjualan/invoice',$data);
    }
    function update_invoice(){
     $query="update tbl_penjualan set detail=1 where status=1";   
     $this->db->query($query);
     redirect('Penjualan');
    }

}
?>
