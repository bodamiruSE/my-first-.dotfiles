if status is-interactive
    and not set -q TMUX
    tmux attach -t main 2>/dev/null || tmux new -s main
end

set fish_greeting ""
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx LESS "-R"
set -gx NNN_FIFO "/tmp/nnn.fifo"
set -gx NNN_OPENER "xdg-open"
set -gx NNN_COLORS "1234"
set -gx NNN_OPTS "aeH"
set -gx NNN_ICONS 1

set -gx NNN_PLUG 'v:!~/.local/bin/nvsplit $nnn'

glow /data/data/com.termux/files/home/greeting/baku_greeting.gitconfig

starship init fish | source
zoxide init fish | source

set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx LESS "-R"

#___Alias___#
alias ls="eza -a --icons=always --color=always --group-directories-first"
alias ll="eza -lh --icons=always --color=always --group-directories-first"
alias la="eza -lah --icons=always --color=always --group-directories-first"
alias tree="eza --tree --icons=always"
##Editor
alias nv="nvim"
alias mc="micro"
##Update && Upgrade
alias update="pkg update && pkg upgrade -y"
##MD
alias md="glow"
##rm Command
alias rm="rm -rfd"
##Storage
alias fi="cd storage/shared/ && ls"
##GIT
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
##TMUX
###alias sshvps="ssh root@IP_SERVER" Type Your IP_SERVER
alias logs="tail -f /var/log/nginx/error.log"
alias t="tmux"
alias ta="tmux attach"
alias tls="tmux list-sessions"
alias ff="fzf"
alias lg="lazygit"
alias fm="n"
###Others
alias sys="fastfetch"
alias rg="ripgrep"
