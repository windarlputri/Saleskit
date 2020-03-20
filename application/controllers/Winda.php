<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Winda extends H_Controller 
{
    private $mod_url='';
    private $prefix_folder='winda/';
    // private $up;
    function __construct()
    {
        parent::__construct();
        $this->dbr = new \Rimbun\Common\Database();
        // $this->db = $this->load->database('default', TRUE);
        // $this->load->model('Nasabah_model', "md");
        $this->mod_url=base_url().$this->prefix_folder;
        $this->load->library('core/datatables');
        // $this->up = new \Rimbun\Common\SuperUpload();
    }
    
    function anakwinda()
    {
    	$d['url']=$this->mod_url;

        page_render('Perbedaan Konvensional dan Syariah',$this->prefix_folder.'index',$d);
    }
}