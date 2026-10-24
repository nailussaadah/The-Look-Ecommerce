#TUGAS A = Jalankan query users dengan SELECT * dan LIMIT 10
SELECT *
FROM bigquery-public-data.thelook_ecommerce.users
LIMIT 10;

#TUGAS B = Ubah query hanya menampilkan id, gender, country, created_at
SELECT id, gender, country, created_at
FROM bigquery-public-data.thelook_ecommerce.users;

#TUGAS C = Ubah query LIMIT 25
SELECT id,gender,country,created_at
FROM bigquery-public-data.thelook_ecommerce.users
LIMIT 25;

#TAMPILKAN TABLE USER
SELECT *
FROM bigquery-public-data.thelook_ecommerce.users;

#TAMPILKAN TABLE ORDER
SELECT *
FROM bigquery-public-data.thelook_ecommerce.orders;



## SESSION 2  ##

#SELECT dan LIMIT = Mengambil baris dan jumlah yang diinginkan
SELECT order_id, status, created_at
FROM bigquery-public-data.thelook_ecommerce.orders
LIMIT 10;

#WHERE = Memfilter dengan label/kategori yang diinginkan
SELECT order_id, status, created_at
FROM bigquery-public-data.thelook_ecommerce.orders
WHERE status ='Complete'
LIMIT 10;

#AND
SELECT order_id, status, created_at, num_of_item
FROM bigquery-public-data.thelook_ecommerce.orders
WHERE status ='Complete' AND num_of_item > 1
LIMIT 10;

#OR
SELECT order_id, status, created_at, num_of_item
FROM bigquery-public-data.thelook_ecommerce.orders
WHERE status ='Complete' OR num_of_item > 3
LIMIT 10;

#ORDER BY = Mengurutkan data numerik
#Menampilkan item terbanyak
SELECT order_id, status, created_at, num_of_item
FROM bigquery-public-data.thelook_ecommerce.orders
ORDER BY num_of_item DESC;

#Menampilkan item paling sedikit
SELECT order_id, status, created_at, num_of_item
FROM bigquery-public-data.thelook_ecommerce.orders
ORDER BY num_of_item ASC;

#DISTINCT = Memunculkan data apa aja yang ada pada baris di table tanpa pengulangan data
SELECT DISTINCT status
FROM bigquery-public-data.thelook_ecommerce.orders
ORDER BY status ASC;

#Cari order Complete dengan lebih 1 item dan urutkan dari item terbanyak
SELECT order_id, status, created_at, num_of_item
FROM bigquery-public-data.thelook_ecommerce.orders
WHERE status ='Complete' AND num_of_item > 1
ORDER BY num_of_item DESC;

#PRAKTIK 1 = Menampilkan transaksi dari tanggal terbaru
SELECT order_id, status, created_at
FROM bigquery-public-data.thelook_ecommerce.orders
WHERE status ='Complete'
ORDER BY created_at DESC;

#Tantangan A = Tampilkan daftar status unik dari tabel orders
SELECT DISTINCT status
FROM bigquery-public-data.thelook_ecommerce.orders;

#Tantangan B = Tampilkan 15 order dengan num_of_item lebih dari 1, urutkan dari terbesar
SELECT order_id, num_of_item
FROM bigquery-public-data.thelook_ecommerce.orders
WHERE num_of_item > 1
ORDER BY num_of_item DESC
LIMIT 15;

#Tantangan C = Tampilkan id dan created_at untuk order dengan status Shipped
SELECT order_id, created_at, status
FROM bigquery-public-data.thelook_ecommerce.orders
WHERE status = 'Shipped'

