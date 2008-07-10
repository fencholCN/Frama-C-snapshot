(* This file was originally generated by why.
   It can be modified; only the generated parts will be overwritten. *)

Require Import Why.
Require Export Match.

(*Why*) Parameter OUTPUT : forall (j: Z), unit.

(* Why obligation from file "brute_force.c", characters 369-373 *)
Lemma BF_po_1 : 
  forall (m: Z),
  forall (n: Z),
  forall (x: (array Z)),
  forall (y: (array Z)),
  forall (Pre10: (array_length x) = m /\ (array_length y) = n /\ 0 <= n /\
                 0 <= m),
  forall (j1: Z),
  forall (Post1: j1 = 0),
  forall (Variant1: Z),
  forall (j2: Z),
  forall (Pre9: Variant1 = (n - m + 1 - j2)),
  forall (Pre8: 0 <= j2),
  forall (Test8: j2 <= (n - m)),
  forall (i2: Z),
  forall (Post2: i2 = 0),
  forall (Variant3: Z),
  forall (i3: Z),
  forall (Pre6: Variant3 = (m - i3)),
  forall (Pre5: (0 <= i3 /\ i3 <= m) /\ (match_ x 0 y j2 i3)),
  forall (Test5: true = true),
  forall (Test4: i3 < m),
  0 <= i3 /\ i3 < (array_length x).
Proof.
auto with *.
Qed.

(* Why obligation from file "brute_force.c", characters 377-385 *)
Lemma BF_po_2 : 
  forall (m: Z),
  forall (n: Z),
  forall (x: (array Z)),
  forall (y: (array Z)),
  forall (Pre10: (array_length x) = m /\ (array_length y) = n /\ 0 <= n /\
                 0 <= m),
  forall (j1: Z),
  forall (Post1: j1 = 0),
  forall (Variant1: Z),
  forall (j2: Z),
  forall (Pre9: Variant1 = (n - m + 1 - j2)),
  forall (Pre8: 0 <= j2),
  forall (Test8: j2 <= (n - m)),
  forall (i2: Z),
  forall (Post2: i2 = 0),
  forall (Variant3: Z),
  forall (i3: Z),
  forall (Pre6: Variant3 = (m - i3)),
  forall (Pre5: (0 <= i3 /\ i3 <= m) /\ (match_ x 0 y j2 i3)),
  forall (Test5: true = true),
  forall (Test4: i3 < m),
  forall (Pre4: 0 <= i3 /\ i3 < (array_length x)),
  forall (c_aux_1: Z),
  forall (Post4: c_aux_1 = (access x i3)),
  0 <= (i3 + j2) /\ (i3 + j2) < (array_length y).
Proof.
auto with *.
Qed.

(* Why obligation from file "brute_force.c", characters 369-385 *)
Lemma BF_po_3 : 
  forall (m: Z),
  forall (n: Z),
  forall (x: (array Z)),
  forall (y: (array Z)),
  forall (Pre10: (array_length x) = m /\ (array_length y) = n /\ 0 <= n /\
                 0 <= m),
  forall (j1: Z),
  forall (Post1: j1 = 0),
  forall (Variant1: Z),
  forall (j2: Z),
  forall (Pre9: Variant1 = (n - m + 1 - j2)),
  forall (Pre8: 0 <= j2),
  forall (Test8: j2 <= (n - m)),
  forall (i2: Z),
  forall (Post2: i2 = 0),
  forall (Variant3: Z),
  forall (i3: Z),
  forall (Pre6: Variant3 = (m - i3)),
  forall (Pre5: (0 <= i3 /\ i3 <= m) /\ (match_ x 0 y j2 i3)),
  forall (Test5: true = true),
  forall (Test4: i3 < m),
  forall (Pre4: 0 <= i3 /\ i3 < (array_length x)),
  forall (c_aux_1: Z),
  forall (Post4: c_aux_1 = (access x i3)),
  forall (Pre3: 0 <= (i3 + j2) /\ (i3 + j2) < (array_length y)),
  forall (c_aux_2: Z),
  forall (Post3: c_aux_2 = (access y (i3 + j2))),
  forall (result4: bool),
  forall (Post25: (if result4 then c_aux_1 = c_aux_2 else c_aux_1 <> c_aux_2)),
  (if result4
   then (forall (i:Z),
         (i = (i3 + 1) -> ((0 <= i /\ i <= m) /\ (match_ x 0 y j2 i)) /\
          (Zwf 0 (m - i) (m - i3))))
   else ((i3 >= m ->
          (forall (j:Z),
           (j = (j2 + 1) -> 0 <= j /\
            (Zwf 0 (n - m + 1 - j) (n - m + 1 - j2)))) /\
          (match_ x 0 y j2 (array_length x)))) /\
   ((i3 < m ->
     (forall (j:Z),
      (j = (j2 + 1) -> 0 <= j /\ (Zwf 0 (n - m + 1 - j) (n - m + 1 - j2))))))).
Proof.
simple_destruct result4; intuition.
subst i.
apply match_right_extension; auto with *.
subst c_aux_1 c_aux_2; ring (0 + i3)%Z; ring (j2 + i3)%Z; assumption.
assert (i3 = array_length x).
 omega.
 subst i3; assumption.
Qed.

(* Why obligation from file "brute_force.c", characters 360-385 *)
Lemma BF_po_4 : 
  forall (m: Z),
  forall (n: Z),
  forall (x: (array Z)),
  forall (y: (array Z)),
  forall (Pre10: (array_length x) = m /\ (array_length y) = n /\ 0 <= n /\
                 0 <= m),
  forall (j1: Z),
  forall (Post1: j1 = 0),
  forall (Variant1: Z),
  forall (j2: Z),
  forall (Pre9: Variant1 = (n - m + 1 - j2)),
  forall (Pre8: 0 <= j2),
  forall (Test8: j2 <= (n - m)),
  forall (i2: Z),
  forall (Post2: i2 = 0),
  forall (Variant3: Z),
  forall (i3: Z),
  forall (Pre6: Variant3 = (m - i3)),
  forall (Pre5: (0 <= i3 /\ i3 <= m) /\ (match_ x 0 y j2 i3)),
  forall (Test5: true = true),
  forall (Test3: i3 >= m),
  ((i3 >= m ->
    (forall (j:Z),
     (j = (j2 + 1) -> 0 <= j /\ (Zwf 0 (n - m + 1 - j) (n - m + 1 - j2)))) /\
    (match_ x 0 y j2 (array_length x)))) /\
  ((i3 < m ->
    (forall (j:Z),
     (j = (j2 + 1) -> 0 <= j /\ (Zwf 0 (n - m + 1 - j) (n - m + 1 - j2)))))).
Proof.
intuition.
assert (i3 = array_length x).
 omega.
 subst i3; assumption.
Qed.

(* Why obligation from file "brute_force.c", characters 412-445 *)
Lemma BF_po_5 : 
  forall (m: Z),
  forall (n: Z),
  forall (x: (array Z)),
  forall (y: (array Z)),
  forall (Pre10: (array_length x) = m /\ (array_length y) = n /\ 0 <= n /\
                 0 <= m),
  forall (j1: Z),
  forall (Post1: j1 = 0),
  forall (Variant1: Z),
  forall (j2: Z),
  forall (Pre9: Variant1 = (n - m + 1 - j2)),
  forall (Pre8: 0 <= j2),
  forall (Test8: j2 <= (n - m)),
  forall (i2: Z),
  forall (Post2: i2 = 0),
  (0 <= i2 /\ i2 <= m) /\ (match_ x 0 y j2 i2).
Proof.
intuition.
subst i2; apply match_empty; auto with *.
Qed.

(* Why obligation from file "brute_force.c", characters 308-314 *)
Lemma BF_po_6 : 
  forall (m: Z),
  forall (n: Z),
  forall (x: (array Z)),
  forall (y: (array Z)),
  forall (Pre10: (array_length x) = m /\ (array_length y) = n /\ 0 <= n /\
                 0 <= m),
  forall (j1: Z),
  forall (Post1: j1 = 0),
  0 <= j1.
Proof.
intuition.
Qed.
