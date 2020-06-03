# -*- mode: snippet -*-
# name: raiseer
# key: raiseer
# --
try:
    raise ValueError("error!")
except ValueError as e:
    eprint(e)