#!/bin/zsh

PROMPT="$PVAR[firstnl]["
PROMPT+="`clr -r ${PVAR[time]::-3} 32 1` "
PROMPT+="`clr -r %n 36 1`@`clr -r ${PVAR[conn_ip]} 32 1` "
PROMPT+="&`clr -r $PVAR[histmode] 36 1 3` `clr -r %c 32 1`"
PROMPT+="]"
PROMPT+="$(clr -r "$PVAR[note]" 3 32)"
PROMPT+="$(clr -r "$PVAR[ls]"   2 36)"
PROMPT+="$PVAR[nl]🐢`clr -r %# 1 32` "

SIMPLE_PROMPT="[&`clr -r $PVAR[histmode] 36 1 3 ` `clr -r %c 32 1`]%# "

export PROMPT
export SIMPLE_PROMPT