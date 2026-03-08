(lang dune 3.21)

(name repro)

(generate_opam_files true)

(using rocq 0.11)

(package
 (name repro)
 (depends
  (rocq-prover (= 9.0.0))
  (vscoq-language-server (= 2.3.4))))
