data=`cat`

for i in $data
do
    if ! [[ "$i" =~ "a" ]] && ! [[ "$i" =~ "A" ]]; then
        echo $i
    fi
done
