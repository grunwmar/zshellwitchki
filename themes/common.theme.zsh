#!/bin/zsh

PROMPT="$PVAR[firstnl]["
PROMPT+="`clr -r ${PVAR[time]::-3} 35 1` "
PROMPT+="`clr -r %n 36 1`@`clr -r ${PVAR[conn_ip]} 32 1` "
PROMPT+="&`clr -r $PVAR[histmode] 36 1 3` `clr -r %c 32 1`"
PROMPT+="]"
PROMPT+="$(clr -r "$PVAR[note]" 3)"
PROMPT+="$(clr -r "$PVAR[ls]"   2)"
PROMPT+="$PVAR[nl]%# "

SIMPLE_PROMPT="[&`clr -r $PVAR[histmode] 36 1 3 ` `clr -r %c 32 1`]%# "

export PROMPT
export SIMPLE_PROMPT