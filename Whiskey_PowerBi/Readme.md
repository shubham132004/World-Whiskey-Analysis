(https://drive.google.com/file/d/15Fp0gixBYY_c9AVECWSTUEeGxJWVbQAD/view?usp=drive_link)

# 🥃 Chapter 3 — The Whiskey Code: When Whiskey Meets Dashboard

Welcome to the third installment in my whiskey data journey. In this chapter, I bring the story to life using **Power BI**, where rich visuals blend seamlessly with deep insights to analyze whiskey across brands, ABV%, price, and type.


---

## 🧠 Problem Statement

- Track pricing trends across top whiskey brands  
- Analyze the relationship between **ABV%** (Alcohol by Volume) and **Price**
- Identify rare or premium whiskeys using unique attributes
- Discover insights from brand, type, volume, ABV%, and price — all in one visual story

We used **Power BI** to build an interactive dashboard that helps **enthusiasts, businesses, and collectors** understand whiskey trends at a glance.

---

## 📈 Visuals Used & Why

| Visual | Purpose |
|--------|---------|
| **Bar Chart – Average Price by Brand** | Shows which brands offer premium pricing. Helps identify luxury vs budget whiskey producers. |
| **Card Visuals (KPI)** | Display key figures like average price and dominant ABV category based on selected country. Fast, snapshot insights. |
| **Slicer (Country)** | Filters the entire dashboard dynamically for country-specific exploration. |
| **Filled Map** | Highlights whiskey distribution and average price by country. Adds geographical context to pricing patterns. |
| **Gauge Chart – Average ABV%** | Simple yet effective display of alcohol concentration for selected countries. |
| **Stacked Bar Chart – ABV% by Type** | Segments whiskey types by alcohol strength: High, Medium, and Low — ideal for visual ABV comparison. |
| **Dynamic Bottle Card** | A custom overlay using card visuals for ABV, ML, and Type that update with slicer selections — adds storytelling depth. |

---

## 🗂️ Dataset Snapshot

| Column         | Description                        |
|----------------|------------------------------------|
| `Brand`        | Whiskey brand name                 |
| `Type`         | Style (Single Malt, Bourbon, etc.) |
| `ABV_Percent`  | Alcohol by Volume %                |
| `Centi_liter` / `Mili_liter` | Bottle size         |
| `Price_Rupees` | Price in Indian Rupees             |
| `Country`      | Country of origin                  |

Includes calculated columns such as:
- `ABV Category (Low / Medium / High)`
- `Price per ML`

---

## 🧩 How to Use

1. Open the `.pbix` file in the Power BI Desktop app
2. Use the **Country slicer** to filter the entire dashboard
3. Hover over visuals for tooltips and deeper stats
4. Watch the dynamic **whiskey bottle overlay** update with each selection

---

## 🎯 Business Use Cases

- 📦 **Inventory Planning**: Identify best-selling sizes and popular ABV ranges  
- 🏷 **Pricing Strategy**: Spot premium opportunities by brand or region  
- 🥃 **Collector Focus**: Highlight rare or high-value whiskeys for connoisseurs  

---

## 🔗 GitHub Repository

> View the complete dashboard and Power BI file here:  
**[🔗 Click to visit the repo](https://github.com/shubham132004/World-Whiskey-Analysis/tree/main/Whiskey_PowerBi)**

---
![PPT]("C:\Users\shubh\OneDrive\Pictures\Screenshots\Screenshot 2025-06-27 121149.png")
> 📌 **You can also refer to the [project presentation (PPT)](https://github.com/shubham132004/World-Whiskey-Analysis/blob/main/The%20whiskey%20code.pdf)** for a detailed breakdown of objectives, visuals, and insights.

---
> 📌 *If you missed the earlier chapters (EDA & SQL), check them out here:*  
> **[Chapter 1](https://github.com/shubham132004/World-Whiskey-Analysis/tree/main/Whiskey_EDA)**
> **[Chapter 2](https://github.com/shubham132004/World-Whiskey-Analysis/tree/main/Whiskey_SQL)**
---

## 👋 Thank You!

This marks the **third chapter** in the Whiskey series. Stay tuned for Chapter 4!  
Let’s keep decoding the whiskey world — one insight at a time.

---
