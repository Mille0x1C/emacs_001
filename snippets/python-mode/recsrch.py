# -*- mode: snippet -*-
# name:recsrch
# key: recsrch
# --
${1:N}, ${2:W} = map(int, input().strip().split())
${3:A} = list(map(int, input().strip().split()))
print(rec_search($1, $2))
def rec_search(${4:i}, ${5:v}):
    # 「"構成的"定義」
    if $4 == 0:  # ベースケース
        # eprint('$4 ',end=': ')
        # eprint($4,'n')
        # eprint('\t $5 ',end=':')
        # eprint($5)
        if $5 == 0:
            return True
        else:
            return False
    else:
        # eprint('$4 ',end=': ')
        # eprint($4,'n')
        # eprint('\t $5 ',end=':')
        # eprint($5)
        return rec_search( $4-1, $5 - A[$4-1] ) or rec_search( $4-1, $5 )