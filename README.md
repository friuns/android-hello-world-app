# Android Hello World App

This repository contains a simple "Hello World" GitHub Action workflow demonstration.

## 🚀 Hello World GitHub Action

The repository includes a GitHub Action workflow that demonstrates basic workflow functionality.

### Features

- **Automatic triggers**: Runs on push to `main` and `copilot/**` branches
- **Manual trigger**: Can be triggered manually using GitHub CLI or the GitHub UI
- **Pull request support**: Runs on pull requests to `main`
- **Informative output**: Displays repository information and system details
- **Workflow summary**: Creates a nice summary in the GitHub Actions UI

### Running the Workflow

#### Option 1: Using GitHub CLI (gh)

To manually trigger the workflow using the GitHub CLI:

```bash
# Make sure you're authenticated with GitHub CLI
gh auth login

# Run the workflow on the current branch
gh workflow run hello-world.yml

# Or run it on a specific branch
gh workflow run hello-world.yml --ref main

# View recent workflow runs
gh run list --workflow=hello-world.yml

# View details of the latest run
gh run view --workflow=hello-world.yml

# Watch a workflow run in real-time
gh run watch
```

#### Option 2: Using the GitHub UI

1. Navigate to the **Actions** tab in the repository
2. Select the **Hello World** workflow from the left sidebar
3. Click the **Run workflow** button
4. Select the branch you want to run the workflow on
5. Click **Run workflow**

#### Option 3: Automatic Triggers

The workflow automatically runs when:
- Code is pushed to the `main` branch
- Code is pushed to any branch matching `copilot/**`
- A pull request is opened or updated targeting the `main` branch

## 📋 Workflow Details

The Hello World workflow includes three main steps:

1. **Checkout repository**: Checks out the code from the repository
2. **Print Hello World**: Displays a welcome message with repository details
3. **Show system information**: Displays information about the runner environment
4. **Create Hello World summary**: Creates a formatted summary in the GitHub Actions UI

## 🔗 Useful Links

- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [GitHub CLI Documentation](https://cli.github.com/manual/)
- [Workflow Syntax](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions)

## 📝 License

This is a demonstration repository for educational purposes.
