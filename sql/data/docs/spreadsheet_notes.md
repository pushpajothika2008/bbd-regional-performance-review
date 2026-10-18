# Spreadsheet Cleaning & Reconciliation Notes

## Data Cleaning Actions
1. **Name Trimming:** Stripped trailing and leading whitespace from customer names (e.g., `' Vikram'`, `'Singh '`).
2. **Missing Values:** Identified 3 orders with NULL `amount`. Updated these using `quantity * unit_price` from the `products` lookup.
3. **Status Filter:** Excluded `pending` and `disputed` status rows from revenue metrics.

## Reconciliation Checklist
- Total SQL Completed Revenue matches total sum in Google Sheets pivot tables.
- Zero unmatched customer IDs found after applying `LEFT JOIN`.
