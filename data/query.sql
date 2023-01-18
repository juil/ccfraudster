-- Unit 07 Assignment
-- Query db: fraud_detection

-- Get all transactions for user ID 2 & 18

select cc.cardholder_id, tx.*
from "transaction" tx
left join credit_card cc ON cc.card=tx.card
where cc.cardholder_id = 2 or cc.cardholder_id = 18;

