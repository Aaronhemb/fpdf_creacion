<?php
require "conexion.php";
require "plantilla.php";

header('Content-Type: text/html; charset=utf-8');


function generatePDF($data) {

   // se genera un nuevo PDF 
    $pdf = new FPDF();
    $pdf->AddPage();


    //Variables que debes de cargar ¿, para poder comunicarte a la base de datos
    $fields16 = $data['fields_16'];
    $TAG = $data['TAG'];
    $SSN = $data['SSN'];
    $SMANUFACTURER = $data['SMANUFACTURER'];
    $fields11 = $data['fields_11'];
    $fields3 = $data['fields_3'];
    $fields10 = $data['fields_10'];
    date_default_timezone_set("America/Mazatlan");
	$mifecha = date('d');
    $mifecha2 = date('m');
    $mifecha3 = date('Y');
    $name = $data['NAME'];
    $SMODEL = $data['SMODEL'];
    $fields7 = $data['fields_7'];
    $fields8 = $data['fields_8'];
    $fields18 = $data['fields_18'];

    // Agregar una tabla en la cabecera
    //$pdf->SetFont('Arial', 'B', 16);
    //$pdf->Cell(0, 10, 'Tabla en la Cabecera', 0, 1, 'C');
    
    // Crear una tabla de 1 fila y 3 columnas
    $pdf->SetFont('Arial', 'B', 7);
    $pdf->SetFillColor(255, 255, 255); // Color de fondo de celda
    $pdf->Cell(60, 20, '' . $fields16 . '', 1, 0, 'C', 1);
    $pdf->Cell(60, 20, 'Acta de entrega de equipos computacionales', 1, 0, 'C', 1);
    $texto = "Fecha de edicion: Julio 2023\nFecha actualizacion: Julio 2023\nVersion: 1.0\nCodigo: XY-BAAJ-23";
    $pdf->SetFont('Arial', 'B', 5);
    $pdf->MultiCell(0, 5, $texto, 1, 'L', 1);
    $pdf->Ln();

    $pdf->SetTitle('CARTA ENTREGA DE EQUIPO DE COMPUTO');
    $pdf->SetAuthor('XYBooster');
    $pdf->SetCreator('FPDF Maker');

    // Documento formal
    $pdf->SetFont('Arial', '', 10);
    $lineHeight = 7;
    //primera Linea de mensaje
    $text = utf8_decode('Hoy ' . $mifecha . ' del mes ' . $mifecha2 . ' del año ' . $mifecha3 . '  el departamento de división de tecnología, mediante el siguiente documento realiza la entrega formal de los equipos computacionales asignados para el cumplimiento de las actividades laborales del RESPONSABLE, quién declara recepción de los mismos en buen estado y se compromete a cuidar de los recursos y hacer uso de ellos para los fines establecidos.');
    $textWidth = $pdf->GetStringWidth($text);
 
    // Ejecutar mensajes para que aparezcan en el PDF
    // Primer Mensaje
    $pdf->MultiCell(0, $lineHeight, $text, 0, 'J'); // 'C' means center alignment
    $pdf->Ln();
    // Sub titulo  (Con Negritas en el sub titulo)
    $pdf->SetFont('Arial', 'B', 10);
    $pdf->Cell(0, 8, 'RESPONSABLE', 0, 1);


    $tableData = array(
        array('*Nombre Completo', ''. $TAG .''),
        array('* Correo Intitucional', ''. $fields3 .'')
    );
    $pdf->SetFont('Arial', '', 10);
    foreach ($tableData as $row) {
        $pdf->Cell(95, 10, $row[0], 1);
        $pdf->Cell(95, 10, $row[1], 1);
        $pdf->Ln();
    }
    
    // Sub titulo  (Con Negritas en el sub titulo)
    $pdf->SetFont('Arial', 'B', 10);
    $pdf->Cell(0, 10, 'EQUIPOS ASIGNADOS', 0, 1);

    $pdf->SetFont('Arial', '', 10);
    $tableData = array(
        array('*Numero de serie', ''. $name .''),
        array('*Numero de serie', ''. $SSN .''),
        array('*Numero de inventario', ''. $fields10 .'')
    );

    foreach ($tableData as $row) {
        $pdf->Cell(95, 10, $row[0], 1);
        $pdf->Cell(95, 10, $row[1], 1);
        $pdf->Ln();
    }

    // tabla de asignacion de elementos de descripcion de el producto que se esta entregando , dejar tres opciones
    // para despues realizar la asignacion de los mismos

    $pdf->Ln(); // Agregar espacio después de la tabla
    $pdf->SetFont('Arial', '', 10);
    $tableData = array(
        array('*Descripcion', '*Marca', '*Modelo', '*Serial'),
        array(''. $name .'', ''. $SMANUFACTURER .'', ''. $SMODEL .'', ''. $SSN .''),
        array('Cargador', ''. $fields7 .'', '', ''),
        array('Diadema', ''. $fields8 .'', '', ''),
    );

    foreach ($tableData as $row) {
        $pdf->Cell(48, 10, $row[0], 1);
        $pdf->Cell(47, 10, $row[1], 1);
        $pdf->Cell(48, 10, $row[2], 1);
        $pdf->Cell(48, 10, $row[3], 1);


        $pdf->Ln();
    }

    // Sub titulo  (Con Negritas en el sub titulo)
    $pdf->SetFont('Arial', 'B', 10);
    $pdf->Cell(0, 8, 'OBSERVACIONES:', 0, 1);

// ests observaciones se agregaran de forma manual pora evitar estarlas escribiendo , asi llevaremos un mejor control
$pdf->SetFont('Arial', '', 8);
$tableData = array(
    array(''. $fields18 .''),
);

foreach ($tableData as $row) {
    $pdf->MultiCell(191, 5, $row[0], 1);
    $pdf->Ln();
}


    // Sub titulo  (Con Negritas en el sub titulo)
    $pdf->SetFont('Arial', 'B', 10);
    $pdf->Cell(0, 8, 'ENTREGA:', 7, 1);

    $pdf->SetLeftMargin(28);
    $pdf->SetFont('Arial', '', 10, 'C');
    $tableData = array(
        array('*Entregado por: ', '*Recibido por:'),
        array('Area de Tecnologia', ''. $TAG .''),
        array('Firma', 'Firma'),

    );

    foreach ($tableData as $row) {
        $pdf->Cell(80, 15, $row[0], 1);
        $pdf->Cell(80, 15, $row[1], 1);
        $pdf->Ln();  
    }




    $texts = [
      ''
    ];
    
    foreach ($texts as $text) {
        //ejecucion de mensajes atravez de foreach
        $textWidth = $pdf->GetStringWidth($text);

        
      

        $pdf->MultiCell(0, $lineHeight, utf8_decode($text), 0, 'D'); // 'C' means center alignment
        $pdf->Ln();
        
    }
    
    $pdf->Output('', 'fpdf-complete.pdf');
    
}
// rescate de ID HardWard de la base de datos 
$id = $_REQUEST['HARDWARE_ID'];
// Consulta a la base de datos 

$sql = "SELECT * FROM accountinfo JOIN bios ON accountinfo.HARDWARE_ID = bios.HARDWARE_ID JOIN hardware ON accountinfo.HARDWARE_ID = hardware.id WHERE accountinfo.HARDWARE_ID = '$id'";
$resultado = $mysqli->query($sql);

$mysqli->close();


while ($fila = $resultado->fetch_assoc()) {
    if (!empty($_POST)) {
        generatePDF($fila);
    }
}
?>
