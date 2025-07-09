-- retrive the total numbers of order placed

select count(orders.order_id) as total_orders
FROM orders