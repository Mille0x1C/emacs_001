# -*- mode: snippet -*-
# name: input_vector
# key: inputv
# --
vector<${1:int}> ${2:a}(${3:n});
FOR(i,0,n){
  cin >> $2[i];
}