#!/bin/bash
# https://github.com/justjanne/powerline-go

function _update_ps1() {
    PS1="$($GOPATH/bin/powerline-go \
      -error $? -jobs $(jobs -p | wc -l)\
      -path-aliases \~/secwatt_deployment/gits/docker_secwatt/vault_consul=@VAULT)"

    # Uncomment the following line to automatically clear errors after showing
    # them once. This not only clears the error for powerline-go, but also for
    # everything else you run in that shell. Don't enable this if you're not
    # sure this is what you want.

    #set "?"
}

if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

#
#function _update_ps1() {
#    PS1="$(powerline-go \
#      -error $? \
#      -path-aliases \~/secwatt_deployment/gits/docker_secwatt/vault_consul=@VAULT)"
#}
#
#if [ "$TERM" != "linux" ]; then
#    PROMPT_COMMAND="_update_ps1 -shell bash; $PROMPT_COMMAND"
#fi
