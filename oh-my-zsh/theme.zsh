themes=("nanotech" "pure" "clean" "eastwood" "skaro" "kolo" "amuse" "bureau" "sorin" "terminalparty" "avit" "wezm" "ys")
N=${#themes[@]}
((N=(RANDOM%N)+1))
ZSH_THEME=${themes[$N]}
echo "Using theme $ZSH_THEME"
