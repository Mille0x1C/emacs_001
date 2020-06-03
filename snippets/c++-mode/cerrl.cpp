# -*- mode: snippet -*-
# name: cerrl
# key: cerrl
# --
FOR(i,0,${1:l}.size()){
  cerr<<${1}[i]<<" ";
}