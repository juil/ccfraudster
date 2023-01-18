# ccfraudster - Credit Card Fraud Detection

### Unit 7 Assignment by Juil for UofT Fintech Bootcamp

Import credit card transaction records and run analysis to evaluate for fraudulent activity.

## Results

### Plot Credit Card Transactions

Plot multiple card holders' credit card transactions on a log scale to visually see distribution of transactions.

![Combined scatter plot.](images/combined_cc_tx.png) 

### Plot CEO's Transactions as Box Plot

Plot 6 months of CEO's credit card transactions to look for fraud.

![Box plot of monthly transactions](images/ceo_tx.png)

## Code 

[visual_data_analysis.ipynb](visual_data_analysis.ipynb)

### Schema

![ERD Diagram](images/schema.png)

Exported with [QuickDBD](https://app.quickdatabasediagrams.com/#/d/8JR3xd)
[schema.sql](data/schema.sql)

### Database 

Postgres Database: [`data/fraud_detection-db.sql`](data/fraud_detection-db.sql`)

Seed data: [`data/`](data/)

### Queries

[visual_data_analysis.sql](visual_data_analysis.sql)


## Notes
1. Starter code and seed data provided by UofT. 
2. ERD and schema created in QuickDBD.
