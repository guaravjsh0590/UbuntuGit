#for commiting the changes
#!/bin/bash


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


