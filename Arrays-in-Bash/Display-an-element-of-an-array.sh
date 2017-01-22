declare -a array
temp_data=`cat`
array=( ${temp_data//:/ } )

if [ ${array[3]} ]; then
    echo ${array[3]}
fi
