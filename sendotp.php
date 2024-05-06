<?php
session_start();
$otp = rand(100001,999999);
$cstname = "John Doe";
$emailid = "john@example.com";

include("phpmailer.php");
$msg = "Hello $cstname, <br><br>
Your One-Time-Password (OTP) for Online Auction Registration.<br>
<br>
Your OTP Code is : $otp
<br>
<hr>
<b>Do not share your OTP with anyone.</b>";

$subject = "OTP for Account Verification";
$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
$headers .= 'From: muhammad.sohaib3837@gmail.com' . "\r\n"; // Replace with your email address


sendmail($emailid, $subject, $msg, $headers);
echo $otp;
?>