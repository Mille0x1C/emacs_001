# -*- mode: snippet -*-
# name: show_two_dimensional_array
# key: showtda
# --
FOR(${1:i},0,${2:n}){
  FOR(${3:j},0,${4:m}){
    ${5:cerr}<<${6:a}[${7:i}][${8:j}]<<" ";
  }
  ${9:cerr}<<endl;
}