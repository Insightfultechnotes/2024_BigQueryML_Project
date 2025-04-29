# This Project is to demonstrate the working of BigQuery ML and Looker Studio

I have used an open dataset like the Telco Customer Churn dataset (Kaggle).
    https://www.kaggle.com/blastchar/telco-customer-churn

What You Want To Achieve
✅ Ingest or prepare your customer data
✅ Predict churn risk (could call BigQuery ML model inside)
✅ Store cleaned + enriched data back into BigQuery
✅ Visualize it later in Looker

## Summary
BigQuery customer_data
    ↓
(Dataflow pipeline) — Clean, predict, transform
    ↓
BigQuery predictions_table
    ↓
Looker Studio Dashboard


