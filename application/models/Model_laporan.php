<?php

Class Model_laporan extends CI_Model {

    function tampil_laba($limit, $start) {
        $query = $this->db->query("SELECT * FROM `tbl_penjualan`");
        return $query;
    }

    function laporan(){
        $query = $this->db->query("SELECT * FROM `tbl_beli_suplier`");
        return $query;
    }


}

?>