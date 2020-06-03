# -*- mode: snippet -*-
# name: reduce
# key: reduce
# --
def reduce(p, q):
    common = fractions.gcd(p, q)
    return (p//common , q//common )