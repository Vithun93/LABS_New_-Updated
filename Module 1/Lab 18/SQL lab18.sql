select * from apple_store.applestore;
/* 1. What are the different genres*/
select distinct prime_genre from applestore;

/* 2. Which is the genre with the most apps rated?*/
select prime_genre, sum(rating_count_tot)   from apple_store.applestore
group by prime_genre
order by sum(rating_count_tot) desc
limit 1;

/* 3.  Which is the genre with most apps?*/
select prime_genre, count(prime_genre) from apple_store.applestore
group by prime_genre
order by count(prime_genre) desc
limit 1;

/* 4. Which is the one with least?*/
select prime_genre, count(prime_genre) from apple_store.applestore
group by prime_genre
order by count(prime_genre) asc
limit 1;

/* 5. Find the top 10 apps most rated.*/
select prime_genre, count(prime_genre) from apple_store.applestore
group by prime_genre
order by count(prime_genre) desc
limit 10;

/* 6. Find the top 10 apps best rated by users.*/
select prime_genre, count(user_rating) from apple_store.applestore
group by prime_genre
order by count(prime_genre) desc
limit 10;

/* 7. Take a look at the data you retrieved in question 5. Give some insights.*/
/*the top 10 has the most rated apps*/

/* 8. Take a look at the data you retrieved in question 6. Give some insights.*/
/*THis is the top rated apps by the users*/

/* 9. Now compare the data from questions 5 and 6. What do you see?*/
/* Both results are same*/

/* 10. How could you take the top 3 regarding both user ratings and number of votes?*/
select prime_genre, count(user_rating) from apple_store.applestore
group by prime_genre
order by count(prime_genre) desc
limit 3;

/* 11. Do people care about the price of an app? */
select * from apple_store.applestore;
select prime_genre, avg(rating_count_tot), sum(price) from apple_store.applestore
group by prime_genre
order by price;
/* But here the productivity genre has the highest sum of price and it has the average total coount rating is nearly 23800, but shopping, reference genres has the sum price 1.99, 15.94 and it has the average total count is nearly 73600, 127200 respectively.
this comparision shows that price of an app is severely affecting the user usage and the people care about the price of an app.*/