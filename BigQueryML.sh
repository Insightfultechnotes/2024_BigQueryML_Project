Create & Train ML Model (inside BigQuery)
Use BigQuery ML to train the model:

CREATE OR REPLACE MODEL `customer_churn_dataset.customer_churn_model`
OPTIONS(
  model_type="LOGISTIC_REG",
  input_label_cols=['Churn']
) AS
SELECT
  gender,
  CAST(SeniorCitizen AS STRING) AS SeniorCitizen,
  Partner,
  Contract,
  PaymentMethod,
  tenure,
  MonthlyCharges,
  TotalCharges,
  Churn
FROM
  `customer_churn_dataset.customer_data`;

To Predict Churn on Customers, run a prediction query:

SELECT
  customerID,
  predicted_Churn,
  predicted_Churn_probs AS predicted_churn_probability
FROM
  ML.PREDICT(
    MODEL `customer_churn_dataset.customer_churn_model`,
    (
      SELECT
        customerID,
        gender,
        CAST(SeniorCitizen AS STRING) AS SeniorCitizen,
        Partner,
        Contract,
        PaymentMethod,
        tenure,
        MonthlyCharges,
        TotalCharges
      FROM
        `customer_churn_dataset.customer_data`
    )
  )
ORDER BY
  predicted_Churn DESC;

✅ This gives churn prediction with probability scores!

(Optional) Save Prediction Results

Save predictions into a BigQuery Table:


CREATE OR REPLACE TABLE `customer_churn_dataset.churn_predictions` AS
SELECT
  customerID,
  gender,
  Contract,
  PaymentMethod,
  predicted_Churn,
  predicted_Churn_probs AS predicted_churn_probability
FROM
  ML.PREDICT(
    MODEL `customer_churn_dataset.customer_churn_model`,
    (
      SELECT
        customerID,
        gender,
        CAST(SeniorCitizen AS STRING) AS SeniorCitizen,
        Partner,
        Contract,
        PaymentMethod,
        tenure,
        MonthlyCharges,
        TotalCharges
      FROM
        `customer_churn_dataset.customer_data`
    )
  ); 

________________________________________
