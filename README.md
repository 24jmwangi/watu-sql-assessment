## watu-sql-assessment

This repository automates the SQL assessment using GitHub Actions. It sets up a PostgreSQL database, populates it with dummy data, runs the SQL analysis, and saves the results.

### How It Works

1. **Workflow Trigger**: The workflow runs automatically on pushes to the `main` branch (when scripts change) or can be triggered manually.
2. **Database Setup**: A PostgreSQL container is spun up using GitHub Actions services.
3. **Schema & Data**: The database schema is created and populated with dummy data.
4. **Analysis Execution**: All SQL queries from the assessment are run against the database.
5. **Results Storage**: The query results are saved to `results/analysis_results.md` and automatically committed back to the repository.

### Running the Analysis

1. Push to the `main` branch (changes to scripts files)
2. Or manually trigger the workflow through GitHub Actions UI
3. View results in `results/analysis_results.md`

### SQL Platform

PostgreSQL 13+