# -*- mode: snippet -*-
# name: fileread
# key: filer
# --
if (not (os.path.isfile(path))):
    f = open(path, mode="r")
    content = f.readlines()
else:
    print("fatal error: no such file")
f.close()
