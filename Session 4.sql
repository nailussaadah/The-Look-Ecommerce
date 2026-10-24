## Session 4 ##

#table orders menunjukan data transaksi dengan seluruh status muncul

#berapa total orders yang tercatat?
select count(*) as total_orders
from `bigquery-public-data.thelook_ecommerce.orders`;

#pertanyaan dari dept marketing cari order yang statusnya complete
select count(*) as total_orders
from `bigquery-public-data.thelook_ecommerce.orders`
where status = 'Complete';

#berapa order untuk setiap status? menampilkan seluruh total orders berdasarkan status/kategori
select status,
       count(*) as total_orders
from `bigquery-public-data.thelook_ecommerce.orders`
group by status
order by total_orders desc;

#produk yang paling sering muncul pada order
select product_id,
       count(*) as produk_sering_muncul
from `bigquery-public-data.thelook_ecommerce.order_items`
group by product_id
order by 2 desc
limit 10;

#produk yang terlaris (BELUM CLEAR, PENDING)
select product_id,
       count(product_id) as jumlah_item_terjual
from `bigquery-public-data.thelook_ecommerce.order_items`
group by product_id
order by 2 desc;

#jumlah customer berdasarkan nama negara
select country,
       count(*) as customer_records
from bigquery-public-data.thelook_ecommerce.users
group by 1
order by 2 desc
limit 10;

#perbandingan performa penjualan berdasarkan status

#analisis data order_items untuk membandingkan setiap status pesanan berdasarkan jumlah item, jumlah order unik, total nilai penjualan, dan rata-rata harga jual. Tampilkan hanya status dengan minimal total orders 20.000, kemudian urutkan berdasarkan total penjualan dari yang terbesar hingga terkecil
select status,
      count(*) as total_items,
      count(distinct(order_id)) as total_orders,
      sum(sale_price) as total_sales,
      avg(sale_price) as avg_total_sales,
from bigquery-public-data.thelook_ecommerce.order_items
group by 1
having count(*) >= 20000
order by 4 desc;

#jika menggunakan round (jangan lupa tentukan mau berapa angka dibelakang koma pembulatannya?)
select status,
      count(*) as total_items,
      count(distinct(order_id)) as total_orders,
      round(sum(sale_price),2) as total_sales,
      round(avg(sale_price),2) as avg_total_sales,
from bigquery-public-data.thelook_ecommerce.order_items
group by 1
having count(*) >= 20000
order by 4 desc;

#hitung jumlah nilai sale_price pada semua status
select sum(sale_price) as total_item_sales
from bigquery-public-data.thelook_ecommerce.order_items;

#berapa rata-rata harga produk per kategori
select category,
      count(*) as total_product,
      avg(retail_price) as avg_retail_price,
from bigquery-public-data.thelook_ecommerce.products
group by 1
order by 3 desc;

#analisis jumlah pengguna di setiap negara untuk mengetahui negara dengan jumlah pengguna terbanyak
select country,
       count(*) as total_users
from bigquery-public-data.thelook_ecommerce.users
group by country
order by total_users desc
limit 10;






