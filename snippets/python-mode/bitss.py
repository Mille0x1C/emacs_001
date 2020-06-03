# -*- mode: snippet -*-
# name: bitss
# key: bitss
# --
for ${1:case} in range(2 ** ${2:n}):	 # 場合ループ # nは人とかモノとかの個数
    for ${3:i} in range($2):   # それぞれのcaseはn桁からなる
        if case&(1<<$3):  # 今のcaseについて，caseのi桁目が1のとき # 集合Sの要素Siを選ぶときとか
            ${4:pass}
        else:
            ${5:pass}     # 要素Siを選ばないときとか