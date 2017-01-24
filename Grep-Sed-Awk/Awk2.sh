awk '{
    if (($2+$3+$4)/3 >= 50)
        print $1,": Pass"
    else
        print $1,": Fail"
}'
