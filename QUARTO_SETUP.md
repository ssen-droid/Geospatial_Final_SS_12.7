# Quarto Website Setup Guide

This guide will help you render your Jupyter notebook as a website using Quarto and publish it on GitHub Pages.

## Prerequisites

1. **Quarto installed** - Download from [quarto.org](https://quarto.org/docs/get-started/)
2. **GitHub account** and repository set up
3. **Python environment** with all dependencies installed

## Step 1: Install Quarto (if not already installed)

### Windows:
```powershell
# Download and run the installer from:
# https://github.com/quarto-dev/quarto-cli/releases/latest
# Or use winget:
winget install quarto.quarto
```

### Verify installation:
```bash
quarto --version
```

## Step 2: Render Locally (Test First)

Before publishing, test the website locally:

```bash
# Render the website
quarto render

# Preview the website locally
quarto preview
```

This will:
- Convert your `Final_Project_Sam_Sen.ipynb` to HTML
- Create an `index.html` homepage
- Generate all outputs in the `docs/` folder
- Start a local server at `http://localhost:4200`

## Step 3: Configure GitHub Repository

1. **Update `_quarto.yml`** with your GitHub username and repo name:
   ```yaml
   website:
     navbar:
       right:
         - icon: github
           href: https://github.com/YOUR_USERNAME/YOUR_REPO_NAME
   ```

2. **Ensure `.gitignore` includes**:
   ```
   docs/
   .quarto/
   __pycache__/
   *.pyc
   .ipynb_checkpoints/
   config.py
   ```

## Step 4: Enable GitHub Pages

1. Go to your GitHub repository
2. Click **Settings** → **Pages**
3. Under **Source**, select:
   - **Deploy from a branch**
   - **Branch**: `main` (or `master`)
   - **Folder**: `/docs`
4. Click **Save**

## Step 5: Push to GitHub

The GitHub Actions workflow (`.github/workflows/quarto-publish.yml`) will automatically:
- Render your notebook when you push to `main`
- Deploy the website to GitHub Pages

```bash
# Add all files
git add .

# Commit
git commit -m "Add Quarto website setup"

# Push to GitHub
git push origin main
```

## Step 6: View Your Website

After the GitHub Actions workflow completes (usually 2-5 minutes):
- Go to: `https://YOUR_USERNAME.github.io/YOUR_REPO_NAME/`
- Or find the link in: Repository → Settings → Pages

## Troubleshooting

### Issue: Notebook doesn't render
- **Solution**: Make sure all cells have been executed and outputs are saved
- Run: `quarto render Final_Project_Sam_Sen.ipynb` to test individual file

### Issue: Maps don't show
- **Solution**: Plotly maps require JavaScript - ensure `embed-resources: true` in `_quarto.yml`
- Check browser console for errors

### Issue: GitHub Actions fails
- **Solution**: Check the Actions tab in your repository for error messages
- Common issues:
  - Missing dependencies in `requirements.txt`
  - API keys needed (should be in environment variables, not in code)
  - Large files that need Git LFS

### Issue: Local preview doesn't work
- **Solution**: 
  ```bash
  # Clear cache and re-render
  quarto clean
  quarto render
  quarto preview
  ```

## Customization

### Change Theme
Edit `_quarto.yml`:
```yaml
format:
  html:
    theme: cosmo  # Options: default, cosmo, flatly, journal, etc.
```

### Add More Pages
Create additional `.qmd` files and they'll be automatically included in the navbar.

### Custom CSS
Edit `styles.css` to customize colors, fonts, spacing, etc.

## Next Steps

1. ✅ Render locally and test
2. ✅ Push to GitHub
3. ✅ Enable GitHub Pages
4. ✅ Share your website!

For more information, see: [Quarto Documentation](https://quarto.org/docs/websites/)

