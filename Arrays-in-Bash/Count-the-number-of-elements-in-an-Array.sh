declare -a array

cnt=0
while read temp; do
    ((++cnt))
done

echo $cnt
