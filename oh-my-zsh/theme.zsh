# Let's make a log2 function!
log(){
  local x=$1 n=2 l=-1
  if [ "$2" != "" ]; then
    n=$x
    x=$2
  fi
  while ((x)); do let l+=1 x/=n;done
  echo $l
}
themes=("nanotech" "kolo" "pure" "clean" "skaro" "amuse" "bureau" "sorin" "terminalparty" "avit" "wezm" "ys")

N=${#themes[@]}
let "RND=$RANDOM % 2**$N"
IDX=$(log RND)
let "N=$N-$IDX"
ZSH_THEME=${themes[$N]}
echo "Using theme $ZSH_THEME"
