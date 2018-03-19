export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# load custom executable functions
for function in ~/.bash/functions/*; do
  source $function
done

# extra files in ~/.bash/configs/pre , ~/.bash/configs , and ~/.bash/configs/post
# these are loaded first, second, and third, respectively.
_load_settings() {
  _dir="$1"
  if [ -d "$_dir" ]; then
    if [ -d "$_dir/pre" ]; then
      for config in `find $_dir/pre`; do
        . $config
      done
    fi

    for config in `find $_dir`; do
      case "$config" in
        "$_dir"/pre/*)
          :
          ;;
        "$_dir"/post/*)
          :
          ;;
        *)
          if [ -f $config ]; then
            . $config
          fi
          ;;
      esac
    done

    if [ -d "$_dir/post" ]; then
      for config in `find $_dir/post`; do
        . $config
      done
    fi
  fi
}
_load_settings "$HOME/.bash/configs"

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Local config
[[ -f ~/.bashrc.local ]] && source ~/.bashrc.local
export PATH="/usr/local/opt/qt/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/scottkidder/bin/google-cloud-sdk/path.bash.inc' ]; then source '/Users/scottkidder/bin/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/scottkidder/bin/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/scottkidder/bin/google-cloud-sdk/completion.bash.inc'; fi
