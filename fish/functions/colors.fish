function colors -d "switch to a dark of light theme"
    set base "$XDG_DATA_HOME/base16"
    set color $argv[1]

    test "$color" = "light"; and set theme "base16-solarized-light"
    test "$color" = "dark"; and set theme "base16-tomorrow-night"

    sh "$base/$theme.sh"

    echo -e "if !exists('g:colors_name') || g:colors_name != '$theme'\n  colorscheme $theme\nendif" >  ~/.vim/.background
end
