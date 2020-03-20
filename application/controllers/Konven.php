<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Konven extends H_Controller 
{
    private $mod_url='';
    private $prefix_folder='konven/';
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
    
    function sp()
    {
    	$d['url']=$this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('sp');
        page_render('Sinar Pendidikan',$this->prefix_folder.'sp',$d);
    }
    function sb()
    {
    	$d['url']=$this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('sb');
        page_render('Sinar Belia',$this->prefix_folder.'sb',$d);
    }
    function skpe()
    {
    	$d['url']=$this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('skpe');
        page_render('Sinar KPE',$this->prefix_folder.'skpe',$d);
    }
    function sdbos()
    {
    	$d['url']=$this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('sdbos');
        page_render('Sinar D BOS',$this->prefix_folder.'sdbos',$d);
    }
    function sc()
    {
    	$d['url']=$this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('sc');
        page_render('Sinar Community',$this->prefix_folder.'sc',$d);
    }
    function simpeda()
    {
    	$d['url']=$this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('simpeda');
        page_render('Simpeda',$this->prefix_folder.'simpeda',$d);
    }
    function tabku()
    {
    	$d['url']=$this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('tabku');
        page_render('Tabunganku',$this->prefix_folder.'tabku',$d);
    }    
    function dep()
    {
    	$d['url']=$this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('dep');
        page_render('Deposito',$this->prefix_folder.'dep',$d);
    }    
    function giro()
    {
    	$d['url']=$this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('giro');
        page_render('Giro',$this->prefix_folder.'giro',$d);
    }
}
