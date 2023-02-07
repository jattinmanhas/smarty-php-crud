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
// $smarty->caching = true;
// $smarty->cache_lifetime = 120;

$database = new Database();
$db = $database -> getConnection();

$operations = new Operations($db);
$result = $operations -> insert();


$smarty->display('../Smarty_crud/templates/index.tpl');