

####SALES ROYALTY####
SELECT t.title_id as `TITLE ID`, a.au_id as `AUTHOR ID`, ROUND(t.price*(t.royalty/100)*s.qty*(ta.royaltyper),2) as `SALES ROYALTY`
FROM authors a
JOIN titleauthor ta ON a.au_id = ta.au_id
JOIN titles t ON ta.title_id = t.title_id
JOIN sales s ON t.title_id = s.title_id;

#####SALES ROYALTY by Title####
SELECT t.title_id as `TITLE ID`, a.au_id as `AUTHOR ID`, SUM(ROUND(t.price*(t.royalty/100)*s.qty*(ta.royaltyper),2) )as `SALES ROYALTY BY TITLE`
FROM authors a
JOIN titleauthor ta ON a.au_id = ta.au_id
JOIN titles t ON ta.title_id = t.title_id
JOIN sales s ON t.title_id = s.title_id
GROUP BY t.title_id;

####STEP3####
SELECT `AUTHOR ID`, SUM(`SALES ROYALTY BY TITLE`) AS TOTAL
FROM
(SELECT t.title_id as `TITLE ID`, a.au_id as `AUTHOR ID`, SUM(ROUND(t.price*(t.royalty/100)*s.qty*(ta.royaltyper) +t.advance,2) )as `SALES ROYALTY BY TITLE`
FROM authors a
JOIN titleauthor ta ON a.au_id = ta.au_id
JOIN titles t ON ta.title_id = t.title_id
JOIN sales s ON t.title_id = s.title_id
GROUP BY t.title_id) sales_by_title
GROUP BY `AUTHOR ID`;




