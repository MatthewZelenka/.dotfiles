programs=("yay" "python" "nvim" "tmux" "firefox")

for program in "${programs[@]}"; do
    {
        cd "./$program" &&
        bash install.sh &&
        cd .. 
    } || exit 1
done
