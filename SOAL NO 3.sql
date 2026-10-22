SELECT
    kategori_fasilitas.nama_kategori,
    COUNT(laporan_kerusakan.id_laporan) AS jumlah_laporan
FROM kategori_fasilitas
JOIN laporan_kerusakan
    ON kategori_fasilitas.id_kategori =
       laporan_kerusakan.id_kategori
WHERE laporan_kerusakan.status_laporan = 'baru'
GROUP BY kategori_fasilitas.nama_kategori;
