# -*- mode: snippet -*-
# name: cerrll
# key: cerrll
# --
FOR(i,0,${1:ll}.size()){
  FOR(j,0,$1[i].size()){
    cerr<<$1[i][j]<<" ";
  }
  cerr<<endl;
}