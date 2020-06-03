# -*- mode: snippet -*-
# name: recrel
# key: recrel
# --
if ${1:i} > 0 and ${2:l[$1] > l[$1-1]}:
   ${3:pass}