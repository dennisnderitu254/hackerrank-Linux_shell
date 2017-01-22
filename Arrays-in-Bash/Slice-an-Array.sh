declare -a array
temp_data=`cat`
array=( ${temp_data//:/ } )

for i in {3,4,5,6,7}
do
    if [ ${array[i]} ]; then
        printf "%s " ${array[i]}
    fi
done
