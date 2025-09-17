# Comparative Study of Countries

course-end project  
Simplilearn | Indian Institute of Technology, Kanpur

---

### Description

You are a data analyst working for an insurance company.  
The company is expanding and wants to open new branches in various parts of the world.  
Your task is to compare various parameters such as income, life insurance share, market share, penetration, ratio of reinsurance accepted, and retention ratio of different countries using the sample insurance and financial datasets.

---

### Objective

Create a dashboard to compare all the parameters mentioned above for different countries, to strategize market penetration and to target new customers.

---

### Datasets

- Primary Dataset - Insurance Sample Dataset
- Secondary Dataset - Global Financial Development Database

**Note:** Use Data Blending with Relationships between Country Code, Country, and Year

---

### Steps to Perform

1. **Create a geographic map showing the countries’ fields.**
   - Color the map based on the income column from the secondary dataset
   - Include income group filter in the dashboard

2. **Include a webpage to show data from the world bank webpage driven by an URL action from a geography graph**
   - The country names in the map will act as the trigger  
   - [https://en.wikipedia.org/wiki/Country](https://en.wikipedia.org/wiki/Country)

3. **Create a KPI Table to show the comparison between the selected period and the period prior to the selected one**
   - Create two parameters for Year Selection and Category Selection
   - Category parameter includes life insurance share, market share, penetration, ratio of reinsurance accepted, and retention ratio
   - Create a calculated field to calculate the Growth %
   - Create a table to show these values
   - Title should be updated based on the category selection

4. **Create Growth Indicator Shapes based on the Growth %**
   - Growth indicator displays Negative, No Change, and Positive as values and corresponding shapes against it

5. **Create a trend line to show the selected category values**
   - The line shows an arrow or triangle at the last mark

6. **Create a dashboard filter for income group to be applied for all charts with the filter action enabled in the map as well**

7. **Formatting should be done appropriately**

