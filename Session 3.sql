#COUNT = MENGHITUNG BARIS
SELECT COUNT (*) AS total_orders
FROM bigquery-public-data.thelook_ecommerce.orders;

#SUM = MENGHITUNG NUMERIK YANG MEMILIKI ARTI UNTUK DIJUMLAHKAN
SELECT SUM (num_of_item) AS total_items
FROM bigquery-public-data.thelook_ecommerce.orders;

#AVG = MENGHITUNG RATA-RATA JUMLAH ITEM TERJUAL
SELECT AVG (num_of_item) AS avg_items_per_order
FROM bigquery-public-data.thelook_ecommerce.orders;

#MIN & MAX = NILAI TERENDAH DAN TERTINGGU
SELECT MIN(num_of_item) AS min_items,
    MAX(num_of_item) AS max_items
FROM `bigquery-public-data.thelook_ecommerce.orders`;

#SUMMARY
SELECT COUNT (*) AS total_orders,
    SUM (num_of_item) AS total_items,
    AVG (num_of_item) AS avg_items,
    MIN (num_of_item) AS min_items,
    MAX (num_of_item) AS max_items,
FROM `bigquery-public-data.thelook_ecommerce.orders`;

#GROUP BY = PENGELOMPOKKAN KATEGORI UNTUK MELAKUKAN AGREGAT
#Mencari total order dari setiap status ordernya
SELECT status,
    COUNT (*) AS total_orders
FROM bigquery-public-data.thelook_ecommerce.orders
GROUP BY status
ORDER BY total_orders DESC;

#Mencari rata-rata item terjual dari setiap status
#Tampilkan setiap status dan jumlah order di dalamnya
#Tambahkan rata-rata num_of_item untuk setiap status
#Urutkan hasil dari total order terbanyak
SELECT status,
    COUNT (*) AS total_orders,
    AVG (num_of_item) AS avg_total_items
FROM bigquery-public-data.thelook_ecommerce.orders
GROUP BY status
ORDER BY 2 DESC;
#Angka 2 pada order by berdasarkan urutan di select : 1) status, 2) total orders




