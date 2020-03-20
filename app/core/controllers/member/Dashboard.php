<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Dashboard extends H_Controller
{
	private $mod_url='';
	private $prefix_folder='member/dashboard/';
	private $builder;
	function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
		$this->form_validation->CI =& $this;
		$this->mod_url=base_url().RIMBUN_SYSTEM.'/'.$this->prefix_folder;
    }
    
    function index()
    {
        ini_set('max_execution_time', 36000000000000);
        ini_set('memory_limit', '-1');
        ini_set('sqlsrv.ClientBufferMaxKBSize', '5242888');
        ini_set('pdo_sqlsrv.client_buffer_max_kb_size', '5242888');
    	$role=rb_user_role();
    	$dashboard_file=RIMBUN_FOLDER.DS.'config'.DS.'views'.DS.'dashboard'.DS.$role.'.php';
    	if(file_exists($dashboard_file) && is_file($dashboard_file))
    	{
    		$dashboard_file='config/dashboard/'.$role;
    		$data['url']=$this->mod_url;
            page_render("Dashboard",$dashboard_file,$data);
		}else{
			page_render("Dashboard",NULL,NULL);
		}
    }
}