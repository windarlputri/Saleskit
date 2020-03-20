<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Tbr extends H_Controller 
{
    private $mod_url='';
    private $prefix_folder='tbr/';
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
    
    function simpanan()
    {
    	$d['url']=$this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('simpanan');
        page_render('Simpanan',$this->prefix_folder.'simpanan',$d);
    }
    function bisnis()
    {
    	$d['url']=$this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('bisnis');
        page_render('Bisnis',$this->prefix_folder.'bisnis',$d);
    }
    function investasi()
    {
    	$d['url']=$this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('investasi');
        page_render('Investasi',$this->prefix_folder.'investasi',$d);
    }
}


