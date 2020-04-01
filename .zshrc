PROMPT='%F{blue}%c %F{magenta}>%F{yellow}>%F{green}>%f '
autoload -Uz compinit
compinit

zstyle ':completion:*' menu select

source /usr/local/etc/bash_completion.d/git-completion.bash
# source ~/git-completion.zsh
$source ~/.bashrc

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"

export COMPOSE_FILE=docker-compose.development.yml

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

alias ga='git add .'
alias gb='git branch'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gcm='git commit -m'
alias gl='git plog'
alias gm='git merge'
alias gmm='git merge master'
alias gpso='git push origin'
alias gpom='git pull origin master'
alias gplo='git pull origin'
alias gs='git status'

alias dc='docker-compose'
alias drails='docker-compose run --rm web rails'

alias be='bundle exec'
alias bipv='bundle install --path=vendor/bundle'
alias cors='CORS_ALLOWED_ORIGINS=http://localhost:3000'

alias dm='docker-machine'

alias wenv='code ~/.zshrc'
alias renv='source ~/.zshrc'
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
