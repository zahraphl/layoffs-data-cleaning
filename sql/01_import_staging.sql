-- 01_import_staging.sql
-- Create a staging copy of the raw table to protect original data
SELECT *
INTO dbo.layoffs_staging
FROM dbo.layoffs; -- adjust if you import CSV differently
