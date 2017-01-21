sum=0

read N

for (( i=1; i<=$N; ++i ))
do
  read temp
  (( sum += temp ))
done

result=`echo "$sum/$N" | bc -l`

printf "%.*f" 3 $result
