<?php 

require  'PHPMailer-master/PHPMailerAutoload.php';

$mail = new PHPMailer;
//$mail->setLanguage('nl', WWW_ROOT  . DS . 'PHPMailer-master' . DS . 'language' . DS . 'phpmailer.lang-nl.php');

$mail->isSendmail();

$mail->setFrom('cilia@pandora.be');
$mail->addAddress($_POST['email'], $_POST['naam']);

$mail->addReplyTo($_POST['email'], $_POST['naam']);


$mail->Subject = $_POST['onderwerp'];
$mail->Body    = $_POST['naam'] . ' met GSM nummer '. $_POST['gsm'] . 
' heeft het volgende bericht gestuurd: '
. $_POST['bericht'];
//$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

if(!$mail->send()) {
    echo 'Message could not be sent.';
    echo 'Mailer Error: ' . $mail->ErrorInfo;
    //header('Location: index.php?page=global&id=2');
    

} else {
    echo 'Message has been sent';
    //header('Location: index.php?page=contact');
    
}


?>