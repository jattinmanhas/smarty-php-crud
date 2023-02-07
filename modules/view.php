<?php
/**
 * Example Application
 *
 * @package Example-application
 */
error_reporting(0);
require '../libs/Smarty.class.php';
require './database.php';
require './operations.php';

$smarty = new Smarty;
//$smarty->force_compile = true;
$smarty->debugging = true;
$smarty->caching = true;
$smarty->cache_lifetime = 120;

$database = new Database();
$db = $database -> getConnection();

$operation = new Operations($db);
$data = $operation -> read();


$smarty->assign('data',$data);


$smarty->display('../Smarty_crud/templates/view.tpl');