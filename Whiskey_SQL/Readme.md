# 🥃 The Whiskey Code: Behind The Spirit  
### *Uncorking insights from data — one dram at a time.*

---

## 📌 Overview

This project is a continuation of my earlier work — [Chapter 1: The Whiskey Code — Decoding Rarity with Data](https://github.com/shubham132004/Whiskey_EDA) — where I performed exploratory data analysis on rare and collectible whiskeys scraped from [HardToFindWhiskey.com](https://www.htfw.com).  

Now, in **Chapter 2**, we explore the same cleaned dataset using **SQL-based analysis** to derive deeper insights into the whiskey market and consumer trends.

---

## ❓ Problem Statement

Due to a lack of structured data in the collectible whiskey market, both enthusiasts and investors face uncertainty in decision-making. This chapter uncovers price trends, alcohol strength patterns, and brand positioning across regions using SQL analytics.

---

## 🎯 Objectives

- Transform the cleaned whiskey data into a structured SQL database.
- Use **advanced SQL queries** to uncover business insights.
- Validate the same SQL logic using `mysql.connector` in Python.

---

## 🧾 Files Included

| File Name                        | Description                                               |
|----------------------------------|-----------------------------------------------------------|
| `Whiskey_cleaned_data_final.csv` | Final EDA-cleaned dataset ready for SQL loading          |
| `world_whiskey_analysis.sql`     | SQL scripts used for analysis and insight generation     |
| `Whiskey_Analysis_SQL.ipynb`     | Python version of SQL queries using `mysql.connector`    |
| `Whiskey_EDA.pdf`                | Business presentation with insights & visuals (PDF)      |

---

## 🛠️ Tools & Stack

- **MySQL** for structured querying and analytics
- **Python** + `mysql.connector` for SQL query execution and results parsing
- **Pandas**, **Matplotlib** (Chapter 1) for visualization
- **Jupyter Notebook** for Python execution of SQL logic

---

## 🧪 Key SQL Operations Performed

1. **Rank Whiskies Within Each Country by Price**  
   Identified the most premium bottles per country using `DENSE_RANK`.

2. **Filter High-ABV Whiskies**  
   Selected all whiskies with **ABV% > 50**, showcasing stronger varieties.

3. **Running Total by Brand**  
   Tracked cumulative pricing across brands.

4. **Count of Whiskies per Brand**  
   Revealed which brands offer the widest variety.

5. **Average ABV per Type**  
   Used `AVG()` to understand alcohol trends across whiskey categories.

6. **Price Differences Between Variants**  
   Used `LAG()` to compare pricing within brand line-ups.

7. **Top ABV Whiskey by Type & Country**  
   With a `DENSE_RANK` CTE, surfaced dominant entries per region & style.

---

## 📈 Business Insights

- **Premium Brands Dominate High-End Market:**  
  Brands like **Yamazaki**, **Macallan**, and **Glenfiddich** frequently appear in the top-priced list.

- **Country Patterns:**  
  - **Scotland** and **Japan** dominate the premium segment.  
  - **India** and **USA** are more value-driven, suiting emerging markets.

- **ABV Matters:**  
  Higher alcohol content often correlates with price — especially in Japanese and Scotch varieties.

- **Volume & Type Affect Value:**  
  Whiskey volume (ml) and type play crucial roles in brand positioning.

---
![image](https://github.com/user-attachments/assets/df61668f-6b48-4224-8d45-2eea5451dbb4)


## 📊 Preview the Presentation

🖥️ [Click to View the PDF](./Whiskey_SQL.pdf) — *“The Whiskey Code: Behind The Spirit”*  
This business-facing presentation summarizes all SQL and analytical findings with visuals.

---

## 👨‍💻 About Me

I am **Shubham Parmar**, a data enthusiast and BCA graduate from Parul University. My passion lies in storytelling with data, especially within real-world industries like collectibles and beverages.

🔗 [LinkedIn](https://www.linkedin.com/in/shubham-parmar-12164024a/)  
💻 [GitHub](https://github.com/shubham132004)

---

## 📚 Previous Chapter

You can visit **Chapter 1 – Whiskey EDA** here:  
👉 [GitHub Repository: Whiskey EDA](https://github.com/shubham132004/World-Whiskey-Analysis/Whiskey_EDA)

It includes:
- Web scraping scripts
- Raw vs cleaned data comparison
- Visual EDA with `matplotlib` and `seaborn`
- Feature engineering: ABV category, NAS labeling, pricing logic

---

## 🚀 What's Next?

📦 In the next chapter, we aim to:
- Integrate **SQL querying with dashboards** (Power BI / Tableau)
- Perform **sentiment analysis** on whiskey reviews & blogs
- Combine **social signals + structured data** for pricing predictions

---

## 🙏 Thank You

If you're a data scientist, analyst, or whiskey lover — this one’s for you.  
Feel free to fork the repo, leave feedback, or suggest what I explore next!  
