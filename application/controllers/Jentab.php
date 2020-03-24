<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Jentab extends H_Controller 
{
    private $mod_url='';
    private $prefix_folder='jentab/';
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
    
    function st()
    {
    	$d['url']=$this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('st');
        page_render('Simpanan Transaksional / Harian',$this->prefix_folder.'st',$d);
    }

    function ster()
    {
    	$d['url']=$this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('ster');
        page_render('Simpanan Terencana',$this->prefix_folder.'ster',$d);
    }

    function si()
    {
    	$d['url']=$this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('si');
        page_render('Simpanan Investasi',$this->prefix_folder.'si',$d);
    }
    
}

