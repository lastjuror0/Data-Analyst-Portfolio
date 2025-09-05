# Banking Project

Data Analyst Capstone Project  
Simplilearn | Indian Institute of Technology, Kanpur

## Overview

Banking focuses on estimating determinants of vehicle loan default and building a predictive model to identify potential defaulters.  
The project uses a single dataset with 41 attributes and requires exploratory data analysis, modeling, and dashboarding to understand and communicate risk drivers.

## Problem statement

Financial institutions face losses from vehicle loan defaults, prompting tighter underwriting and higher rejection rates, thereby increasing the need for improved credit risk scoring models.  
The study aims to estimate determinants of vehicle loan default and build a model to predict potential defaulters using the provided dataset.


## Dataset Information

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

Notes: Primary accounts are customers own loans; secondary accounts are as co-applicant or guarantor.

---

## Project Tasks

## Week 1 Importing, Understanding, and Inspecting Data

- Perform preliminary data inspection and report structure, missing values, duplicates, and related quality findings.
- Standardize column names to be Pythonic and consistent for analysis and modeling.
- Explore and devise strategies to handle missing values encountered during inspection.
- Provide statistical descriptions for quantitative variables.
- Examine overall distribution of the target variable.
- Study target distribution by categories such as branch, city, state, supplier, and manufacturer.
- Identify employment types and propose an imputation strategy for missing values; use pie charts to show employment type composition among defaulters and non‑defaulters.
- Analyze age distribution with respect to defaulters vs. non‑defaulters.
- Determine which ID types were most commonly provided for KYC proof.

## Week 2 EDA and modeling

- Study the credit bureau score distribution and compare defaulters vs. non‑defaulters in detail.
- Explore primary and secondary account summaries to assess relationships with default probability.
- Analyze differences between sanctioned and disbursed amounts for primary and secondary loans with appropriate statistics and plots.
- Evaluate whether a higher number of inquiries is associated with higher risk.
- Assess whether credit history signals—new loans in last six months, defaults in last six months, credit history length, etc.—significantly influence default probability.
- Build a logistic regression model, generate test predictions, and validate with a confusion matrix.

---

## Deliverables

- A cleaned dataset ready for analysis.  
- EDA report with insights into loan default risk factors.  
- A trained logistic regression model for predicting defaulters.

---
