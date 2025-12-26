#!/bin/bash
# Script to run the Hello World GitHub Action workflow using GitHub CLI

set -e

echo "🚀 Running Hello World GitHub Action workflow..."
echo ""

# Check if gh is installed
if ! command -v gh &> /dev/null; then
    echo "❌ Error: GitHub CLI (gh) is not installed."
    echo "Please install it from: https://cli.github.com/"
    exit 1
fi

# Check if authenticated
if ! gh auth status &> /dev/null; then
    echo "❌ Error: Not authenticated with GitHub CLI."
    echo "Please run: gh auth login"
    exit 1
fi

# Get current branch
BRANCH=$(git rev-parse --abbrev-ref HEAD)
echo "📍 Current branch: $BRANCH"
echo ""

# Run the workflow
echo "▶️  Triggering workflow on branch: $BRANCH"
gh workflow run hello-world.yml --ref "$BRANCH"

echo ""
echo "✅ Workflow triggered successfully!"
echo ""
echo "To view the workflow run:"
echo "  gh run list --workflow=hello-world.yml"
echo "  gh run watch"
echo ""
echo "Or view it in your browser:"
echo "  gh workflow view hello-world.yml --web"
