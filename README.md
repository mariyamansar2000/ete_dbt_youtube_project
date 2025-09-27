# End-to-End DBT Project on Databricks
Data Build Tool | Databricks | Snowflake | Big Data | PySpark

## Overview
This project demonstrates a complete implementation of **dbt (Data Build Tool)** integrated with **Databricks**. It showcases the development of scalable data pipelines, transformations, and analytics-ready data models, covering all core dbt functionalities and best practices.

## Features
- **Data Modeling:** Designed comprehensive dbt models across staging, intermediate, and final layers.
- **Incremental Loading:** Optimized data updates with incremental models.
- **Snapshots:** Maintained historical changes in critical tables.
- **Seeds:** Managed static reference data for transformations.
- **Sources:** Defined and documented raw data sources for lineage tracking.
- **Tests:** Ensured data quality using uniqueness, not-null, and relationship tests.
- **Documentation:** Generated dbt documentation to visualize models, lineage, and dependencies.
- **Databricks Integration:** Securely connected dbt with Databricks SQL warehouses.
- **CI/CD Ready:** Prepared the project for deployment automation using dbt Cloud or GitHub Actions.

## Project Structure
The project is organized into the following directories and files:
- **models/** – Contains staging, intermediate, and mart models.
- **snapshots/** – Configuration for dbt snapshots.
- **seeds/** – Static reference data files.
- **macros/** – Reusable SQL macros.
- **analyses/** – Ad-hoc analysis queries.
- **dbt_project.yml** – Main project configuration.
- **profiles.yml** – Connection profiles for dbt (should not be committed to GitHub).
- **README.md** – Project documentation.

## Best Practices
- Sensitive credentials such as access tokens are **never committed** to the repository.
- Environment variables are used for secure token management.
- The project is structured for maintainability, reusability, and easy onboarding for new team members.

## Author
**Mariyam Ansar Koloth**  
Data Engineer | dbt & Databricks Enthusiast

## License
This project is licensed under the MIT License.
