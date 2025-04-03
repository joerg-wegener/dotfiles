for f in ~/.config/zshrc/*; do
    if [ ! -d $f ]; then
        [[ -f $f ]] || source $f
    fi
done