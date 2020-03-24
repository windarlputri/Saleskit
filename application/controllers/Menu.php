<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Menu extends H_Controller 
{
    private $mod_url='';
    private $prefix_folder='saleskit/';
    // private $up;
    function __construct()
    {
        parent::__construct();
        $this->dbr = new \Rimbun\Common\Database();
        // $this->db = $this->load->database('default', TRUE);
        $this->load->model('Gambar_model', "g");
        $gambar('.carousel').carousel('pause');
        $this->mod_url=base_url().$this->prefix_folder;
        $this->load->library('core/datatables');
        // $this->up = new \Rimbun\Common\SuperUpload();
    }

    function update()
    {
		$this->form_validation->set_rules('type','Type Logo','required');
		if($this->form_validation->run()==TRUE)
		{
			$type=$this->input->post('type',TRUE);
			$cfg=array(
				'field_name'=>'file',
				'allow_type'=>'jpg|jpeg|png',
				'max_size'=>2000,
				'thumb_create'=>true,
				'file_name'=>$type
			);
			$ext=pathinfo($_FILES['file']['name'],PATHINFO_EXTENSION);
			$this->up->config($cfg);
			if($this->up->image_upload()==TRUE)
			{
				$name=$type.".".$ext;
				if($type=="logo")
				{
					$this->system_model->system_logo_update($name);
				}elseif($type=="favicon")
				{
					$this->system_model->system_favicon_update($name);
				}
			}
			redirect($this->mod_url);
		}else{
			redirect($this->mod_url);
		}
    }
    
    function pks()
    {
        $d['url']=$this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('pks');

        page_render('Perbedaan Bank Konvensional & Syariah',$this->prefix_folder.'pks',$d);
    }
    function pbbh()
    {
    	$d['url']=$this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('pbbh');
        page_render('Perbedaan Bunga & Bagi Hasil',$this->prefix_folder.'pbbh',$d);
    }
    function pbh()
    {
    	$d['url']=$this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('pbh');
        page_render('Perhitungan Bagi Hasil',$this->prefix_folder.'pbh',$d);
    }
    function tpr()
    {
    	$d['url']=$this->mod_url;
        $d['gambar'] = $this->g->ambil_gambar('tpr');
        page_render('Tujuan Pembukaan Rekening',$this->prefix_folder.'tpr',$d);
    }
}