(**************************************************************************)
(*                                                                        *)
(*  This file is part of Frama-C.                                         *)
(*                                                                        *)
(*  Copyright (C) 2007-2016                                               *)
(*    CEA (Commissariat à l'énergie atomique et aux énergies              *)
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

(** Constructions of the abstractions used by EVA. *)

(** Configuration of the abstract domain. *)
type config = {
  cvalue : bool;
  equalities : bool;
  bitwise : bool;
  apron_oct : bool;
  apron_box : bool;
  polka_loose : bool;
  polka_strict : bool;
  polka_equalities : bool;
}

(** Default configuration of EVA. *)
val default_config : config

(** Legacy configuration of EVA, with only the cvalue domain enabled.
    May be the default config as well. *)
val legacy_config : config

(** Build a configuration according to the analysis paramaters. *)
val configure : unit -> config


module type Value = sig
  include Abstract_value.External
  val reduce : t -> t
end

(** Types of the abstractions of the analysis: value, location and state
    abstractions.*)
module type S = sig
  module Val : Value
  module Loc : Abstract_location.External with type value = Val.t
                                           and type location = Precise_locs.precise_location
  module Dom : Abstract_domain.External with type value = Val.t
                                         and type location = Loc.location
end


(** Builds the abstractions according to a configuration. *)
val make : config -> (module S)


(** Two abstractions are instanciated at compile time: default and legacy
    (which may be the same). *)

module Legacy : S
module Default : S


(*
Local Variables:
compile-command: "make -C ../../../.."
End:
*)
