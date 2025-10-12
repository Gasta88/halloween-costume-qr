# GitHub Pages Deployment Instructions

Due to GitHub App permission restrictions, the GitHub Actions workflow needs to be set up manually. Follow these steps:

## Step 1: Enable GitHub Pages

1. Go to your repository on GitHub: `https://github.com/Gasta88/halloween-costume-qr`
2. Click on **Settings** tab
3. Scroll down to **Pages** section in the left sidebar
4. Under **Source**, select **"GitHub Actions"**
5. Click **Save**

## Step 2: Add the GitHub Actions Workflow

1. In your repository, go to **Actions** tab
2. Click **"New workflow"**
3. Click **"set up a workflow yourself"**
4. Replace the default content with the workflow from `.github/workflows/deploy.yml` in this repository
5. Commit the workflow file

Alternatively, you can:
1. Create the `.github/workflows/` directory in your repository
2. Add the `deploy.yml` file from this project
3. The workflow will automatically run on push to main branch

## Step 3: Verify Deployment

1. Make a small change to `index.html`
2. Commit and push to the `main` branch
3. Go to **Actions** tab to see the deployment in progress
4. Once complete, your site will be available at: `https://gasta88.github.io/halloween-costume-qr`

## Troubleshooting

- **Workflow not running**: Make sure you've selected "GitHub Actions" as the Pages source
- **Permissions error**: The workflow includes the necessary permissions block
- **Build failing**: Check the Actions log for specific error messages

## Manual Deployment Alternative

If you prefer not to use GitHub Actions, you can also:

1. Go to repository Settings → Pages
2. Select **"Deploy from a branch"** as source
3. Choose **main** branch and **/ (root)** folder
4. Your site will be deployed directly from the main branch

The site will be available at: `https://gasta88.github.io/halloween-costume-qr`