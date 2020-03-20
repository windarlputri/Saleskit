<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Ecommerce extends H_Controller 
{
    private $mod_url='';
    private $prefix_folder='ecommerce/';
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
    
    function smsb()
    {
    	$d['url']=$this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('smsb');
        page_render('SMS Banking',$this->prefix_folder.'smsb',$d);
    }
    function mbanking()
    {
    	$d['url']=$this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('mbanking');
        page_render('M-Banking',$this->prefix_folder.'mbanking',$d);
    }
}