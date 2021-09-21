(lang dune 2.9)
(generate_opam_files true)
(name opam-test)

(maintainers "Marek Kubica <marek@tarides.com>")
(authors "Marek Kubica")
(source (github Leonidas-from-XIV/opam-test))

(package
 (name opam-test)
 (synopsis "OPAM plugin to run package tests")
 (depends
  (cmdliner (>= 1.0.4))
  (ocaml (>= 4.08.0))
  (opam-core (>= 2.0.0))
  (opam-format (>= 2.0.0))
  (opam-repository (>= 2.0.0))
  (opam-state (>= 2.0.0))))
