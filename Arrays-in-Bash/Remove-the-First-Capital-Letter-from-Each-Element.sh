dot='.'
while read temp; do
    printf "%s " $dot${temp:1}
done
