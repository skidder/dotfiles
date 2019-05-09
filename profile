export TF_VAR_google_application_credentials=`cat ${HOME}/.gce/Mux-Cloud-771b86c3da29.json`
export GOPATH="$HOME/go"
export PATH="$PATH:$HOME/.rvm/bin:$GOPATH/bin" # Add RVM to PATH for scripting

# KOPS admin functions for AWS and GCE
# https://github.com/muxinc/ops/wiki/Accessing-Kops-Kubernetes
export KOPS_FEATURE_FLAGS=AlphaAllowGCE
function kops_aws {
  export KOPS_STATE_STORE=s3://clusters-aws-k8s-mux-io
}

function kops_gce {
  export KOPS_STATE_STORE=gs://clusters-gce-k8s-mux-io
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*