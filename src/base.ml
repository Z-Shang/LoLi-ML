open Ltypes

let lint n =
  Sexp (Int n)
;;
let lflt n =
  Sexp (Float n)
;;
let lsym sym =
  Sexp (Symbol sym)
;;
let lstr str =
  Sexp (String str)
;;
let lbool b =
  Sexp (Bool b)
;;
let lkey k =
  Sexp (Keyword k)
;;
let lcons head tail =
  Sexp (Cons (head, tail))
;;
let lprim fn =
  Fn (Prim fn)
;;
let llbd fn =
  Fn (Lambda fn)
;;