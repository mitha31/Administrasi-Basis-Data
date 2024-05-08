-- Nama : Mita Puspitasari
-- NIM : 22241043
-- MODUL 1

--  Akses Database
USE mart_undikma;

-- select : mengambil satu kolom tabel
SELECT nama_produk FROM ms_produk_dqlab;

-- SELECT : mengambil lebih dari 1 kolom
SELECT nama_produk,harga FROM ms_produk_dqlab;

-- SELECT : mengambil Semua Kolom
SELECT * FROM ms_produk dqlab;

-- LATIHAN
-- Ambik kode produk,nama produk,dari tabel produk


-- Ambil semua kolom dari tabel penjualan 
SELECT * FROM tr_penjualan_dqlab;

-- PREFIX dan ALIAS
-- PREFIX

-- Ambil nama produk dengan prefix tabel
SELECT ms_produk_dqlab.nama_produk FROM ms_produk_dqlab;

-- Ambil nama produk prefix database - tabel
SELECT mart_undikm.ms_produk_dqlab.nama_produk FROM ms_produk_dqlab;

-- ALIAS

-- Alias pada kolom dengan AS
SELECT nama_produk as np FROM ms_produk;
-- Alias pada kolom tanpa AS
SELECT nama_produk np FROM ms_produk_dqlab;

-- Alias pada tabel dengan AS
SELECT nama_produk FROM ms_produk_dqlab AS npd;
-- Alias pada tabel tanpa AS
SELECT nama_produk FROM ms_produk_dqlab npd;

-- Pengguna Alias dan Prefix
SELECT npd.nama_produk np FROM ms_produk_dqlab npd;

--- Case 1
SELECT nama_pelanggan,alamat FROM ms_pelanggan_dqlab npd;
--- Case 2
SELECT * FROM tr_penjualan_dqlab;