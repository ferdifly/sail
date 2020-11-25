(*Generated by Lem from riscv_extras.lem.*)
open HolKernel Parse boolLib bossLib;
open lem_pervasivesTheory lem_pervasives_extraTheory sail2_instr_kindsTheory sail2_valuesTheory sail2_prompt_monadTheory sail2_operators_mwordsTheory sail2_promptTheory;

val _ = numLib.prefer_num();



val _ = new_theory "riscv_extras"

(*open import Pervasives*)
(*open import Pervasives_extra*)
(*open import Sail2_instr_kinds*)
(*open import Sail2_values*)
(*open import Sail2_operators_mwords*)
(*open import Sail2_prompt_monad*)
(*open import Sail2_prompt*)

val _ = type_abbrev((*  'a *) "bitvector" , ``:  'a words$word``);

val _ = Define `
 ((MEM_fence_rw_rw:unit -> 'b sail2_state_monad$sequential_state ->(((unit),'a)sail2_state_monad$result#'b sail2_state_monad$sequential_state)set) () =  (barrier Barrier_RISCV_rw_rw))`;

val _ = Define `
 ((MEM_fence_r_rw:unit -> 'b sail2_state_monad$sequential_state ->(((unit),'a)sail2_state_monad$result#'b sail2_state_monad$sequential_state)set)  () =  (barrier Barrier_RISCV_r_rw))`;

val _ = Define `
 ((MEM_fence_r_r:unit -> 'b sail2_state_monad$sequential_state ->(((unit),'a)sail2_state_monad$result#'b sail2_state_monad$sequential_state)set)   () =  (barrier Barrier_RISCV_r_r))`;

val _ = Define `
 ((MEM_fence_rw_w:unit -> 'b sail2_state_monad$sequential_state ->(((unit),'a)sail2_state_monad$result#'b sail2_state_monad$sequential_state)set)  () =  (barrier Barrier_RISCV_rw_w))`;

val _ = Define `
 ((MEM_fence_w_w:unit -> 'b sail2_state_monad$sequential_state ->(((unit),'a)sail2_state_monad$result#'b sail2_state_monad$sequential_state)set)   () =  (barrier Barrier_RISCV_w_w))`;

val _ = Define `
 ((MEM_fence_w_rw:unit -> 'b sail2_state_monad$sequential_state ->(((unit),'a)sail2_state_monad$result#'b sail2_state_monad$sequential_state)set)  () =  (barrier Barrier_RISCV_w_rw))`;

val _ = Define `
 ((MEM_fence_rw_r:unit -> 'b sail2_state_monad$sequential_state ->(((unit),'a)sail2_state_monad$result#'b sail2_state_monad$sequential_state)set)  () =  (barrier Barrier_RISCV_rw_r))`;

val _ = Define `
 ((MEM_fence_r_w:unit -> 'b sail2_state_monad$sequential_state ->(((unit),'a)sail2_state_monad$result#'b sail2_state_monad$sequential_state)set)   () =  (barrier Barrier_RISCV_r_w))`;

val _ = Define `
 ((MEM_fence_w_r:unit -> 'b sail2_state_monad$sequential_state ->(((unit),'a)sail2_state_monad$result#'b sail2_state_monad$sequential_state)set)   () =  (barrier Barrier_RISCV_w_r))`;

val _ = Define `
 ((MEM_fence_i:unit -> 'b sail2_state_monad$sequential_state ->(((unit),'a)sail2_state_monad$result#'b sail2_state_monad$sequential_state)set)     () =  (barrier Barrier_RISCV_i))`;


(*val MEMea                            : forall 'rv 'a 'e. Size 'a => bitvector 'a -> integer -> monad 'rv unit 'e*)
(*val MEMea_release                    : forall 'rv 'a 'e. Size 'a => bitvector 'a -> integer -> monad 'rv unit 'e*)
(*val MEMea_strong_release             : forall 'rv 'a 'e. Size 'a => bitvector 'a -> integer -> monad 'rv unit 'e*)
(*val MEMea_conditional                : forall 'rv 'a 'e. Size 'a => bitvector 'a -> integer -> monad 'rv unit 'e*)
(*val MEMea_conditional_release        : forall 'rv 'a 'e. Size 'a => bitvector 'a -> integer -> monad 'rv unit 'e*)
(*val MEMea_conditional_strong_release : forall 'rv 'a 'e. Size 'a => bitvector 'a -> integer -> monad 'rv unit 'e*)

val _ = Define `
 ((MEMea:'a words$word -> int -> 'rv sail2_state_monad$sequential_state ->(((unit),'e)sail2_state_monad$result#'rv sail2_state_monad$sequential_state)set) addr size1=                       (sail2_state_monad$write_mem_eaS 
  instance_Sail2_values_Bitvector_Machine_word_mword_dict Write_plain addr (nat_of_int size1)))`;

val _ = Define `
 ((MEMea_release:'a words$word -> int -> 'rv sail2_state_monad$sequential_state ->(((unit),'e)sail2_state_monad$result#'rv sail2_state_monad$sequential_state)set) addr size1=               (sail2_state_monad$write_mem_eaS 
  instance_Sail2_values_Bitvector_Machine_word_mword_dict Write_RISCV_release addr (nat_of_int size1)))`;

val _ = Define `
 ((MEMea_strong_release:'a words$word -> int -> 'rv sail2_state_monad$sequential_state ->(((unit),'e)sail2_state_monad$result#'rv sail2_state_monad$sequential_state)set) addr size1=        (sail2_state_monad$write_mem_eaS 
  instance_Sail2_values_Bitvector_Machine_word_mword_dict Write_RISCV_strong_release addr (nat_of_int size1)))`;

val _ = Define `
 ((MEMea_conditional:'a words$word -> int -> 'rv sail2_state_monad$sequential_state ->(((unit),'e)sail2_state_monad$result#'rv sail2_state_monad$sequential_state)set) addr size1=           (sail2_state_monad$write_mem_eaS 
  instance_Sail2_values_Bitvector_Machine_word_mword_dict Write_RISCV_conditional addr (nat_of_int size1)))`;

val _ = Define `
 ((MEMea_conditional_release:'a words$word -> int -> 'rv sail2_state_monad$sequential_state ->(((unit),'e)sail2_state_monad$result#'rv sail2_state_monad$sequential_state)set) addr size1=   (sail2_state_monad$write_mem_eaS 
  instance_Sail2_values_Bitvector_Machine_word_mword_dict Write_RISCV_conditional_release addr (nat_of_int size1)))`;

val _ = Define `
 ((MEMea_conditional_strong_release:'a words$word -> int -> 'rv sail2_state_monad$sequential_state ->(((unit),'e)sail2_state_monad$result#'rv sail2_state_monad$sequential_state)set) addr size1= 
                                          (sail2_state_monad$write_mem_eaS 
  instance_Sail2_values_Bitvector_Machine_word_mword_dict Write_RISCV_conditional_strong_release addr (nat_of_int size1)))`;


(*val MEMr                         : forall 'rv 'a 'b 'e. Size 'a, Size 'b => integer -> integer -> bitvector 'a -> bitvector 'a -> monad 'rv (bitvector 'b) 'e*)
(*val MEMr_acquire                 : forall 'rv 'a 'b 'e. Size 'a, Size 'b => integer -> integer -> bitvector 'a -> bitvector 'a -> monad 'rv (bitvector 'b) 'e*)
(*val MEMr_strong_acquire          : forall 'rv 'a 'b 'e. Size 'a, Size 'b => integer -> integer -> bitvector 'a -> bitvector 'a -> monad 'rv (bitvector 'b) 'e*)
(*val MEMr_reserved                : forall 'rv 'a 'b 'e. Size 'a, Size 'b => integer -> integer -> bitvector 'a -> bitvector 'a -> monad 'rv (bitvector 'b) 'e*)
(*val MEMr_reserved_acquire        : forall 'rv 'a 'b 'e. Size 'a, Size 'b => integer -> integer -> bitvector 'a -> bitvector 'a -> monad 'rv (bitvector 'b) 'e*)
(*val MEMr_reserved_strong_acquire : forall 'rv 'a 'b 'e. Size 'a, Size 'b => integer -> integer -> bitvector 'a -> bitvector 'a -> monad 'rv (bitvector 'b) 'e*)

val _ = Define `
 ((MEMr:int -> int -> 'a words$word -> 'a words$word -> 'rv sail2_state_monad$sequential_state ->((('b words$word),'e)sail2_state_monad$result#'rv sail2_state_monad$sequential_state)set) addrsize size1 hexRAM addr=                          (sail2_state_monad$read_memS 
  instance_Sail2_values_Bitvector_Machine_word_mword_dict instance_Sail2_values_Bitvector_Machine_word_mword_dict Read_plain addr size1))`;

val _ = Define `
 ((MEMr_acquire:int -> int -> 'a words$word -> 'a words$word -> 'rv sail2_state_monad$sequential_state ->((('b words$word),'e)sail2_state_monad$result#'rv sail2_state_monad$sequential_state)set) addrsize size1 hexRAM addr=                  (sail2_state_monad$read_memS 
  instance_Sail2_values_Bitvector_Machine_word_mword_dict instance_Sail2_values_Bitvector_Machine_word_mword_dict Read_RISCV_acquire addr size1))`;

val _ = Define `
 ((MEMr_strong_acquire:int -> int -> 'a words$word -> 'a words$word -> 'rv sail2_state_monad$sequential_state ->((('b words$word),'e)sail2_state_monad$result#'rv sail2_state_monad$sequential_state)set) addrsize size1 hexRAM addr=           (sail2_state_monad$read_memS 
  instance_Sail2_values_Bitvector_Machine_word_mword_dict instance_Sail2_values_Bitvector_Machine_word_mword_dict Read_RISCV_strong_acquire addr size1))`;

val _ = Define `
 ((MEMr_reserved:int -> int -> 'a words$word -> 'a words$word -> 'rv sail2_state_monad$sequential_state ->((('b words$word),'e)sail2_state_monad$result#'rv sail2_state_monad$sequential_state)set) addrsize size1 hexRAM addr=                 (sail2_state_monad$read_memS 
  instance_Sail2_values_Bitvector_Machine_word_mword_dict instance_Sail2_values_Bitvector_Machine_word_mword_dict Read_RISCV_reserved addr size1))`;

val _ = Define `
 ((MEMr_reserved_acquire:int -> int -> 'a words$word -> 'a words$word -> 'rv sail2_state_monad$sequential_state ->((('b words$word),'e)sail2_state_monad$result#'rv sail2_state_monad$sequential_state)set) addrsize size1 hexRAM addr=         (sail2_state_monad$read_memS 
  instance_Sail2_values_Bitvector_Machine_word_mword_dict instance_Sail2_values_Bitvector_Machine_word_mword_dict Read_RISCV_reserved_acquire addr size1))`;

val _ = Define `
 ((MEMr_reserved_strong_acquire:int -> int -> 'a words$word -> 'a words$word -> 'rv sail2_state_monad$sequential_state ->((('b words$word),'e)sail2_state_monad$result#'rv sail2_state_monad$sequential_state)set) addrsize size1 hexRAM addr=  (sail2_state_monad$read_memS 
  instance_Sail2_values_Bitvector_Machine_word_mword_dict instance_Sail2_values_Bitvector_Machine_word_mword_dict Read_RISCV_reserved_strong_acquire addr size1))`;


(*val write_ram : forall 'rv 'a 'b 'e. Size 'a, Size 'b =>
  integer -> integer -> bitvector 'a -> bitvector 'a -> bitvector 'b -> monad 'rv unit 'e*)
val _ = Define `
 ((write_ram:int -> int -> 'a words$word -> 'a words$word -> 'b words$word -> 'rv sail2_state_monad$sequential_state ->(((unit),'e)sail2_state_monad$result#'rv sail2_state_monad$sequential_state)set) addrsize size1 hexRAM address value=  (sail2_state_monad$bindS
  (sail2_state_monad$write_mem_valS 
  instance_Sail2_values_Bitvector_Machine_word_mword_dict value) (\b .  (case (b ) of ( _ ) => sail2_state_monad$returnS ()  ))))`;


(*val read_ram : forall 'rv 'a 'b 'e. Size 'a, Size 'b =>
  integer -> integer -> bitvector 'a -> bitvector 'a -> monad 'rv (bitvector 'b) 'e*)
val _ = Define `
 ((read_ram:int -> int -> 'a words$word -> 'a words$word -> 'rv sail2_state_monad$sequential_state ->((('b words$word),'e)sail2_state_monad$result#'rv sail2_state_monad$sequential_state)set) addrsize size1 hexRAM address=
   (sail2_state_monad$read_memS 
  instance_Sail2_values_Bitvector_Machine_word_mword_dict instance_Sail2_values_Bitvector_Machine_word_mword_dict Read_plain address size1))`;


(*val load_reservation : forall 'a. Size 'a => bitvector 'a -> unit*)
val _ = Define `
 ((load_reservation:'a words$word -> unit) addr=  () )`;


val _ = Define `
 ((speculate_conditional_success:'c -> 'a sail2_state_monad$sequential_state ->(((bool),'b)sail2_state_monad$result#'a sail2_state_monad$sequential_state)set) _=  (sail2_state_monad$excl_resultS () ))`;


val _ = Define `
 ((cancel_reservation:unit -> unit) () =  () )`;


(*val plat_ram_base : forall 'a. Size 'a => unit -> bitvector 'a*)
val _ = Define `
 ((plat_ram_base:unit -> 'a words$word) () =  (integer_word$i2w(( 0 : int))))`;


(*val plat_ram_size : forall 'a. Size 'a => unit -> bitvector 'a*)
val _ = Define `
 ((plat_ram_size:unit -> 'a words$word) () =  (integer_word$i2w(( 0 : int))))`;


(*val plat_rom_base : forall 'a. Size 'a => unit -> bitvector 'a*)
val _ = Define `
 ((plat_rom_base:unit -> 'a words$word) () =  (integer_word$i2w(( 0 : int))))`;


(*val plat_rom_size : forall 'a. Size 'a => unit -> bitvector 'a*)
val _ = Define `
 ((plat_rom_size:unit -> 'a words$word) () =  (integer_word$i2w(( 0 : int))))`;


(*val plat_clint_base : forall 'a. Size 'a => unit -> bitvector 'a*)
val _ = Define `
 ((plat_clint_base:unit -> 'a words$word) () =  (integer_word$i2w(( 0 : int))))`;


(*val plat_clint_size : forall 'a. Size 'a => unit -> bitvector 'a*)
val _ = Define `
 ((plat_clint_size:unit -> 'a words$word) () =  (integer_word$i2w(( 0 : int))))`;


(*val plat_enable_dirty_update : unit -> bool*)
val _ = Define `
 ((plat_enable_dirty_update:unit -> bool) () =  F)`;


(*val plat_enable_misaligned_access : unit -> bool*)
val _ = Define `
 ((plat_enable_misaligned_access:unit -> bool) () =  F)`;


(*val plat_insns_per_tick : unit -> integer*)
val _ = Define `
 ((plat_insns_per_tick:unit -> int) () = (( 1 : int)))`;


(*val plat_htif_tohost : forall 'a. Size 'a => unit -> bitvector 'a*)
val _ = Define `
 ((plat_htif_tohost:unit -> 'a words$word) () =  (integer_word$i2w(( 0 : int))))`;


(*val plat_term_write : forall 'a. Size 'a => bitvector 'a -> unit*)
val _ = Define `
 ((plat_term_write:'a words$word -> unit) _=  () )`;


(*val plat_term_read : forall 'a. Size 'a => unit -> bitvector 'a*)
val _ = Define `
 ((plat_term_read:unit -> 'a words$word) () =  (integer_word$i2w(( 0 : int))))`;


(*val shift_bits_right : forall 'a 'b. Size 'a, Size 'b => bitvector 'a -> bitvector 'b -> bitvector 'a*)
val _ = Define `
 ((shift_bits_right:'a words$word -> 'b words$word -> 'a words$word) v m=  (shiftr v (lem$w2ui m)))`;

(*val shift_bits_left : forall 'a 'b. Size 'a, Size 'b => bitvector 'a -> bitvector 'b -> bitvector 'a*)
val _ = Define `
 ((shift_bits_left:'a words$word -> 'b words$word -> 'a words$word) v m=  (shiftl v (lem$w2ui m)))`;


(*val print_string : string -> string -> unit*)
val _ = Define `
 ((print_string:string -> string -> unit) msg s=  () )`;
 (* print_endline (msg ^ s) *)

(*val prerr_string : string -> string -> unit*)
val _ = Define `
 ((prerr_string:string -> string -> unit) msg s=  (prerr_endline ( STRCAT msg s)))`;


(*val prerr_bits : forall 'a. Size 'a => string -> bitvector 'a -> unit*)
val _ = Define `
 ((prerr_bits:string -> 'a words$word -> unit) msg bs=  (prerr_endline ( STRCAT msg (show_bitlist (MAP bitU_of_bool (bitstring$w2v bs))))))`;


(*val print_bits : forall 'a. Size 'a => string -> bitvector 'a -> unit*)
val _ = Define `
 ((print_bits:string -> 'a words$word -> unit) msg bs=  () )`;
 (* print_endline (msg ^ (show_bitlist (bits_of bs))) *)
val _ = export_theory()
