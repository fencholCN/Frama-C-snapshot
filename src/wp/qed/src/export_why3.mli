(**************************************************************************)
(*                                                                        *)
(*  This file is part of WP plug-in of Frama-C.                           *)
(*                                                                        *)
(*  Copyright (C) 2007-2012                                               *)
(*    CEA (Commissariat a l'�nergie atomique et aux �nergies              *)
(*         alternatives)                                                  *)
(*                                                                        *)
(*  you can redistribute it and/or modify it under the terms of the GNU   *)
(*  Lesser General Public License as published by the Free Software       *)
(*  Foundation, version 2.1.                                              *)
(*                                                                        *)
(*  It is distributed in the hope that it will be useful,                 *)
(*  but WITHOUT ANY WARRANTY; without even the implied warranty of        *)
(*  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *)
(*  GNU Lesser General Public License for more details.                   *)
(*                                                                        *)
(*  See the GNU Lesser General Public License version 2.1                 *)
(*  for more details (enclosed in the file licenses/LGPLv2.1).            *)
(*                                                                        *)
(**************************************************************************)

open Logic
open Format
open Plib
open Linker
open Engine

(** Exportation Engine for Why-3.

    Provides a full {{:Export.S.engine-c.html}engine} 
    from a {{:Export.S.linker-c.html}linker}. *)

module Make(T : Term) :
sig

  open T

  class virtual engine :
  object
    inherit [ADT.t,Field.t,Fun.t,tau,var,term] Engine.engine
    method op_record : string * string
    method pp_forall : tau -> var list printer
    method pp_intros : tau -> var list printer
    method pp_exists : tau -> var list printer
    method pp_param : var printer
    method pp_trigger : (var,Fun.t) ftrigger printer
    method pp_declare_symbol : cmode -> Fun.t printer
    method pp_declare_adt : formatter -> ADT.t -> int -> unit
    method pp_declare_def : formatter -> ADT.t -> int -> tau -> unit
    method pp_declare_sum : formatter -> ADT.t -> int -> (Fun.t * tau list) list -> unit
  end

end