# -*- mode: snippet -*-
# name: dicts
# key: dicts
# --
### 
dict_${1:name} = {${2:key: value, key: value, ...}}

if ${3:key} in dict_${1}:
    dict_${1}[${3:key}]+=${4:1}
else: 
    dict_${1}[${3:key}]=${4:0}

for key, value in dict_${1}.items():
    print(key, value)