## ETL Decisions

### Decision 1 — Date Format Standardization
Problem: The raw dataset contained inconsistent date formats such as DD-MM-YYYY and MM/DD/YYYY, making it difficult to analyze data consistently.
Resolution: All dates were converted into a standard ISO format (YYYY-MM-DD) and mapped into a separate date dimension table.



### Decision 2 — Handling NULL Values
Problem: Some rows contained NULL values in important fields such as product category and store location.
Resolution: Missing values were either filled using default values (e.g., "Unknown") or excluded if they were not critical to analysis.



### Decision 3 — Category Normalization
Problem: Product categories had inconsistent casing and naming (e.g., "electronics", "ELECTRONICS", "Electronics").
Resolution: All category values were standardized to a consistent format (capitalized form) before loading into the dimension table.