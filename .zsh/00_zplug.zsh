## This file must be run before other .zsh config

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export ZPLUG_HOME=${HOME}/src/github.com/zplug/zplug
source ${ZPLUG_HOME}/init.zsh

# Let zplug manage zplug
zplug "zplug/zplug", hook-build:'zplug --self-manage'

# Warn you when you run a command that you've got an alias for
zplug "djui/alias-tips"

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search", defer:3 # Should be loaded last.

# oh-my-zsh base config
# This is a selection of the available libs
zplug "robbyrussell/oh-my-zsh", use:"lib/{completion,correction,git,grep,history,key-bindings,termsupport}.zsh"
# oh-my-zsh plugins
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/docker-compose", from:oh-my-zsh
zplug "plugins/github", from:oh-my-zsh
zplug "plugins/golang", from:oh-my-zsh
#zplug "plugins/nvm", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/pip", from:oh-my-zsh
zplug "plugins/kubectl", from:oh-my-zsh
zplug "plugins/helm", from:oh-my-zsh
zplug "plugins/terraform", from:oh-my-zsh
zplug "plugins/ansible", from:oh-my-zsh
zplug "plugins/adb", from:oh-my-zsh
zplug "plugins/aws", from:oh-my-zsh
zplug "plugins/colorize", from:oh-my-zsh
zplug "plugins/screen", from:oh-my-zsh
zplug "plugins/vscode", from:oh-my-zsh

# Theme
zplug romkatv/powerlevel10k, as:theme, depth:1

# Install plugins if there are plugins that have not been installed
#if ! zplug check --verbose; then
#    printf "Install? [y/N]: "
#    if read -q; then
#        echo; zplug install
#    fi
#fi

# Then, source plugins and add commands to $PATH
zplug load
