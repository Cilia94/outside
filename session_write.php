<?php
session_start();

if (isset($_POST['session_taal'])) {
	$_SESSION['session_taal'] = $_POST['session_taal'];
	echo $_SESSION['session_taal'];
}
?>