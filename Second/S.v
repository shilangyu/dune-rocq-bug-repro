From Repro Require Import F.
(* Require Import First.F. *)
(* Require Import F. *)
(* From Repro.First Require Import F. *)

Theorem hello_eq : hello = 42.
Proof. now unfold hello. Qed.

Print Assumptions hello_eq.
