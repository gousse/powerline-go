#!/bin/bash
function _update_ps1() {
    PS1="$(powerline-go \
      -modules "venv,user,ssh,cwd,perms,git,hg,jobs,exit,root,vgo" \
      -error $? \
      -path-aliases \~/secwatt_deployment/gits/docker_secwatt/vault_consul=@VAULT)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
