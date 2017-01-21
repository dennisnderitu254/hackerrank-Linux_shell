read first_num
read second_num

if [ $first_num -lt $second_num ]; then
  echo "X is less than Y"
elif [ $first_num -gt $second_num ]; then
  echo "X is greater than Y"
else
  echo "X is equal to Y"
fi
