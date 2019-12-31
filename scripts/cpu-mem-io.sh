color () {
    if [ $1 -gt 99 ]; then
        printf "#[bg=red,fg=white]%s:99%%#[default]" $2
    elif [ $1 -gt 69 ]; then
        printf "#[bg=red,fg=white]%s:%2d%%#[default]" $2 $1
    elif [ $1 -gt 39 ]; then
        printf "#[bg=yellow]%s:%2d%%#[default]" $2 $1
    else
        printf "%s:%2d%%" $2 $1
    fi    
}

free=`free -t | tail -1`
set ${free}
max=${2}
hun=$((max/100))
vmstat 1 2 | tail -1 | while read _ _ _ m1 _ m2 _ _ _ _ _ _ c1 c2 _ d _
do
    m=$((m1 + m2))
    m=$(((max-m)/hun))
    c=$((c1 + c2))
    echo "$(color $c CPU) | $(color $m MEM) | $(color $d I/O)"
done
