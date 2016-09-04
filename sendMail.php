<?php 

require  'PHPMailer-master/PHPMailerAutoload.php';

error_reporting(E_ALL);
ini_set('display_errors', TRUE);
ini_set('display_startup_errors', TRUE);

$mail = new PHPMailer;
//$mail->setLanguage('nl', WWW_ROOT  . DS . 'PHPMailer-master' . DS . 'language' . DS . 'phpmailer.lang-nl.php');

$mail->isSendmail();

$mail->setFrom('cilia@pandora.be');
$mail->addAddress($_POST['email'], $_POST['naam']);
//$mail->addReplyTo($_POST['email'], $_POST['naam']);


$mail->Subject = $_POST['onderwerp'];
$name = $_POST['naam'];
$message = $_POST['bericht'];
$gsm = $_POST['gsm'];
$email = $_POST['email'];
$subject = $_POST['onderwerp'];

$mailTemplate = file_get_contents(dirname(__FILE__) . '/assets/contactTemplate.php');
$mailTemplate = str_replace('%name%', $name, $mailTemplate);
$mailTemplate = str_replace('%message%', $message, $mailTemplate);
$mailTemplate = str_replace('%gsm%', $gsm, $mailTemplate);
$mailTemplate = str_replace('%email%', $email, $mailTemplate);
$mailTemplate = str_replace('%subject%', $subject, $mailTemplate);


//Set the message
$mail->MsgHTML($mailTemplate);
$mail->AltBody = strip_tags($mailTemplate);

if(!$mail->send()) {
    echo 'Message could not be sent.';
    echo 'Mailer Error: ' . $mail->ErrorInfo;
    //header('Location: index.php?page=global&id=2');
    

} else {
    echo 'Message has been sent';
    //header('Location: index.php?page=contact');
    
}


?>