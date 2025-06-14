syntax match crustIdentifier /\<[a-zA-Z_][a-zA-Z0-9_]*\>/

syntax keyword crustKeyword fn return if else while print
syntax keyword crustType let

syntax match crustNumber /\v\d+/
syntax match crustString /"\v[^"]*"/

syntax match crustFunctionCall /\v<[a-zA-Z_][a-zA-Z0-9_]*>\s*\(/

syntax keyword crustLiteral true false null
syntax match crustOperator /[+\-*/=!<>]=\?/
syntax match crustComment "//.*"
syntax match crustParen /[(){}]/ containedin=ALL display

highlight link crustIdentifier Identifier

hi def link crustKeyword Keyword
hi def link crustNumber Number
hi def link crustString String
hi def link crustType Type
hi def link crustFunctionCall Function

highlight link crustParen Delimiter
highlight link crustComment Comment
highlight link crustOperator Operator
highlight link crustLiteral Constant
