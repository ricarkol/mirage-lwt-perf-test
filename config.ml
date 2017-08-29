open Mirage

let packages = [package "duration"]

let () =
  let main = foreign ~packages "Unikernel.Iter" (console @-> job) in
  register "iter" [ main $ default_console ]
