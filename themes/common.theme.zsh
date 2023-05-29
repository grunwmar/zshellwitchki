#!/bin/zsh

PROMPT="$PVAR[firstnl]["
PROMPT+="`clr -r time= 2``clr -r ${PVAR[time]::-3} 32 1` "
PROMPT+="`clr -r user= 2``clr -r %n 36 1` "
PROMPT+="`clr -r ip= 2``clr -r ${PVAR[conn_ip]} 32 1` "
PROMPT+="`clr -r history= 2``clr -r $PVAR[histmode] 36 1 3` "
PROMPT+="`clr -r pwd= 2``clr -r %c 32 1`"
PROMPT+="]"
PROMPT+="$(clr -r "$PVAR[note]" 3 32)"
PROMPT+="$(clr -r "$PVAR[ls]"   2 36)"
PROMPT+="$PVAR[nl]🐢`clr -r %# 1 32`> "

SIMPLE_PROMPT="{`clr -r $PVAR[histmode] 36 3 `} `clr -r %c 32`%# "

export PROMPT
export SIMPLE_PROMPT
