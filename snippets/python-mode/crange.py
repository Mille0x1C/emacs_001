# -*- mode: snippet -*-
# name: crange
# key: crange
# --
def crange(${1:a}, ${2:b}, ${3:i=1}):
    return range($1, $2 + 1, $3)
