# Big Billion Days Regional Performance Review

## Project Overview
This repository contains an end-to-end traceable analytics pipeline for Flipkart's Big Billion Days (BBD) sale. It reconciles order-level facts across SQL, spreadsheet analysis, dashboard specification, and AI-assisted verification.

## Tools and Environment Used
- **SQL Compiler:** SQLite / MySQL Online Compiler (Dialect: Standard ANSI SQL)
- **Spreadsheet:** Google Sheets
- **Dashboard:** Tableau Public Specification
- **AI Assistant:** Claude / ChatGPT (Documented in docs/ai_log.md)

## Repository Structure
- `sql/schema.sql` - Database schema creation
- `sql/queries.sql` - Analytical queries for performance review
- `data/query_results.csv` - Order and summary data exports
- `docs/spreadsheet_notes.md` - Spreadsheet cleaning & reconciliation notes
- `docs/dashboard_spec.md` - Tableau Public dashboard specification
- `docs/ai_log.md` - AI interaction and verification log
