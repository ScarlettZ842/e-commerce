<?php

if(!defined('BASE_PATH')) define('BASE_PATH', '/e-commerce');

session_start();
unset($_SESSION['admin']);
header('Location: ' . BASE_PATH . '/admin/login');