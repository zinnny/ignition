(* MAST section: Pumps - example DFB_Motor instance *)
(* Declare in Data Editor -> Variables:                         *)
(*   P101       : DFB_Motor                                     *)
(*   P101_Start, P101_Stop, P101_Fbk, P101_Reset, P101_Run,     *)
(*   P101_Fault : EBOOL  (map to %I / %Q / %M as required)      *)
(*   LT101_HiHi : BOOL   (dry-run / level interlock)            *)

P101(i_xStartCmd    := P101_Start,
     i_xStopCmd     := P101_Stop,
     i_xRunFbk      := P101_Fbk,
     i_xInterlockOk := NOT LT101_HiHi,
     i_xReset       := P101_Reset,
     i_tFbkTimeout  := t#3s,
     q_xRunCmd      => P101_Run,
     q_xFault       => P101_Fault);
