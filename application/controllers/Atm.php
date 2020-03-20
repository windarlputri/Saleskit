<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Atm extends H_Controller 
{
    private $mod_url='';
    private $prefix_folder='atm/';
    // private $up;
    function __construct()
    {
        parent::__construct();
        $this->dbr = new \Rimbun\Common\Database();
        $this->load->model('Gambar_model', "g");
        // $this->db = $this->load->database('default', TRUE);
        // $this->load->model('Nasabah_model', "md");
        $this->mod_url=base_url().$this->prefix_folder;
        $this->load->library('core/datatables');
        // $this->up = new \Rimbun\Common\SuperUpload();
    }
    
    function reg()
    {
    	$d['url']=$this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('reg');
        page_render('ATM Reguler & Instan',$this->prefix_folder.'reg',$d);
    }
    function jai()
    {
    	$d['url']=$this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('jai');
        page_render('Jenis-Jenis ATM Instan',$this->prefix_folder.'jai',$d);
    }
    function lt()
    {
    	$d['url']=$this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('lt');
        page_render('Limit Transaksi',$this->prefix_folder.'lt',$d);
    }
    function la()
    {
    	$d['url']=$this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('la');
        page_render('Layanan ATM',$this->prefix_folder.'la',$d);
    }
    function bt()
    {
    	$d['url']=$this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('bt');
        page_render('Biaya Transaksi',$this->prefix_folder.'bt',$d);
    }
    function setor()
    {
    	$d['url']=$this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('setor');
        page_render('ATM Setor Tunai',$this->prefix_folder.'setor',$d);
    }
}