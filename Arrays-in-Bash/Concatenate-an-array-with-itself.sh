declare -a array

temp_data=`cat`
array=( ${temp_data//:/ } )

array_once=("${array[@]}" "${array[@]}")
array_twice=("${array_once[@]}" "${array[@]}")

echo ${array_twice[@]}
