# End‑to‑End Goodreads Book Clustering with DuckDB, Pandas, and scikit‑learn

**Tech stack:** Python, SQL (DuckDB), Pandas, scikit-learn, Tableau, Selenium (Chrome WebDriver)

---

## Project overview

This repository contains an end-to-end project for collecting, cleaning, analyzing, and clustering books gathered from Goodreads. It uses a Selenium-based scraper to collect book metadata, DuckDB for SQL-centric data structuring inside Jupyter, Python for feature engineering and machine learning, and Tableau for interactive visualization. The project produces clusters of similar books based on ratings, reviews, publication details, and other engineered features, plus supporting visualizations and documentation.

---

## Objectives

- Collect book data via a Selenium scraper with saved login cookies.
- Clean and structure the data using SQL (DuckDB) and Pandas.
- Explore patterns in ratings, reviews, pages, and publication history.
- Engineer features that capture popularity and content characteristics.
- Cluster similar books using machine learning and evaluate results.
- Produce visualizations in Python and a Tableau dashboard for interpretation.

---

## Workflow

1. Data collection (Selenium)
   - Log in once and save session cookies to avoid pop-ups.
   - Crawl Goodreads Listopia pages and collect book links (deduped using sets).
   - Run headless Chrome with lightweight options for speed.
   - Extract core fields: title, author, rating, votes, genres, format, language, identifiers, and published info.
   - Export raw results to `goodreads_scraped_data.csv`.

2. Data cleaning & preparation
   - Remove placeholder/index columns and drop optional IDs not useful for modeling (e.g., ISBN/ASIN).
   - Split multi-valued “Published” into `Release_Date` and `Publisher` to achieve 1NF.
   - Standardize numeric/text fields (e.g., convert rating counts and review counts from strings with commas to integers).
   - Resolve format/page count mix-ups and impute missing page counts with the mean when appropriate.
   - Drop rows only when critical fields are irrecoverably missing.

3. SQL-powered structuring (DuckDB)
   - Create a stable `Book_ID` (e.g., using `ngroup` on title + author) for clean joins.
   - Move multi-valued attributes into mapping tables (genre, format, language, publisher) to reduce redundancy and satisfy normalization.
   - Remove redundant columns from the main table and compute `no_of_*` counts from mapping tables.
   - Document before/after snapshots and include an ER diagram in the project documentation.

4. Exploratory data analysis (EDA)
   - Inspect distributions for ratings, reviews, and pages; identify outliers.
   - Use median-based thresholds to define “popularity” based on ratings and engagement.
   - Note high-cardinality or low-variance fields and their impact on modeling.
   - Check correlations to guide feature selection.

5. Feature engineering & selection
   - Retain informative numeric fields and log-transform skewed variables (ratings count, reviews, pages).
   - Scale features (e.g., `StandardScaler`) before clustering.
   - Group rare categories into “Other” and one-hot encode the remaining categorical features (formats, genres).
   - Drop extremely sparse, high-cardinality, or highly imbalanced features from the modeling frame.

6. Statistical tests
   - Run chi-square tests to evaluate time features:
     - Year vs Genre: strong signal.
     - Month vs Genre: weaker signal.
   - Decision: prefer Year and avoid duplicative month features.

7. Clustering & evaluation
   - Try K-Means across multiple values of k; compare silhouette score and inertia.
   - Results are moderate given available features; document limitations and opportunities for improvement.

8. Visualization & artifacts
   - Produce lightweight Python visuals for verification and quick checks.
   - Provide a Tableau dashboard for interactive exploration.
   - Include before/after tables, mapping snapshots, and an ER diagram in the documentation.

---

## Key insights

- High average ratings do not always imply popularity—review volume and total ratings can tell a different story.
- Certain features correlate strongly, but combined they may still add unique predictive value.
- Year of release is more predictive of genre patterns than month.
- Mapping tables reduced redundancy and clarified features for modeling.
- Clusters tend to form around engagement (ratings/reviews) and content-style differences.

---

## How to run

Prerequisites
- Python 3.8+
- Google Chrome installed
- ChromeDriver
- Jupyter Notebook or JupyterLab

Install dependencies:
```bash
pip install -r requirements.txt
```

1) Scraping Goodreads data

Step 1 — Manual login & cookie save

- Open the scraper notebook:
```bash
jupyter notebook Scraper/goodreads_scraper.ipynb
```
- Run the first few cells until a Chrome window opens for login.
- Log in to Goodreads in the browser window.
- After successful login, return to the terminal and press Enter when prompted to save cookies (saved to `goodreads_cookies.pkl`).

Step 2 — Collect Listopia lists

- The scraper visits Goodreads Listopia pages, collects themed book list links, and stores them in memory (deduped).

Step 3 — Extract book details

- The scraper opens each Listopia list, scrapes book details (title, author, rating, votes, genres, format, language, identifiers, published info), and saves:
```text
Scraper/goodreads_scraped_data.csv
```

2) Running the analysis

- Open the analysis notebook:
```bash
jupyter notebook Data-Analysis/goodreads_python.ipynb
```
- Ensure the dataset path is correct in the notebook:
```python
df = pd.read_csv('Scraper/goodreads_scraped_data.csv')
```
- Run all cells to:
  - Clean & preprocess the data
  - Explore and analyze using DuckDB queries
  - Generate visualizations
  - Perform clustering & similarity analysis

---

## Repository structure

```
Personal-End-to-End-Project
├── Data-Analysis
│   ├── Goodreads-Book-Clustering-Project-Documentation.pdf
│   └── goodreads_python.ipynb
├── Scraper
│   ├── goodreads_scraper.ipynb
│   └── goodreads_scraped_data.csv
├── Tableau-Dashboard
│   ├── Tableau-Dashboard.png
│   └── goodreads-tableau.twbx
└── README.md
```

---

## Tools & libraries

- Python: Pandas, NumPy, Matplotlib, Seaborn
- ML: scikit-learn (KMeans, StandardScaler)
- SQL: DuckDB (used in-notebook)
- Scraping: Selenium (Chrome WebDriver)
- Visualization: Tableau

---

## License

This project is open-source under the MIT License.
