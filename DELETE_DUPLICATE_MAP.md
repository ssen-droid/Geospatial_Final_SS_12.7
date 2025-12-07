# How to Delete the Duplicate Interactive Map

## Quick Steps:

1. **Open** `Final_Project_Sam_Sen.ipynb` in Jupyter/VS Code
2. **Find** the cell that contains:
   - `INTERACTIVE MAP: Variable Comparison Tool`
   - `maps = {`
   - `'ChatGPT Search Intensity': {`
3. **Delete** that entire cell
4. **Also fix** the Regression Analysis header:
   - Find the markdown cell with `## 8. Regression Analysis`
   - Change it to `## 7. Regression Analysis`

## How to Identify the Second Map:

The **first** interactive map (KEEP THIS ONE) has:
- Title: `INTERACTIVE MAP: Explore All Variables`
- Uses `go.Figure()` and `go.Choropleth()`
- Has `variables_config = [...]`

The **second** interactive map (DELETE THIS ONE) has:
- Title: `INTERACTIVE MAP: Variable Comparison Tool`
- Uses `px.choropleth()` 
- Has `maps = {` dictionary
- Has `hover_data=['State', 'Avg_AI_Interest', 'median_household_income', ...]`

## After Deleting:

1. Save the notebook
2. Re-render: `quarto render`
3. Preview: `quarto preview`

