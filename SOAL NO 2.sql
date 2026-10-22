-- INSERT tabel pengguna
INSERT INTO pengguna
    (id_pengguna, nama, email, password_hash, peran)
VALUES
    (1, 'Andi Pratama', 'andi.dummy@example.com',
     'hash_dummy_001', 'mahasiswa'),
    (2, 'Siti Rahma', 'siti.dummy@example.com',
     'hash_dummy_002', 'petugas'),
    (3, 'Budi Santoso', 'budi.dummy@example.com',
     'hash_dummy_003', 'mahasiswa');

-- INSERT tabel kategori_fasilitas
INSERT INTO kategori_fasilitas
    (id_kategori, nama_kategori, deskripsi)
VALUES
    (1, 'Elektronik', 'Kerusakan perangkat elektronik'),
    (2, 'Kebersihan', 'Masalah kebersihan fasilitas'),
    (3, 'Bangunan', 'Kerusakan bagian bangunan');

-- INSERT tabel lokasi
INSERT INTO lokasi
    (id_lokasi, nama_gedung, detail_lokasi)
VALUES
    (1, 'Gedung A', 'Lantai 1'),
    (2, 'Gedung B', 'Lantai 2'),
    (3, 'Gedung C', 'Lantai 1');

-- INSERT tabel laporan_kerusakan
INSERT INTO laporan_kerusakan
    (id_laporan, id_pelapor, id_kategori, id_lokasi,
     judul, deskripsi, foto, status_laporan, prioritas)
VALUES
    (1, 1, 1, 1, 'Proyektor rusak',
     'Proyektor di kelas tidak menyala',
     NULL, 'baru', 'tinggi'),

    (2, 2, 2, 2, 'Ruang kelas kotor',
     'Ruang kelas perlu dibersihkan',
     NULL, 'diproses', 'sedang'),

    (3, 3, 3, 3, 'Kursi rusak',
     'Kursi di ruang kelas patah',
     NULL, 'baru', 'rendah');

-- READ: menampilkan seluruh data tabel induk
SELECT * FROM pengguna;

-- UPDATE: mengubah status laporan dengan PK id_laporan
UPDATE laporan_kerusakan
SET status_laporan = 'selesai'
WHERE id_laporan = 1;

-- DELETE: menghapus satu data dummy berdasarkan PK
DELETE FROM laporan_kerusakan
WHERE id_laporan = 3;
