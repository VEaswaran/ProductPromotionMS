# PowerShell Script to Setup Git and Push to GitHub
# Run this script from PowerShell in the project directory

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Git Repository Setup for ProductPromotionMS" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if git is installed
try {
    $gitVersion = git --version
    Write-Host "✓ Git is installed: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "✗ Git is not installed. Please install Git first." -ForegroundColor Red
    exit 1
}

# Check current directory
$currentDir = Get-Location
Write-Host "Current directory: $currentDir" -ForegroundColor Yellow
Write-Host ""

# Check Git status
Write-Host "Checking Git status..." -ForegroundColor Yellow
git status

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Next Steps:" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "1. First, create a new repository on GitHub:" -ForegroundColor White
Write-Host "   - Go to https://github.com/new" -ForegroundColor Gray
Write-Host "   - Repository name: ProductPromotionMS" -ForegroundColor Gray
Write-Host "   - Description: Product Promotion Microservice" -ForegroundColor Gray
Write-Host "   - Make it Public or Private (your choice)" -ForegroundColor Gray
Write-Host "   - DO NOT initialize with README, .gitignore, or license" -ForegroundColor Gray
Write-Host ""

# Prompt for GitHub username
$username = Read-Host "Enter your GitHub username (or press Enter to skip)"

if ($username) {
    Write-Host ""
    Write-Host "2. Once you've created the repository, I'll help you push the code." -ForegroundColor White
    Write-Host ""

    # Ask for repository name (default to ProductPromotionMS)
    $repoName = Read-Host "Enter repository name (default: ProductPromotionMS)"
    if (-not $repoName) {
        $repoName = "ProductPromotionMS"
    }

    $remoteUrl = "https://github.com/$username/$repoName.git"
    Write-Host ""
    Write-Host "Repository URL will be: $remoteUrl" -ForegroundColor Yellow
    Write-Host ""

    # Check if files are staged
    Write-Host "Staging all files..." -ForegroundColor Yellow
    git add .

    Write-Host ""
    Write-Host "Committing files..." -ForegroundColor Yellow
    git commit -m "Initial commit: Product Promotion Microservice"

    Write-Host ""
    Write-Host "Setting default branch to 'main'..." -ForegroundColor Yellow
    git branch -M main

    Write-Host ""
    Write-Host "Adding remote origin..." -ForegroundColor Yellow
    git remote add origin $remoteUrl

    Write-Host ""
    Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
    Write-Host "You may be prompted for your GitHub credentials." -ForegroundColor Gray
    git push -u origin main

    Write-Host ""
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host "✓ Done! Your repository is now on GitHub" -ForegroundColor Green
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Repository URL: https://github.com/$username/$repoName" -ForegroundColor Green
} else {
    Write-Host ""
    Write-Host "Manual Setup Instructions:" -ForegroundColor White
    Write-Host "=========================" -ForegroundColor White
    Write-Host ""
    Write-Host "After creating your GitHub repository, run these commands:" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "  git add ." -ForegroundColor Gray
    Write-Host "  git commit -m `"Initial commit: Product Promotion Microservice`"" -ForegroundColor Gray
    Write-Host "  git branch -M main" -ForegroundColor Gray
    Write-Host "  git remote add origin https://github.com/YOUR_USERNAME/ProductPromotionMS.git" -ForegroundColor Gray
    Write-Host "  git push -u origin main" -ForegroundColor Gray
    Write-Host ""
}

Write-Host ""
Write-Host "Press any key to exit..." -ForegroundColor Yellow
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

