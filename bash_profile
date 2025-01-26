[[ -f ~/.shell_init_verbose ]] && echo "Running config bash_profile"


export HOME_DIR="/.autodirect/mtrsysgwork/eshukrun"
export CONFIG_DIR="$HOME_DIR/.config"

if [[ -f "$CONFIG_DIR/commonprofile" ]]; then
    source $CONFIG_DIR/commonprofile
else
    [[ -f ~/.shell_init_verbose ]] && echo "Can't find commonprofile"
fi

[[ -z SSH_CLIENT ]] && exit 0

if [ -f /bin/zsh ]; then
    exec /bin/zsh -l
else
    [ -f "$CONFIG_DIR/bashrc" ] && source $CONFIG_DIR/bashrc
fi

