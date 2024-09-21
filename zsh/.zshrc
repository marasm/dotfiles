# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vi="nvim"
alias nv="nvim"
alias nvc="nvim ~/.config/nvim/"
alias k="kubectl"
alias hg="history | grep"
alias lg="lazygit"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git gradle brew fzf golang)


# Customize to your needs...
unsetopt correct_all
export GRADLE_HOME=/usr/local/opt/gradle
export JAVA_HOME=/usr/local/opt/openjdk
export YT_BATCH_UPLOADER_HOME=~/JAVA/YT_Batch_Uploader
export CRC_HOME=~/JAVA/crc-macos-1.17.0-amd64
export XDG_CONFIG_HOME="$HOME/.config"

export PATH=$CRC_HOME:$JAVA_HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/git/bin:$GRADLE_HOME/bin:$YT_BATCH_UPLOADER_HOME/bin


source $ZSH/oh-my-zsh.sh


function gacp(){
git add --all .;
git commit -m $@;
git push;
}

function mkpvdirs(){
mkdir photo
mkdir video
}

function timelapse4x3(){
echo IMPORTANT! file pattern must be in quotes like this '*.jpg'
ffmpeg -y -r 24 -pattern_type glob -i "$1" -c:v libx264 -crf 18 -preset slow -s 1920x1440 -pix_fmt yuv420p "$2";
}

function timelapse16x9(){
echo IMPORTANT! file pattern must be in quotes like this '*.jpg'
ffmpeg -y -r 24 -pattern_type glob -i "$1" -c:v libx264 -crf 18 -preset slow -s 1920x1080 -pix_fmt yuv420p "$2";
}
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

PROMPT="%{$fg[green]%}%m%{$reset_color%} ${PROMPT}"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
