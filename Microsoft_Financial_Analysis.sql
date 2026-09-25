USE microsoft_financial_analysis;

CREATE TABLE microsoft_financials (
    fiscal_year INT,
    revenue BIGINT,
    revenue_growth DECIMAL(10,6),
    cost_of_revenue BIGINT,
    gross_profit BIGINT,
    gross_margin DECIMAL(10,6),
    rd_expense BIGINT,
    sm_expense BIGINT,
    ga_expense BIGINT,
    reconstructed_opex BIGINT,
    operating_income BIGINT,
    operating_margin DECIMAL(10,6),
    net_income BIGINT,
    net_profit_margin DECIMAL(10,6),
    operating_cash_flow BIGINT,
    capex BIGINT,
    free_cash_flow BIGINT,
    free_cash_flow_margin DECIMAL(10,6),
    cash_and_equivalents BIGINT,
    assets BIGINT,
    liabilities BIGINT,
    equity BIGINT
);
SELECT *
FROM microsoft_financials;
INSERT INTO microsoft_financials (
    fiscal_year,
    revenue,
    revenue_growth,
    cost_of_revenue,
    gross_profit,
    gross_margin,
    rd_expense,
    sm_expense,
    ga_expense,
    reconstructed_opex,
    operating_income,
    operating_margin,
    net_income,
    net_profit_margin,
    operating_cash_flow,
    capex,
    free_cash_flow,
    free_cash_flow_margin,
    cash_and_equivalents,
    assets,
    liabilities,
    equity
)
VALUES (
    2016,
    91154000000,
    NULL,
    32780000000,
    58374000000,
    64.038879,
    11988000000,
    14635000000,
    4563000000,
    31186000000,
    27188000000,
    29.826448,
    20539000000,
    22.532198,
    33325000000,
    8343000000,
    24982000000,
    27.406367,
    6510000000,
    193468000000,
    121471000000,
    71997000000
);
SELECT COUNT(*) AS total_records
FROM microsoft_financials;
SELECT revenue
FROM microsoft_financials
WHERE fiscal_year BETWEEN 2016 AND 2026;
SELECT fiscal_year, revenue
FROM microsoft_financials
WHERE fiscal_year = 2016;
SELECT fiscal_year, revenue
FROM microsoft_financials
WHERE fiscal_year BETWEEN 2016 AND 2026;
SELECT fiscal_year, revenue
FROM microsoft_financials
WHERE fiscal_year BETWEEN 2016 AND 2026
ORDER BY fiscal_year ASC;
SELECT fiscal_year, revenue, revenue_growth
FROM microsoft_financials
WHERE fiscal_year BETWEEN 2016 AND 2026
AND revenue_growth > 15
SELECT fiscal_year, revenue, revenue_growth
FROM microsoft_financials
WHERE fiscal_year BETWEEN 2016 AND 2026
ORDER BY revenue_growth DESC
LIMIT 1;
SELECT fiscal_year, revenue, revenue_growth
FROM microsoft_financials
WHERE fiscal_year BETWEEN 2016 AND 2026
ORDER BY revenue_growth ASC
LIMIT 1;
SELECT fiscal_year, revenue, revenue_growth
FROM microsoft_financials
WHERE fiscal_year BETWEEN 2016 AND 2026
AND revenue_growth IS NOT NULL
ORDER BY revenue_growth ASC
LIMIT 1;
SELECT fiscal_year, revenue, gross_profit, gross_margin
FROM microsoft_financials
ORDER BY gross_margin DESC
LIMIT 1;
SELECT fiscal_year, revenue, gross_profit, gross_margin
FROM microsoft_financials
ORDER BY gross_margin ASC
LIMIT 1;
SELECT fiscal_year, revenue, operating_income, operating_margin
FROM microsoft_financials
ORDER BY operating_margin DESC
LIMIT 1;
SELECT fiscal_year, revenue, net_income, net_profit_margin
FROM microsoft_financials
ORDER BY net_profit_margin DESC
LIMIT 1;
SELECT fiscal_year, operating_cash_flow
FROM microsoft_financials
ORDER BY operating_cash_flow DESC
LIMIT 1;
SELECT fiscal_year, operating_cash_flow, capex, free_cash_flow
FROM microsoft_financials
ORDER BY capex DESC
LIMIT 1;
SELECT fiscal_year, operating_cash_flow, capex, free_cash_flow
FROM microsoft_financials
ORDER BY free_cash_flow DESC
LIMIT 1;
USE microsoft_financial_analysis;
USE microsoft_financial_analysis;
SELECT fiscal_year, cash_and_equivalents, assets, liabilities, equity
FROM microsoft_financials;
SELECT fiscal_year, assets, liabilities, equity  
FROM microsoft_financials
ORDER BY assets DESC 
LIMIT 1;
SELECT fiscal_year, cash_and_equivalents
FROM microsoft_financials
ORDER BY cash_and_equivalents DESC
LIMIT 1;
SELECT fiscal_year, assets, liabilities
FROM microsoft_financials
ORDER BY fiscal_year ASC;
SELECT fiscal_year, equity 
FROM microsoft_financials
ORDER BY fiscal_year ASC;
SELECT fiscal_year, liabilities, assets,
       (liabilities / assets) * 100 AS liability_ratio
FROM microsoft_financials;
SELECT fiscal_year, equity, assets, 
       (equity / assets) * 100 AS equity_ratio 
FROM microsoft_financials;
SELECT
    fiscal_year,
    revenue,
    revenue_growth,
    gross_margin,
    operating_margin,
    net_profit_margin
FROM microsoft_financials
ORDER BY fiscal_year;
SELECT
    fiscal_year,
    revenue,
    revenue_growth,
    net_profit_margin
FROM microsoft_financials
WHERE revenue_growth IS NOT NULL
ORDER BY net_profit_margin ASC
LIMIT 1;
SELECT
    fiscal_year,
    operating_margin,
    net_profit_margin,
    operating_margin - net_profit_margin AS margin_difference
FROM microsoft_financials
WHERE revenue_growth IS NOT NULL
ORDER BY margin_difference DESC
LIMIT 1;
SELECT
    fiscal_year,
    operating_cash_flow,
    free_cash_flow,
    capex
FROM microsoft_financials
ORDER BY free_cash_flow DESC
LIMIT 1;
SELECT
    fiscal_year,
    operating_cash_flow,
    free_cash_flow,
    capex
FROM microsoft_financials
WHERE fiscal_year BETWEEN 2024 AND 2026
ORDER BY fiscal_year ASC;
SELECT
    fiscal_year,
    operating_cash_flow,
    capex,
    (capex / operating_cash_flow) * 100 AS capex_to_ocf_pct
FROM microsoft_financials
WHERE fiscal_year BETWEEN 2024 AND 2026
ORDER BY fiscal_year ASC;
SELECT
    fiscal_year,
    assets,
    liabilities,
    equity,
    (equity / assets) * 100 AS equity_ratio
FROM microsoft_financials
ORDER BY fiscal_year ASC;
SELECT
    fiscal_year,
    assets,
    liabilities,
    equity,
    (equity / assets) * 100 AS equity_ratio
FROM microsoft_financials
WHERE fiscal_year BETWEEN 2024 AND 2026
ORDER BY fiscal_year ASC;