-- 02_cleaning.sql
-- identify duplicates
WITH DuplicateCTE AS (
  SELECT *,
    ROW_NUMBER() OVER(PARTITION BY company, location, industry, total_laid_off, percentage_laid_off, date, stage, country, funds_raised_millions
                      ORDER BY company) AS Row_num
  FROM dbo.layoffs_staging
)
-- example to create staging2
SELECT * INTO dbo.layoffs_staging2 FROM DuplicateCTE;
-- then update, normalize, fix countries (your actual queries go here)
