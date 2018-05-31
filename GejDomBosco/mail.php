<?php
/**
 * Torbara CuteChurch Responsive HTML Template, exclusively on Envato Market: http://themeforest.net/user/torbara?ref=torbara
 * @encoding     UTF-8
 * @version      1.0
 * @copyright    Copyright (C) 2015 Torbara (http://torbara.com). All rights reserved.
 * @license      GNU General Public License version 2 or later, see http://www.gnu.org/licenses/gpl-2.0.html
 * @author       Alexandr Khmelnytsky (support@torbara.com)
 */

$to = 'nobody@example.com';

//Contact us
if(isset($_POST['tm_form'])&&($_POST['tm_form']==1)){
    $subject = "CONTACT US";
    
    $message = "Name: ".$_POST['text-990']."\r\n".
               "Email: ".$_POST['email-774']."\r\n".
               "Subject: ".$_POST['text-271']."\r\n".
               "Message: ".$_POST['textarea-431'];
}

if(mail($to, $subject, $message)){
    echo "Your message sent successfully.";
}else{
    echo "Error while sending email. Try again.";
}