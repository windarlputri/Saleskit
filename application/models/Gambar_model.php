<?php

class Gambar_model extends CI_Model
{
    public function ambil_gambar($menu)
    {
        $gambar = rb_db_data('','upload', ['menu'=>$menu],'gambar');
        return $gambar;
    }
}
