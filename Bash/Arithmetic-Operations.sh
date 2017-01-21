read expression

exp_result=`echo "$expression" | bc -l`

# round the exp_result
printf "%.*f" 3 $exp_result
