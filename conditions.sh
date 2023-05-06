
fruit_name=$1
quantity=$2

if [ "$fruit_name" == "mango" ]; then
  echo mango quantity=$quantity
else
  echo fruit doesnot exist
fi

if [ "$quantity" -gt 100]; then
  echo mango price=1$
else
  echo mango price=2$
fi



