
# 🥃 Chapter 1 — The Whiskey Code  
### *Decoding Rarity with Data*

---

## ❓ Problem Statement

The collectible whiskey market lacks structured and accessible data. This leads to uncertain decision-making among investors, retailers, and collectors. Our goal is to use data analysis to uncover patterns in pricing, alcohol content, and brand trends — enabling smarter investment and business decisions.

---

## 🎯 Objective

Perform Exploratory Data Analysis (EDA) on scrapped whiskey product data to:
- Identify pricing patterns
- Analyze brand dominance and rarity
- Understand the role of ABV (Alcohol By Volume)
- Offer insights for better decision-making

---

## 🕸️ Step 1: Web Scraping

- **Website Source:** [Hard To Find Whiskey](https://www.htfw.com/)
- **Tools Used:** `requests`, `BeautifulSoup`, `pandas`

### 🔧 Process
- Identified relevant HTML tags for data extraction
- Scraped attributes like Brand, Type, ABV%, Volume, Year, and Price
- Parsed and stored 527 records in `WhiskeyScrappedData.csv`

```python
import requests
from bs4 import BeautifulSoup

url = 'https://www.htfw.com/world-whisky/japanese-whisky?p=2'
page = requests.get(url)
soup = BeautifulSoup(page.text)
```

---

## 🧼 Step 2: Data Cleaning

- Removed null values and standardized volume fields
- Created `Mili_liter` and `ABV_Category` fields
- Converted prices to INR (`Price_Rupees`)
- Labeled missing years as `NAS` (No Age Statement)

📁 `EDA_Whiskey.ipynb`  
📄 `Whiskey_Cleaned_Data2.csv` (442 clean records)

```python
df['Year'].fillna('NAS', inplace=True)
df['Mili_liter'] = df['Centi_liter'] * 10
```

---

## 📊 Step 3: Exploratory Data Analysis

### 🔢 Numerical Features:
- **Price_Rupees:** Whiskey pricing in INR
- **ABV_Percent:** Alcohol content
- **Volume:** Both centiliter and milliliter formats

### 🔤 Categorical Features:
- **Brand:** e.g., Jack Daniel's, Amrut, Hibiki
- **Varieties & Type:** e.g., Single Pot Still Irish, Very Rare
- **Year:** Age or NAS
- **ABV_Category:** Low (<40%), Medium (40–47%), High (>47%)

### Key Observations:
- **Jack Daniel's** is the most listed brand (10.9%)
- **Single Pot Still Irish Whiskey** leads in variety share (20%)
- **Irish Whiskey** is the dominant type (33.2%)
- **NAS** whiskies form 98.2% of the dataset — modern distillers often skip age labeling

---

## 📈 Step 4: Visualization

📁 `Visualization_Whiskey.ipynb`

### Notable Insights:

#### 🧪 ABV vs Price:
- **Midelton Very Rare Silent Distillery Chapter 5**: ₹54,52,794
- **Stagg Jr**: Highest ABV%

#### 🧪 Type Analysis:
- **Very Rare**: Highest avg. price
- **Suntory**: Highest ABV

#### 🇮🇳 Indian Whiskey Focus:
- **Amrut**: Highest price
- **Rampur**: Highest ABV%
- **Rampur Signature Reserve**: ₹5,00,000 — Only 400 bottles exist globally

```python
sns.boxplot(x='ABV_Category', y='Price_Rupees', data=df)
plt.title("Price Distribution by ABV Strength")
```

---

## 🧠 NAS — No Age Statement

> NAS whiskies omit age on labels, focusing instead on blend quality.

**Why use NAS?**
- Flexibility in blending young and old barrels
- Meet high demand with limited aged stock
- Emphasize flavor over age numbers

---

## 🔥 Conclusion

> This messy whiskey dataset reveals important trends in brand strength, pricing, and ABV influence.  

### 📌 Key Takeaways:
- **High ABV doesn't always mean higher price**
- **Rarity often lies in branding and storytelling**
- **Structured analysis leads to smarter investment choices**

---

## 🚀 Future Enhancements

- Expand sources (auction houses, retailers)
- Use Selenium for dynamic scraping
- More insights can be drawn using SQL
- Sentiment analysis from blogs & reviews
- Build a dashboard (Power BI/Tableau)
- Study consumer psychology in whiskey buying

---


## 👨‍💻 About Me

I am Shubham Parmar, a recent graduate with a Bachelor's in Computer Applications (BCA) from Parul University, Vadodara. With a strong foundation in Python and data manipulation, I have developed a deep interest in data science. This project is a demonstration of my passion and skills in extracting insights from raw data.

- 🔗 [LinkedIn](https://www.linkedin.com/in/shubham-parmar-12164024a/)
- 💻 [GitHub](https://github.com/shubham132004)
  
---

## 🙏 Thank You!
