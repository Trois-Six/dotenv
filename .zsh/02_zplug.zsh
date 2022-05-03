export ZPLUG_HOME=$(brew --prefix)/opt/zplug
source $ZPLUG_HOME/init.zsh

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
zplug "plugins/nvm", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/pip", from:oh-my-zsh
zplug "plugins/kubectl", from:oh-my-zsh
zplug "plugins/helm", from:oh-my-zsh
zplug "plugins/terraform", from:oh-my-zsh
zplug "plugins/ansible", from:oh-my-zsh
zplug "plugins/adb", from:oh-my-zsh
zplug "plugins/aws", from:oh-my-zsh
zplug "plugins/gcloud", from:oh-my-zsh
zplug "dmakeienko/azcli", from:oh-my-zsh
zplug "plugins/colorize", from:oh-my-zsh
zplug "plugins/screen", from:oh-my-zsh
zplug "plugins/vscode", from:oh-my-zsh
zplug "plugins/rust", from:oh-my-zsh

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

