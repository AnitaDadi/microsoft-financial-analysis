# microsoft-financial-analysis
Financial performance analysis of Microsoft using SEC data, Python, SQL and Power BI.

Overview

This project analyzes Microsoft's financial performance from FY2016 to FY2026 using financial data sourced from the SEC EDGAR Company Facts API. The analysis combines Python for data extraction and preparation, SQL for structured analysis, and Power BI for visualization and business reporting.

Business problem

The objective was to assess how Microsoft's revenue, profitability, cash generation and financial position changed over time, and to identify areas requiring management attention.

Business questions

1. How has Microsoft's revenue changed over time?
2. Which periods experienced the strongest and weakest revenue growth?
3. Is profitability keeping pace with revenue growth?
4. How has operating cash generation changed?
5. Is increasing capital expenditure putting pressure on free cash flow?
6. Is Microsoft's overall financial position strengthening or weakening?

Data source

SEC EDGAR Company Facts API

Tools

Python
Pandas
Requests
MySQL
SQL
Power BI
DAX
GitHub

Methodology

SEC EDGAR
   
     ↓
     
Python
    
     ↓
     
Data Extraction
    
     ↓
     
Cleaning & Validation
    
     ↓
     
CSV
    
     ↓
     
MySQL
    
     ↓
     
SQL Analysis
   
     ↓
     
Power BI
    
     ↓
     
Dashboard & Business Insights

### Financial Performance Overview

![Microsoft Financial Performance Overview](screenshots/Microsoft%20financial%20performance%20overview.png)

### Cash Flow & Investment

![Cash Flow and Investment](screenshots/Cash%20flow%20and%20investment.png)

### Financial Position

![Financial Position](screenshots/Financial%20position.png)


Revenue growth

Microsoft's revenue increased from $91.15B in FY2016 to $331.84B in FY2026. Revenue growth remained strong overall, despite a significant slowdown in FY2023.

Profitability

Operating margin increased from 29.83% in FY2016 to 46.78% in FY2026. Net profit margin also reached its highest point in FY2026 at 40.31%. Gross margin increased from approximately 64.04% in FY2016 to a peak of 69.76% in FY2024 before declining to 67.94% in FY2026.  Microsoft's operating efficiency improved substantially, although FY2018 had an unusual gap between operating and net profitability. This analysis does not contain enough information to establish the precise cause. 

Cash Flow  

Operating cash flow increased strongly over the analysis period. It reached approximately $182.94B in FY2026. The important finding, however, is that increasing operating cash flow did not translate into continuously increasing free cash flow. Microsoft generated substantially more operating cash, but rapidly increasing capital expenditure absorbed a growing share of that cash and reduced free cash flow. 

Project Structure

- `python/` — Python notebook used for SEC data extraction, cleaning and validation

- `sql/` — SQL queries used for financial analysis

- `data/` — cleaned analytical dataset

- `powerbi/` — Power BI dashboard

- `screenshots/` — dashboard previews

- `report/` — detailed project report

The financial data was extracted from the SEC EDGAR Company Facts API using Python. The resulting dataset was cleaned and validated before being exported to CSV and loaded into MySQL for analysis. The validated dataset was then used in Power BI to create the final dashboard.

Limitations

The analysis focuses on selected financial statement metrics.
It does not include detailed segment-level analysis.
The dataset does not explain the causes behind every change in financial performance.
Some financial anomalies require additional investigation using Microsoft's filings and footnotes.
The analysis is descriptive rather than a forecast.

## Detailed Report

The full analysis and methodology are available in the project report:

[View the full report](report/Microsoft_Financial_Performance_Analysis.pdf)
