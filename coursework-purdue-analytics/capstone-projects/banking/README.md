
# Banking Project – Data and Artificial Intelligence

Data Analyst Capstone Project  
Simplilearn | Indian Institute of Technology, Kanpur

Overview
Data Analyst Capstone Project: Project 2—Banking focuses on estimating determinants of vehicle loan default and building a predictive model to identify potential defaulters.
The project uses a single dataset with 41 attributes and requires exploratory data analysis, modeling, and dashboarding to understand and communicate risk drivers.

Problem statement
Financial institutions face losses from vehicle loan defaults, prompting tighter underwriting and higher rejection rates, thereby increasing the need for improved credit risk scoring models.
The study aims to estimate determinants of vehicle loan default and build a model to predict potential defaulters using the provided dataset.

Dataset
The dataset contains customer identifiers, application details, KYC flags, credit bureau summary metrics, primary/secondary loan account aggregates, and the target variable indicating first-EMI default status.
Primary accounts represent loans taken for personal use; secondary accounts represent co-applicant or guarantor roles, both of which are summarized at disbursement time.

Variable descriptions
UniqueID: Identifier for customers.

loan_default: Payment default in the first EMI on the due date.

disbursed_amount: Amount of loan disbursed.

asset_cost: Cost of the financed asset.

ltv: Ratio of loan amount to the value of the asset.

branch_id: Branch where the loan was disbursed.

supplier_id: Vehicle dealer where the loan was disbursed.

manufacturer_id: Vehicle manufacturer associated with the asset (e.g., Hero Honda, TVS).

Current_pincode_ID: Current pincode of the customer.

Date.of.Birth: Date of birth of the customer.

Employment.Type: Employment type (Salaried/Self Employed).

DisbursalDate: Date of loan disbursement.

State_ID: State of disbursement.

Employee_code_ID: Internal employee code that logged the disbursement.

MobileNo_Avl_Flag: Flag if a mobile number was shared.

Aadhar_flag: Flag if Aadhar was shared.

PAN_flag: Flag if PAN was shared.

VoterID_flag: Flag if voter ID was shared.

Driving_flag: Flag if driver’s license was shared.

Passport_flag: Flag if passport was shared.

PERFORM_CNS.SCORE: Credit bureau performance score.

PERFORM_CNS.SCORE.DESCRIPTION: Description/category of the bureau score.

PRI.NO.OF.ACCTS: Count of total primary accounts at disbursement.

PRI.ACTIVE.ACCTS: Count of active primary accounts at disbursement.

PRI.OVERDUE.ACCTS: Number of overdue/defaulted primary accounts at disbursement.

PRI.CURRENT.BALANCE: Total principal outstanding of active primary accounts at disbursement.

PRI.SANCTIONED.AMOUNT: Total sanctioned amount across primary accounts at disbursement.

PRI.DISBURSED.AMOUNT: Total disbursed amount across primary accounts at disbursement.

SEC.NO.OF.ACCTS: Count of total secondary accounts at disbursement.

SEC.ACTIVE.ACCTS: Count of active secondary accounts at disbursement.

SEC.OVERDUE.ACCTS: Number of overdue/defaulted secondary accounts at disbursement.

SEC.CURRENT.BALANCE: Total principal outstanding of active secondary accounts at disbursement.

SEC.SANCTIONED.AMOUNT: Total sanctioned amount across secondary accounts at disbursement.

SEC.DISBURSED.AMOUNT: Total disbursed amount across secondary accounts at disbursement.

PRIMARY.INSTAL.AMT: EMI amount of the primary loan.

SEC.INSTAL.AMT: EMI amount of the secondary loan.

NEW.ACCTS.IN.LAST.SIX.MONTHS: Number of new accounts in the last 6 months.

DELINQUENT.ACCTS.IN.LAST.SIX.MONTHS: Number of delinquent accounts in the last 6 months.

AVERAGE.ACCT.AGE: Average tenure/age of accounts.

CREDIT.HISTORY.LENGTH: Time since first loan.

NO.OF_INQUIRIES: Count of credit inquiries.

Notes: Primary accounts are customer’s own loans; secondary accounts are as co-applicant or guarantor.

Week 1 tasks
Perform preliminary data inspection and report structure, missing values, duplicates, and related quality findings.

Standardize column names to be Pythonic and consistent for analysis and modeling.

Explore and devise strategies to handle missing values encountered during inspection.

Provide statistical descriptions for quantitative variables.

Examine overall distribution of the target variable.

Study target distribution by categories such as branch, city, state, supplier, and manufacturer.

Identify employment types and propose an imputation strategy for missing values; use pie charts to show employment type composition among defaulters and non‑defaulters.

Analyze age distribution with respect to defaulters vs. non‑defaulters.

Determine which ID types were most commonly provided for KYC proof.

Week 2 EDA and modeling
Study the credit bureau score distribution and compare defaulters vs. non‑defaulters in detail.

Explore primary and secondary account summaries to assess relationships with default probability.

Analyze differences between sanctioned and disbursed amounts for primary and secondary loans with appropriate statistics and plots.

Evaluate whether a higher number of inquiries is associated with higher risk.

Assess whether credit history signals—new loans in last six months, defaults in last six months, credit history length, etc.—significantly influence default probability.

Build a logistic regression model, generate test predictions, and validate with a confusion matrix.

Dashboarding
Develop a Tableau dashboard to enable interactive exploration and understanding of data patterns.

Demonstrate key variables, their relationships, and the drivers of default risk within the dashboard.
---

## Deliverables
• A cleaned dataset ready for analysis.  
• EDA report with insights into loan default risk factors.  
• A trained logistic regression model for predicting defaulters.
