# -*- mode: snippet -*-
# name: dicts_zip
# key: dicz
# --
keys=[${1:"k1","k2","k3"}]
values=[${2:val1,val2,val3}]
${3tuple_keys_and_values} = zip(keys,values)
#eprint(tuple_keys_and_values)
${4:dict_xxx} = dict(tuple_keys_and_values)