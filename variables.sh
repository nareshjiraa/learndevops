a=10
name=devops

echo name=${name}
echo a=${a}
DATE=$(date +%F)
echo Today date = ${DATE}
arth=$((2+4-8/10))
echo arth=${arth}
script_path=$(dirname 0$)
echo ${script_path}