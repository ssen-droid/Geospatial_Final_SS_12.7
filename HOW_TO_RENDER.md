# How to Render Your Website Locally

## Quick Commands

### 1. Render the website:
```powershell
quarto render
```

This creates the `docs/` folder with all HTML files.

### 2. Preview the website:
```powershell
quarto preview
```

This will:
- Start a local web server
- Open your browser automatically
- Show your website at `http://localhost:4200`
- Auto-refresh when you make changes

### 3. Or just open the HTML file:
Double-click `docs/index.html` in File Explorer to open in your browser.

## What Gets Rendered

- `index.qmd` → `docs/index.html` (homepage)
- `Final_Project_Sam_Sen.ipynb` → `docs/Final_Project_Sam_Sen.html` (full analysis)

## Clean & Re-render

If something looks wrong, clean and re-render:
```powershell
quarto clean
quarto render
```

## Before Pushing to GitHub

1. ✅ Test locally with `quarto preview`
2. ✅ Make sure all maps and visualizations work
3. ✅ Check that links work
4. ✅ Then push to GitHub

## Troubleshooting

**Issue: Maps don't show**
- Make sure Plotly is installed: `pip install plotly`
- Check browser console for errors (F12)

**Issue: Code cells don't execute**
- Run the notebook cells first to save outputs
- Or set `execute: true` in `_quarto.yml` (but this requires all dependencies)

**Issue: Styling looks wrong**
- Check that `styles.css` is in the root folder
- Verify `_quarto.yml` references it correctly

