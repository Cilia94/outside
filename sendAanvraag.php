<?php 

require  'PHPMailer-master/PHPMailerAutoload.php';

error_reporting(E_ALL);
ini_set('display_errors', TRUE);
ini_set('display_startup_errors', TRUE);

function filterVars($var){
    if(is_array($var)){
        $str = "<table>";
        foreach($var as $k=>$v) $str .= "<tr><td>$k</td><td>$v</td></tr>";
        $str .= "</table>";
        $var = $str;
    }
    return $var;
 }

$mail = new PHPMailer;
//$mail->setLanguage('nl', WWW_ROOT  . DS . 'PHPMailer-master' . DS . 'language' . DS . 'phpmailer.lang-nl.php');

$mail->isSendmail();

$mail->setFrom('cilia@pandora.be');
$mail->addAddress($_POST['email'], $_POST['name']);
//$mail->addReplyTo($_POST['email'], $_POST['naam']);


$mail->Subject = "Aanvraag " . $_POST['name'];
$name = $_POST['name'];
if($_POST['opmerking']){
$message = $_POST['opmerking'];
}else{
	$message = "Geen opmerking"
}
$activities = $_POST['activities'];
$email = $_POST['email'];
$_POST['dates']{
$dates = $_POST['dates'];
}else{
	$dates = "Niet ingevuld";
}
$typeGroep = $_POST['typeGroep'];
$subject = "Aanvraag " . $name;
$taal = $_POST['taal'];
$aankomst = $_POST['aankomst'];
if($_POST['vertrek']){
$vertrek = $_POST['vertrek'];
}else{
	$vertrek = "n.v.t"

}
$deelnemers = $_POST['deelnemers'];

$datesString = implode(",", $dates);
$arrayActivitiesName = [];

for($i = 0; $i< count($activities); $i++ ){

	array_push($arrayActivitiesName, $activities[$i]['naam_nl']);


}
$activitiesString = implode(",", $arrayActivitiesName);

$mailTemplate = file_get_contents(dirname(__FILE__) . '/assets/aanvraagTemplate.php');

$mailTemplate = str_replace('%name%', $name, $mailTemplate);
$mailTemplate = str_replace('%message%', $message, $mailTemplate);
$mailTemplate = str_replace('%dates%', $datesString, $mailTemplate);
$mailTemplate = str_replace('%activities%', $activitiesString, $mailTemplate);
$mailTemplate = str_replace('%email%', $email, $mailTemplate);
//$mailTemplate = str_replace('%email%', $email, $mailTemplate);
$mailTemplate = str_replace('%subject%', $subject, $mailTemplate);
$mailTemplate = str_replace('%typeGroep%', $typeGroep, $mailTemplate);

$mailTemplate = str_replace('%taal%', $taal, $mailTemplate);
$mailTemplate = str_replace('%aankomst%', $aankomst, $mailTemplate);
$mailTemplate = str_replace('%vertrek%', $vertrek, $mailTemplate);
$mailTemplate = str_replace('%deelnemers%', $deelnemers, $mailTemplate);


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