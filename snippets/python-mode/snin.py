# -*- mode: snippet -*-
# name: string_num_input
# key: snin
# --
${1:l} = string(input())
for i in rane($1.size()):
    $1[i] = $1[i] - '0'