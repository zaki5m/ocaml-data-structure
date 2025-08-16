(lang dune 3.0)

(generate_opam_files true)

(name data-structures)

(package
 (name data-structures)
 (synopsis "Data structures and algorithms in OCaml")
 (description "Learning repository for data structures and algorithms implementation in OCaml")
 (depends 
  ocaml 
  (dune :build)
  (ounit2 :with-test))
 (tags
  (topics "data-structures" "algorithms" "learning")))
