# PowerShell script to render Quarto website locally
# Run this script to test your website before pushing to GitHub

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Rendering Quarto Website" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if Quarto is installed
try {
    $quartoVersion = quarto --version
    Write-Host "✓ Quarto found: $quartoVersion" -ForegroundColor Green
} catch {
    Write-Host "✗ Quarto not found. Please install Quarto first:" -ForegroundColor Red
    Write-Host "  https://quarto.org/docs/get-started/" -ForegroundColor Yellow
    exit 1
}

# Clean previous renders
Write-Host ""
Write-Host "Cleaning previous renders..." -ForegroundColor Yellow
quarto clean

# Render the website
Write-Host ""
Write-Host "Rendering website..." -ForegroundColor Yellow
quarto render

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "✓ Website rendered successfully!" -ForegroundColor Green
    Write-Host ""
    Write-Host "To preview the website, run:" -ForegroundColor Cyan
    Write-Host "  quarto preview" -ForegroundColor White
    Write-Host ""
    Write-Host "Or open docs/index.html in your browser" -ForegroundColor Cyan
} else {
    Write-Host ""
    Write-Host "✗ Rendering failed. Check the error messages above." -ForegroundColor Red
    exit 1
}

