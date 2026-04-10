# Fleet-Management-Dashboard

## 📋 Project Overview
This project focuses on building an end-to-end **Fleet Management Dashboard** using Power BI to deliver actionable insights for fleet operations and maintenance teams. The report helps monitor workshop efficiency, reduce vehicle downtime, and support data-driven decision-making across a multi-source data environment.

<img width="1526" height="852" alt="image" src="https://github.com/user-attachments/assets/5a137c09-e717-4585-83a7-709c8aea6bd9" />


---

## 🗄️ Data Modeling
- Designed a **multi-fact star schema** with multiple fact and dimension tables
- Connected `Fleet_Maintenance_Info(Excel)`, `Fleet_SharePoint_Trips_2022` and `FLMaintenance_info` as fact tables
- Shared dimensions like `Vehicle_Info`, `Date_Table`, and `Workshop_info` across all facts
- Applied data transformation and cleaning using Power Query

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/417ef30b-ecc4-4204-b942-c6da5232c948" />


---


## 🎥 Demo Video

<a href="https://drive.google.com/file/d/11GpVjfZysm_ZPhs31gWY9yB1elzZkulZ/view?usp=sharing" target="_blank">
  <img width="1920" height="1080" alt="Watch Demo Video" src="https://drive.google.com/thumbnail?id=1aVZDX6h8A3V_wFyH8DOUQn3KLadSMx-G&sz=w1920"/>
</a>


---

## 🎯 Business Impact

| KPI | Result |
|---|---|
| 🔧 Maintenance Cost | **↓ 8.39%** |
| ⏱️ Vehicle Downtime | **↓ 21.16%** |
| 🏭 Workshop Efficiency | **↑ 29.46%** |

- Identified that **3 high-failure vehicles (V1032, V1027, V1058)** accounted for 144 downtime hours/month — enabling targeted root-cause intervention
- Preventive maintenance scheduling for heavy trucks reduced repeat failures by **21.16%**
- Technician performance tracking exposed productivity gaps and guided pairing decisions that lifted team output

---

## 🚀 Key Features
- Developed **4 interconnected Power BI report pages** with dynamic filtering and drill-through capabilities
- Created advanced **DAX measures and calculated columns** for KPI tracking — downtime rate, workshop efficiency %, cost variance, and TAT averages
- Integrated **narrative insight cards** that auto-surface the top cause behind each KPI movement
- Built **ETL pipelines** ingesting and transforming data from SQL Server, Excel, and SharePoint into a centralized reporting layer
- Authored **advanced T-SQL queries and stored procedures** with indexing strategies to optimize extraction performance
- Implemented **data profiling and validation** routines with preventive quality rules in SQL Server
- Enabled self-service analytics for fleet managers and workshop supervisors

---

## 📊 Dashboard Pages

### 🏠 Home — Fleet Operational Dashboard
Snapshot view of critical KPIs with narrative insight cards explaining *why* each metric moved. Includes a **Downtime Trend by Month** line chart for year-over-year pattern recognition.

### 📦 Fleet Summary
Overall fleet health, vehicle availability rates, and maintenance cost breakdown segmented by vehicle class and time period.

### 🚙 Vehicle Performance
Downtime analysis split by planned vs. unplanned breakdowns — drillable by vehicle ID and failure category to surface chronic offenders quickly.

### 👷 Technician Performance
Workshop efficiency metrics, turnaround time (TAT), first-time fix rates, and technician utilization — enabling data-driven coaching and resource allocation.

---

## 🛠️ Tech Stack

| Layer | Tools |
|---|---|
| **Visualization** | Power BI Desktop |
| **Database** | SQL Server |
| **Query Language** | T-SQL, DAX |
| **Data Sources** | SQL Server, Microsoft Excel, SharePoint |
| **ETL** | Stored Procedures, SQL Pipelines |

---

## 🗄️ Technical Highlights

### SQL Server & T-SQL
- Authored **advanced T-SQL queries and stored procedures** for extraction and transformation across large vehicle and maintenance tables
- Designed **indexing strategies** to optimize query performance on large datasets
- Implemented **data profiling and validation** routines with preventive quality rules to catch anomalies at ingestion

### ETL Workflows
- Built **end-to-end ETL pipelines** ingesting data from SQL Server, Excel, and SharePoint into a unified reporting layer
- Handled schema mismatches, null handling, deduplication, and date normalization across sources
- Provided **bug triage support** for the DWBI team, resolving critical pipeline and report failures

### Power BI Report Design
- Developed **4 interconnected report pages** with consistent navigation UX and cross-filter behavior
- Integrated narrative insight cards that auto-surface the *top cause* behind each KPI movement — reducing analyst investigation time
- Designed for **operational users** — fleet managers and technicians — with drill-throughs over visual complexity

---

## 🗂️ Repository Structure

```
fleet-management-dashboard/
│
├── sql/
│   ├── stored_procedures/      # ETL and reporting SPs
│   ├── queries/                # Ad-hoc and scheduled queries
│   └── indexing/               # Index optimization scripts
│
├── etl/
│   ├── pipeline_config/        # Source-to-target mappings
│   └── validation_rules/       # Data quality checks
│
├── powerbi/
│   └── FleetManagement.pbix    # Main Power BI report file
│
├── docs/
│   └── architecture_diagram.png
│
└── README.md
```

---

## 📬 Contact

**Nagesh Bachanagoni** — Data Engineer / BI Developer
📧 nageshbachanagoni@gmail.com
🔗 [LinkedIn](www.linkedin.com/in/nagesh-bachanagoni-b84346153) · [Portfolio](www.linkedin.com/in/nagesh-bachanagoni-b84346153)

---

*Built with Power BI · SQL Server · T-SQL · Excel · SharePoint*
