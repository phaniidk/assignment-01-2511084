## ETL Decisions

### Decision 1 — Standardizing Date Formats  
Problem: The dataset had inconsistent date formats such as DD-MM-YYYY and MM/DD/YYYY.  
Resolution: All dates were converted into a standard YYYY-MM-DD format before loading into dim_date.

### Decision 2 — Handling NULL Values  
Problem: Some rows had missing values for product category or price.  
Resolution: Missing values were either removed or replaced with default values to maintain data consistency.

### Decision 3 — Fixing Category Casing  
Problem: Product categories were written inconsistently (e.g., electronics, ELECTRONICS, Electronics).  
Resolution: All category values were standardized to proper case (e.g., Electronics, Clothing, Groceries).
