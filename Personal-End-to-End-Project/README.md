📚 Book Clustering with SQL + Python

Tech Stack: Python, SQL (DuckDB), Pandas, scikit-learn, Tableau, Selenium (Chrome WebDriver)

📌 Project Overview

This project performs end-to-end book dataset collection, analysis, and clustering to group similar books together based on ratings, reviews, and publication details.
It begins with a Selenium-based Goodreads scraper (cookie-persisted login, headless, deduped link sets), then combines SQL-centric processing in DuckDB with Python modeling to deliver clear insights and actionable groupings.

🎯 Objectives

Collect book data via a Selenium scraper with saved login cookies.

Clean & Structure Data efficiently using SQL in DuckDB inside Jupyter.

Explore patterns in book ratings, publication trends, and review counts.

Engineer features that capture book popularity and quality.

Cluster similar books using machine learning.

Visualize results in Python and Tableau for clear interpretation.

🔍 Workflow

1) Data Collection (Selenium)

Logged in once and saved session cookies to avoid pop-ups

Crawled Goodreads Listopia pages, collected book links, deduped with sets

Ran headless Chrome with lightweight options for speed

Extracted core fields (titles, authors, ratings, reviews, genres, format, language, identifiers, published info)

Exported to CSV for downstream processing


2) Data Cleaning & Preparation

Removed index/placeholder columns; dropped optional IDs not useful for modeling (ISBN/ASIN)

Fixed multi-valued “Published” by splitting into Release_Date and Publisher (1NF)

Standardized numeric/text fields (e.g., Total_Ratings, Reviews from strings with commas)

Resolved Format/no_of_pages mix-ups; imputed no_of_pages with mean after repair

Conservative row drops where critical fields were irrecoverably missing


3) SQL-Powered Structuring (DuckDB)

Created a stable Book_ID (ngroup on title+author) for clean joins

Moved multi-valued attributes into compact mapping tables (genre, format, language, publisher) to address 1NF/4NF issues

Removed redundancy from the main table; engineered no_of_ counts* from mappings

Documented before/after snapshots and ER diagram


4) Exploratory Data Analysis (EDA)

Looked at distributions for ratings, reviews, pages; flagged outliers

Used median thresholds to talk about “popularity” (ratings + engagement)

Noted high-cardinality/low-frequency text fields and low-variance language

Checked correlations that could affect modeling


5) Feature Engineering & Selection

Kept informative numerics; log-transformed skewed fields (ratings count, reviews, pages)

Scaled features before clustering

Grouped rare categories into “Other” and one-hot encoded the rest (formats, genres)

Dropped sparse/high-cardinality and imbalanced features from the model frame


6) Statistical Tests (Usefulness of Time Features)

Ran chi-square tests: Year vs Genre (strong signal) and Month vs Genre (weaker)

Decision: prefer Year, avoid duplicative month signal


7) Clustering & Evaluation

Tried K-Means across k values; used silhouette and inertia to compare

Results were moderate given available features; documented limitations clearly


8) Visualization & Artifacts

Light Python visuals for checks; Tableau dashboard for interpretation

Included before/after tables, mapping snapshots, and ER diagram for reviewers
