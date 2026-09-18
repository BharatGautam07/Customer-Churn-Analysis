# Customer Churn Analysis

**An end-to-end customer churn analysis project — from raw data cleaning to interactive dashboarding — built to identify which customer segments are most likely to churn and why.**

# Overview

**Telecom/subscription-style customer data was cleaned and transformed in Python, loaded into a PostgreSQL database, analyzed with SQL, and visualized in an interactive Power BI dashboard.**

# Pipeline:

```
Excel (raw data) → Python/Pandas (cleaning) → PostgreSQL (storage) → SQL (analysis) → Power BI (dashboard)
```

# Tech Stack
***Python (Pandas, NumPy) — data cleaning & feature engineering***

***PostgreSQL — data storage***

***SQLAlchemy — Python-to-database connection***

***SQL — churn analysis queries***

***Power BI — interactive dashboard & visualization***

# Project Structure

```
Customer Churn project/
│
├── Churn_Unclean_Project.xlsx      # Raw source data
├── Churn Dataset cleaning.ipynb    # Data cleaning & feature engineering notebook
├── clean_churn_data.csv            # Cleaned dataset
├── Customer Churn.sql              # SQL analysis queries
└── Customer Churn Dashboard.pbix   # Power BI dashboard
```

# Data Cleaning & Feature Engineering

**Performed in Churn Dataset cleaning.ipynb:**

***-Removed duplicate records and standardized inconsistent null representations (N/A, Null, blanks)***

***-leaned and standardized text fields (names, city, state, subscription/contract type) and column names***

***-Filtered invalid records (age outside 18–100, negative charges)***

***-Handled missing values in tenure, monthly charges, tech support, and payment method***

***-Converted last_interaction_date to proper datetime and imputed missing dates***

**Engineered new features:**
***-customer_value — monthly charges × tenure***

***-tenure_group — binned tenure into ranges (0–12, 13–24, 25–48, 49–72 months)***

***-senior_flag — senior vs. adult classification***

***-churn_flag — numeric encoding of churn (1 = Yes, 0 = No)***

***-Final null handling (remaining edge cases) done in Power BI's Power Query Editor before loading into the data model***

# SQL Analysis

**Customer Churn.sql includes queries covering:**

***Overall churn rate and total churned customers***

***Churn rate by contract type, internet service, and tenure group***

****Churn by state, payment method, and subscription type***

***Average monthly charges and tenure***

****Top 10 highest-value customers***

***Senior citizen churn behavior***

***Customers without tech support***

# Power BI Dashboard

**Interactive dashboard (Customer Churn Dashboard.pbix) visualizing:**

***Overall churn rate and customer breakdown***

***Churn trends by contract type, internet service, and subscription type***
***Revenue and customer value by state***

***Tenure-based churn patterns***

[customer churn analysis dashboard screenshot]([url](https://github.com/BharatGautam07/Customer-Churn-Analysis/blob/main/Customer%20Churn%20Analysis%20ss.png))

📈 Key Insights
Overall churn rate: ~23.6% (116 out of 492 customers)
(Add 2–3 more specific findings here, e.g. which contract type or internet service has the highest churn rate — pull these from your SQL/dashboard results)
# How to Reproduce
**Clone this repo
Run Churn Dataset cleaning.ipynb to clean the raw data
Set up a PostgreSQL database and configure credentials as environment variables (not hardcoded)
Load clean_churn_data.csv into PostgreSQL
Run the queries in Customer Churn.sql for analysis
Open Customer Churn Dashboard.pbix in Power BI Desktop to explore the dashboard**
