<?php

require "conexion.php";

$sql = "SELECT HARDWARE_ID, TAG FROM accountinfo";
$resultado = $mysqli->query($sql);

?>

<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reporte</title>

 
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 400px;
            text-align: center;
            margin: 0 20px;
        }

        h2 {
            margin-top: 0;
            color: #333333;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #cccccc;
            border-radius: 5px;
            margin-bottom: 15px;
            font-size: 16px;
            color: #333333;
        }

        button {
            background-color: #007bff;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body>

    <div class="container">
        <h2>Genera carta responsiva de usuarios</h2>

        <form action="reporte.php" method="post" autocomplete="off">
            <label for="grado">Selecciona el usuario:</label>
            <select id="grado" name="HARDWARE_ID">
                <option value="">Selecciona una opción</option>
                <?php while ($fila = $resultado->fetch_assoc()) { ?>
                    <option value="<?php echo $fila['HARDWARE_ID']; ?>"><?php echo $fila['TAG']; ?></option>
                <?php } ?>
            </select>

            <button type="submit">Generar</button>
        </form>
    </div>

    <div class="container">
        <h2>Generar Hoja de entrega de equipos</h2>

        <form action="reporte2.php" method="post" autocomplete="off">
            <label for="grado">Selecciona el usuario:</label>
            <select id="grado" name="HARDWARE_ID">
                <option value="">Selecciona una opción</option>
                <?php
                // Reiniciamos el resultado para usarlo de nuevo
                $resultado->data_seek(0);
                while ($fila = $resultado->fetch_assoc()) { ?>
                    <option value="<?php echo $fila['HARDWARE_ID']; ?>"><?php echo $fila['TAG']; ?></option>
                <?php } ?>
            </select>

            <button type="submit">Generar</button>
        </form>
    </div>

</body>

</html>