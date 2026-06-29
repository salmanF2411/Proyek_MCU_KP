<?php
// Start session if not started
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

// Include database
require_once __DIR__ . '/../../config/database.php';

$is_super_admin = ($_SESSION['role'] == 'super_admin');
$is_doctor = in_array($_SESSION['role'], ['dokter_mata', 'dokter_umum']);
$can_manage_content = hasRole('pendaftaran') || $is_super_admin;
$can_access_reports = hasRole('pendaftaran');
?>

<!-- Admin Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="<?php echo ADMIN_URL; ?>/dashboard.php">
            <i class="fas fa-user-md me-2"></i> Admin Panel
        </a>
        
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#adminNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        
        <div class="collapse navbar-collapse" id="adminNav">
            <ul class="navbar-nav me-auto">
                <?php if (!$is_doctor): ?>
                <li class="nav-item">
                    <a class="nav-link" href="<?php echo ADMIN_URL; ?>/dashboard.php">
                        <i class="fas fa-tachometer-alt"></i> Dashboard
                    </a>
                </li>
                <?php endif; ?>
                
                <?php if (hasRole('pendaftaran') || $_SESSION['role'] == 'super_admin'): ?>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="pasienDropdown" role="button" data-bs-toggle="dropdown">
                        <i class="fas fa-users"></i> Pasien
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="<?php echo ADMIN_URL; ?>/dashboard.php?page=patients&filter=all">Daftar Pasien</a></li>
                        <li><a class="dropdown-item" href="<?php echo ADMIN_URL; ?>/dashboard.php?page=patients&filter=menunggu">Pasien Menunggu</a></li>
                        <li><a class="dropdown-item" href="<?php echo ADMIN_URL; ?>/dashboard.php?page=patients&filter=proses">Sedang Diproses</a></li>
                        <li><a class="dropdown-item" href="<?php echo ADMIN_URL; ?>/dashboard.php?page=patients&filter=selesai">Selesai</a></li>
                    </ul>
                </li>
                <?php endif; ?>
                
                <!-- <?php if (hasRole('dokter_mata') || $_SESSION['role'] == 'super_admin'): ?>
                <li class="nav-item">
                    <a class="nav-link" href="<?php echo ADMIN_URL; ?>/pasien/pemeriksaan-mata.php">
                        <i class="fas fa-eye"></i> Pemeriksaan Mata
                    </a>
                </li>
                <?php endif; ?>
                
                <?php if (hasRole('dokter_umum') || $_SESSION['role'] == 'super_admin'): ?>
                <li class="nav-item">
                    <a class="nav-link" href="<?php echo ADMIN_URL; ?>/pasien/pemeriksaan-umum.php">
                        <i class="fas fa-stethoscope"></i> Pemeriksaan Umum
                    </a>
                </li>
                <?php endif; ?> -->
                
                <?php if ($can_access_reports): ?>
                <li class="nav-item">
                    <a class="nav-link" href="<?php echo ADMIN_URL; ?>/laporan/cetak-hasil.php">
                        <i class="fas fa-print"></i> Cetak Hasil MCU
                    </a>
                </li>
                <?php endif; ?>
                
                <?php if ($can_manage_content): ?>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="adminDropdown" role="button" data-bs-toggle="dropdown">
                        <i class="fas fa-cog"></i> Admin
                    </a>
                    <ul class="dropdown-menu">
                        <?php if ($can_manage_content): ?>
                        <li><a class="dropdown-item" href="<?php echo ADMIN_URL; ?>/artikel/list.php">Artikel</a></li>
                        <li><a class="dropdown-item" href="<?php echo ADMIN_URL; ?>/home-visit/list.php">Pengaturan Home Visit</a></li>
                        <li><a class="dropdown-item" href="<?php echo ADMIN_URL; ?>/home-visit/process.php">Home Visit</a></li>
                        <?php endif; ?>
                        <?php if ($is_super_admin): ?>
                        <li><a class="dropdown-item" href="<?php echo ADMIN_URL; ?>/pengaturan.php">Pengaturan</a></li>
                        <li><a class="dropdown-item" href="<?php echo ADMIN_URL; ?>/users/list.php">Users</a></li>
                        <?php endif; ?>
                    </ul>
                </li>
                <?php endif; ?>
            </ul>
            
            <ul class="navbar-nav">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-bs-toggle="dropdown">
                        <i class="fas fa-user-circle"></i> <?php echo $_SESSION['nama_lengkap']; ?>
                        <span class="badge bg-info ms-1"><?php echo ucfirst(str_replace('_', ' ', $_SESSION['role'])); ?></span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end">
                        <li>
                            <a class="dropdown-item" href="<?php echo ADMIN_URL; ?>/profile.php">
                                <i class="fas fa-user me-2"></i> Profile
                            </a>
                        </li>
                        <li><hr class="dropdown-divider"></li>
                        <li>
                            <a class="dropdown-item" href="<?php echo BASE_URL; ?>" target="_blank">
                                <i class="fas fa-external-link-alt me-2"></i> Lihat Website
                            </a>
                        </li>
                        <li><hr class="dropdown-divider"></li>
                        <li>
                            <a class="dropdown-item text-danger" href="<?php echo ADMIN_URL; ?>/logout.php" onclick="return confirm('Yakin ingin logout?')">
                                <i class="fas fa-sign-out-alt me-2"></i> Logout
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
