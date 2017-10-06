type loliv = 
  | Sexp of sexp
  | Fn of fn
  | Macro of macro
  | Cls of fn * env
  | Type of lolit
  | Bottom of unit

and sexp = 
  | Int of int
  | Float of float
  | Symbol of string
  | String of string
  | Bool of bool
  | Cons of loliv * loliv
  | Keyword of string

and fn = 
  | Prim of {name : string; para_types : lolit list; rtn_type : lolit; f: (loliv list -> loliv);}
  | Lambda of {param : string list; para_types : lolit list; rtn_type : lolit; body: sexp; env: env;}

and env =
  {
    upper : env option;
    bindings : {sym : string; val : loliv; typ : lolit;} list;
  }

and lolit =
  | Slot of {name : string;}
  | Prim of {name : string; kind : string option;}
  | Comp of {constructor : lolit; arg : lolit;}

;;