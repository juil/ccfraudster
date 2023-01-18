-- Data Analysis
-- Part 1

-- Create View: Count transactions less than $2 per cardholder
drop view less_than_2;

create view less_than_2 as 
select cc.cardholder_id, count(tx.id) as tx_lessthan2
from "transaction" tx
left join "credit_card" cc on tx.card = cc.card 
where tx.amount < 2
group by cc.cardholder_id

select * from less_than_2
order by tx_lessthan2 desc;

-- Create View: Top 100 highest transactions made between 07:00-09:00
drop view between_7_9

create view between_7_9 as
select *
from "transaction" tx
where tx.date::time >= '07:00:00'::time
	and tx.date::time < '09:00:00'::time
order by amount desc 
fetch first 100 rows only;
	
select * from between_7_9;