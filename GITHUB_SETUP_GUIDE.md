# Complete GitHub Assignment Setup Guide

## Prerequisites
- GitHub account (create one at github.com if you don't have one)
- Git installed on your computer

## Part 1: GitHub UI Tasks (12 points)

### Task 1: Create Repository (2 pts)
1. Go to https://github.com
2. Click the "+" icon → "New repository"
3. Repository name: `simple-interest-calculator`
4. Description: "Simple interest calculator bash script"
5. Make it **Public**
6. **DO NOT** check "Add a README file" (we already have one)
7. Click "Create repository"
8. **COPY THE REPOSITORY URL** - you'll need this for submission

### Task 2-6: Upload Files
After creating the repository, you'll see a page with setup instructions. Follow these steps:

1. Open terminal/command prompt in the folder with your files
2. Run these commands (replace YOUR_USERNAME and YOUR_REPO with your actual values):

```bash
git init
git add .
git commit -m "Initial commit with all required files"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/simple-interest-calculator.git
git push -u origin main
```

**Verify all files are uploaded:**
- LICENSE ✓
- README.md ✓
- CODE_OF_CONDUCT.md ✓
- CONTRIBUTING.md ✓
- simple-interest.sh ✓

## Part 2: Git CLI Tasks (8 points)

### Task 1: Fork a Repository (2 pts)
*Note: The assignment should specify which repository to fork. If not specified, you can fork any public repository for practice.*

1. Go to the repository you need to fork
2. Click "Fork" button in the top right
3. Select your account as the destination
4. **COPY THE FORKED REPOSITORY URL** - you'll need this for submission

### Task 2: Create and Merge Branches (2 pts)
In your original repository (simple-interest-calculator):

```bash
# Navigate to your repository folder
cd simple-interest-calculator

# Create and switch to bug-fix-typo branch
git checkout -b bug-fix-typo

# Edit README.md to fix a typo (add a typo first, then fix it)
# For example, change "Simple Interest Calculator" to "Simple Interest Calculater" 
# then fix it back to "Simple Interest Calculator"

# Add and commit the fix
git add README.md
git commit -m "Fix typo in README.md"

# Switch back to main branch
git checkout main

# Merge the bug-fix-typo branch
git merge bug-fix-typo

# Push the changes
git push origin main

# Take a SCREENSHOT of this merge command and result
```

### Task 3: Create Pull Request (2 pts)
1. Create another branch:
```bash
git checkout -b feature-enhancement
# Make a small change to any file
git add .
git commit -m "Add feature enhancement"
git push origin feature-enhancement
```

2. Go to your GitHub repository
3. Click "Compare & pull request" button
4. Add title: "Feature Enhancement"
5. Add description: "Adding new feature enhancement"
6. Click "Create pull request"
7. **COPY THE PULL REQUEST URL** - you'll need this for submission
8. Merge the pull request by clicking "Merge pull request"

### Task 4: Create Additional Branch (2 pts)
```bash
# Create bug-fix-revert branch
git checkout main
git checkout -b bug-fix-revert
git push origin bug-fix-revert
```

Now go to your repository's branches page:
1. Go to your GitHub repository
2. Click on "branches" (next to the branch dropdown)
3. **COPY THIS BRANCHES PAGE URL** - you'll need this for submission

## Submission URLs You Need to Collect:

### URL Submissions:
1. **Repository URL**: `https://github.com/YOUR_USERNAME/simple-interest-calculator`
2. **Forked Repository URL**: `https://github.com/YOUR_USERNAME/FORKED_REPO_NAME`
3. **Pull Request URL**: `https://github.com/YOUR_USERNAME/simple-interest-calculator/pull/1`
4. **Branches Page URL**: `https://github.com/YOUR_USERNAME/simple-interest-calculator/branches`

### Text Submissions:
1. "Repository contains all required files: LICENSE, README.md, CODE_OF_CONDUCT.md, CONTRIBUTING.md, simple-interest.sh"
2. "Apache 2.0 License file is present and correctly formatted"
3. "README.md file is present with project description and usage instructions"
4. "CODE_OF_CONDUCT.md file is present with contributor covenant"
5. "CONTRIBUTING.md file is present with contribution guidelines"

### Screenshot Submission:
- Screenshot of the terminal showing the merge command: `git merge bug-fix-typo`
- Make sure it shows you're on the main branch and the merge was successful

## Final Verification Checklist:
- [ ] Repository created and public
- [ ] All 5 files uploaded and visible
- [ ] LICENSE file is Apache 2.0
- [ ] README.md has proper content
- [ ] CODE_OF_CONDUCT.md is complete
- [ ] CONTRIBUTING.md is complete
- [ ] simple-interest.sh is executable
- [ ] Forked repository (if required)
- [ ] Branches created: main, bug-fix-typo, bug-fix-revert
- [ ] Pull request created and merged
- [ ] Screenshot of merge taken
- [ ] All URLs collected for submission