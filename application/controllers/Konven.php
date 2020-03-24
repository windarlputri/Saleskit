<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Konven extends H_Controller
{
    private $mod_url = '';
    private $prefix_folder = 'konven/';
    // private $up;
    function __construct()
    {
        parent::__construct();
        $this->dbr = new \Rimbun\Common\Database();
        $this->load->model('Gambar_model', "g");
        // $this->db = $this->load->database('default', TRUE);
        // $this->load->model('Nasabah_model', "md");
        $this->mod_url = base_url() . $this->prefix_folder;
        $this->load->library('core/datatables');
        // $this->up = new \Rimbun\Common\SuperUpload();
    }

    function hitungdeposito() //membuat function perkalian
    {
        $this->load->library('form_validation'); //mengambil validasi di library yg sudah disediakan CI
        $this->form_validation->set_rules('v1', 'Variabel 1', 'required|integer');
        $this->form_validation->set_rules('v2', 'Variabel 2', 'required|integer');

        if ($this->form_validation->run()) {
            $data['v1'] = (int) $this->input->post('v1', true); //mengambil nilai yg dimasukan
            $data['v2'] = (int) $this->input->post('v2', true); //mengambil nilai yg dimasukan
            $data['hasil'] = $data['v1'] * $data['v2']; //proses data
        } else {
            $data['v1'] = 0;
            $data['v2'] = 0;
            $data['hasil'] = 0;
        }
        $this->load->view('perkalian', $data); //menampilkan hasil proses data
    }


    function sp()
    {
        $d['url'] = $this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('sp');
        page_render('Sinar Pendidikan', $this->prefix_folder . 'sp', $d);
    }
    function sb()
    {
        $d['url'] = $this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('sb');
        page_render('Sinar Belia', $this->prefix_folder . 'sb', $d);
    }
    function skpe()
    {
        $d['url'] = $this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('skpe');
        page_render('Sinar KPE', $this->prefix_folder . 'skpe', $d);
    }
    function sdbos()
    {
        $d['url'] = $this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('sdbos');
        page_render('Sinar D BOS', $this->prefix_folder . 'sdbos', $d);
    }
    function sc()
    {
        $d['url'] = $this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('sc');
        page_render('Sinar Community', $this->prefix_folder . 'sc', $d);
    }
    function simpeda()
    {
        $d['url'] = $this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('simpeda');
        page_render('Simpeda', $this->prefix_folder . 'simpeda', $d);
    }
    function tabku()
    {
        $d['url'] = $this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('tabku');
        page_render('Tabunganku', $this->prefix_folder . 'tabku', $d);
    }
    function dep()
    {
        $d['url'] = $this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('dep');
        page_render('Deposito', $this->prefix_folder . 'dep', $d);
    }
    function giro()
    {
        $d['url'] = $this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('giro');
        page_render('Giro', $this->prefix_folder . 'giro', $d);
    }
    function depohitung()
    {
        $d['url'] = $this->mod_url;
        page_render('Hitung Deposito', $this->prefix_folder . 'depohitung', $d);
    }
}
