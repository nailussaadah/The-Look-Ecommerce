## Session 1 ##

# SELECT
SELECT *
FROM bigquery-public-data.thelook_ecommerce.orders;


# LIMIT = Mengambil baris dengan jumlah yang diinginkan
SELECT *
FROM bigquery-public-data.thelook_ecommerce.orders
LIMIT 100;


# WHERE = Memfilter dengan label yang diinginkan, labelnya harus sesuai tulisannya dengan data di table
SELECT order_id, user_id, status
FROM bigquery-public-data.thelook_ecommerce.orders
WHERE status = 'Complete';


# >
SELECT order_id, user_id, status
FROM bigquery-public-data.thelook_ecommerce.orders
WHERE user_id >= 50
ORDER BY user_id ASC;


# AND
SELECT order_id, user_id, status
FROM bigquery-public-data.thelook_ecommerce.orders
WHERE user_id >= 50 OR order_id >= 60;


# ORDER BY = Mengurutkan data numerik
SELECT *
FROM bigquery-public-data.thelook_ecommerce.orders
ORDER BY order_id ASC;


# ALL
SELECT order_id, user_id, status
FROM bigquery-public-data.thelook_ecommerce.orders
WHERE user_id >= 50
ORDER BY user_id ASC
LIMIT 100;
