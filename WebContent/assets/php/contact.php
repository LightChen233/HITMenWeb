<?php

$to       = "frontpixels@gmail.com";  // Replace with your mail address
$name     = $_REQUEST['name'];
$from     = $_REQUEST['email'];
$subject  = $_REQUEST['subject'];
$headers  = "From: $from";

$fields             = array();
$fields{"name"}     = "Name:";
$fields{"email"}    = "Email:";
$fields{"subject"}  = "Subject:";
$fields{"message"}  = "Message:";

$body = "Here is what was sent:\n\n"; foreach($fields as $a => $b){   $body .= sprintf("%20s: %s\n",$b,$_REQUEST[$a]); }

$send = mail($to, $subject, $body, $headers);

?>