
git add -A

echo "Enter the commit message"

read message

git commit -m $message

git log

read -n1 -p "Do you want to push to the branch?" choice 
case $choice in  
  y|Y) read -n -p "What is orgin?" branch 
       git push origin $branch;; 
  n|N) echo no ;; 
  *) echo dont know ;; 
esac
