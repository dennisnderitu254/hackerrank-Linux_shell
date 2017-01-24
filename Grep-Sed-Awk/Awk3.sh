awk '{
    avg=($2+$3+$4)/3
    printf "%s : ", $0
    
    if (avg >= 80)      print "A"
    else if (avg >= 60) print "B"
    else if (avg >= 50) print "C"
    else                print "FAIL"

}'
