<?php

class Model_barang extends CI_Model {

    function tampil_barang($limit, $start) {
        $query = $this->db->get('v_barang', $limit, $start);
        return $query;
    }

    function save() {
        $config['cacheable'] = true; //boolean, the default is true
        $config['cachedir'] = './assets/'; //string, the default is application/cache/
        $config['errorlog'] = './assets/'; //string, the default is application/logs/
        $config['imagedir'] = './assets/images/';
        $config['quality'] = true; //boolean, the default is true
        $config['size'] = '1024'; //interger, the default is 1024
        $config['black'] = array(224, 255, 255); // array, default is array(255,255,255)
        $config['white'] = array(70, 130, 180); // array, default is array(0,0,0)
        $params['data'] = kd_barang(); 
        $params['level'] = 'H'; //H=High
        $params['size'] = 10;
        $data = array(
            'kd_barang' => kd_barang(),
            'nama_barang' => $this->input->post('nama_barang'),
            'barang_satuan' => $this->input->post('Satuan'),
            'harga_pokok' => $this->input->post('harga_pokok'),
            'harga_jual' => $this->input->post('harga_jual'),
            'stok_barang' => $this->input->post('stok_barang'),
            'stok_minimal' => $this->input->post('minimal_stok'),
            'id_kategori' => $this->input->post('kategori'),
            //'image'=>kd_barang(),
        );
        $this->db->insert('tbl_barang', $data);
    }

    function update() {
        $data = array(
            //'kd_barang'=>kd_barang(),
            'nama_barang' => $this->input->post('nama_barang'),
            'harga_pokok' => $this->input->post('harga_pokok'),
            'harga_jual' => $this->input->post('harga_jual'),
            'stok_barang' => $this->input->post('stok_barang'),
            'stok_minimal' => $this->input->post('minimal_stok'),
            'id_kategori' => $this->input->post('kategori'),
        );
        $kd_barang = $this->input->post('kd_barang');
        $this->db->where('kd_barang', $kd_barang);
        $this->db->update('tbl_barang', $data);
    }

}

?>