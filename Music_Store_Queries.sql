select * from album;

--1. who is the senior most employee based on job title. 
select last_name, first_name from employee
where title='Senior General Manager';

--which countries have the most invoices
select count(*) as max_invoice,billing_country from invoice
group by billing_country
order by max_invoice desc;

--what are top 3 values of total invoices
select * from invoice
order by total desc
limit 3;

--which city has the best customers
select billing_city, sum(total) as sum_invoice from invoice
group by billing_city
order by sum_invoice desc;

--who is the best customer
select c.customer_id,c.first_name, c.last_name, sum(i.total) as total from invoice as i
join customer as c
on i.customer_id=c.customer_id
group by c.customer_id
order by total desc
limit 1;

-- show all rock music listeners details
select distinct email, first_name, last_name from customer as c
join invoice as i on c.customer_id=i.customer_id
join invoice_line as inv on i.invoice_id=inv.invoice_id
where track_id in(
select track_id from track
join genre on track.genre_id=genre.genre_id
where genre.name='Rock')
order by email asc;

--invite the artists who have written most rock music.
select * from artist as art
join album as alb on art.artist_id=alb.artist_id
join track as tra on alb.album_id=tra.album_id 
where tra.genre_id in (
	select name from genre
    where );










select * from genre;






















