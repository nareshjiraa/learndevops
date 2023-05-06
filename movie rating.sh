
input=$1
if [ -z "$input" ]; then
  echo input name is missing
  exit
fi

percent= $(curl -s https://www.themoviedb.org/movie/$input | grep -w user_score_chart | grep data-percent | xargs -n1 | grep data-percent | awk -F = '{print $2}' | awk -F . '{print $1}')
echo percent -$percent
if [ "$percent" -ge 70 ]; then
  echo good
  else
    echo average
fi