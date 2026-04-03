# OLA-Ride-Booking-Analysis
# 🚖 OLA Ride Bookings — SQL + Power BI Analytics Project

## 📌 Overview

This project analyzes OLA ride booking data using **SQL Server** for data extraction and transformation, and **Power BI** for interactive dashboard visualization. It covers end-to-end analytics — from raw booking records to business insights on ride performance, cancellations, ratings, and revenue.

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| SQL Server (T-SQL) | Data querying, view creation, business logic |
| Power BI Desktop | Dashboard design & interactive reporting |
| DAX | Calculated measures in Power BI |

---

## 📁 Project Structure

```
OLA-Analytics/
│
├── SQL_Insights.sql        # All SQL queries and views
├── OLA_Dashboard.pbix      # Power BI dashboard file
└── README.md               # Project documentation
```

---

## 🗄️ SQL Analysis — Key Views & Queries

The SQL file creates reusable **views** covering the following business questions:

| # | View / Query | Business Question |
|---|-------------|-------------------|
| 1 | `Successful_Bookings` | Retrieve all rides with a successful booking status |
| 2 | `avg_ride_distance` | Average ride distance per vehicle type |
| 3 | `Ride_Cancelled` | Total number of customer-initiated cancellations |
| 4 | `highest_number` | Top 5 customers by total rides booked |
| 5 | `total_rides_cancelled_by_driver` | Driver cancellations due to personal/car issues |
| 6 | `rating_ratio` | Max and min driver ratings for Prime Sedan bookings |
| 7 | `upi_payment_method` | All rides paid via UPI |
| 8 | `rating_per_vehicle_type` | Average customer rating per vehicle type |
| 9 | `overall_value` | Total booking revenue from successful rides |
| 10 | `reason_to_cancel_ride` | Incomplete rides with cancellation reasons |

---

## 📊 Power BI Dashboard — Highlights

The `.pbix` dashboard visualizes the SQL-derived insights interactively and includes:

- **Booking Status Breakdown** — Success vs. cancelled vs. incomplete rides
- **Revenue Analysis** — Total booking value by vehicle type and time period
- **Cancellation Trends** — By customer vs. driver, with reason drill-down
- **Driver & Customer Ratings** — Comparative view across vehicle categories
- **Payment Method Distribution** — UPI, cash, card, and other modes
- **Top Customer Analysis** — Most active users by ride count

---

## 💡 Key Insights

- Identified the most common cancellation reasons to help optimize driver allocation
- Highlighted vehicle types with the highest average ride distances and ratings
- Measured UPI adoption rate as a proxy for digital payment preference
- Quantified total revenue from completed rides to assess business health

---

## 🚀 How to Use

1. **SQL**: Run `SQL_Insights.sql` in SQL Server Management Studio (SSMS) against your `Bookings` table
2. **Power BI**: Open `OLA_Dashboard.pbix` in Power BI Desktop and refresh the data source connection

---

## 👤 Author

**Nikhil**
Aspiring Data Analyst | SQL · Python · Power BI

> 📬 Open to Data Analyst opportunities. Feel free to connect on [LinkedIn](#) or explore more projects on [GitHub](#).
