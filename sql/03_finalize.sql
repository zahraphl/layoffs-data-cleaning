-- 03_finalize.sql
-- remove helper columns and move final table
DELETE FROM dbo.layoffs_staging2 WHERE Row_num > 1;  -- if appropriate
ALTER TABLE dbo.layoffs_staging2 DROP COLUMN Row_num;
SELECT * INTO dbo.layoffs_cleaned FROM dbo.layoffs_staging2;
