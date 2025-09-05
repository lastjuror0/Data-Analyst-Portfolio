
# Banking Project – Data and Artificial Intelligence

Data Analyst Capstone Project  
Simplilearn | Indian Institute of Technology, Kanpur

## Overview
Banking institutions face numerous challenges related to customer retention, fraud detection, and loan default prediction. This project involves analyzing a banking dataset to identify key factors influencing customer behavior and to develop predictive models for various banking objectives.

The dataset includes multiple attributes related to customer demographics, transaction history, and account information. The goal is to clean and explore the data, uncover actionable insights, and build predictive models.

---

## Problem Statement
Identify and examine the factors that significantly influence key banking outcomes (such as customer churn, fraud, or loan default), and build models to predict these outcomes.

---

## Dataset Information

Snapshot (attributes)

- `UniqueID` – Unique identifier for customers  
- `loan_default` – Payment default in the first EMI on due date  
- `disbursed_amount` – Amount of loan disbursed  
- `asset_cost` – Cost of the asset  
- `ltv` – Loan-to-value ratio of the asset  
- `branch_id` – Branch where the loan was disbursed  
- `supplier_id` – Vehicle dealer  
- `manufacturer_id` – Vehicle manufacturer (e.g., Hero Honda, TVS, etc.)  
- `Current_pincode_ID` – Customer’s current pincode  
- `Date.of.Birth` – Date of birth of the customer  
- `Employment.Type` – Employment type (Salaried / Self-Employed)  
- `DisbursalDate` – Date of loan disbursement  
- `State_ID` – State of disbursement  
- `Employee_code_ID` – Employee who logged the disbursement  
- `MobileNo_Avl_Flag` – Mobile number available (1 = yes)  
- `Aadhar_flag` – Aadhar available (1 = yes)  
- `PAN_flag` – PAN available (1 = yes)  
- `VoterID_flag` – Voter ID available (1 = yes)  
- `Driving_flag` – Driving license available (1 = yes)  
- `Passport_flag` – Passport available (1 = yes)  
- `PERFORM_CNS.SCORE` – Bureau score  
- `PERFORM_CNS.SCORE.DESCRIPTION` – Bureau score description  
- `PRI.NO.OF.ACCTS` – Total number of primary loans at the time of disbursement  
- `PRI.ACTIVE.ACCTS` – Active primary loans at disbursement  
- `PRI.OVERDUE.ACCTS` – Defaulted primary accounts at disbursement  
- `PRI.CURRENT.BALANCE` – Principal outstanding amount for primary accounts  
- `PRI.SANCTIONED.AMOUNT` – Sanctioned loan amount for primary accounts  
- `PRI.DISBURSED.AMOUNT` – Disbursed loan amount for primary accounts  
- `SEC.NO.OF.ACCTS` – Total number of secondary loans at the time of disbursement  
- `SEC.ACTIVE.ACCTS` – Active secondary loans  
- `SEC.OVERDUE.ACCTS` – Defaulted secondary loans  
- `SEC.CURRENT.BALANCE` – Outstanding balance of secondary loans  
- `SEC.SANCTIONED.AMOUNT` – Sanctioned secondary loan amount  
- `SEC.DISBURSED.AMOUNT` – Disbursed secondary loan amount  
- `PRIMARY.INSTAL.AMT` – EMI amount of the primary loan  
- `SEC.INSTAL.AMT` – EMI amount of the secondary loan  
- `NEW.ACCTS.IN.LAST.SIX.MONTHS` – New loans in the last 6 months  
- `DELINQUENT.ACCTS.IN.LAST.SIX.MONTHS` – Defaults in the last 6 months  
- `AVERAGE.ACCT.AGE` – Average loan tenure  
- `CREDIT.HISTORY.LENGTH` – Time since first loan  
- `NO.OF_INQUIRIES` – Number of loan queries made by the customer  
- `customer_id` – Unique identifier for each customer  
- `age` – Age of the customer  
- `gender` – Gender of the customer  
- `account_balance` – Current balance in customer’s account  
- `num_of_products` – Number of banking products held  
- `credit_score` – Customer’s credit score  
- `is_active_member` – Whether the customer is an active member (1 = yes; 0 = no)  
- `estimated_salary` – Estimated annual salary  
- `tenure` – Number of years with the bank  
- `has_cr_card` – Whether the customer has a credit card (1 = yes; 0 = no)  
- `geography` – Customer’s location/region  
- `churn` – Whether the customer left the bank (1 = yes; 0 = no)  
- `fraud_reported` – Whether the account was flagged for fraud (1 = yes; 0 = no)  

---

## Project Tasks

### Week 1 — Data Understanding & Exploratory Data Analysis (EDA)
1. Import and inspect the data:
   - Check data structure, types, and initial samples.
   - Identify missing values and duplicates.
2. Data cleaning:
   - Remove duplicates (if any).
   - Treat missing values using an appropriate strategy (imputation, removal, or domain-specific decisions).
3. Preliminary statistics:
   - Generate summary statistics (mean, median, std, quartiles).
   - Explore measures of central tendency and spread.
4. EDA (visual and statistical):
   - Identify categorical variables and visualize them (count plots, bar charts).
   - Study the distribution of churn, loan default, and fraud across different ages and geographies.
   - Analyze account balance and credit score distributions and their relationship with churn/default.
   - Study gender and tenure distributions and their relationship with key outcomes.

### Week 2 — Advanced EDA & Modeling
1. Analyze relationships:
   - Describe the relationship between credit score and churn/loan default.
   - Examine how the number of products held influences customer churn.
   - Investigate the impact of account activity and credit card ownership on key outcomes.
   - Use pair plots (or equivalent) to visualize relationships among variables.
2. Modeling:
   - Train logistic regression (and/or other relevant models) to predict churn, loan default, or fraud.
   - Evaluate model performance on a test set; present a confusion matrix and relevant metrics (accuracy, precision, recall, F1-score).

---

## Deliverables
• A cleaned dataset ready for analysis.  
• EDA report with insights into loan default risk factors.  
• A trained logistic regression model for predicting defaulters.
