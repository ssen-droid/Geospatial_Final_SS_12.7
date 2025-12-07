# Quick Start: Render Notebook as Website

## 🚀 Quick Steps

### 1. Test Locally (2 minutes)

```powershell
# Windows PowerShell
.\render_website.ps1

# Or manually:
quarto render
quarto preview
```

### 2. Update GitHub Info

Edit `_quarto.yml` line 15:
```yaml
href: https://github.com/YOUR_USERNAME/YOUR_REPO_NAME
```

### 3. Push to GitHub

```bash
git add .
git commit -m "Add Quarto website"
git push origin main
```

### 4. Enable GitHub Pages

1. Go to: Repository → **Settings** → **Pages**
2. Source: **Deploy from a branch**
3. Branch: **main**, Folder: **/docs**
4. Click **Save**

### 5. Wait & View

- Wait 2-5 minutes for GitHub Actions to build
- Visit: `https://YOUR_USERNAME.github.io/YOUR_REPO_NAME/`

## ✅ That's it!

Your website will auto-update every time you push to `main`.

## 📚 Need Help?

See `QUARTO_SETUP.md` for detailed instructions and troubleshooting.

