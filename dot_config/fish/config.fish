
# length of directory abbreviations in prompt
set fish_prompt_pwd_dir_length 3

# Shell Variables {{{1

# prevent CDPATH from being read by shell scripts
if status --is-interactive
#	set CDPATH ~ ~/config ~/notes ~/work $CDPATH
end

# Environment Variables {{{1
#
set -gx EDITOR nvim
set -gx LESS "--ignore-case --LONG-PROMPT --RAW-CONTROL-CHARS --tabs=4 --window=-4"

set -gx XDG_CONFIG_HOME "$HOME/.config"

set -gx SUDO_EDITOR nvim
set -gx SYSTEMD_EDITOR nvim

set -gx XDG_DATA_HOME "$HOME/.local/share"
#set -x XDG_DATA_DIRS $HOME/.local/share/flatpak/exports/share /var/lib/flatpak/exports/share

# Neovim
#set -gx NVIM_LISTEN_ADDRESS /tmp/nvimsocket

# Ripgrep
set -x RIPGREP_CONFIG_PATH ~/.config/ripgrep/ripgreprc

# FZF 
# default to load in preview mode with bat as pager 
export FZF_DEFAULT_OPTS="--preview 'bat --color=always {}'"
# use fd-find
export FZF_DEFAULT_COMMAND="fd --type f"


# PATH
# Changes $fish_user_paths
# Default is -U 
fish_add_path "$HOME/.local/bin"

# Remote/SSH hostname colour in prompt
#set -gx fish_color_host_remote red
set -gx fish_color_quote green


# Abbreiations {{{1
# Consider adding with -U so saved in fish_variables instead

# Git Homedir strategy
#abbr --add --global conf 'git --git-dir=$HOME/.git-conf --work-tree=$HOME' 

abbr --add --global v nvim
abbr --add --global s sudo
abbr --add --global l less
abbr --add --global la ls -la
abbr --add --global gco git checkout
abbr --add --global g 'git'
abbr --add --global ga 'git add'
abbr --add --global gb 'git branch'
abbr --add --global gbl 'git blame'
abbr --add --global gc 'git commit -m'
abbr --add --global gco 'git checkout'
abbr --add --global gd 'git diff'
abbr --add --global glp 'git log  --decorate --graph --oneline --all'
abbr --add --global gp 'git push'
abbr --add --global gpl 'git pull'
abbr --add --global gs 'git status -sb'
abbr --add --global cz chezmoi



# Bindings {{{1
# Here or add to fish_key_bindings function?
# bind \x7F 'backward-kill-bigword'

# Ctrl H = backspace
bind \b backward-delete-char


