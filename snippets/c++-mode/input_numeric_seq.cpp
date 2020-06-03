# -*- mode: snippet -*-
# name: input_numeric_sequence
# key: in_s
# --
string S; cin>>S;
vector<${1:int}> A(S.size());
FOR(i,0,S.size() ){A[i]=S[i]-'0';  }