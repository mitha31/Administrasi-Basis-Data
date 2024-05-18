-- Nama :Mitha Puspitasari
-- NIM : 22241043
-- MODUL 2

-- use Database
USE mart_undikma

-- NILAI RITERAL

-- menggunakan SELECT Statment untuk nilai literal untuk angka
SELECT 77 AS nomor_punggug;

-- menampilkan nilai riteral beberapa tipe data
SELECT 77 AS angka, true AS nilai_logika, 'DQLAB' as Teks;

-- NULL
-- menampilkan NULL 
SELECT NULL AS Kosong;

-- OPERATOR MATEMATIKA

-- Klkulasi ekspresi matematika
SELECT 
5%2 AS Sisa_bagi,
5/2 AS hasil_bagi_1,
5 DIV 2 AS hasil_bagi_2;

-- melakukan perhitungan matematika
SELECT
4 * 2 AS hasil_bagi,
(4 * 8) % 7 AS sisa_bagi,
(4 * 8) MOD 7 AS sisa_bagi_1,
(4 * 8) / 7 AS hasil_bagi;

SELECT * FROM tr_penjualan_dqlab;

-- EKSPRESI MATEMATIKA
-- menampilkan hasil dari kolom qty dan harga
SELECT qty*harga AS total
FROM tr_penjualan_dqlab;

-- operator perbandingan
-- menampilkan hasil perbandingan nilai riteral 
SELECT
5=5,
5<>5,
5<>4,
5!=5,
5!=4,
5>4;

-- operator perbandingan
-- menampilkan hasil perbandingan nilai riteral 
SELECT 
1 = TRUE,
1 = FALSE,
5 >= 5,
5.2 = 5.20000,
NULL = 1,
NULL = NULL;

SELECT qty <= 3 FROM tr_penjualan_dqlab;

-- FUNGSI
SELECT POW(3,2), ROUND(3.14), round(3.54),
round(3.155,1), round(3.155,2), floor(4.28),
floor(4.78), ceiling(4.39), ceiling(4.55);

-- Fungsi Tanggal
SELECT NOW(),
year (now()),
datediff(now(), '2003-07-31'),
day('2003-07-31');

-- Fungsi Tanggal
SELECT 
DATEDIFF('2022-07-23', NOW()),
YEAR('2022-07-23'),
MONTH('2022-07-23'),
DAY('2022-07-23'),
YEAR(now());

-- menampilkan selisih transaksi trakhir dengan tanggal saat ini
SELECT
datediff(now(), tgl_transaksi) AS Selisih_hari
FROM
	tr_penjualan_dqlab;

-- WHERE Statement
-- mengambil nama produk dan quantity yang kuantitynya lebih dari 3
SELECT
	nama_produk, qty
FROM
	tr_penjualan_dqlab
WHERE
	qty > 3;
    
-- mengambil nama_produk, qty, yang qty > 3 dan transaksi bulan 6
SELECT 
	nama_produk, qty
FROM
	tr_penjualan_dqlab
WHERE
	qty > 3 AND
    month(tgl_transaksi) = 6;
    
-- mengambil nama produk, qty dengan nama tertentu
SELECT
	nama_produk, qty
FROM
	tr_penjualan_dqlab
where
	nama_produk = "flashdisk DQLAB 32GB";
    
-- LIKE
-- mengambil nama produk yang berawal dari huruf 'f'
SELECT nama_produk 
FROM tr_penjualan_dqlab
WHERE nama_produk LIKE 'f%';

SELECT nama_produk 
FROM tr_penjualan_dqlab
WHERE nama_produk LIKE '_a%';

SELECT nama_produk 
FROM tr_penjualan_dqlab
WHERE nama_produk LIKE '%t%';

SELECT nama_produk 
FROM tr_penjualan_dqlab
WHERE nama_produk LIKE '%un%';

SELECT nama_produk 
FROM tr_penjualan_dqlab
WHERE nama_produk LIKE 'ft';

-- oprator logika
-- latihan mandiri dengan mencoba berbagai filtering dengan like untuk pola teks
SELECT nama_produk, qty FROM tr_penjualan_dqlab  WHERE nama_produk LIKE '_a%';
SELECT kategori_produk FROM ms_produk_dqlab WHERE kategori_produk LIKE '%t%';
SELECT kategori_produk FROM ms_produk_dqlab WHERE kategori_produk LIKE '%un%';
SELECT nama_produk FROM tr_penjualan_dqlab  WHERE nama_produk LIKE 'ft' AND qty > 2;
SELECT nama_produk from tr_penjualan_dqlab WHERE nama_produk LIKE 'f%'or qty > 2;
