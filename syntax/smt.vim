if version < 600
  syn clear
elseif exists("b:current_syntax")
  finish
endif

syn keyword smtKeywords assert check-sat check-sat-assuming declare-const declare-fun declare-sort define-fun define-fun-rec define-funs-rec define-sort echo exit get-assertions get-assignment get-info get-model get-option get-proof get-unsat-assumptions get-unsat-core get-value pop push reset reset-assertions set-info set-logic set-option
syn region smtString start=+"+ skip=+\\\\\|\\"+ end=+"+
syn match smtSort "\<[A-Z][a-zA-Z0-9_']*\>"
syn match smtDelimiter  "[()]"
syn match smtComment ";.*$"
syn keyword smtBoolean true false
syn match smtLabel "\<:[a-zA-z]\S*\>"
syn match smtNumber "\<[1-9][0-9]*\>\|\<#x[0-9a-f]*\>\|\<#b[01]*\>"
syn match smtFloat "\<[0-9]\+\.[0-9]\+\([eE][-+]\=[0-9]\+\)\=\>"
syn match smtOperators "[!$%&\*\+/<=>\?@\\^|~]\+\|\<[_-]\>"
syn keyword smtStatements ite and or not iff distinct as par let forall exists
syn keyword smtTypes Bool Int Real RoundingMode BitVec Array Float16 Float32 Float64 Float128

highlight def link smtKeywords Include
highlight def link smtString String
highlight def link smtSort Type
highlight def link smtDelimiter Delimiter
highlight def link smtComment Comment
highlight def link smtBoolean Boolean
highlight def link smtLabel Identifier
highlight def link smtNumber Number
highlight def link smtFloat Number
highlight def link smtOperators Operator
highlight def link smtStatements Statement
highlight def link smtTypes Type

let b:current_syntax = "smt"
