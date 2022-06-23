export ZSH="/home/mustafa/.config/zsh/.oh-my-zsh"
ZSH_THEME="dracula"
# CASE_SENSITIVE="true"

HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
 zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
 zstyle ':omz:update' frequency 7

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"
# Would you like to use another custom folder than $ZSH/custom?

ZSH_CUSTOM=~/.config/zsh/.oh-my-zsh/custom

ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOSTART_ONCE=false
ZSH_TMUX_AUTOCONNECT=true
ZSH_TMUX_CONFIG=$HOME/.config/tmux/tmux.conf

VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true
MODE_INDICATOR="%F{yellow}+%f"
KEYTIMEOUT=15
VI_MODE_PROMPT_INFO=true

plugins=(
    docker
    docker-compose
    vi-mode
    sudo
    copyfile
    copypath
    dirhistory
    history
    fzf
    tmux
    history-substring-search
    colored-man-pages
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-z
    gcloud
    aws
)
source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#FZF
export FZF_DEFAULT_COMMAND='fd --hidden --follow --ignore-file=$HOME/.gitignore --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND --type f"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND --type d"
export FZF_DEFAULT_OPTS="--layout=reverse --inline-info --height=90%"
# export FZF_DEFAULT_OPTS=""

. /opt/asdf-vm/asdf.sh

export BROWSER='google-chrome-stable'
export VISUAL='nvim'
export EDITOR='nvim'
export PAGER='less'

export QT_QPA_PLATFORMTHEME=qt5ct
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:~/.local/bin
export JDTLS_HOME=~/.local/bin
export PATH=$PATH:~/.cargo/bin
export PATH=$PATH:/var/lib/snapd/snap/bin # i only use snap for minecraft ok. please don't judge me.
export CHTSH_QUERY_OPTIONS="style=rrt"
mkcdir ()
{
    mkdir -p -- "$1" &&
    cd -P -- "$1"
}

alias luamake=/home/mustafa/project/lua-language-server/3rd/luamake/luamake

eval "$(starship init zsh)"

# Package
QPAS='pacman -Si {1}'
QPAR='pacman -Qi {1}'
QYAS='yay -Si {1}'
QYAR='yay -Qi {1}'
alias pas='pacman -Slq | fzf -m --preview ${QPAS} | xargs -ro sudo pacman -S'
alias yas='yay -Slq | fzf -m --preview ${QYAS} | xargs -ro  yay -S'
alias par='pacman -Qqe | fzf -m --preview ${QPAR} | xargs -ro sudo pacman -Rns'
alias yar='yay -Qqe | fzf -m --preview ${QYAR} | xargs -ro  yay -Rns'


export MANPAGER='nvim +Man!'

# alias
alias rm="trash"
alias cat="bat"
alias grep="rg"
alias c="clear"

alias ls="lsd"
alias la="ls -A"
alias l="ls -Alh"
alias ll="ls -Al"
alias lt="ls --tree"

alias g="git"

function cdg() { cd "$(git rev-parse --show-toplevel)"  }

function gsts (){git status}
function gc (){git commit -am "$@"}
function ga (){git add "$@"}
function gs (){git switch "$@"}
function gm (){git merge "$@"}
function gcb (){git checkout -b "$@"}
function gca (){git commit --amend --no-edit -m "$@"}
function gu (){git reset --soft HEAD~1}
function gst (){git stash "$@"}
function gstp (){git stash pop "$@"}
function grmc (){git rm --cached "$@"}

function gpo (){git push origin "$@"}
function gplo (){git pull origin "$@"}
function gpu (){git push upstream "$@"}
function gplu (){git pull upstream  "$@"}


function gsm (){gs "master"}

function gpom (){gpo "master"}
function gpum (){gpu "master"}

function gplom (){gplo "master"}
function gplum (){gplu "master"}

function gplob (){gplo "$(git symbolic-ref --short HEAD)"}
function gplub (){gplu "$(git symbolic-ref --short HEAD)"}

function gpob (){gpo "$(git symbolic-ref --short HEAD)"}
function gpub (){gpu "$(git symbolic-ref --short HEAD)"}


export JDTLS_HOME=/home/mustafa/.local/bin/jdtls
LFCD="$HOME/.config/lf/lfcd.sh"                                #  pre-built binary, make sure to use absolute path
if [ -f "$LFCD" ]; then
    source "$LFCD"
fi

export LF_ICONS="\
di=:\
fi=:\
ln=:\
or=:\
ex=:\
*.vimrc=:\
*.viminfo=:\
*.gitignore=:\
*.c=:\
*.cc=:\
*.clj=:\
*.coffee=:\
*.cpp=:\
*.css=:\
*.d=:\
*.dart=:\
*.erl=:\
*.exs=:\
*.fs=:\
*.go=:\
*.h=:\
*.hh=:\
*.hpp=:\
*.hs=:\
*.html=:\
*.java=:\
*.jl=:\
*.js=:\
*.json=:\
*.lua=:\
*.md=:\
*.php=:\
*.pl=:\
*.pro=:\
*.py=:\
*.rb=:\
*.rs=:\
*.scala=:\
*.ts=:\
*.vim=:\
*.cmd=:\
*.ps1=:\
*.sh=:\
*.bash=:\
*.zsh=:\
*.fish=:\
*.tar=:\
*.tgz=:\
*.arc=:\
*.arj=:\
*.taz=:\
*.lha=:\
*.lz4=:\
*.lzh=:\
*.lzma=:\
*.tlz=:\
*.txz=:\
*.tzo=:\
*.t7z=:\
*.zip=:\
*.z=:\
*.dz=:\
*.gz=:\
*.lrz=:\
*.lz=:\
*.lzo=:\
*.xz=:\
*.zst=:\
*.tzst=:\
*.bz2=:\
*.bz=:\
*.tbz=:\
*.tbz2=:\
*.tz=:\
*.deb=:\
*.rpm=:\
*.jar=:\
*.war=:\
*.ear=:\
*.sar=:\
*.rar=:\
*.alz=:\
*.ace=:\
*.zoo=:\
*.cpio=:\
*.7z=:\
*.rz=:\
*.cab=:\
*.wim=:\
*.swm=:\
*.dwm=:\
*.esd=:\
*.jpg=:\
*.jpeg=:\
*.mjpg=:\
*.mjpeg=:\
*.gif=:\
*.bmp=:\
*.pbm=:\
*.pgm=:\
*.ppm=:\
*.tga=:\
*.xbm=:\
*.xpm=:\
*.tif=:\
*.tiff=:\
*.png=:\
*.svg=:\
*.svgz=:\
*.mng=:\
*.pcx=:\
*.mov=:\
*.mpg=:\
*.mpeg=:\
*.m2v=:\
*.mkv=:\
*.webm=:\
*.ogm=:\
*.mp4=:\
*.m4v=:\
*.mp4v=:\
*.vob=:\
*.qt=:\
*.nuv=:\
*.wmv=:\
*.asf=:\
*.rm=:\
*.rmvb=:\
*.flc=:\
*.avi=:\
*.fli=:\
*.flv=:\
*.gl=:\
*.dl=:\
*.xcf=:\
*.xwd=:\
*.yuv=:\
*.cgm=:\
*.emf=:\
*.ogv=:\
*.ogx=:\
*.aac=:\
*.au=:\
*.flac=:\
*.m4a=:\
*.mid=:\
*.midi=:\
*.mka=:\
*.mp3=:\
*.mpc=:\
*.ogg=:\
*.ra=:\
*.wav=:\
*.oga=:\
*.opus=:\
*.spx=:\
*.xspf=:\
*.pdf=:\
*.nix=:\
"
