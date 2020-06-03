# -*- mode: snippet -*-
# name: descending_list
# key: desl
# --
[${1:i} for $1 in crange(${2:a}, ${3:b}, 1)[::1]] # a<bで指定する. インクリメントは正.