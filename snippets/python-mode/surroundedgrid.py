# -*- mode: snippet -*-
# name: surroundedgrid
# key: surroundedgrid
# --
# 周囲を全部0で囲った 1 origin の二次元行列g を作る
n = int(input().strip())
g = [[0 for i in range(n+2)] for i in range(n+2)]
# [0 for i in range(n+1)] + [[] for _ in range(n)] # 単に[[] for _ in range(n+1)]としても良いかも
for i in range(1,n+1): # 1 <= i < n+1 # iは1~nの値をとる
    c[i] = [0]+list(map(int, input().strip().split()))
