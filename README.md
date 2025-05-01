# This Project is to demonstrate the working of BigQuery ML and Looker Studio

I have used an open dataset like the Telco Customer Churn dataset (Kaggle).
    https://www.kaggle.com/blastchar/telco-customer-churn

What You Want To Achieve
✅ Ingest or prepare your customer data
✅ Predict churn risk (could call BigQuery ML model inside)
✅ Store cleaned + enriched data back into BigQuery
✅ Visualize it later in Looker

## Summary
BigQuery customer_data<br />
    ↓<br />
(Dataflow pipeline) — Clean, predict, transform<br />
    ↓<br />
BigQuery predictions_table<br />
    ↓<br />
Looker Studio Dashboard<br />

## 🌟 Summary View (Easily Explain in Demo)

|Step|Tool Used|Purpose|
| -----:| -----:| -----:|
|Data Load|BigQuery|Store customer data|
|Model Training|BigQuery ML|Build logistic regression churn model|
|Prediction|BigQuery ML|Predict churn probability|
|Storage|BigQuery|Save prediction results|
|Visualization|Looker Studio|Build interactive churn dashboard|
|Automation (Optional)|Scheduled Query|	Refresh predictions periodically|


