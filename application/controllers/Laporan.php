<?php

class Laporan extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->Model('Model_laporan');
        $this->load->model('Model_pembelian_suplier');
        chek_akses_modul();
        chek_seesion();
    }

    function index() {
        $this->load->library('pagination');
        $config['base_url']           = site_url() . '/Laporan/index/';
        $config['total_rows']         = $this->db->count_all('tbl_penjualan');
        $config['per_page']           = 5;
        $config["uri_segment"]        = 3;
        $choice                       = $config["total_rows"] / $config["per_page"];
        $config["num_links"]          = floor($choice);
        //style paging
        $config['first_link']         = 'First';
        $config['last_link']          = 'Last';
        $config['next_link']          = 'Next';
        $config['prev_link']          = 'Prev';
        $config['full_tag_open']      = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
        $config['full_tag_close']     = '</ul></nav></div>';
        $config['num_tag_open']       = '<li class="page-item"><span class="page-link">';
        $config['num_tag_close']      = '</span></li>';
        $config['cur_tag_open']       = '<li class="page-item active"><span class="page-link">';
        $config['cur_tag_close']      = '<span class="sr-only">(current)</span></span></li>';
        $config['next_tag_open']      = '<li class="page-item"><span class="page-link">';
        $config['next_tagl_close']    = '<span aria-hidden="true">&raquo;</span></span></li>';
        $config['prev_tag_open']      = '<li class="page-item"><span class="page-link">';
        $config['prev_tagl_close']    = '</span>Next</li>';
        $config['first_tag_open']     = '<li class="page-item"><span class="page-link">';
        $config['first_tagl_close']   = '</span></li>';
        $config['last_tag_open']      = '<li class="page-item"><span class="page-link">';
        $config['last_tagl_close']    = '</span></li>';
        $this->pagination->initialize($config);
        $barang['page']               = $data['page'] = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $barang['pagination']         = $this->pagination->create_links();
        $barang['laba']               = $this->Model_laporan->laporan()->result();
        $barang['laporan']            = $this->Model_laporan->tampil_laba($config['per_page'], $barang['page'])->result();
        $barang['data']               = $this->db->get('v_barang')->result_array();
        $this->template->load('template', 'laporan/list', $barang);
    }

    function perbulan() {
        $bulan = $this->input->post('query');
        if (isset($_POST["query"])) {
            $query =$this->db->query("SELECT * FROM `tbl_penjualan` WHERE DATE_FORMAT(tanggal_beli,'%m')='$bulan'");
            if ($query->num_rows() > 0) {
                echo"<div class='table-overflow'>
                <table class='table'>
                    <thead>
                        <tr>
                            <th>Tanggal Beli</th>
                            <th>Kode Barang</th>
                            <th>Nama Barang</th>
                            <th>Harga</th>
                            <th>Total Beli</th>
                        </tr>
                    </thead>";
                $total = 0;
                $no = 1;
                foreach ($query->result() as $row) {
                    echo "<tr>
                    <td>".tgl_indo($row->tanggal_beli)."</td>
                    <td>$row->kd_barang</td>
                    <td>$row->nama_barang</td>
                    <td>Rp ".rupiah($row->harga)."</td>
                    <td>$row->jumlah</td>
                    </tr>";
                    $total = $total + ($row->harga * $row->jumlah);
                }
                echo "</table>
                <table class='table'>
                <thead><tr><th>Sub Total : <b>Rp " . rupiah($total) . "<b><td><th>" . Terbilang($total) . " Rupiah</th></td></tr></thead>
            </div>";
            } else {
                echo "Mohon Maaf Tidak ada Transaki Di Bulan Yang Anda Masukan";
            }
        }
    } 
}
?>