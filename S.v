Require Import F.
(* Require Import Repro.F. *)

Theorem hello_eq : hello = 42.
Proof. now unfold hello. Qed.

Print Assumptions hello_eq.
