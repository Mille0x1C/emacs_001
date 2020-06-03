# -*- mode: snippet -*-
# name: bisearch
# key: bisearch
# --
ok = 1000 # solve(ok)は解が存在すると分かっているような整数ok
ng = -1   # solve(ng)は解が存在しない(と分かっているような整数ng
while math.abs(ok-ng) > 1:
    mid = (ok + ng) // 2
    if solve(mid):
        ok = mid
    else:
        ng = mid