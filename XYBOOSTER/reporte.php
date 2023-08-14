<?php
require "conexion.php";
require "plantilla.php";

function generatePDF($data) {
    $pdf = new FPDF();
    $pdf->AddPage();

    $fields16 = $data['fields_16'];
    $TAG = $data['TAG'];
    $SSN = $data['SSN'];
    $SMANUFACTURER = $data['SMANUFACTURER'];
    $fields11 = $data['fields_11'];
    date_default_timezone_set("America/Mazatlan");
	$mifecha = date('d');
    $mifecha2 = date('m');
    $mifecha3 = date('Y');

    $pdf->SetTitle('CARTA REPONSIVA DE EQUIPO DE COMPUTO');
    $pdf->SetAuthor('XYBooster');
    $pdf->SetCreator('FPDF Maker');

    //titulo del archivo
    $pdf->SetFont('Arial', 'B', 14);
    $pdf->Cell(0, 10, '                                CARTA REPONSIVA DE EQUIPO DE COMPUTO', 0, 1);
    $pdf->Ln();
    // Documento formal
    $pdf->SetFont('Arial', '', 10);
    $lineHeight = 7;

    //primera Linea de mensaje
    $text = utf8_decode('RESPONSIVA DE EQUIPO DE COMPUTO, QUE CELEBRAN POR UNA PARTE ' . $fields16 . ' EN SU CARÁCTER DE DUEÑO DEL EQUIPO DE COMPUTO Y, POR OTRA PARTE, ' . $TAG . '  DE ACUERDO A LO QUE SE CONTIENE EN LAS SIGUIENTES DECLARACIONES Y CLÁUSULAS:');
    $textWidth = $pdf->GetStringWidth($text);
    //Segunda Line de mensaje
    $text2 = utf8_decode('I.- DECLARA ' . $fields16 . ' EN SU CARÁCTER DE DUEÑO DEL EQUIPO DE COMPUTO: A) ESTAR EN POSIBILIDAD DE CONCEDER EL USO DEL BIEN MATERIA DE LA PRESENTE RESPONSIVA, SIN NECESIDAD DE ACREDITAR LA TITULARIDAD O CAUSA DE POSESIÓN DEL BIEN, POR SER ESTO UN HECHO PÚBLICO, NOTORIO Y CONOCIDO ENTRE LAS PARTES.  B) ENCONTRARSE DEBIDAMENTE CAPACITADO PARA LA CELEBRACIÓN DEL PRESENTE CONTRATO, EL CUAL SEÑALA PARA TODOS LOS LOS EFECTOS LEGALES A QUE HAYA LUGAR.');
    $textWidth = $pdf->GetStringWidth($text2);
    //tercera Line de mensaje
    $text3 = utf8_decode('II.- DECLARA '. $TAG .' : A) QUE SE LE HA CONCEDIDO EL USO DEL BIEN MATERIA DE LA PRESENTE RESPONSIVA, PARA EFECTOS DE DESEMPEÑAR LAS FUNCIONES LABORALES CONSECUENCIA DEL CONTRATO DE PRESTACIÓN DE SERVICIOS CELEBRADO CON ' . $fields16 . '. B) SER MAYOR DE EDAD, SEÑALANDO COMO DOMICILIO PARA TODOS LOS EFECTOS LEGALES A QUE HAYA LUGAR, '. $fields11 .'. EXPUESTO LO ANTERIOR OTORGAN LO QUE SE CONTIENE EN LAS SIGUIENTES: ');
    $textWidth = $pdf->GetStringWidth($text3);
    //cuarta Line de mensaje
    $text4 = utf8_decode('PRIMERA.- ' . $fields16 . ' ENTREGA EN ESTE MOMENTO A '. $TAG .' UN EQUIPO DE COMPUTO CON LAS CARACTERISTICAS '. $SMANUFACTURER .' CON NUMERO DE SERIE '. $SSN .' QUIEN SE OBLIGA A USARLO DE ACUERDO A SU PROPIA NATURALEZA Y ESTRICTAMENTE PARA ASUNTOS LABORALES POR LO CUAL NO PODRÁ SACARLO DE LAS INSTALACIONES, NI SE PODRÁ INSTALAR PROGRAMAS AJENOS A LOS NECESARIOS PARA EL DESEMPEÑO DE SUS FUNCIONES. ');
    $textWidth = $pdf->GetStringWidth($text4);
    //Quinta Line de mensaje
    $text5 = utf8_decode('SEGUNDA.- '. $TAG .' SE OBLIGA A RESTITUIR EL BIEN QUE LE HA SIDO ENTREGADO UNA VEZ TERMINADO SU CONTRATO LABORAL CON ' . $fields16 . ' EN SU CARÁCTER DE DUEÑO DEL EQUIPO ELECTRONICO. ');
    $textWidth = $pdf->GetStringWidth($text5);
    //sexta Line de mensaje
    $text6 = utf8_decode('TERCERA.- '. $TAG .' NO PUEDE CONCEDER A UN TERCERO EL USO DEL BIEN MATERIA DE LA PRESENTE RESPONSIVA.  ');
    $textWidth = $pdf->GetStringWidth($text6);
    //septima Line de mensaje
    $text7 = utf8_decode('CUARTA.- '. $TAG .' SE OBLIGA A CUIDAR Y PROTEGER EL BIEN ENTREGADO, Y A RESPONDER POR SU CULPA DE CUALQUIER DETERIORO QUE ESTE SUFRA INCLUSIVE SI SE EMPLEA EN USO DISTINTO A LA  NATURALEZA DEL MISMO, O SI SE EXCEDIESE EN EL PLAZO CONVENIDO.   ');
    $textWidth = $pdf->GetStringWidth($text7);  
     //Octava Line de mensaje 
    $text8 = utf8_decode('QUINTA.- AMBAS PARTES ESTABLECEN PARA EFECTOS DE LO ESTABLECIDO EL CÓDIGO PENAL FEDERAL, COMO VALOR DEL BIEN LA CANTIDAD DE $10,000.00 (DIEZ MIL PESOS MX) MISMA QUE SERÁ INDEXADA EN TÉRMINOS DEL ÍNDICE NACIONAL DE PRECIOS AL CONSUMIDOR, AL MOMENTO DEL PLAZO ESTABLECIDO PARA SU DEVOLUCIÓN, O BIEN SI SE EXCEDIERE EN EL PLAZO, AL MOMENTO EN QUE ESTE SEA CUMPLIDO. ');
    $textWidth = $pdf->GetStringWidth($text8);    
    //novena Line de mensaje
    $text9 = utf8_decode('SEXTA.-  '. $TAG .' RESPONDE DE LA PÉRDIDA DEL BIEN, AÚN CUANDO LA PÉRDIDA SE DERIVE DE CASO FORTUITO O FUERZA MAYOR.  ');
    $textWidth = $pdf->GetStringWidth($text9);    
    //Decima Line de mensaje
    $text10 = utf8_decode('SEPTIMA.- LAS PARTES SE SOMETEN EXPRESAMENTE PARA TODO LO RELACIONADO CON EL INCUMPLIMIENTO DEL PRESENTE CONTRATO LAS SANCIONES SEÑALADAS EN EL CÓDIGO PENAL FEDERAL, ASI MISMO AQUELLAS RELACIONADAS A LO EXPRESADO EN EL PRESENTE CONTRATO A LA LEY APLICABLE A LA CIUDAD DE MÉXICO. LAS PARTES FIRMAN EL PRESENTE RESPONSIVA EN LA CIUDAD DE MÉXICO A LOS ' . $mifecha .' DEL MES ' . $mifecha2 .' DEL AÑO ' . $mifecha3 .'  , FIRMANDO AL CALCE EN CADA UNA DE LAS HOJAS Y AL FINAL EN ESTA ÚLTIMA.');
    $textWidth = $pdf->GetStringWidth($text10);    
   //Once Line de mensaje
   $text11 = utf8_decode('                                     '. $TAG .'    ');
   $textWidth = $pdf->GetStringWidth($text11);   


    // Ejecutar mensajes para que aparezcan en el PDF
    // Primer Mensaje
    $pdf->MultiCell(0, $lineHeight, $text, 0, 'C'); // 'C' means center alignment
    $pdf->Ln();
    // Sub titulo  (Con Negritas en el sub titulo)
    $pdf->SetFont('Arial', 'B', 14);
    $pdf->Cell(0, 10, '                                                    DECLARACIONES', 0, 1);

    // regreso de tipografia sin negrita para mensaje
    $pdf->SetFont('Arial', '', 10);
    // Segundo Mensaje
    $pdf->MultiCell(0, $lineHeight, $text2, 0, 'J'); // 'C' means center alignment
    $pdf->Ln();
    // tercer Mensaje
    $pdf->MultiCell(0, $lineHeight, $text3, 0, 'J'); // 'C' means center alignment
    $pdf->Ln();
        // Sub titulo  (Con Negritas en el sub titulo)
    $pdf->SetFont('Arial', 'B', 14);
    $pdf->Cell(0, 10, '                                                        CLAUSULAS', 0, 1);
    
        // regreso de tipografia sin negrita para mensaje
    $pdf->SetFont('Arial', '', 10);
    
        // cuarto Mensaje
    $pdf->MultiCell(0, $lineHeight, $text4, 0, 'J'); // 'C' means center alignment
    $pdf->Ln();
                // quinto Mensaje
    $pdf->MultiCell(0, $lineHeight, $text5, 0, 'J'); // 'C' means center alignment
    $pdf->Ln();
                    // sexto  Mensaje
    $pdf->MultiCell(0, $lineHeight, $text6, 0, 'J'); // 'C' means center alignment
    $pdf->Ln();
    $pdf->Ln();
                 // septimo Mensaje
    $pdf->MultiCell(0, $lineHeight, $text7, 0, 'J'); // 'C' means center alignment
    $pdf->Ln();   
                     // octavo Mensaje
    $pdf->MultiCell(0, $lineHeight, $text8, 0, 'J'); // 'C' means center alignment
    $pdf->Ln();  
    // Noveno Mensaje
    $pdf->MultiCell(0, $lineHeight, $text9, 0, 'J'); // 'C' means center alignment
    $pdf->Ln();  
    // Decimo Mensaje
    $pdf->MultiCell(0, $lineHeight, $text10, 0, 'J'); // 'C' means center alignment
    $pdf->Ln();  
    //Once Line de mensaje
    // regreso de tipografia sin negrita para mensaje
    $pdf->SetFont('Arial', 'B', 14);
    $pdf->Ln(); 
    $pdf->Ln(); 
    $pdf->Ln(); 
    $pdf->Ln(); 
    $pdf->MultiCell(0, $lineHeight, $text11, 0, 'J'); // 'C' means center alignment
    $pdf->Ln(); 

    $texts = [
      ''
    ];
    
    foreach ($texts as $text) {
        //ejecucion de mensajes atravez de foreach
        $textWidth = $pdf->GetStringWidth($text);
        $textWidth = $pdf->GetStringWidth($text2);
        $textWidth = $pdf->GetStringWidth($text3);
        $textWidth = $pdf->GetStringWidth($text4);
        $textWidth = $pdf->GetStringWidth($text5);
        $textWidth = $pdf->GetStringWidth($text6);
        $textWidth = $pdf->GetStringWidth($text7);
        $textWidth = $pdf->GetStringWidth($text8);
        $textWidth = $pdf->GetStringWidth($text9);
        $textWidth = $pdf->GetStringWidth($text10);
        $textWidth = $pdf->GetStringWidth($text11);

        $pdf->MultiCell(0, $lineHeight, utf8_decode($text), 0, 'D'); // 'C' means center alignment
        $pdf->Ln();
        
    }
    
    $pdf->Output('', 'fpdf-complete.pdf');
    
}
// rescate de ID HardWard de la base de datos 
$id = $_REQUEST['HARDWARE_ID'];
// Consulta a la base de datos 
//$sql = "SELECT * FROM accountinfo INNER JOIN bios WHERE HARDWARE_ID ='$id'";
$sql = "SELECT * FROM accountinfo INNER JOIN bios ON accountinfo.HARDWARE_ID = bios.HARDWARE_ID WHERE accountinfo.HARDWARE_ID = '$id'";

$resultado = $mysqli->query($sql);
$mysqli->close();


while ($fila = $resultado->fetch_assoc()) {
    if (!empty($_POST)) {
        generatePDF($fila);
    }
}
?>
