read a
read b
read c

# counting
let same=0
if [ $a -eq $b ]; then
  same=$((same+1))
fi
if [ $a -eq $c ]; then
  same=$((same+1))
fi
if [ $b -eq $c ]; then
  same=$((same+1))
fi

# check
if [ $same -eq 3 ]; then
  echo "EQUILATERAL"
elif [ $same -eq 0 ]; then
  echo "SCALENE"
else
  echo "ISOSCELES"
fi
