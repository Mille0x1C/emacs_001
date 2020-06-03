# -*- mode: snippet -*-
# name: rangefamily
# key: rangefamily
# --
def reverse_range(Large_a, Small_b, i):  # b < a ,  get [b, a)
    return range(Small_b, Large_a, -i)  # range(a, b+1, -1)


def crange(a, b, i):
    return range(a, b + 1, i)


def reverse_crange(Large_a, Small_b, i):
    return range(Small_b+1, Large_a, -i)