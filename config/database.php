<?php
session_start();

// Error reporting
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Database configuration
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'mcu_system');

// Create connection
$conn = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);

// Check connection
if (!$conn) {
    die("Koneksi database gagal: " . mysqli_connect_error());
}

// Set charset
mysqli_set_charset($conn, "utf8");

// Ensure Konjungtiva (anemia, anemia_keterangan) & Sklera (sklera, ikterik_keterangan) columns exist in pemeriksaan table
$check_sklera_col = mysqli_query($conn, "SHOW COLUMNS FROM pemeriksaan LIKE 'sklera'");
if ($check_sklera_col && mysqli_num_rows($check_sklera_col) == 0) {
    mysqli_query($conn, "ALTER TABLE pemeriksaan MODIFY COLUMN anemia VARCHAR(50) DEFAULT NULL");
    $check_anemia_ket_col = mysqli_query($conn, "SHOW COLUMNS FROM pemeriksaan LIKE 'anemia_keterangan'");
    if ($check_anemia_ket_col && mysqli_num_rows($check_anemia_ket_col) == 0) {
        mysqli_query($conn, "ALTER TABLE pemeriksaan ADD COLUMN anemia_keterangan TEXT DEFAULT NULL AFTER anemia");
    }
    mysqli_query($conn, "ALTER TABLE pemeriksaan ADD COLUMN sklera VARCHAR(50) DEFAULT NULL AFTER anemia_keterangan");
    mysqli_query($conn, "UPDATE pemeriksaan SET sklera = CASE WHEN anemia = 'Ikterik (-' THEN 'Ikterik (-)' ELSE anemia END, anemia = 'Normal' WHERE anemia LIKE 'Ikterik%'");
    mysqli_query($conn, "UPDATE pemeriksaan SET sklera = 'Normal' WHERE pemeriksa_role = 'dokter_mata' AND (sklera IS NULL OR sklera = '')");
    mysqli_query($conn, "UPDATE pemeriksaan SET anemia = 'Normal' WHERE pemeriksa_role = 'dokter_mata' AND (anemia IS NULL OR anemia = '')");
}

// Timezone
date_default_timezone_set('Asia/Jakarta');

// Base URL
define('BASE_URL', 'http://localhost/mcu-system/frontend');
define('ADMIN_URL', 'http://localhost/mcu-system/admin');
define('ASSETS_URL', 'http://localhost/mcu-system/assets');

// Functions
function escape($data)
{
    global $conn;
    return mysqli_real_escape_string($conn, $data);
}

function redirect($url)
{
    header("Location: " . $url);
    exit();
}
