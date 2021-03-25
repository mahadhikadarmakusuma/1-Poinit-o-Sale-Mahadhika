<?php
class Model_penjualan extends CI_Model{
    
    function insert(){
        $id_pembeli    = $_GET['id_pembeli'];
        $kd_barang     = $_GET['kd_barang'];
        $nama_barang   = $_GET['nama_barang'];
        $barang_satuan = $_GET['barang_satuan'];
        $harga_jual    = $_GET['harga_jual'];
        $jumlah        = $_GET['jumlah'];
        $no_faktur     = $_GET['no_faktur'];
        $total_belanja = $harga_jual*$jumlah;
        $data =array(
                'status'        =>0,
                'tanggal_beli'  =>tgl_indo(tanggal()),
                'nama_barang'   =>$nama_barang,
                'id_pembeli'    =>$id_pembeli,
                'kd_barang'     =>$kd_barang,
                'no_faktur'     =>$no_faktur,
                'harga'         =>$harga_jual,
                'jumlah'        =>$jumlah,
                'total_belanja' =>$total_belanja,
            );
            $chek= $this->db->get_where('tbl_penjualan',array('kd_barang'=>$kd_barang,'status'=>0,'no_faktur'=>$no_faktur));
            if ($chek->num_rows()<1) {
               $this->db->insert('tbl_penjualan',$data);

            }else{
                $sql="update tbl_penjualan set harga=$harga_jual, jumlah=$jumlah,total_belanja=$total_belanja where no_faktur='$no_faktur'";
                $this->db->query($sql);   
            }          
            return $this->db->insert_id();
     }
     
     function show_temp(){
         $query="SELECT tpl.no_faktur,tpl.kd_barang,tb.nama_barang,ts.Satuan,tpl.harga,tpl.jumlah,tpl.total_belanja 
            FROM `tbl_penjualan` as tpl, tbl_barang as tb, tbl_pembeli as tp, tbl_satuan as ts 
            WHERE tpl.id_pembeli=tp.id_pembeli and tb.kd_barang=tpl.kd_barang and tb.barang_satuan=ts.id_satuan and status=0";
         return $this->db->query($query);
     }

     function show_laporan(){
         $query="SELECT tpl.no_faktur,tpl.kd_barang,tb.nama_barang,ts.Satuan,tpl.harga,tpl.jumlah,tpl.total_belanja 
            FROM `tbl_penjualan` as tpl, tbl_barang as tb, tbl_pembeli as tp, tbl_satuan as ts 
            WHERE tpl.id_pembeli=tp.id_pembeli and tb.kd_barang=tpl.kd_barang and tb.barang_satuan=ts.id_satuan and status=1 and detail=0";
        return $this->db->query($query);
    }

    function cancel($id){
        $this->db->where('no_faktur',$id);
        $this->db->delete('tbl_penjualan');
    }
}
?>