# Layoffs Data Cleaning Project

I am a Computer Engineering student learning Data Analysis. This repository contains a small practice project for SQL-based data cleaning on a layoffs dataset.

Main contents:
- `data/layoffs_raw.csv` : original raw dataset
- `data/layoffs_cleaned.csv` : cleaned dataset ready for analysis
- `sql/01_import_staging.sql` : script to create staging table and import raw data
- `sql/02_cleaning.sql` : main cleaning scripts (duplicates, normalization, fill missing values)
- `sql/03_finalize.sql` : finalization (drop helper columns, final checks)

Summary:
I created a staging table, detected and removed duplicates using window functions, standardized text fields (including country names), converted date text to date type, and handled missing values (filling industry from other rows when possible; removing rows where both total_laid_off and percentage_laid_off were missing). The cleaned dataset is ready for analysis.

📌 I’m open to internship opportunities in data analysis.
