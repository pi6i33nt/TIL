""
"" sample.vim
""
"" Author: Hayato Yuge
"" Create: 2019/05/29
"" Update: 2019/05/29
""

"" strftime({format} [, {time}])
"" 日付，時間の文字列を返す
"" {format}: 文字列のフォーマット
""           Cの`strftime()`を参照
"" {time}  : 無ければ現在時刻
echo strftime("%Y/%m/%d - %H:%M")
"" > 2019/05/29 - 15:30

"" 関数の定義
"" :function {Name}({var1}, {var2}, ...)
"" :  {body}
"" :endfunction
"" {Name} : 関数名．先頭は大文字．

"" 日付を挿入する関数
function Date()
  let date = strftime("%Y/%m/%d")
  execute ":normal a" . date
endfunction

"" 日付を入力するコマンド
command Date call Date()

"" End of File
