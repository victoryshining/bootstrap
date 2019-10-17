## how to submit code to remote Repo
firstly you need to create a repo on your github, lets say example the url is https://github.com/victoryshining/example.git
```
cd {your local dir}
git init
git add {file} 
git commit -m "my comments"
git remote add origin https://github.com/victoryshining/example.git
git push -u origin master
```
if any problem, for example, the remote repo has a file that local repo don't have, we could rebase the repo by below commands
'git pull --rebase origin master'
