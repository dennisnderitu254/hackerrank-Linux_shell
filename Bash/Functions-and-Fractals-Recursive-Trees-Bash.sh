# build_tree : function for building a tree
# usage : build_tree length row col N
# [$1 = length] [$2 = row] [$3 = col] [$4 = N]
# position : (row, column) 

build_tree() {
  local length=$1
  local row=$2
  local column=$3
  local N=$4

  for (( i=0; i<length; ++i))
  do
    matrix[$((row-i)),$column]='1' # bottom
    matrix[$((row-i-length)),$((column-i-1))]='1' # left branch
    matrix[$((row-i-length)),$((column+i+1))]='1' # right branch
  done

  # build subtree
  if [ $N -gt 1 ]; then
    build_tree $((length/2)) $((row-2*length)) $((column-length)) $((N-1)) # left subtree
    build_tree $((length/2)) $((row-2*length)) $((column+length)) $((N-1)) # right subtree
  fi
}


# declaration and initialization
declare -A matrix
num_rows=63
num_columns=100

for (( i=1; i<=num_rows; ++i ))
do
  for (( j=1; j<=num_columns; ++j ))
  do
    matrix[$i,$j]='_'
  done
done


# RECURSEIVELY build the tree
read N
build_tree 16 63 50 $N


# print result
for ((i=1;i<=num_rows;i++))
do
  for ((j=1;j<=num_columns;j++))
  do
    printf ${matrix[$i,$j]}
  done
  echo
done
