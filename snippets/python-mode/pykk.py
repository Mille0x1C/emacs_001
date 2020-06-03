# -*- mode: snippet -*-
# name: pykk
# key: pykk
# --
from __future__ import print_function
import random
import time
import re
import array
import copy
import functools
import operator

import math
from math import log
import string
import fractions
from fractions import Fraction
from fractions import gcd

import collections
import itertools
import bisect

import heapq
from heapq import heappush
from heapq import heappop
from heapq import heappushpop
from heapq import heapify
from heapq import heapreplace
from queue import PriorityQueue as pq
from queue import Queue

from itertools import accumulate

from collections import deque
from collections import Counter

from operator import mul
from functools import reduce

import sys
input = sys.stdin.readline


def eprint(*args, **kwargs):
    print(*args, file=sys.stderr, **kwargs)
    return


def lcm(n, m):
    return int(n * m / gcd(n, m))


def coprimize(p, q):
    common = fractions.gcd(p, q)
    return (p // common, q // common)


def combinations_count(n, r):
    r = min(r, n - r)
    numer = reduce(mul, range(n, n - r, -1), 1)
    denom = reduce(mul, range(1, r + 1), 1)
    return numer // denom


def main():
   $0

if __name__ == '__main__':
    main()
