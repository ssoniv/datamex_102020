#####CHALLENGE1#####
CREATE TABLE challenge1
SELECT a.au_id as `AUTHOR ID`, a.au_lname as `LAST NAME`, a.au_fname as `FIRST NAME`, t.title as `TITLE`, p.pub_name as `PUBLISHER`
FROM authors a
JOIN titleauthor ta ON a.au_id = ta.au_id
JOIN titles t ON ta.title_id = t.title_id
JOIN publishers p ON t.pub_id = p.pub_id
ORDER BY a.au_id;

SET sql_mode=(SELECT REPLACE(@@sql_mode, 'ONLY_FULL_GROUP_BY', ''));

####CHALLENGE2####
CREATE TABLE challenge2
SELECT a.au_id as `AUTHOR ID`, a.au_lname as `LAST NAME`, a.au_fname as `FIRST NAME`, p.pub_name as `PUBLISHER`, COUNT(t.title) as `TITLE COUNT`
FROM authors a
JOIN titleauthor ta ON a.au_id = ta.au_id
JOIN titles t ON ta.title_id = t.title_id
JOIN publishers p ON t.pub_id = p.pub_id
GROUP BY a.au_id;


####CHECKING#####
SELECT SUM(`TITLE COUNT`)
FROM challenge2;

####CHALLENGE3####
SELECT a.au_id as `AUTHOR ID`, a.au_lname as `LAST NAME`, a.au_fname as `FIRST NAME`, s.qty as `TOTAL`
FROM authors a
JOIN titleauthor ta ON a.au_id = ta.au_id
JOIN titles t ON ta.title_id = t.title_id
JOIN sales s ON t.title_id = s.title_id
GROUP BY a.au_id
ORDER BY s.qty DESC
LIMIT 3;

####CHALLENGE4####
SELECT a.au_id as `AUTHOR ID`, a.au_lname as `LAST NAME`, a.au_fname as `FIRST NAME`, IFNULL(s.qty,0) as `TOTAL`
FROM authors a
LEFT JOIN titleauthor ta ON a.au_id = ta.au_id
LEFT JOIN titles t ON ta.title_id = t.title_id
LEFT JOIN sales s ON t.title_id = s.title_id
GROUP BY a.au_id
ORDER BY s.qty DESC ;








