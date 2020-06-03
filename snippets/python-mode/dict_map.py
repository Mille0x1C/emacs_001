# -*- mode: snippet -*-
# name:dict_map
# key:dmap
# --
if ${1:key} in ${2:dict_x}:
    $2[$1]+=1
else: 
    $2[$1]=0