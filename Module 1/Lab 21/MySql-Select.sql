use pubs;
select authors.au_id, authors.au_lname, authors.au_fname,count(title) as Total
from authors
left join titleauthor
on authors.au_id = titleauthor.au_id
left join titles
on titles.title_id = titleauthor.title_id
left join publishers
on publishers.pub_id = titles.pub_id
group by authors.au_id,titles.pub_id
order by count(title) desc;
/*	q3*/
select authors.au_id, authors.au_lname, count(title) as Total
from authors
left join titleauthor
on authors.au_id = titleauthor.au_id
left join titles
on titles.title_id = titleauthor.title_id
left join publishers
on publishers.pub_id = titles.pub_id
group by authors.au_lname,authors.au_id
order by count(title) desc
limit 3; 
/*q4*/
select authors.au_id, authors.au_lname, authors.au_fname,count(title) as Total
from authors
left join titleauthor
on authors.au_id = titleauthor.au_id
left join titles
on titles.title_id = titleauthor.title_id
left join publishers
on publishers.pub_id = titles.pub_id
group by authors.au_id,titles.pub_id
order by count(title) desc;
/*	q3*/
select authors.au_id, authors.au_lname, count(title) as Total
from authors
left join titleauthor
on authors.au_id = titleauthor.au_id
left join titles
on titles.title_id = titleauthor.title_id
left join publishers
on publishers.pub_id = titles.pub_id
group by authors.au_lname,authors.au_id
order by count(title) desc;


