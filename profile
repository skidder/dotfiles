export TF_VAR_google_application_credentials=`cat ${HOME}/.gce/Mux-Cloud-771b86c3da29.json`
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*