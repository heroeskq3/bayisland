<?php
//Section Parameters
$sectionParams = array(
    'tittle'      => 'Actividades',
    'description' => '',
    'homedir'     => '../',
    'restrict'    => false,
    'navbar'      => false,
    'sidebar'     => false,
    'searchbar'   => false,
    'style'       => false,
    'debug'       => false,
);
require_once 'header.php';

$qaactivitystatuslist = class_qaActivityStatusList();
$results              = null;

if ($qaactivitystatuslist['rows']) {
    foreach ($qaactivitystatuslist['response'] as $key_qaactivitystatuslist => $row_qaactivitystatuslist) {

        $reference = $row_qaactivitystatuslist['Reference'];

        if ($row_qaactivitystatuslist['UsersId']) {
            $qausersinfo     = class_usersInfo($row_qaactivitystatuslist['UsersId']);
            $row_qausersinfo = $qausersinfo['response'][0];
        }
        if ($reference) {
            $qacustomersinfo     = class_qaCustomersInfo($reference);
            $row_qacustomersinfo = $qacustomersinfo['response'][0];
        } else {
            $qacustomersinfo['rows'] = 0;
        }

        if ($qacustomersinfo['rows']) {
            $customer = $row_qacustomersinfo['FullName'] . ' (' . $reference . ')';
        } else {
            $customer = 'Sin referencia' . ' (' . $reference . ')';
        }

        $results .= '<table width="100%" border="0" bgcolor="#ccc" cellpadding="5" cellspacing="1" style="font-family:arial;">';

        //Agente
        $results .= '<tr>';
        $results .= '<td width="80px">Agente</td>';
        $results .= '<td bgcolor="#fff">' . $row_qausersinfo['UserName'] . '</td>';
        $results .= '</tr>';

        //Cliente
        $results .= '<tr>';
        $results .= '<td width="80px">Cliente</td>';
        $results .= '<td bgcolor="#fff">' . $customer . '</td>';
        $results .= '</tr>';

        //Descripción
        $results .= '<tr>';
        $results .= '<td width="80px">Descripci&oacute;n</td>';
        $results .= '<td bgcolor="#fff">' . $row_qaactivitystatuslist['Description'] . '</td>';
        $results .= '</tr>';

        //Detalle
        $results .= '<tr>';
        $results .= '<td width="80px">Detalle</td>';
        $results .= '<td bgcolor="#fff">' . $row_qaactivitystatuslist['Details'] . '</td>';
        $results .= '</tr>';

        $results .= '</table>';
        $results .= '<br>';
        echo $results;

        //sent mail
        if (isset($results)) {
            $from       = "Bayisland Cloud";
            $from_reply = "controldecalidad@bayislandcruises.com";
            $to         = $row_qausersinfo['Email'];
            $cc         = "controldecalidad@bayislandcruises.com";
            $bcc        = "ovaldesigncr@hotmail.com";
            $subject    = $row_qaactivitystatuslist['Description'];
            $message    = $results;
            $sent       = class_mailSent($from, $from_reply, $to, $cc, $bcc, $subject, $message);
            if ($sent['status'] == "ok") {
                class_qaActivityStatusUpdate($row_qaactivitystatuslist['Id']);
                echo "ok - $to";
            } else {
                echo "error";
            }
        }
    }
} else {
    echo "No hay resultados";
}

/*

 */
require_once 'footer.php';
