CREATE TABLE pengguna (
    id_pengguna INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    peran VARCHAR(30) NOT NULL
);

CREATE TABLE kategori_fasilitas (
    id_kategori INT AUTO_INCREMENT PRIMARY KEY,
    nama_kategori VARCHAR(100) NOT NULL UNIQUE,
    deskripsi VARCHAR(255)
);

CREATE TABLE laporan_kerusakan (
    id_laporan BIGINT AUTO_INCREMENT PRIMARY KEY,
    id_pelapor INT NOT NULL,
    id_kategori INT NOT NULL,
    id_lokasi INT NOT NULL,
    judul VARCHAR(150) NOT NULL,
    deskripsi TEXT NOT NULL,
    foto VARCHAR(255),
    tanggal_laporan DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    status_laporan VARCHAR(20) NOT NULL DEFAULT 'baru',
    prioritas VARCHAR(20) NOT NULL DEFAULT 'sedang',

    FOREIGN KEY (id_pelapor)
        REFERENCES pengguna(id_pengguna),

    FOREIGN KEY (id_kategori)
        REFERENCES kategori_fasilitas(id_kategori)
);
