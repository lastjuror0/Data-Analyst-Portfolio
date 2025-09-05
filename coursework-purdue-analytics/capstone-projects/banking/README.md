
Data Analyst Capstone Project

Project 2: Banking

Problem statement

There is one dataset data that has 41 attributes.

A statistical model needs to be created to predict the potential demand in dollars amount of loan for each of the region in the USA. Also, there is a need to create a dashboard which would refresh periodically post data retrieval from the agencies.

You are required to determine and examine factors that affect the ratio of vehicle loan defaulters. Also, use the findings to create a model to predict the potential defaulters.

Financial institutions incur significant losses due to the default of vehicle loans. This has led to the tightening up of vehicle loan underwriting and increased the vehicle loan rejection rates. The need for a better credit risk scoring model among these institutions also gets created. This warrants a study to estimate the determinants of vehicle loan default.

---

Dataset Snapshot

UniqueID | disbursed_amount | asset_cost | ltv | branch_id | supplier_id | manufacturer_id | Current_pincode_ID
420825   | 50578            | 58400      | 89.55 | 67 | 22807 | 45 | 1441
417566   | 53278            | 61360      | 89.63 | 67 | 22807 | 45 | 1497
539055   | 52378            | 60300      | 88.39 | 67 | 22807 | 45 | 1495

Date.of.Birth | Employment.Type | DisbursalDate | State_ID | Employee_code_ID | MobileNo_Avl_Flag | Aadhar_flag | PAN_flag | VoterID_flag | Driving_flag
01-01-1984 | Salaried | 03-08-2018 | 6 | 1998 | 1 | 1 | 0 | 0 | 0
24-08-1985 | Self employed | 01-08-2018 | 6 | 1998 | 1 | 1 | 0 | 0 | 0
09-12-1977 | Self employed | 26-09-2018 | 6 | 1998 | 1 | 1 | 0 | 0 | 0

---

Variable Descriptions

UniqueID: Identifier for customers
loan_default: Payment default in the first EMI on due date
disbursed_amount: Amount of loan disbursed
asset_cost: Cost of the asset
ltv: Expresses the ratio of a loan to the value of the asset
branch_id: Branch where the loan was disbursed
supplier_id: Vehicle dealer where the loan was disbursed
manufacturer_id: Vehicle manufacturer (Hero Honda, TVS, etc.)
Current_pincode: Current pincode of the customer
Date.of.Birth: Date of birth of the customer
Employment.Type: Employment type of the customer (Salaried/Self Employed)
DisbursalDate: Date of disbursement
State_ID: State of disbursement
Employee_code_ID: Employee of the organization who logged the disbursement
MobileNo_Avl_Flag: If mobile no. was shared by the customer then, flagged as 1
Aadhar_flag: If Aadhar was shared by the customer then, flagged as 1
PAN_flag: If PAN was shared by the customer then, flagged as 1
VoterID_flag: If voter ID was shared by the customer then, flagged as 1
Driving_flag: If DL was shared by the customer then, flagged as 1
Passport_flag: If passport was shared by the customer then, flagged as 1
PERFORM_CNS.SCORE: Bureau score
PERFORM_CNS.SCORE.DESCRIPTION: Bureau score description
PRI.NO.OF.ACCTS: Count of total loans taken by the customer at the time of disbursement
PRI.ACTIVE.ACCTS: Count of active loans taken by the customer at the time of disbursement
PRI.OVERDUE.ACCTS: No. of accounts the customer has defaulted on at the time of disbursement
PRI.CURRENT.BALANCE: Total principal outstanding amount of the active loans at the time of disbursement
PRI.SANCTIONED.AMOUNT: Total amount sanctioned for all the loans at the time of disbursement
PRI.DISBURSED.AMOUNT: Total amount disbursed for all the loans at the time of disbursement
SEC.NO.OF.ACCTS: Count of total loans taken by the customer at the time of disbursement
SEC.ACTIVE.ACCTS: Count of active loans taken by the customer at the time of disbursement
SEC.OVERDUE.ACCTS: Count of default accounts at the time of disbursement
SEC.CURRENT.BALANCE: Total principal outstanding amount of the active loans at the time of disbursement
SEC.SANCTIONED.AMOUNT: Total amount sanctioned for all the loans at the time of disbursement
SEC.DISBURSED.AMOUNT: Total amount disbursed for all the loans at the time of disbursement
PRIMARY.INSTAL.AMT: EMI amount of the primary loan
SEC.INSTAL.AMT: EMI amount of the secondary loan
NEW.ACCTS.IN.LAST.SIX.MONTHS: New loans taken by the customer in last 6 months before disbursement
DELINQUENT.ACCTS.IN.LAST.SIX.MONTHS: Loans defaulted in the last 6 months
AVERAGE.ACCT.AGE: Average loan tenure
CREDIT.HISTORY.LENGTH: Time since first loan
NO.OF_INQUIRIES: Enquiries done by the customer for loans

---

Project Task: Week 1

1. Perform preliminary data inspection and report the findings as the structure of the data, missing values, duplicates, etc.
2. Variable names in the data may not be in accordance with the identifier naming in Python so, change the variable names accordingly.
3. The presented data might also contain some missing values therefore, exploration will also lead to devising strategies to fill in the missing values while exploring the data.
4. Provide the statistical description of the quantitative data variables.
5. Explain how the target variable is distributed overall.
6. Study the distribution of the target variable across various categories like branch, city, state, supplier, manufacturer, etc.
7. What are the different employment types given in the data? Can a strategy be developed to fill in the missing values (if any)? Use pie charts to express the different types of employment that define the defaulters and non-defaulters.
8. Has age got anything to do with defaulting? What is the distribution of age with respect to the defaulters and non-defaulters?
9. What type of ID was presented by most of the customers for proof?

---

Project Task: Week 2

1. Study the credit bureau score distribution. Compare the distribution for defaulters vs. non-defaulters.
2. Explore the primary and secondary account details. Is the information in some way related to the loan default probability?
3. Is there a difference between the sanctioned and disbursed amount of primary and secondary loans? Study the difference by providing appropriate statistics and graphs.
4. Do customers who make higher number of enquiries end up being higher risk candidates?
5. Is credit history (new loans in last six months, loans defaulted in last six months, time since first loan, etc.) a significant factor in estimating probability of loan defaulters?
6. Perform logistic regression modeling, predict the outcome for the test data, and validate the results using the confusion matrix.
---

Thank You


Validate results using confusion matrix.

Thank You
