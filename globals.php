<?php
// Start the session
session_start();

$sitename = "C&Oslash;&Oslash;KB&Oslash;&Oslash;K";
$actual_link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]/ckbk/";

?>