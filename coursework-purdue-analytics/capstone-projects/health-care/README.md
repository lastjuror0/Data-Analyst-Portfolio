# Healthcare Project

Data Analyst Capstone Project  
Simplilearn | Indian Institute of Technology, Kanpur

---

## Overview
Cardiovascular diseases (CVD) are one of the leading causes of death globally. This project analyzes a clinical dataset to identify factors that contribute to heart disease and to build a predictive model to detect the presence of CVD.

The dataset contains 14 attributes and over 4,000 records. The goal is to clean and explore the data, identify significant risk factors, build a logistic regression model, and present findings in a Tableau dashboard.

---

## Problem Statement
Identify and examine factors that significantly increase the risk of heart disease, and build a model to predict the presence of heart disease (target).

---

## Dataset Information

- `age` – Age in years  
- `sex` – Sex (1 = male; 0 = female)  
- `cp` – Type of chest pain  
- `trestbps` – Resting blood pressure (in mm Hg on admission to the hospital)  
- `chol` – Serum cholesterol in mg/dl  
- `fbs` – Fasting blood sugar > 120 mg/dl (1 = true; 0 = false)  
- `restecg` – Resting electrocardiographic results  
- `thalach` – Maximum heart rate achieved  
- `exang` – Exercise induced angina (1 = yes; 0 = no)  
- `oldpeak` – ST depression induced by exercise relative to rest  
- `slope` – The slope of the peak exercise ST segment  
- `ca` – Number of major vessels (0–3) colored by fluoroscopy  
- `thal` – Thalassemia (3 = normal; 6 = fixed defect; 7 = reversible defect)  
- `target` – Heart disease indicator (1 = disease present; 0 = no disease)

---

## Project Tasks

### Week 1 — Importing, Understanding, and Inspecting Data

- Perform preliminary data inspection and report data structure, missing values, duplicates, and data quality findings.
- Remove duplicates (if any) and treat missing values using appropriate strategies informed by inspection results.
- Produce a preliminary statistical summary, exploring central tendency and spread across variables.
- Identify categorical variables and explore them using tools such as count plots.
- Study the occurrence of CVD across different age groups.
- Investigate whether anomalies in resting blood pressure can indicate heart attack risk.
- Analyze overall patient composition by gender.

### Week 2 — EDA, Modeling, and Dashboarding

- Describe the relationship between cholesterol levels and the target variable.
- Evaluate how peak exercise metrics relate to heart attack occurrence.
- Assess whether thalassemia is a major factor in CVD and compare it with other determinants.
- Use a pair plot to understand relationships across all variables.
- Perform logistic regression, generate predictions for test data, and validate using a confusion matrix.
- Visualize variables in Tableau to distinguish attributes of Diseased vs. Healthy cohorts
- Demonstrate inter-variable associations and key drivers to construct an informative dashboard

---

## Deliverables
- A cleaned dataset ready for analysis.
- EDA report and insights identifying significant risk factors.
- A trained and evaluated logistic regression model for prediction.
- A Tableau dashboard showcasing insights into CVD occurrences.

---
