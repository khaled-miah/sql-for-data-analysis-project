-- Identify the most common pizza size ordered.

-- select quantity,count(order_details_id)
-- from order_details
-- group by quantity

SELECT 
    pizzas.size,
    COUNT(order_details.order_details_id) AS order_count
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizzas.size
ORDER BY order_count desc;
;