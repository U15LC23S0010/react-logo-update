npx create-react-app my-app

cd my-app

git init
git add .
git commit -m "Initial React app"

gh auth login

gh repo create react-logo-update --public --source=. --remote=origin --push

git checkout -b update_logo

git add .
git commit -m "Update logo and link"

git push origin update_logo

gh pr create --base master --head update_logo --title "Update logo" --body "Replace React logo and link"

gh pr merge --merge

# REPO_URL https://github.com/U15LC23S0010/react-logo-update