
---

# FinTech Dataset Project Pipline
## Project Overview

In this milestone, the goal is to build a complete **data pipeline** and an **interactive dashboard** for the FinTech dataset we explored in Milestone 1. The milestone also includes preparing a **presentation** to summarize key insights and outcomes.

This milestone focuses on:

* Automating data extraction, cleaning, feature engineering, and encoding using **Apache Airflow**.
* Creating an **interactive dashboard** with **Apache Superset** for data visualization and insights.
* Preparing a **PowerPoint presentation** for evaluation and showcasing findings.

**Note:** Docker must be installed, as both Airflow and Superset will run in Docker containers.

---

## Data Pipeline

The data pipeline is designed using **Airflow** and implements the following processes:

1. **Data Extraction and Cleaning** (`extract_clean`)

   * Extracts the dataset from the CSV source file.
   * Handles missing values and saves the cleaned dataset as `fintech_clean.parquet`.

2. **State Data Extraction** (`extract_states`)

   * Extracts state names from `states.csv`.
   * Saves the extracted data as `fintech_states.parquet`.

3. **Data Combination** (`combine_sources`)

   * Merges `fintech_clean.parquet` and `fintech_states.parquet`.
   * Saves the combined dataset as `fintech_combined.parquet`.

4. **Data Encoding** (`encoding`)

   * Reads the combined dataset and applies the encodings implemented in Milestone 1.
   * Saves the encoded dataset as `fintech_encoded.parquet`.

5. **Loading into Database** (`load_to_db`)

   * Loads the encoded dataset into a **PostgreSQL database** for downstream analysis.

The **Airflow DAG** ensures that all tasks are executed in the proper sequence and automatically handles dependencies.

---

## Data Visualization with Apache Superset

The Superset dashboard provides:

**Basic Information:**

* Total number of loans
* Average loan amount
* State with the highest number of loans
* Number of unpaid loans

**Time-based Analysis:**

* Average loan amount over time
* Total number of loans over time

**Tabular View:**

* Display avg. loan amount, total loans, and unpaid loans for each loan purpose

**Analysis Questions Addressed:**

1. Distribution of loan amounts across different grades
2. Relationship between loan amount and annual income across states
3. Percentage distribution of loan grades
4. Top 5 states with the highest average loan amounts

**Extra Analysis (Optional):**

* Additional insights that provide further understanding of the dataset

---

## Deliverables

* **Airflow DAG** for automated data processing
* **Superset Dashboard** for interactive analysis and visualization
* **PowerPoint Presentation** summarizing the workflow, outcomes, and key insights

---


