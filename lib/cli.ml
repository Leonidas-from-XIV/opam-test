let run () = print_endline "I ran"

let main () =
  let main = Cmdliner.Term.(const run $ const ()) in
  let info = Cmdliner.Term.info "opam-test" ~version:"%%VERSION%%" in
  let v = (main, info) in
  Cmdliner.Term.(exit @@ eval v)
