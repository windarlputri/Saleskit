<?php

class Adm_model extends CI_Model
{

	public function upload_file($file_name, $ext, $menu)
	{
		$this->load->library('upload');
		$this->dbr = new \Rimbun\Common\Database();
		$config['upload_path'] = './uploads/gambar/';
		$config['allowed_types'] = '*';
		$config['max_size'] = '5000';
		$config['overwrite'] = true;
		// $config['file_name'] = $file_name;
		$config['remove_spaces'] = false;
		$files = $_FILES;


		// var_dump($this->upload->do_upload('gambar'));
		// die;
		for ($i = 0; $i < count($file_name); $i++) {
			$_FILES['gambar']['name'] = $files['gambar']['name'][$i];
			$_FILES['gambar']['type'] = $files['gambar']['type'][$i];
			$_FILES['gambar']['tmp_name'] = $files['gambar']['tmp_name'][$i];
			$_FILES['gambar']['error'] = $files['gambar']['error'][$i];
			$_FILES['gambar']['size'] = $files['gambar']['size'][$i];
			$config['file_name'] = $file_name[$i].'.png';
			$this->upload->initialize($config);
			if ($this->upload->do_upload('gambar')) {
				$upload = ['gambar' => $file_name[$i] .'.png', 'menu' => $menu];
				$cek = rb_db_count('', 'upload', ['gambar' =>  $file_name[$i] .'.png']);
				if ($cek == 0) {
					$this->dbr->add_row('upload', $upload);
				}
				rb_message_header_set(TRUE, 'Upload Berhasil ', 'Berhasil upload gambar untuk menu ' . $menu);

				// $return = array('result' => 'success', 'file' => $this->upload->data(), 'error' => '');
				// return $return;
			} else {
				rb_message_header_set(FALSE, 'Upload Gagal ', $this->upload->display_errors());
				// $return = array('result' => 'failed', 'file' => '', 'error' => $this->upload->display_errors());
				// return $return;
			}
		}
	}

	public function uploadfileedit($id, $menu, $deskripsi, $gambar)
	{
		if ($id) {
			$fileExt                 = pathinfo($_FILES[$menu]['name'], PATHINFO_EXTENSION);
			$final_name              = "gambar-" . round(microtime(true));
			$config['allowed_types'] = 'jpg|png|jpeg';
			$config['upload_path']   = './uploads/gambar/';
			$config['file_name']     = $final_name . $gambar;
			$config['remove_spaces'] = FALSE;

			// $config['max_size']     = '10480';

			$this->load->library('upload', $config);
			$this->upload->initialize($config);

			if ($this->upload->do_upload($menu)) {
				$nameFiledb = $final_name . $gambar . '.' . $fileExt;
				$this->upload->data($final_name);

				$datagambar = [
					'gambar_nama' => $nameFiledb
				];

				$this->db->set('tbl_gambar', $datagambar);

				$this->db->where('gambar_id', '');
				$this->db->update('tbl_gambar', $datagambar);
			} else {
				$this->session->set_flashdata('message', '
					<div class="alert alert-danger alert-dismissible">
				        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				        <h5><i class="icon fas fa-info"></i> Gagal!</h5>
				        Gambar bangunan tidak bisa ditambahkan.
				      </div>');
			}
		}
	}

	public function getBangunanById($id)
	{
		$this->db->select('*');
		$this->db->from('tbl_bangunan');
		$this->db->where(['id_asset' => $id]);
		$hasil = $this->db->get()->row_array();

		return $hasil;
	}

	public function tampilgambarasset($id)
	{
		$this->db->select('gambar_nama');
		$this->db->from('tbl_gambar');
		$this->db->where(['id_asset' => $id]);
		$hasil = $this->db->get()->result_array();

		return $hasil;
	}

	public function removefile($name_file)
	{
		if (file_exists(FCPATH . './uploads/gambar/' . $name_file)) {
			unlink(FCPATH . './uploads/gambar/' . $name_file);
			return TRUE;
		}
		return FALSE;
	}
}
