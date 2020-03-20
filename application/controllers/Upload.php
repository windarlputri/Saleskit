<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Upload extends H_Controller
{
    private $mod_url = '';
    private $prefix_folder = 'upload/';
    // private $up;
    function __construct()
    {
        parent::__construct();
        $this->load->model('Adm_model', "u");

        $this->dbr = new \Rimbun\Common\Database();
        // $this->db = $this->load->database('default', TRUE);
        $this->mod_url = base_url() . $this->prefix_folder;
        $this->load->library('core/datatables');
        $this->up = new \Rimbun\Common\SuperUpload();
    }

    function gambar()
    {
        $d['url'] = $this->mod_url;
        $d['list_menu'] = rb_db_data('', 'menu_detail', ["file !=" => '']);
        page_render('Upload Gambar', $this->prefix_folder . 'gambar', $d);
    }

    function upload_g()
    {
        // Lakukan upload gambar
        $menu = $this->input->post('menu');
        $name[] = [];
        // $ext[] = [];
       
        for ($i = 0; $i < count($_FILES['gambar']['name']); $i++) {
            if ($_FILES['gambar']['name'][$i] != '') {
                $name[$i] = $menu.$i;
                $ext[$i] = pathinfo($_FILES['gambar']['name'][$i], PATHINFO_EXTENSION);
            }
        }
        $upload = $this->u->upload_file($name, $ext, $menu);
        echo json_encode(array(
            'status' => $upload['result'],
            'message' => $upload['error'],
            // 'reload'=>$reload
        ));
        redirect('upload/gambar');

        // $this->u->uploadfile($_FILES['gambar1'], $dataUploads['name'], $menu);
    }
}
