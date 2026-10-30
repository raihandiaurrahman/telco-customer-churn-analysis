# Telco Customer Churn Analysis

## Project Overview

This project focuses on analyzing customer churn patterns in the telecommunications industry using a publicly available dataset from Kaggle.

The main objective is to identify customer segments with higher churn rates based on various customer characteristics, subscription details, internet services, payment methods, and tenure.

Due to the dataset's predominantly categorical features, this project emphasizes comparing churn rates across different customer groups to identify patterns and generate actionable business insights that can support customer retention strategies.

## Project Objectives

- Analyze overall customer churn and retention rates.
- Identify customer segments with higher churn rates.
- Explore churn patterns across different customer characteristics and subscription categories.
- Develop an interactive Power BI dashboard to visualize churn patterns.
- Generate business insights and recommendations to support customer retention strategies.

## Dataset

**Source:** se

The dataset contains customer information, including:

| Category              | Features                                                                                                                                         |
| --------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| Customer Demographics | Gender, Senior Citizen, Partner, Dependents                                                                                                      |
| Customer Account      | Tenure, Contract, Paperless Billing                                                                                                              |
| Services              | Phone Service, Multiple Lines, Internet Service, Online Security, Online Backup, Device Protection, Tech Support, Streaming TV, Streaming Movies |
| Payment & Charges     | Payment Method, Monthly Charges, Total Charges                                                                                                   |
| Target Variable       | Churn                                                                                                                                            |

The dataset contains 7,043 customer records and 21 columns.

## Key Questions

This project addresses the following analytical questions:

1. What is the overall customer churn rate?
2. How does customer churn rate vary across different tenure groups?
3. Which contract type has the highest customer churn rate?
4. How does customer churn rate differ by internet service type?
5. Which payment method is associated with the highest customer churn rate?

## Tools & Technologies

- **SQL (MySQL):** Data querying, aggregation, grouping, and churn rate calculations.
- **Python:** Data preparation, exploratory data analysis (EDA), and data visualization.
- **Pandas:** Data manipulation and analysis.
- **Matplotlib & Seaborn:** Data visualization.
- **Power BI:** Interactive dashboard development and data storytelling.

## Analytical Workflow

1. **Data Collection:** Obtained the Telco Customer Churn dataset from Kaggle.
2. **Data Understanding & Preparation:** Explored dataset structure, data types, missing values, and data consistency.
3. **SQL Analysis:** Calculated customer churn rates and analyzed churn patterns across different customer segments.
4. **Exploratory Data Analysis (EDA):** Explored customer characteristics and churn distributions using Python.
5. **Dashboard Development:** Built an interactive Power BI dashboard to visualize churn rates across different customer categories.
6. **Business Insights:** Interpreted analytical findings and developed recommendations for customer retention strategies.

## Key Findings

Based on the analysis, several customer segments demonstrate relatively higher churn rates:

| Customer Segment             | Churn Rate |
| ---------------------------- | ---------: |
| 0–12 Months Tenure           |      \~47% |
| Month-to-month Contract      |      \~43% |
| Fiber Optic Internet Service |     41.89% |
| Electronic Check Payment     |      \~45% |

Additional analysis compares churn rates between male and female customers.

### Business Insights

- **Customer Tenure:** Customers with shorter subscription periods have higher churn rates, highlighting the importance of early customer engagement and onboarding.
- **Contract Type:** Month-to-month customers demonstrate higher churn rates. Offering incentives for longer-term subscriptions may help improve retention.
- **Internet Service:** Fiber optic customers show relatively high churn rates, suggesting the need to investigate service quality, pricing, and customer satisfaction.
- **Payment Method:** Electronic check users have higher churn rates compared to customers using other payment methods. Improving payment convenience and encouraging automatic payment options may support retention.

*Note: These findings indicate associations and patterns in customer churn, not proven causal relationships.*

## Interactive Power BI Dashboard

The dashboard provides an overview of customer churn performance and allows users to explore churn rates across different customer segments.

**Dashboard Features:**

- Active Customers and Churned Customers KPI Cards.
- Overall Customer Churn Distribution.
- Churn Rate by Customer Tenure Group.
- Churn Rate by Contract Type.
- Churn Rate by Internet Service.
- Churn Rate by Payment Method.
- Interactive Gender Filter.

## Repository Structure

```text
Telco-Customer-Churn-Analysis/
├── README.md
├── .gitignore
├── dataset/
│   ├── raw/
│   │   └── WA_Fn-UseC_-Telco-Customer-Churn.csv
│   ├── clean/
│   │   └── telco_customer_churn_clean.csv
│   └── dataset_source.txt
├── notebook/
│   ├── 01_churn_cleaning.ipynb
│   └── 02_churn_analysis.ipynb
├── sql/
│   └── churn_queries.sql
├── powerbi/
│   ├── telco_churn_dashboard.pbix
│   └── screenshots/
│       └── dashboard.jpg
└── images/
    ├── chart_01.jpg
    ├── chart_02.jpg
    ├── chart_03.jpg
    ├── chart_04.jpg
    └── chart_05.jpg
```

*Repository structure may be adjusted based on the actual uploaded files.*

## Conclusion

This project demonstrates an end-to-end data analytics workflow using SQL, Python, and Power BI to explore customer churn patterns.

By analyzing customer characteristics and subscription categories, the project identifies customer segments with relatively higher churn rates and translates these findings into actionable business insights.

The analysis highlights the importance of understanding customer behavior and developing data-driven retention strategies to improve customer loyalty and reduce customer attrition.

---

**Author:** Raihan Diaurrahman
**Field:** Data Analytics & Business Analysis

