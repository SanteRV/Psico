<?php
$host = 'localhost';
$bd = 'postgres';
$user = 'postgres';
$pass = 'britney';

// Verificamos la conexión
$conexion = pg_connect("host=$host dbname=$bd user=$user password=$pass");
if (!$conexion) {
    echo "Error al conectar a la base de datos.\n";
    exit;
}

// Verificar si se enviaron datos mediante POST o GET
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Limpiar y validar los datos recibidos
    $nombre = pg_escape_string($_POST['nombre']);
    $edad = intval($_POST['edad']);
    $email = pg_escape_string($_POST['email']); // Asegurarse de obtener un número entero
    $genero = ($_POST['sexo'] === 'masculino') ? 'masculino' : 'femenino'; // Almacenar el género como texto

    // Preparar la consulta con un prepared statement
    $query = "INSERT INTO psico.\"User\"(nombre, edad, email, genero) VALUES($1, $2, $3, $4)";
    $result = pg_query_params($conexion, $query, array($nombre, $edad, $email, $genero));

    if (!$result) {
        echo "Error en la consulta: " . pg_last_error($conexion);
    } else {
        echo 'Se acaba de registrar';
    }
} else {
    echo "No se han recibido datos por POST";
}

// Cerrar la conexión
pg_close($conexion);
?>
