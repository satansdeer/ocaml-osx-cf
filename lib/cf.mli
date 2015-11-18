(*
 * Copyright (c) 2015 David Sheets <sheets@alum.mit.edu>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 *)

module String : sig
  module Encoding : sig
    type t =
      | MacRoman
      | WindowsLatin1
      | ISOLatin1
      | NextStepLatin
      | ASCII
      | Unicode
      | UTF8
      | NonLossyASCII
      | UTF16
      | UTF16BE
      | UTF16LE
      | UTF32
      | UTF32BE
      | UTF32LE

    val t : t Ctypes.typ
  end

  type t

  val to_bytes : t -> bytes
  val of_bytes : bytes -> t

  val bytes : bytes Ctypes.typ
end

module Array : sig
  type t

  val to_carray : t -> unit Ctypes.ptr Ctypes.CArray.t
  val of_carray : unit Ctypes.ptr Ctypes.CArray.t -> t

  val carray : unit Ctypes.ptr Ctypes.CArray.t Ctypes.typ
end