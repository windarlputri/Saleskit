<?php
header('Content-Type: application/json');
include dirname(dirname(__FILE__)).'/db/Db.class.php';
$db = new Db();
$limit = isset($_GET['limit']) ? (int) $_GET['limit'] : 0;
$name = isset($_GET['name']) ? $_GET['name'] : '';
$sql_limit = '';
if (!empty($limit)) {
    $sql_limit = ' LIMIT 0,'.$limit;
}
$sql_name = '';
if (!empty($name)) {
    $sql_name = ' where cat_name LIKE \'%'.$name.'%\' ';
}
$cat_list = $db->query('select * from users '.$sql_name.' '.$sql_limit);
$cat_list1 = $db->query('select * from kode_cabang '.$sql_name.' '.$sql_limit);
$cat_list2 = $db->query('select * from menu '.$sql_name.' '.$sql_limit);
$cat_list3 = $db->query('select * from menu_access '.$sql_name.' '.$sql_limit);
$cat_list4 = $db->query('select * from menu_detail '.$sql_name.' '.$sql_limit);
$cat_list5 = $db->query('select * from no_registrasi '.$sql_name.' '.$sql_limit);
$cat_list6 = $db->query('select * from options '.$sql_name.' '.$sql_limit);
$cat_list7 = $db->query('select * from upload '.$sql_name.' '.$sql_limit);
$cat_list8 = $db->query('select * from user_log '.$sql_name.' '.$sql_limit);
$cat_list9 = $db->query('select * from user_meta '.$sql_name.' '.$sql_limit);
$cat_list10 = $db->query('select * from user_role '.$sql_name.' '.$sql_limit);
$cat_list11 = $db->query('select * from user_role_meta '.$sql_name.' '.$sql_limit);

$arr = array();
$arr['info'] = 'success';
$arr['num'] = count($cat_list1);
$arr['users'] = $cat_list;
$arr['kode_cabang'] = $cat_list1;
$arr['menu'] = $cat_list2;
$arr['menu_access'] = $cat_list3;
$arr['menu_detail'] = $cat_list4;
$arr['no_registrasi'] = $cat_list5;
$arr['options'] = $cat_list6;
$arr['upload'] = $cat_list7;
$arr['user_log'] = $cat_list8;
$arr['user_meta'] = $cat_list9;
$arr['user_role'] = $cat_list10;
$arr['user_role_meta'] = $cat_list11;


$data = $arr;

print_r($data['upload']);
//echo json_encode ($data);

