This README.md is designed to serve as the high-level "Executive Summary" for your portfolio. It highlights the business value and your technical expertise immediately, ensuring a recruiter understands the impact of your work before they even open the code.

Project RX-pedite: Specialty Pharmacy Operational Audit
Optimizing Prior Authorization Lifecycles & Speed-to-Therapy
Project Overview
Project RX-pedite is a comprehensive data analysis of the Prior Authorization (PA) lifecycle within a major national specialty pharmacy. By analyzing 10,000+ records of clinical and operational data, this study identifies significant administrative friction points that delay life-altering therapy for patients in high-complexity specialties like Rheumatology and Gastroenterology.

The "Smoking Gun" Insight
The primary discovery of this audit is the 141% "Fax Tax."

The Problem: Manual Fax submissions are the single greatest driver of administrative latency.

The Delta: While electronic (ePA) submissions move through the system with high efficiency, manual faxes perform 141% slower, adding unnecessary days to the patient wait time.

Current State: The network maintains a 2.8-day average Turnaround Time (TAT). While this meets the 3.0-day corporate benchmark, the variance caused by manual workflows masks a significant opportunity for "Best-in-Class" performance (<24 hours).

Key Features & Methodology
This project follows the Google Data Analytics Professional framework:

ASK: Defined KPIs including Network TAT, ePA Adoption Rates, and Denial Root Causes.

PREPARE: Utilized a synthetic dataset to mimic real-world specialty pharmacy workflows while maintaining 100% HIPAA compliance.

PROCESS: Performed data cleaning in Python, resolving fragmented clinical naming (e.g., "Gastro" vs. "Gastroenterology") and handling missing clinical denial reasons.

ANALYZE: Conducted diagnostic analysis to correlate submission channels with therapy delays.

SHARE: Developed a 2x2 Executive Dashboard for at-a-glance stakeholder decision-making.

ACT: Proposed a three-tier strategic roadmap for digital migration and clinical automation.

The Strategic Roadmap (Action Plan)
Tier 1 (Immediate): Targeted ePA migration pilot for "High-Fax" Rheumatology providers to reclaim 1,200+ manual intake hours annually.

Tier 2 (Optimization): Implementation of front-end "Step Therapy" logic gates to deflect predictable administrative denials.

Tier 3 (Innovation): Launch of a Clinical Gold-Carding Program for high-compliance providers to reduce speed-to-therapy to <24 hours.

Tech Stack & Tools
SQL: Relational database extraction and root-cause diagnostic queries.

Python (Pandas/NumPy): Data manipulation, cleaning, and statistical calculations.

Matplotlib/Seaborn: Executive-level data visualization and heatmap generation.

Google Colab: Cloud-based collaborative environment for reproducible analysis.

Folder Structure
/Project_RX_pedite_Notebook.ipynb: The full technical analysis and code.

/data: Raw and processed synthetic datasets.

/scripts: SQL diagnostic queries used for initial extraction.

/assets: High-resolution exports of the Executive Dashboard.

Contact & Author
Sean Patrick Ryan Data Analyst | Albuquerque, NM LinkedIn: [Your Link Here]

Portfolio: [Your Portfolio Link Here]