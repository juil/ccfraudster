-- Unit 07 Assignment
-- Query db: fraud_detection

-- Get all transactions for user ID 2 & 18

select cc.cardholder_id, tx.*
from "transaction" tx
left join credit_card cc ON cc.card=tx.card
where cc.cardholder_id = 2 or cc.cardholder_id = 18;

-- Convert column tx.amount from type money to numeric
alter table "transaction" 
alter column amount 
type numeric using amount::numeric;

-- Retrieve tx data from jan to jun 2018 for card holder 25
select tx.*
from "transaction" tx
left join credit_card cc on cc.card=tx.card 
where cc.cardholder_id = 25 and 
	tx."date" >= '2018-01-01' and 
	tx."date" < '2018-07-01';