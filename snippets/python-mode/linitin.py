# -*- mode: snippet -*-
# name: linitin
# key: linitin
# --
${1:l} = [${2:0} for _ in range(${3:n})]
for i in range($3):
    $1[i] = int(input())
