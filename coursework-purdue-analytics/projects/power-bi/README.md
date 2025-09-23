# Data Manipulation and Reporting with Power BI

course-end project  
Simplilearn | Purdue University

---

## Objectives

To construct a consolidated and interactive Power BI report that will allow Zomato to quickly assess the required data.

---

## Industry Relevance

- How to construct a consolidated and interactive Power BI: It enables evaluating each data set by connecting them, and it also helps in analyzing the findings in the form of charts or graphs.
- Understand DAX and its application: It is a set of functions and algorithms that create computed columns, measures, and custom tables in Microsoft Power BI.

---

## Description

Examine the data in such a way that Zomato can accurately assess their business performance.

---

## Note

**Steps to use DAX in the project:**

- Add a Rating color column in an appropriate table with the data rows in the format given below—  
  Aggregate rating  
  Rating color  
  Above 4.5 - Dark Green  
  4 to 4.4 - Green

- Create the following measures in the appropriate tables—  
  a. Restaurant count  
  b. Average cost  
  c. Average rating  
  d. Cuisine count

- Create a new column in the Country Code table and name it “Continent" and create the values using the below-mentioned convention—  
  The mapping is continent - country, for example "Africa – South Africa”.

---

## Problem Statement and Motivation

Zomato is a restaurant aggregation and meal delivery service based in India. It is currently operating in several countries across the world. Zomato provides thorough information about numerous eateries and restaurants. The data (sample) is currently accessible in the form of a few Excel files, each of which contains information about multiple restaurants operating in a certain continent.

**What is the motivation to do this?**  
The clients want to construct a consolidated and interactive Power BI report that will allow them to do the following:

- Derive data on the total number of restaurants worldwide, including continents, countries, and cities.
- View data on a global scale with the capacity to drill down to a granular level.
- Derive data on the restaurants with the highest average customer ratings.
- Discover the restaurants with the lowest average costs.
- Filter and view information on the restaurants based on:
  - Their geographical dimensions such as continent, country, and city.
  - The service they provide, such as online ordering or reservation services.
  - The average rating slab by color.
- Identify the restaurants with the most cuisines served.
- Design a multi-page report that suits Zomato's theme with easy navigation across sections.
- Allow Zomato users to be able to access this information from both a web browser and a mobile device.

---

## Task

1. Import the data from all available excel files.
2. Transform data.
3. Remove any columns that aren't being used.
4. Create two columns to display the restaurant name and restaurant address.
5. Make a separate table for the list of the cuisines that each restaurant serves.
6. As it's a dimension table, the country-code table must only include unique and non-blank values.
