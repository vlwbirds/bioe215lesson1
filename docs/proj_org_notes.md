# Project Organization Cheat Sheet

## Things done once

1. Set up GitHub account
2. Run the following code in the console, which will be stable until a new computer is necessary to push code to GitHub

```{r}
usethis::use_git_config(user.name = "YOURNAME", user.email = "YOUREMAIL")
```

3. Generate a GitHub PAT for security
  -In the console run and paste the token when asked for a password
  
```
gitcreds::gitcreds_set()
```
## Every Project Needs...

1. Create an RProject directory following a consistently standardized folder naming scheme
  -docs
  -figs
  -R
  -results
  -output
  -data
  -reports
  -scratch


3. Create a GitHub project repo
```
usethis::use_git()
usethis::git_default_branch_rename()
usethis::use_github()
```

4. Create index.md and concisely describe the purpose of the project
  
  Good resource for markdown formatting
  https://quarto.org/docs/authoring/markdown-basics.html
  
5. Commit and Push files GitHub repo
  