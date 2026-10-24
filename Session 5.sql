## Session 5 ##

#INNER JOIN menggabungkan kolom yang cocok (ON)
#menggabungkan table orders dan table users
select o.order_id,
      o.status,
      u.id as user_id,
      u.first_name,
      u.country
from bigquery-public-data.thelook_ecommerce.orders as o
inner join bigquery-public-data.thelook_ecommerce.users as u
      on o.user_id = u.id
limit 10;

#LEFT JOIN mempertahankan semua baris table kiri
select u.id as user_id,
      u.first_name,
      u.country,
      o.user_id as orders_user_id,
      o.order_id,
      o.status
from bigquery-public-data.thelook_ecommerce.users as u
left join bigquery-public-data.thelook_ecommerce.orders as o
      on u.id = o.user_id
limit 10;

#cek table orders
select order_id,
      user_id,
      status
from bigquery-public-data.thelook_ecommerce.orders
order by user_id desc
limit 5;

#cek table users
select id,
      country
from bigquery-public-data.thelook_ecommerce.users
order by id desc
limit 5;

#status order dan negara pelanggan

#tampilkan order id, status, dan country pelanggan
select o.order_id,
      o.status,
      u.id as id_user,
      u.country
from bigquery-public-data.thelook_ecommerce.orders as o
inner join bigquery-public-data.thelook_ecommerce.users as u
      on o.user_id = u.id;

#ubah INNER JOIN menjadi LEFT JOIN dengan users sebagai tabel kiri
select
      u.id as id_user,
      u.country,
      o.user_id,
      o.order_id,
      o.status
from bigquery-public-data.thelook_ecommerce.users as u
left join bigquery-public-data.thelook_ecommerce.orders as o
      on u.id = o.user_id; 

#siapa user yang tidak memiliki order?
#tambahin status agar kelihatan bahwa user tidak memiliki order
SELECT u.id,
      u.first_name,
      u.country,
      o.status
FROM bigquery-public-data.thelook_ecommerce.users as u
LEFT JOIN bigquery-public-data.thelook_ecommerce.orders as o
    ON u.id = o.user_id
WHERE o.order_id IS NULL
LIMIT 100;




