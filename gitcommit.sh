#for commiting the changes
#!/bin/bash

username= "gauravjsh0590@gmail.com"
password= "Pesitm@123"

echo "checking the git status"

git status

echo "adding all the modified files"

git add .

echo "commiting all the changes"

echo "enter commit message"

read message

git commit -m "$message"

echo "pushing the changes"

git push origin master

wait

Username for 'https://github.com':$username
Password for 'https://gauravjsh0590@gmail.com@github.com':$password
