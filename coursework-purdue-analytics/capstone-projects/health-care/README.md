# Healthcare Project

Data Analyst Capstone Project  
Simplilearn | Indian Institute of Technology, Kanpur

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
   - Study the occurrence of CVD across different ages.
   - Analyze resting blood pressure (`trestbps`) for anomalies and relation to heart attack risk.
   - Study gender distribution and its relationship with `target`.

### Week 2 — Advanced EDA & Modeling
1. Analyze relationships:
   - Describe the relationship between cholesterol (`chol`) and `target`.
   - Examine how maximum heart rate achieved (`thalach`) relates to heart disease occurrence.
   - Investigate whether thalassemia (`thal`) is a major contributor and assess impacts of other factors.
   - Use pair plots (or equivalent) to visualize relationships among variables.
2. Modeling:
   - Train a logistic regression model to predict `target`.
   - Evaluate model performance on a test set; present a confusion matrix and relevant metrics (accuracy, precision, recall, F1-score).
3. Dashboarding (Tableau):
   - Create visualizations to compare attributes of diseased vs. healthy individuals.
   - Build a dashboard demonstrating variable associations and key contributing factors.

---

## Deliverables
- A cleaned dataset ready for analysis.
- EDA report and insights identifying significant risk factors.
- A trained and evaluated logistic regression model for prediction.
- A Tableau dashboard showcasing insights into CVD occurrences.

---
