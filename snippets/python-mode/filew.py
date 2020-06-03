# -*- mode: snippet -*-
# name: filew
# key: filew
# --
if (not (os.path.isfile(path))):
    f = open(path, mode="w")
    output_to_file(n, k, p, param, graph, energy_, ar, frequency_, time_, DA_energy, cnt_success, cnt_failure)
    
else:
    print(
        "file already exist. if you want to overwrite the file, press [w], or if want to add text then press [a], or want to stop then [n]"
    )
    ans_temp = input().strip()
    if (ans_temp == "w"):
        f = open(path, mode="w")
        output_to_file(n, k, p, param, graph, energy_, ar, frequency_, time_, DA_energy, cnt_success, cnt_failure)
        
    elif (ans_temp == "a"):
        f = open(path, mode="a")
        output_to_file(n, k, p, param, graph, energy_, ar, frequency_, time_, DA_energy, cnt_success, cnt_failure)
    elif (ans_temp == "n"):
        print("interrupted")
    else:
        print("your input is incorrect")
f.close()