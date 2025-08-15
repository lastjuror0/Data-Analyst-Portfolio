📚 Book Clustering with SQL + Python

Tech Stack:
Python, SQL (DuckDB), Pandas, scikit-learn, Tableau, Selenium (Chrome WebDriver)

📌 Project Overview

This project performs end-to-end book dataset collection, analysis, and clustering to group similar books together based on ratings, reviews, and publication details.

It starts with a Selenium-based Goodreads scraper (cookie-persisted login, headless mode, deduped link sets), then combines SQL-centric processing in DuckDB with Python modeling to deliver clear insights and actionable groupings.

🎯 Objectives

Collect book data via Selenium scraper with saved login cookies.

Clean & structure data efficiently using SQL in DuckDB inside Jupyter.

Explore patterns in book ratings, publication trends, and review counts.

Engineer features that capture book popularity and quality.

Cluster similar books using machine learning.

Visualize results in Python and Tableau for clear interpretation.

🔍 Workflow
1. Data Collection (Selenium)

Logged in once and saved session cookies to avoid pop-ups.

Crawled Goodreads Listopia pages, collected book links, deduped with sets.

Ran headless Chrome with lightweight options for speed.

Extracted core fields: titles, authors, ratings, reviews, genres, format, language, identifiers, published info.

Exported to CSV for downstream processing.

2. Data Cleaning & Preparation

Removed index/placeholder columns; dropped optional IDs not useful for modeling (ISBN/ASIN).

Fixed multi-valued “Published” by splitting into Release_Date and Publisher (1NF compliance).

Standardized numeric/text fields (e.g., Total_Ratings, Reviews from strings with commas).

Resolved Format/no_of_pages mix-ups; imputed missing page counts with mean.

Conservatively dropped rows where critical fields were irrecoverably missing.

3. SQL-Powered Structuring (DuckDB)

Created stable Book_ID (ngroup on title + author) for clean joins.

Moved multi-valued attributes into mapping tables (genre, format, language, publisher) to address 1NF/4NF issues.

Removed redundancy from main table; engineered no_of_* counts from mappings.

Documented before/after snapshots and ER diagram.

4. Exploratory Data Analysis (EDA)

Checked distributions for ratings, reviews, and pages; flagged outliers.

Used median thresholds to define “popularity” (ratings + engagement).

Noted high-cardinality/low-frequency text fields and low-variance language fields.

Checked correlations affecting modeling decisions.

5. Feature Engineering & Selection

Kept informative numeric fields; log-transformed skewed variables (ratings count, reviews, pages).

Scaled features before clustering.

Grouped rare categories into “Other” and one-hot encoded the rest (formats, genres).

Dropped sparse/high-cardinality and imbalanced features from the model frame.

6. Statistical Tests (Usefulness of Time Features)

Ran chi-square tests:

Year vs Genre: strong signal.

Month vs Genre: weaker signal.

Decision: prefer Year; avoid duplicative month signal.

7. Clustering & Evaluation

Tried K-Means across multiple k values; compared silhouette score & inertia.

Results were moderate given available features; documented limitations clearly.

8. Visualization & Artifacts

Light Python visuals for verification.

Tableau dashboard for interactive interpretation.

Included before/after tables, mapping snapshots, and ER diagram.

📊 Key Insights

High ratings don’t always mean popularity — review volume tells a different story.

Some features correlate strongly but still add unique value when combined.

Year of release is more predictive of genre patterns than month.

Mapping tables reduced redundancy and improved feature clarity.

Clusters formed around engagement and content style differences.

🚀 How to Run
1. Prerequisites

Python 3.8+

Google Chrome installed

ChromeDriver matching your Chrome version (in your PATH)

Jupyter Notebook or Jupyter Lab

Install dependencies:

pip install -r requirements.txt

2. Scraping Goodreads Data
Step 1 — Manual Login & Cookie Save

Open scraper notebook:

jupyter notebook goodreads_scraper.ipynb


Run first few cells until prompted.

Log in to Goodreads in the Chrome window.

Press Enter in the terminal to save cookies as goodreads_cookies.pkl.

Step 2 — Collect Listopia Lists

Visits Goodreads Listopia.

Collects themed book list links.

Stores them in memory.

Step 3 — Extract Book Details

Opens each Listopia list.

Scrapes details (title, author, rating, votes, etc.).

Saves dataset as:

goodreads_scraped_data.csv

3. Running the Analysis

Open the analysis notebook:

jupyter notebook goodreads_python.ipynb


Ensure dataset path is correct:

df = pd.read_csv('goodreads_scraped_data.csv')


Run all cells to:

Clean & preprocess data.

Explore using SQL (DuckDB).

Generate visualizations.

Perform clustering & similarity analysis.

📂 Repository Structure

📦 Personal-End-to-End-Project

 ├── 📂 Data-Analysis

 │    ├── Goodreads-Book-Clustering-Project-Documentation.pdf
 
 │    └── goodreads_python.ipynb
 
 ├── 📂 Scraper
  goodreads_scraped_data.csv
  goodreads_scraper.ipynb
 
📂 Tableau-Dashboard
 Tableau-Dashboard.png
 goodreads-tableau.twbx

🛠️ Tools & Libraries

Python: Pandas, NumPy, Matplotlib, scikit-learn

SQL: DuckDB (in-notebook queries)

Visualization: Tableau, Seaborn

Scraping: Selenium (Chrome WebDriver, headless, cookie session)

ML: KMeans clustering, StandardScaler

📜 License

This project is open-source under the MIT License.



