declare -a A
read
arr=`cat`

for (( i=1; i<=100; ++i))
do
    ((A[i]=0))
done

for i in $arr
do
    ((++A[$i]))
done

for (( i=1; i<=100; ++i))
do
    if [ ${A[$i]} -eq 1 ]; then
        echo $i
        break
    fi
done
