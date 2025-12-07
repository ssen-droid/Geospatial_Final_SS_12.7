# State-Level ChatGPT Search Intensity Analysis

This project analyzes correlations between state-level AI search interest (ChatGPT via Google Trends) and socioeconomic factors including income, education, broadband access, and knowledge economy employment.

🌐 **Live Website:** [View on GitHub Pages](https://YOUR_USERNAME.github.io/REPO_NAME/) 

> **Note:** After pushing to GitHub and enabling GitHub Pages, update the URL above with your actual website address.

## Project Structure

```
.
├── Final_Project_Sam_Sen.ipynb  # Main Jupyter notebook with complete analysis
├── index.qmd                     # Homepage for Quarto website
├── _quarto.yml                   # Quarto website configuration
├── styles.css                    # Custom CSS for website
├── requirements.txt              # Python dependencies
├── config.example.py             # Template for Census API key
├── .gitignore                    # Git ignore file
├── .github/workflows/            # GitHub Actions for auto-deployment
├── Data/
│   ├── raw/                      # Raw data files
│   │   ├── chatgpt_googletrends.csv
│   │   └── BLS_Industry_Data.xlsx
│   └── processed/                # Processed/merged datasets
│       └── merged_state_data.csv
├── docs/                         # Rendered website (auto-generated)
│   ├── index.html
│   └── Final_Project_Sam_Sen.html
└── README.md                     # This file
```

## Setup

1. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

2. **Set up Census API Key:**
   - Sign up for free at: https://api.census.gov/data/key_signup.html
   - Copy `config.example.py` to `config.py`
   - Add your API key to `config.py`
   - Note: `config.py` is in `.gitignore` and won't be committed to git

3. **Data Files:**
   - Google Trends data: `Data/raw/chatgpt_googletrends.csv` (included)
   - BLS Industry data: `Data/raw/BLS_Industry_Data.xlsx` (included)
   - Merged dataset: `Data/processed/merged_state_data.csv` (auto-generated)

## Data Sources

1. **Google Trends**: State-level search interest for ChatGPT (past 12 months)
2. **American Community Survey (ACS) 5-Year Estimates (2022)**:
   - **B19013**: Median Household Income
   - **B15003**: Educational Attainment (% with bachelor's degree+)
   - **B28002**: Internet Subscription (% with internet)
3. **BLS Industry Data**: Knowledge economy employment percentages
4. **2020 Presidential Election Results**: Political affiliation (blue/red state classification)

## Analysis

The main analysis is in `Final_Project_Sam_Sen.ipynb`, which includes:

1. **Data Collection & Merging**
   - Google Trends data loading
   - ACS data via Census API
   - BLS industry data
   - Data merging and cleaning

2. **Exploratory Analysis**
   - Correlation analysis
   - Scatterplots
   - Geographic visualizations (choropleth maps)

3. **Regression Analysis**
   - Multiple linear regression (OLS)
   - Ridge and Lasso regression
   - Cross-validation
   - Model diagnostics

## Website

This project includes a website built with Quarto and hosted on GitHub Pages.

### Viewing the Website

🌐 **Live Website:** [View on GitHub Pages](https://YOUR_USERNAME.github.io/REPO_NAME/)

The website includes:
- Project overview and research question
- Key findings and methodology
- Interactive Plotly maps
- Full analysis notebook
- Limitations and next steps

### Rendering Locally

```bash
# Render the website
quarto render

# Preview locally
quarto preview
```

### Publishing to GitHub Pages

1. Push this repository to GitHub
2. Go to: Repository → Settings → Pages
3. Source: Deploy from branch `main`, folder `/docs`
4. Save and wait 2-5 minutes for deployment
5. Your website will be at: `https://YOUR_USERNAME.github.io/REPO_NAME/`
6. Update the URL in this README

## Repository Contents

- **Code**: `Final_Project_Sam_Sen.ipynb` (complete analysis)
- **Data**: `Data/` folder with raw and processed datasets
- **Website**: Quarto website files (`index.qmd`, `_quarto.yml`, `styles.css`)
- **Documentation**: This README and setup guides

## Notes

- Census API requires a free API key (see Setup section)
- All analysis uses state-level data (50 states + DC)
- The website auto-updates when you push to the `main` branch via GitHub Actions

