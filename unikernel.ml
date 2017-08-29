open OS
open Lwt.Infix

module Iter (C: Mirage_console_lwt.S) = struct

  let start c =
    let rec iter = function
      | 0 -> Lwt.return ()
      | n ->
        OS.Time.sleep_ns Int64.zero >>= fun () ->
        C.log c "s" >>= fun () ->
        iter (n - 1)
    in
    iter 1_000_000

end
