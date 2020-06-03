# -*- mode: snippet -*-
# name: heapq
# key: heapq
# --
${1:heapl}=[${2:x} for ${3:_} in ${4:l}]
heapq.heapify(${1})
for ${5:i} in ${6}:
    print(heapq.heappop(${1}))