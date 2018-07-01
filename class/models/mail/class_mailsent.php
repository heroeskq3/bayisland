<?php
function class_mailSent($from, $from_reply, $to, $cc, $bcc, $subject, $body)
{

    //Para enviar un correo HTML, debe establecerse la cabecera Content-type
    $headers = 'MIME-Version: 1.0' . "\r\n";
    $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

    //headers adicionales

    if ($to) {
        $headers .= 'To: Mary <' . $to . '>' . "\r\n";
    }
    if ($from) {
        $headers .= 'From: ' . $from . ' <' . $from_reply . '>' . "\r\n";
    }
    if ($cc) {
        $headers .= 'Cc: ' . $cc . "\r\n";
    }
    if ($bcc) {
        $headers .= 'Bcc: ' . $bcc . "\r\n";
    }

    $sent = mail($to, $subject, $body, $headers);

    if ($sent) {
        $msg = "ok";
    } else {
        $msg = "error";
    }

    $results = array('status' => $msg, 'from' => $from . '<' . $from_reply . '>', 'to' => $to, 'cc' => $cc, 'bcc' => $bcc, 'subject' => $subject, 'body' => $body);

    return $results;
}
