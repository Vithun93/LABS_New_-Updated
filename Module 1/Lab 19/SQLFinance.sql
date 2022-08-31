use olist;

select order_id, product_id, order_item_id, price FROM order_items
order by price DESC;
/*0812eb902a67711a1cb742b3cdaa65ae is the highest priced order*/

select order_id, product_id, order_item_id, price FROM order_items
order by price ASC;
/*c5bdd8ef3c0ec420232e668302179113 is the lowest priced order*/

select order_id, shipping_limit_date from order_items;
select min(shipping_limit_date), max(shipping_limit_date) from order_items;

select customer_state, customer_id from customers
order by customer_state DESC;

select count(customer_id), customer_state from customers
group by customer_state
order by count(customer_id) DESC;
/*SP is the state with the most customers*/

select count(customer_id), customer_city, customer_state from customers
group by customer_city, customer_state
order by count(customer_id) DESC;
/*Sao Paulo is the city in SP with the most customers*/

select distinct business_segment from closed_deals;
select count(distinct business_segment) as "number of business segments" from closed_deals
where business_segment is not null;
/*There are 33 business segments*/

select sum(declared_monthly_revenue), business_segment from closed_deals
group by business_segment
order by sum(declared_monthly_revenue) DESC limit 3;
/*Construction tools house garden, phone mobile and home decor have the highest revenue*/

select distinct count(review_score) from order_reviews;
/*There is a total of 100 000 distinct review score*/

select review_score from order_reviews;
ALTER TABLE order_reviews
ADD category INT;



