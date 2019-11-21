# -*- mode: snippet -*-
# name: lin
# key: lin
# --
${1:l} = np.zeros(${2:n}, dtype = ${3:int})
for i in range($2):
    $1[i] = $3(input())