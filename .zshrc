eval "$(starship init zsh)"

# alias testssl="docker run --rm -ti drwetter/testssl.sh"

alias reload="source ~/.zshrc"

alias ".."="cd .."

alias guid='uuidgen | { read message; echo "$message ... clipboard mate"; echo -n $message | pbcopy }'

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion