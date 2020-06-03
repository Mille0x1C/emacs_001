# -*- mode: snippet -*-
# name: bits
# key: bits
# --
for ${1:case} in range(2 ** ${2:n}):     # 場合ループ # nは人とかモノとかの個数
    ${3:l_bin} = list(map(int,(format($1,'b').zfill($2))))
    # eprint("$3 ",end=": ")
    # eprint($3)
    
    #flag=0
    
    for ${4:index_object} in range($2):      # 人とかモノとかループ
        if $3[$4]==1:                   # その桁がyesだと仮定している場合
           ${5:hoge}
        else:                                 # その桁がnoだと仮定している場合
           ${6:pass}