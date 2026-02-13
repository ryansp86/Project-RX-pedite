/* PROJECT RX-PEDITE: SQL DIAGNOSTIC SUITE
Author: Sean Patrick Ryan
Description: Master script for data extraction and bottleneck identification.
*/

-- 1. MASTER DATA EXTRACTION
-- Joins claims with provider data to create the primary analytical view.
SELECT 
    c.claim_id,
    c.start_date,
    c.last_action_date,
    c.submission_channel,
    c.status,
    c.denial_reason,
    p.provider_specialty,
    CASE 
        WHEN c.drug_tier IN ('Tier 4', 'Tier 5') THEN 'Yes' 
        ELSE 'No' 
    END AS is_specialty
FROM pharmacy_operations.claims_data c
LEFT JOIN pharmacy_operations.provider_directory p 
    ON c.npi_id = p.npi_id
WHERE c.start_date >= '2025-01-01';

-- 2. QUANTIFYING THE "FAX TAX"
-- Calculates average Turnaround Time (TAT) to identify submission friction.
SELECT 
    submission_channel,
    COUNT(claim_id) AS total_claims,
    ROUND(AVG(DATEDIFF(day, start_date, last_action_date)), 2) AS avg_tat_days
FROM pharmacy_operations.claims_data
GROUP BY submission_channel
ORDER BY avg_tat_days DESC;

-- 3. DATA QUALITY AUDIT
-- Identifies fragmented naming conventions (e.g., 'Gastro' vs 'Gastroenterology').
SELECT 
    provider_specialty, 
    COUNT(*) AS record_count
FROM pharmacy_operations.provider_directory
WHERE provider_specialty LIKE 'Gastro%' 
   OR provider_specialty LIKE 'Rheum%'
GROUP BY provider_specialty;