# -*- mode: snippet -*-
# name: powerset
# key: powerset
# --
typedef vector<vector<int> > SS; // sets of sets
template<typename T>
SS powerset (int n, vector<T>& a){
  vector<vector<int> > PS_sub;
  vector<vector<T> > PS;
  for (int bit=0; bit< (1<<n); ++bit) {
    vector<int> S;
    vector<int> V;
    for (int i = 0; i < n; ++i) {
      if ((1<<i)&bit) {S.push_back(i);}
    }
    // if (S.size()!=0) {PS_sub.push_back(S);}
    // PS_sub.push_back(S);
    for(auto x:S) {V.push_back(a[x]);}
    PS.push_back(V);
    // for(auto x:V) {cerr<<x<<" ";}
    // cerr<<endl;
  }
  return PS;
}