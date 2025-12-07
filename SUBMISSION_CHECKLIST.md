# Submission Checklist

## Before Submitting to Canvas

### ✅ Deliverable 1: GitHub Pages Website

- [ ] Website renders correctly locally (`quarto render` and `quarto preview`)
- [ ] All interactive maps display properly
- [ ] All visualizations are visible
- [ ] Text content is complete (homepage has all sections)
- [ ] Website is pushed to GitHub
- [ ] GitHub Pages is enabled (Settings → Pages → Deploy from `/docs`)
- [ ] Website URL is working: `https://YOUR_USERNAME.github.io/REPO_NAME/`
- [ ] Test website on different browsers/devices

### ✅ Deliverable 2: GitHub Repository

- [ ] All code files are in the repository:
  - [ ] `Final_Project_Sam_Sen.ipynb` (main notebook)
  - [ ] `index.qmd` (homepage)
  - [ ] `_quarto.yml` (website config)
  - [ ] `styles.css` (custom styling)
  - [ ] `requirements.txt` (dependencies)
  - [ ] `.github/workflows/quarto-publish.yml` (auto-deployment)

- [ ] All data files are included:
  - [ ] `Data/raw/chatgpt_googletrends.csv`
  - [ ] `Data/raw/BLS_Industry_Data.xlsx`
  - [ ] `Data/processed/merged_state_data.csv` (optional, can be regenerated)

- [ ] Documentation files:
  - [ ] `README.md` with website URL
  - [ ] `config.example.py` (template for API key)

- [ ] Sensitive files are excluded (checked `.gitignore`):
  - [ ] `config.py` (contains API key - should NOT be in repo)
  - [ ] `__pycache__/` folders
  - [ ] `.quarto/` cache

- [ ] README.md is updated:
  - [ ] Website URL is included (or placeholder with instructions)
  - [ ] Project description is accurate
  - [ ] Setup instructions are clear
  - [ ] Data sources are listed

### ✅ Final Checks

- [ ] Repository is public (or accessible to instructors)
- [ ] All files are committed and pushed
- [ ] GitHub Actions workflow completed successfully (check Actions tab)
- [ ] Website is accessible at the GitHub Pages URL
- [ ] README.md contains the website URL
- [ ] Test that someone else can clone and run the notebook

## Submission

1. Copy your GitHub repository URL
2. Submit the repository URL to Canvas
3. Include a note with the website URL if it's different from the repo URL

## Quick Commands

```bash
# Check what will be committed
git status

# Add all files
git add .

# Commit
git commit -m "Final project submission"

# Push to GitHub
git push origin main

# Verify website is live
# Visit: https://YOUR_USERNAME.github.io/REPO_NAME/
```

