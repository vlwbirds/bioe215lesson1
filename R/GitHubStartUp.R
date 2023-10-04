library(usethis)
usethis::use_git_config(user.name = "vlwbirds", user.email = "vlwbirds@gmail.com")

usethis::create_github_token()

gitcreds::gitcreds_set()
usethis::use_git()
usethis::git_default_branch_rename()
usethis::use_github()
