#!/bin/bash

input=$1

if [ -z "$input" ]; then
  echo "Input name is missing"
  exit 1
fi

url="https://www.themoviedb.org/movie/$input"
echo "URL: $url"

html=$(curl -s "$url")
echo "HTML: $html"

percent=$(echo "$html" | grep -w user_score_chart | grep data-percent | xargs -n1 | grep data-percent | awk -F= '{print $2}' | awk -F. '{print $1}')
echo "Percent: $percent"

if ! [[ "$percent" =~ ^[0-9]+$ ]]; then
  echo "Error: percent is not a number"
  exit 1
fi

if [ "$percent" -ge 70 ]; then
  echo "Good"
else
  echo "Average"
fi
