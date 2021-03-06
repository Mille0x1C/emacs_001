# -*- mode: snippet -*-
# name: bitsrch
# key: bitsrch
# --
typedef vector<vector<int> > SS; // sets of sets

SS bitSearch(int n){
  // 集合{0,1, ...,n-1}の部分集合の全列挙（冪集合を求める）
  // bitはそれぞれの集合を表す．
  // iはそれぞれの要素を表す．
  vector<vector<int> > PS;      // 冪集合PowerSet
  for (int bit=0; bit<(1<<n); ++bit) {// 例えばn==5のとき，集合bitは0から31をとる．集合bitのループ
    vector<int> S;              // 「部分集合S」はそれぞれの部分集合を表す．
    FOR(i,0,n){//要素iは0からnまでをとる．要素iは「各桁にフラグが立ってるか否か」を表す．
      if (bit & (1<<i) ) {// 「要素i」が「集合bit」に含まれていれば要素iを「部分集合S」にpushする．
        S.push_back(i);
      }
    }
    PS.push_back(S);
  }
  return PS;
}