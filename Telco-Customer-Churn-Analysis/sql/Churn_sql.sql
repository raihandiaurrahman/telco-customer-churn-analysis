CREATE TABLE telco_churn (
    customerID VARCHAR(20) PRIMARY KEY,
    gender VARCHAR(10),
    SeniorCitizen TINYINT,
    Partner VARCHAR(5),
    Dependents VARCHAR(5),
    tenure INT,
    PhoneService VARCHAR(5),
    MultipleLines VARCHAR(20),
    InternetService VARCHAR(20),
    OnlineSecurity VARCHAR(5),
    OnlineBackup VARCHAR(5),
    DeviceProtection VARCHAR(5),
    TechSupport VARCHAR(5),
    StreamingTV VARCHAR(5),
    StreamingMovies VARCHAR(5),
    Contract VARCHAR(20),
    PaperlessBilling VARCHAR(5),
    PaymentMethod VARCHAR(40),
    MonthlyCharges DECIMAL(10,2),
    TotalCharges DECIMAL(10,2),
    Churn VARCHAR(5)
);


-- What is the overall customer churn rate?
SELECT
    COUNT(customerID) AS Total_Customer,
    SUM(CASE WHEN Churn = 'No' THEN 1 ELSE 0 END) AS Active_Customer,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS Churned_Customer,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(customerID), 2
    ) AS Churn_Rate
FROM telco_churn;


-- How does customer churn rate vary across different tenure groups?
SELECT
    CASE
        WHEN tenure BETWEEN 0 AND 12 THEN '0-12 months'
        WHEN tenure BETWEEN 13 AND 24 THEN '13-24 months'
        WHEN tenure BETWEEN 25 AND 48 THEN '25-48 months'
        WHEN tenure BETWEEN 49 AND 72 THEN '49-72 months'
    END AS Tenure_Group,

    COUNT(customerID) AS Total_Customer,

    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
    AS Churned_Customer,

    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(customerID), 2
    ) AS Churn_Rate

FROM telco_churn
GROUP BY Tenure_Group
ORDER BY MIN(tenure);



-- Which contract type has the highest customer churn rate?
SELECT
    Contract,
    COUNT(customerID) AS Total_Customer,

    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
    AS Churned_Customer,

    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(customerID), 2
    ) AS Churn_Rate

FROM telco_churn
GROUP BY Contract
ORDER BY Churn_Rate DESC;



-- How does customer churn rate differ by internet service type?
SELECT
    InternetService,
    COUNT(customerID) AS Total_Customer,

    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
    AS Churned_Customer,

    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(customerID), 2
    ) AS Churn_Rate

FROM telco_churn
GROUP BY InternetService
ORDER BY Churn_Rate DESC;




-- Which payment method is associated with the highest customer churn rate?
SELECT
    PaymentMethod,
    COUNT(customerID) AS Total_Customer,

    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
    AS Churned_Customer,

    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(customerID), 2
    ) AS Churn_Rate

FROM telco_churn
GROUP BY PaymentMethod
ORDER BY Churn_Rate DESC;




--How does customer churn rate vary by customer gender?
SELECT
    gender,
    COUNT(customerID) AS Total_Customer,

    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
    AS Churned_Customer,

    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(customerID), 2
    ) AS Churn_Rate

FROM telco_churn
GROUP BY gender
ORDER BY Churn_Rate DESC;