; ===========================================================================

; Segment type: Pure code
; segment "ROM"
initial_sp:	dc.l $FFFFFD00
initial_pc:	dc.l initial_pc_entry
bus_error:	dc.l mmu_access_level_violation_error_entry
address_rrror:	dc.l $FFFFFD7E
illegal_insn:	dc.l $FFFFFD7E
divide_by_zero:	dc.l $FFFFFD84
out_of_bounds:	dc.l $FFFFFD78
trap:		dc.l $FFFFFD8A
privilege_violation:dc.l $FFFFFD9C
trace:		dc.l $FFFFFDA2
line_a_emulator:dc.l $FFFFFD90
line_f_emulator:dc.l $FFFFFD96
		dc.l mmu_access_level_violation_error_entry
coprocessor_protocol_violation:dc.l mmu_access_level_violation_error_entry
format_error:	dc.l mmu_access_level_violation_error_entry
uninitialized_interrupt:dc.l mmu_access_level_violation_error_entry
		dc.l mmu_access_level_violation_error_entry
		dc.l mmu_access_level_violation_error_entry
		dc.l mmu_access_level_violation_error_entry
		dc.l mmu_access_level_violation_error_entry
		dc.l mmu_access_level_violation_error_entry
		dc.l mmu_access_level_violation_error_entry
		dc.l mmu_access_level_violation_error_entry
		dc.l mmu_access_level_violation_error_entry
spurious_interrupt:dc.l mmu_access_level_violation_error_entry
level_1_interrupt_autovector:dc.l mmu_access_level_violation_error_entry
level_2_interrupt_autovector:dc.l $FFFFFD12
level_3_interrupt_autovector:dc.l mmu_access_level_violation_error_entry
level_4_interrupt_autovector:dc.l $FFFFFD0C
level_5_interrupt_autovector:dc.l mmu_access_level_violation_error_entry
level_6_interrupt_autovector:dc.l $FFFFFD06
level_7_interrupt_autovector:dc.l mmu_access_level_violation_error_entry
trap_0_instruction:dc.l $FFFFFD18
trap_1_instruction:dc.l $FFFFFD1E
trap_2_instruction:dc.l $FFFFFD24
trap_3_instruction:dc.l $FFFFFD2A
trap_4_instruction:dc.l $FFFFFD30
trap_5_instruction:dc.l $FFFFFD36
trap_6_instruction:dc.l $FFFFFD3C
trap_7_instruction:dc.l $FFFFFD42
trap_8_instruction:dc.l $FFFFFD48
trap_9_instruction:dc.l $FFFFFD4E
trap_a_instruction:dc.l $FFFFFD54
trap_b_instruction:dc.l $FFFFFD5A
trap_c_instruction:dc.l $FFFFFD60
trap_d_instruction:dc.l $FFFFFD66
trap_e_instruction:dc.l $FFFFFD6C
trap_f_instruction:dc.l $FFFFFD72
fp_branch_or_set_on_unordered_condition:dc.l mmu_access_level_violation_error_entry
fp_inexact_result:dc.l mmu_access_level_violation_error_entry
fp_divide_by_zero:dc.l mmu_access_level_violation_error_entry
fp_underflow:	dc.l mmu_access_level_violation_error_entry
fp_operand_error:dc.l mmu_access_level_violation_error_entry
fp_overflow:	dc.l mmu_access_level_violation_error_entry
fp_signaling_nan:dc.l mmu_access_level_violation_error_entry
fp_unimplemented_data_typ:dc.l mmu_access_level_violation_error_entry
mmu_configuration_error:dc.l mmu_access_level_violation_error_entry
mmu_illegal_operation_error:dc.l mmu_access_level_violation_error_entry
mmu_access_level_violation_error:dc.l mmu_access_level_violation_error_entry
		dc.l mmu_access_level_violation_error_entry
		dc.l mmu_access_level_violation_error_entry
		dc.l mmu_access_level_violation_error_entry
		dc.l mmu_access_level_violation_error_entry
		dc.l mmu_access_level_violation_error_entry
aSegaMegaDrive:	dc.b 'SEGA MEGA DRIVE '
aCSega1991Nov:	dc.b '(C)SEGA 1991.NOV'
aMegaCdBootRom1:dc.b 'MEGA-CD BOOT ROM 11/14-1991     21:00      1.00c'
aMegaCdBootRom:	dc.b 'MEGA-CD BOOT ROM				'
aBr000002100:	dc.b 'BR 000002-1.00'
		dc.w $DFE6
aJ:		dc.b 'J               '
		dc.l 0
		dc.l $1FFFF
		dc.l startram
		dc.l endram
		dc.l $20202020
		dc.l $20202020
		dc.l $20202020
		dc.l $20202020
		dc.b '						'
aJ_0:		dc.b 'J               '

; =============== S U B R O U T I N E =======================================

; Attributes: noreturn

		global mmu_access_level_violation_error_entry
mmu_access_level_violation_error_entry: ; DATA XREF: ROM:bus_error↑o
				        ; ROM:00000030↑o ...
		lea	(progjmpram).w,a0
		move.w	#$4EF9,d0
		move.w	d0,(a0)+
		move.l	#loc_5DA,(a0)+

loc_210:				; CODE XREF: mmu_access_level_violation_error_entry:loc_210↓j
		bra.s	loc_210
; End of function mmu_access_level_violation_error_entry

; ---------------------------------------------------------------------------
		rte
; ---------------------------------------------------------------------------
		dcb.b $6C,$FF
; ---------------------------------------------------------------------------
		bra.w	loc_5DA
; ---------------------------------------------------------------------------
		bra.w	initial_pc_entry
; ---------------------------------------------------------------------------
		bra.w	loc_5F0
; ---------------------------------------------------------------------------
		bra.w	loc_5E8
; ---------------------------------------------------------------------------
		bra.w	loc_7DC
; ---------------------------------------------------------------------------
		bra.w	loc_840
; ---------------------------------------------------------------------------
		bra.w	sub_EFC
; ---------------------------------------------------------------------------
		bra.w	loc_F6A

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_2A0:				; CODE XREF: sub_573C+38↓p
		bra.w	sub_8B8
; End of function sub_2A0

; ---------------------------------------------------------------------------
		bra.w	loc_8DC
; ---------------------------------------------------------------------------
		bra.w	sub_91A
; ---------------------------------------------------------------------------
		bra.w	sub_86C

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_2B0:				; CODE XREF: sub_573C+34↓p
		bra.w	loc_876
; End of function sub_2B0

; ---------------------------------------------------------------------------
		bra.w	loc_924
; ---------------------------------------------------------------------------
		bra.w	loc_922
; ---------------------------------------------------------------------------
		bra.w	loc_954
; ---------------------------------------------------------------------------
		bra.w	loc_956
; ---------------------------------------------------------------------------
		bra.w	sub_ACA
; ---------------------------------------------------------------------------
		bra.w	loc_AEE
; ---------------------------------------------------------------------------
		bra.w	loc_B8E
; ---------------------------------------------------------------------------
		bra.w	loc_99E

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_2D4:				; CODE XREF: ROM:0000572A↓p
		bra.w	sub_9F4
; End of function sub_2D4

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_573C

loc_2D8:				; CODE XREF: sub_573C+A8↓j
		bra.w	sub_BB2
; END OF FUNCTION CHUNK FOR sub_573C

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_2DC:				; CODE XREF: sub_573C+4↓p
		bra.w	sub_BCC
; End of function sub_2DC

; ---------------------------------------------------------------------------
		bra.w	loc_BE2

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

j_palload:		              ; CODE XREF: sub_573C+8C↓p
		bra.w	palload
; End of function j_palload

; ---------------------------------------------------------------------------
		bra.w	sub_BFA
; ---------------------------------------------------------------------------
		bra.w	nemdectovram
; ---------------------------------------------------------------------------
		bra.w	nemdectoram
; ---------------------------------------------------------------------------
		bra.w	sub_162C
; ---------------------------------------------------------------------------
		bra.w	sub_1584
; ---------------------------------------------------------------------------
		bra.w	loc_1590
; ---------------------------------------------------------------------------
		bra.w	sub_15A2
; ---------------------------------------------------------------------------
		bra.w	loc_812

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_308:				; CODE XREF: ROM:loc_4468↓p
				        ; sub_4482+E↓p ...
		bra.w	sub_80C
; End of function sub_308

; ---------------------------------------------------------------------------
		bra.w	sub_125A
; ---------------------------------------------------------------------------
		bra.w	loc_12F6
; ---------------------------------------------------------------------------
		bra.w	loc_826
; ---------------------------------------------------------------------------
		bra.w	loc_85C
; ---------------------------------------------------------------------------
		bra.w	sub_130A
; ---------------------------------------------------------------------------
		bra.w	sub_1350

; =============== S U B R O U T I N E =======================================

; Attributes: thunk

sub_324:				; CODE XREF: sub_573C+80↓p
		bra.w	sub_1344
; End of function sub_324

; ---------------------------------------------------------------------------
		bra.w	sub_1332
; ---------------------------------------------------------------------------
		bra.w	sub_12C0
; ---------------------------------------------------------------------------
		bra.w	enidec
; ---------------------------------------------------------------------------
		bra.w	sub_138E
; ---------------------------------------------------------------------------
		bra.w	sub_13B8
; ---------------------------------------------------------------------------
		bra.w	sub_13D8
; ---------------------------------------------------------------------------
		bra.w	sub_FBC
; ---------------------------------------------------------------------------
		bra.w	sub_FEC
; ---------------------------------------------------------------------------
		bra.w	sub_1056
; ---------------------------------------------------------------------------
		bra.w	sub_10C6
; ---------------------------------------------------------------------------
		bra.w	loc_11D6
; ---------------------------------------------------------------------------
		bra.w	loc_11E0
; ---------------------------------------------------------------------------
		bra.w	loc_11EA
; ---------------------------------------------------------------------------
		bra.w	sub_11F4
; ---------------------------------------------------------------------------
		bra.w	sub_4288
; ---------------------------------------------------------------------------
		bra.w	loc_429A
; ---------------------------------------------------------------------------
		bra.w	sub_40E
; ---------------------------------------------------------------------------
		bra.w	sub_B3C
; ---------------------------------------------------------------------------
		bra.w	loc_B62
; ---------------------------------------------------------------------------
		bra.w	loc_A64
; ---------------------------------------------------------------------------
		bra.w	sub_1124
; ---------------------------------------------------------------------------
		bra.w	sub_3530
; ---------------------------------------------------------------------------
		bra.w	loc_13EA
; ---------------------------------------------------------------------------
		bra.w	loc_BBA
; ---------------------------------------------------------------------------
		bra.w	loc_C60
; ---------------------------------------------------------------------------
		bra.w	loc_CBC
; ---------------------------------------------------------------------------
		bra.w	loc_CA8
; ---------------------------------------------------------------------------
		bra.w	loc_141A

; =============== S U B R O U T I N E =======================================


sub_398:
		lea	(progjmpram).w,a0
		move.w	#$4EF9,d0
		move.w	d0,(a0)+
		move.l	#loc_5DA,(a0)+
		move.w	d0,(a0)+
		move.l	#sub_7A4,(a0)+
		lea	(nullsub_1).w,a1
		moveq	#$11,d1

loc_3B6:
		move.w	d0,(a0)+
		move.l	a1,(a0)+
		dbf	d1,loc_3B6
		lea	(mmu_access_level_violation_error_entry).l,a1
		moveq	#7,d1

loc_3C6:
		move.w	d0,(a0)+
		move.l	a1,(a0)+
		dbf	d1,loc_3C6
		move.w	d0,(a0)+
		move.l	#locret_400,(a0)+
		move.w	d0,(a0)+
		move.l	#loc_58CE,(a0)
		lea	aRamCartridg(pc),a1 ; "RAM_CARTRIDG"
		lea	($400001).l,a2
		tst.b	(a2)
		bpl.s	locret_400
		lea	$F(a2),a2
		moveq	#5,d1

loc_3F2:
		cmpm.w	(a1)+,(a2)+
		dbne	d1,loc_3F2
		bne.s	locret_400
		move.l	#$400020,(a0)

locret_400:
		rts
; End of function sub_398

; ---------------------------------------------------------------------------
aRamCartridg:   dc.b "RAM_CARTRIDG"

; =============== S U B R O U T I N E =======================================


sub_40E:
		move.l	a1,(FD08_address).w
		rts
; End of function sub_40E


; =============== S U B R O U T I N E =======================================


sub_414:
		move.l	a1,(FDAA_address).w
		rts
; End of function sub_414


; =============== S U B R O U T I N E =======================================


initial_pc_entry:
		ori	#$700,sr
		btst	#6,($A1000D).l
		beq.s	loc_43C
		movea.l	(initial_sp).w,sp

loc_42C:
		move.w	($C00004).l,d3
		btst	#1,d3
		bne.s	loc_42C
		bra.w	loc_562
; ---------------------------------------------------------------------------

loc_43C:
		move.l	#$C0000000,($C00004).l
		moveq	#0,d0
		move.w	#($80)/4-1,d1
		lea	($C00000).l,a5

loc_452:
		move.l	d0,(a5)
		dbf	d1,loc_452
		tst.l	($A10008).l
		bne.s	loc_466
		tst.w	($A1000C).l

loc_466:
		bne.s	loc_4E4
		lea	word_4E6(pc),a5
		movem.w	(a5)+,d5-d7
		movem.l	(a5)+,a0-a4
		move.b	-$10FF(a1),d0
		andi.b	#$F,d0
		beq.s	loc_486
		move.l	#"SEGA",$2F00(a1)

loc_486:
		move.w	(a4),d0
		moveq	#0,d0
		movea.l d0,a6
		move.l	a6,usp
		moveq	#$17,d1

loc_490:
		move.b	(a5)+,d5
		move.w	d5,(a4)
		add.w	d7,d5
		dbf	d1,loc_490
		move.l	(a5)+,(a4)
		move.w	d0,(a3)
		move.w	d7,(a1)
		move.w	d7,(a2)

loc_4A2:
		btst	d0,(a1)
		bne.s	loc_4A2
		moveq	#$25,d2

loc_4A8:
		move.b	(a5)+,(a0)+
		dbf	d2,loc_4A8
		move.w	d0,(a2)
		move.w	d0,(a1)
		move.w	d7,(a2)

loc_4B4:
		move.l	d0,-(a6)
		dbf	d6,loc_4B4
		move.l	(a5)+,(a4)
		move.l	(a5)+,(a4)
		moveq	#$1F,d3

loc_4C0:
		move.l	d0,(a3)
		dbf	d3,loc_4C0
		move.l	(a5)+,(a4)
		moveq	#$13,d4

loc_4CA:
		move.l	d0,(a3)
		dbf	d4,loc_4CA
		moveq	#3,d5

loc_4D2:
		move.b	(a5)+,$11(a3)
		dbf	d5,loc_4D2
		move.w	d0,(a2)
		movem.l	(a6),d0-d7/a0-a6
		move	#$2700,sr

loc_4E4:
		bra.s	loc_552
; ---------------------------------------------------------------------------
word_4E6:       dc.w $8000
		dc.w $3FFF
		dc.w $100
		dc.l $A00000
		dc.l $A11100
		dc.l $A11200
		dc.l $C00000
		dc.l $C00004
		dc.b   4
		dc.b $14
		dc.b $30 ; 0
		dc.b $3C ; <
		dc.b   7
		dc.b $6C ; l
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b $81
		dc.b $37 ; 7
		dc.b   0
		dc.b   1
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b $80
		dc.b $40 ; @
		dc.b   0
		dc.b   0
		dc.b $80
		dc.b $AF
		dc.b   1
		dc.b $D9
		dc.b $1F
		dc.b $11
		dc.b $27 ; '
		dc.b   0
		dc.b $21 ; !
		dc.b $26 ; &
		dc.b   0
		dc.b $F9
		dc.b $77 ; w
		dc.b $ED
		dc.b $B0
		dc.b $DD
		dc.b $E1
		dc.b $FD
		dc.b $E1
		dc.b $ED
		dc.b $47 ; G
		dc.b $ED
		dc.b $4F ; O
		dc.b $D1
		dc.b $E1
		dc.b $F1
		dc.b   8
		dc.b $D9
		dc.b $C1
		dc.b $D1
		dc.b $E1
		dc.b $F1
		dc.b $F9
		dc.b $F3
		dc.b $ED
		dc.b $56 ; V
		dc.b $36 ; 6
		dc.b $E9
		dc.b $E9
		dc.w $8104
		dc.w $8F02
		dc.l $C0000000
		dc.l $40000010
		dc.b $9F,$BF,$DF,$FF
; ---------------------------------------------------------------------------

loc_552:				; CODE XREF: initial_pc_entry:loc_4E4↑j
		tst.w	($C00004).l
		jsr	sub_86C
		jsr	sub_8B8
		bra.s	loc_570
; ---------------------------------------------------------------------------

loc_562:				; CODE XREF: initial_pc_entry+1E↑j
		cmpi.w  #$4EF9,(progjmpram).w
		bne.w	loc_5DA
		jmp	progjmpram
; ---------------------------------------------------------------------------

loc_570:				; CODE XREF: initial_pc_entry+146↑j
		moveq	#$FFFFFFFF,d1
		bsr.w	sub_123E
		bsr.w	sub_63A
		bsr.w	sub_6E4

loc_57E:				; CODE XREF: initial_pc_entry+1CC↓j
		jsr	sub_398
		bsr.w	sub_F54
		jsr	sounddriverload
		bsr.w	sub_68A
		jsr	sub_80C
		bsr.w	sub_FBC
		lea	($A1200F).l,a4

loc_59C:				; CODE XREF: initial_pc_entry+184↓j
		move.b  (a4),d0
		bne.s	loc_59C
		moveq	#1,d0
		moveq	#4,d1
		jsr	sub_11F4
		moveq	#4,d0
		jsr	(sub_630).l

loc_5B0:				; CODE XREF: initial_pc_entry+1A4↓j
				        ; initial_pc_entry+214↓j
		lea	(gamemode).w,a0
		move.w  (a0),d0
		andi.w  #$7FFC,d0
		jsr	loc_5C0(pc,d0.w)
		bra.s	loc_5B0
; ---------------------------------------------------------------------------

loc_5C0:
		nop
		rts
; ---------------------------------------------------------------------------
		bra.w	loc_182E
; ---------------------------------------------------------------------------
		bra.w	loc_1E06
; ---------------------------------------------------------------------------
		bra.w	loc_4234
; ---------------------------------------------------------------------------
		bra.w	loc_4434
; ---------------------------------------------------------------------------
		jmp	startram
; ---------------------------------------------------------------------------

loc_5DA:				; CODE XREF: ROM:00000280↑j
				        ; initial_pc_entry+14E↑j
				        ; DATA XREF: ...
		ori	#$700,sr
		jsr	sub_86C
		jsr	sub_8B8
		bra.s	loc_57E
; ---------------------------------------------------------------------------

loc_5E8:				; CODE XREF: ROM:0000028C↑j
				        ; initial_pc_entry+4020↓j
		ori	#$700,sr
		movea.l (initial_sp).w,sp

loc_5F0:				; CODE XREF: ROM:00000288↑j
		ori	#$700,sr
		jsr	sub_86C
		jsr	sub_8B8
		jsr	sub_398
		bsr.w	sub_F54
		jsr	sounddriverload
		bsr.w	sub_68A
		jsr	sub_80C
		bsr.w	sub_FBC
		lea	($A1200F).l,a4

loc_61A:				; CODE XREF: initial_pc_entry+202↓j
		move.b  (a4),d0
		bne.s	loc_61A
		bsr.w	sub_10B8
		moveq	#1,d0
		moveq	#8,d1
		jsr	sub_11F4
		moveq	#8,d0
		bsr.s   sub_630
		bra.s	loc_5B0
; End of function initial_pc_entry


; =============== S U B R O U T I N E =======================================


sub_630:				; CODE XREF: initial_pc_entry+190↑p
				        ; initial_pc_entry+212↑p ...
		andi.w  #$1C,d0
		move.w	d0,(gamemode).w
		rts
; End of function sub_630


; =============== S U B R O U T I N E =======================================


sub_63A:				; CODE XREF: initial_pc_entry+15C↑p
		lea	($A12001).l,a5
		lea	1(a5),a6

loc_644:				; CODE XREF: sub_63A+E↓j
		bset    #1,(a5)
		beq.s	loc_644
		move.w  (a6),d5
		moveq	#0,d7
		andi.w  #2,d5
		ori.w   #$40,d5 ; '@'
		move.w	d5,(a6)
		bsr.s   sub_678
		andi.w  #2,d5
		ori.w   #$80,d5
		move.w	d5,(a6)
		bsr.s   sub_678
		andi.w  #2,d5
		ori.w   #$C0,d5
		move.w	d5,(a6)
		bsr.s   sub_678
		andi.w  #2,d5
		move.w	d5,(a6)
; End of function sub_63A


; =============== S U B R O U T I N E =======================================


sub_678:				; CODE XREF: sub_63A+1E↑p
				        ; sub_63A+2A↑p ...
		lea	($20000).l,a0
		move.w	#$7FFF,d0

loc_682:				; CODE XREF: sub_678+C↓j
		move.l	d7,(a0)+
		dbf	d0,loc_682
		rts
; End of function sub_678


; =============== S U B R O U T I N E =======================================


sub_68A:				; CODE XREF: initial_pc_entry+170↑p
				        ; initial_pc_entry+1EE↑p
		lea	($A12001).l,a5

loc_690:				; CODE XREF: sub_68A+A↓j
		bclr    #0,(a5)
		bne.s	loc_690
		lea	1(a5),a6
		move.w  (a6),d5
		andi.w  #2,d5
		move.w	d5,(a6)
		lea	(kos_16000).l,a0
		lea	($20000).l,a1
		bsr.w	kosdec
		lea	(kos_13000).l,a0
		lea	($26000).l,a1
		bsr.w	kosdec
		lea	(kos_1A000).l,a0
		lea	($38000).l,a1
		bsr.w	kosdec
		move.b  #$2A,(a6) ; '*'

loc_6D6:				; CODE XREF: sub_68A+50↓j
		bset    #0,(a5)
		beq.s	loc_6D6

loc_6DC:				; CODE XREF: sub_68A+56↓j
		bclr    #1,(a5)
		bne.s	loc_6DC
		rts
; End of function sub_68A


; =============== S U B R O U T I N E =======================================


sub_6E4:				; CODE XREF: initial_pc_entry+160↑p
		btst	#2,(a6)
		bne.s	locret_700
		btst	#0,(a6)
		beq.s	locret_700
		lea	($200000).l,a0
		moveq	#$FFFFFFFF,d0
		moveq	#0,d7

loc_6FA:				; CODE XREF: sub_6E4+18↓j
		move.l	d7,(a0)
		dbf	d0,loc_6FA

locret_700:		             ; CODE XREF: sub_6E4+4↑j
				        ; sub_6E4+A↑j
		rts
; End of function sub_6E4

; ---------------------------------------------------------------------------

kosdec:				 ; CODE XREF: sub_68A+24↑p
				        ; sub_68A+34↑p ...
		subq.l  #2,sp
		move.b  (a0)+,1(sp)
		move.b  (a0)+,(sp)
		move.w  (sp),d5
		moveq	#$F,d4

loc_70E:				; CODE XREF: ROM:00000726↓j
				        ; ROM:0000078C↓j ...
		lsr.w   #1,d5
		move    sr,d6
		dbf	d4,loc_720
		move.b  (a0)+,1(sp)
		move.b  (a0)+,(sp)
		move.w  (sp),d5
		moveq	#$F,d4

loc_720:				; CODE XREF: ROM:00000712↑j
		move    d6,ccr
		bcc.s	loc_728
		move.b  (a0)+,(a1)+
		bra.s	loc_70E
; ---------------------------------------------------------------------------

loc_728:				; CODE XREF: ROM:00000722↑j
		moveq	#0,d3
		lsr.w   #1,d5
		move    sr,d6
		dbf	d4,loc_73C
		move.b  (a0)+,1(sp)
		move.b  (a0)+,(sp)
		move.w  (sp),d5
		moveq	#$F,d4

loc_73C:				; CODE XREF: ROM:0000072E↑j
		move    d6,ccr
		bcs.s	loc_76C
		lsr.w   #1,d5
		dbf	d4,loc_750
		move.b  (a0)+,1(sp)
		move.b  (a0)+,(sp)
		move.w  (sp),d5
		moveq	#$F,d4

loc_750:				; CODE XREF: ROM:00000742↑j
		roxl.w  #1,d3
		lsr.w   #1,d5
		dbf	d4,loc_762
		move.b  (a0)+,1(sp)
		move.b  (a0)+,(sp)
		move.w  (sp),d5
		moveq	#$F,d4

loc_762:				; CODE XREF: ROM:00000754↑j
		roxl.w  #1,d3
		addq.w  #1,d3
		moveq	#-1,d2
		move.b  (a0)+,d2
		bra.s	loc_782
; ---------------------------------------------------------------------------

loc_76C:				; CODE XREF: ROM:0000073E↑j
		move.b  (a0)+,d0
		move.b  (a0)+,d1
		moveq	#-1,d2
		move.b	d1,d2
		lsl.w   #5,d2
		move.b	d0,d2
		andi.w  #7,d1
		beq.s	loc_78E
		move.b	d1,d3
		addq.w  #1,d3

loc_782:				; CODE XREF: ROM:0000076A↑j
				        ; ROM:00000788↓j ...
		move.b  (a1,d2.w),d0
		move.b	d0,(a1)+
		dbf	d3,loc_782
		bra.s	loc_70E
; ---------------------------------------------------------------------------

loc_78E:				; CODE XREF: ROM:0000077C↑j
		move.b  (a0)+,d1
		beq.s	loc_79E
		cmpi.b  #1,d1
		beq.w	loc_70E
		move.b	d1,d3
		bra.s	loc_782
; ---------------------------------------------------------------------------

loc_79E:				; CODE XREF: ROM:00000790↑j
		addq.l  #2,sp
		rts

; =============== S U B R O U T I N E =======================================


nullsub_1:		              ; DATA XREF: sub_398+18↑o
		rte
; End of function nullsub_1


; =============== S U B R O U T I N E =======================================


sub_7A4:				; DATA XREF: sub_398+12↑o
		movem.l d0-d7/a0-a6,-(sp)
		bsr.w	sub_FEC
		tst.b	(byte_FFFE28).w
		bne.s	loc_7C6
		bsr.w	sub_BFA
		btst	#1,(byte_FFFE26).w
		beq.s	loc_7C6
		jsr	FDA8_jmp
		addq.b  #1,(byte_FFFE27).w

loc_7C6:				; CODE XREF: sub_7A4+C↑j
				        ; sub_7A4+18↑j
		bsr.w	sub_EFC
		clr.b   (byte_FFFE26).w
		bsr.w	sub_1056
		bsr.w	sub_120C
		movem.l (sp)+,d0-d7/a0-a6
		rte
; End of function sub_7A4

; ---------------------------------------------------------------------------

loc_7DC:				; CODE XREF: ROM:00000290↑j
		movem.l d0-d7/a0-a6,-(sp)
		bsr.w	sub_FEC
		tst.b	(byte_FFFE28).w
		bne.s	loc_7FE
		bsr.w	sub_BFA
		btst	#1,(byte_FFFE26).w
		beq.s	loc_7FE
		jsr	FDA8_jmp
		addq.b  #1,(byte_FFFE27).w

loc_7FE:				; CODE XREF: ROM:000007E8↑j
				        ; ROM:000007F4↑j
		bsr.w	sub_EFC
		clr.b   (byte_FFFE26).w
		movem.l (sp)+,d0-d7/a0-a6
		rte

; =============== S U B R O U T I N E =======================================


sub_80C:				; CODE XREF: sub_308↑j
				        ; initial_pc_entry+174↑p ...
		ori	#$700,sr
		moveq	#3,d0

loc_812:				; CODE XREF: ROM:00000304↑j
		move.b	d0,(byte_FFFE26).w
		andi    #$F8FF,sr

loc_81A:				; CODE XREF: sub_80C+12↓j
		tst.b	(byte_FFFE26).w
		bne.s	loc_81A
		bsr.w	sub_13D8
		rts
; End of function sub_80C

; ---------------------------------------------------------------------------

loc_826:				; CODE XREF: ROM:00000314↑j
		move.l	a1,(dword_FFFD0E).w
		move.w	a1,($A12006).l
		bset    #4,(word_FFFDB4+1).w
		move.w  (word_FFFDB4).w,($C00004).l
		rts
; ---------------------------------------------------------------------------

loc_840:				; CODE XREF: ROM:00000294↑j
		move.l	a1,(dword_FFFD0E).w
		move.w	#$FD0C,($A12006).l
		bset    #4,(word_FFFDB4+1).w
		move.w  (word_FFFDB4).w,($C00004).l
		rts
; ---------------------------------------------------------------------------

loc_85C:				; CODE XREF: ROM:00000318↑j
		bclr    #4,(word_FFFDB4+1).w
		move.w  (word_FFFDB4).w,($C00004).l
		rts

; =============== S U B R O U T I N E =======================================


sub_86C:				; CODE XREF: ROM:000002AC↑j
				        ; initial_pc_entry+13E↑p ...
		lea	word_898(pc),a1
		move.w	#$80,(word_FFFE2E).w

loc_876:				; CODE XREF: sub_2B0↑j
				        ; sub_1684+22↓p ...
		lea	(word_FFFDB4).w,a2
		moveq	#0,d0

loc_87C:				; CODE XREF: sub_86C+28↓j
		move.b  (a1),d0
		bpl.s	locret_896
		move.w  (a1)+,d1
		cmpi.b  #$92,d0
		bhi.s	loc_88E
		add.b   d0,d0
		move.w	d1,(a2,d0.w)

loc_88E:				; CODE XREF: sub_86C+1A↑j
		move.w	d1,($C00004).l
		bra.s	loc_87C
; ---------------------------------------------------------------------------

locret_896:		             ; CODE XREF: sub_86C+12↑j
		rts
; End of function sub_86C

; ---------------------------------------------------------------------------
word_898:       dc.w $8004              ; DATA XREF: sub_86C↑o
		dc.w $8124
		dc.w $9011
		dc.w $8B00
		dc.w $8C81
		dc.w $8328
		dc.w $8230
		dc.w $8407
		dc.w $855C
		dc.w $8D2F
		dc.w $8700
		dc.w $8A00
		dc.w $8F02
		dc.w $9100
		dc.w $9200
		dc.w 0

; =============== S U B R O U T I N E =======================================


sub_8B8:				; CODE XREF: sub_2A0↑j
				        ; initial_pc_entry+142↑p ...

; FUNCTION CHUNK AT 00000954 SIZE 0000004A BYTES

		move.l	#$C0000000,($C00004).l
		move.w	#0,($C00000).l
		bsr.w	sub_91A
		move.l	#$40000000,d0
		move.w	#$FFFF,d1
		bra.w	loc_954
; End of function sub_8B8

; ---------------------------------------------------------------------------

loc_8DC:				; CODE XREF: ROM:000002A4↑j
		bsr.s   sub_900
		bsr.w	sub_942
		bsr.w	sub_94A
		bra.w	loc_936
; ---------------------------------------------------------------------------
		move.l	#$7C000002,($C00004).l
		move.l	#0,($C00000).l
		rts

; =============== S U B R O U T I N E =======================================


sub_900:				; CODE XREF: ROM:loc_8DC↑p
		clr.l   (dword_FFF900).w
		move.l	#$78000002,($C00004).l
		move.l	#0,($C00000).l
		rts
; End of function sub_900


; =============== S U B R O U T I N E =======================================


sub_91A:				; CODE XREF: ROM:000002A8↑j
				        ; sub_8B8+12↑p
		move.l	#$40000010,d0
		moveq	#$27,d1 ; '''

loc_922:				; CODE XREF: ROM:000002B8↑j
				        ; sub_1684+16↓p
		moveq	#0,d2

loc_924:				; CODE XREF: ROM:000002B4↑j
		move.l	d0,($C00004).l

loc_92A:				; CODE XREF: sub_91A+16↓j
		move.w	d2,($C00000).l
		dbf	d1,loc_92A
		rts
; End of function sub_91A

; ---------------------------------------------------------------------------

loc_936:				; CODE XREF: ROM:000008E6↑j
		move.l	#$60000002,d0
		move.w	#$DFF,d1
		bra.s	loc_954

; =============== S U B R O U T I N E =======================================


sub_942:				; CODE XREF: ROM:000008DE↑p
		move.l	#$40000003,d0
		bra.s	loc_950
; End of function sub_942


; =============== S U B R O U T I N E =======================================


sub_94A:				; CODE XREF: ROM:000008E2↑p
		move.l	#$60000003,d0

loc_950:				; CODE XREF: sub_942+6↑j
		move.w	#$1FFF,d1
; End of function sub_94A

; START OF FUNCTION CHUNK FOR sub_8B8

loc_954:				; CODE XREF: ROM:000002BC↑j
				        ; sub_8B8+20↑j ...
		moveq	#0,d2

loc_956:				; CODE XREF: ROM:000002C0↑j
		lea	($C00004).l,a6
		move.w	#$8F01,(a6)
		move.w  (word_FFFDB6).w,d3
		bset    #4,d3
		move.w	d3,(a6)
		move.l	#$940000,d3
		move.w	d1,d3
		lsl.l   #8,d3
		move.w	#$9300,d3
		move.b	d1,d3
		move.l	d3,(a6)
		move.w	#$9780,(a6)
		ori.l   #$40000080,d0
		move.l	d0,(a6)
		move.b	d2,-4(a6)

loc_98C:				; CODE XREF: sub_8B8+DA↓j
		move.w  (a6),d3
		btst	#1,d3
		bne.s	loc_98C
		move.w  (word_FFFDB6).w,(a6)
		move.w	#$8F02,(a6)
		rts
; END OF FUNCTION CHUNK FOR sub_8B8
; ---------------------------------------------------------------------------

loc_99E:				; CODE XREF: ROM:000002D0↑j
		lea	($C00004).l,a6
		move.w  (word_FFFDB6).w,d3
		bset    #4,d3
		move.w	d3,(a6)
		asr.l   #1,d1
		move.l	#$940000,d3
		move.w	d2,d3
		lsl.l   #8,d3
		move.w	#$9300,d3
		move.b	d2,d3
		move.l	d3,(a6)
		move.l	#$960000,d3
		move.w	d1,d3
		lsl.l   #8,d3
		move.w	#$9500,d3
		move.b	d1,d3
		move.l	d3,(a6)
		swap    d1
		move.w	#$9700,d3
		move.b	d1,d3
		move.w	d3,(a6)
		ori.l   #$40000080,d0
		swap    d0
		move.w	d0,(a6)
		swap    d0
		move.w	d0,-(sp)
		move.w  (sp)+,(a6)
		move.w  (word_FFFDB6).w,(a6)
		rts

; =============== S U B R O U T I N E =======================================


sub_9F4:				; CODE XREF: sub_2D4↑j
				        ; ROM:00001422↓p ...
		move.l	a1,-(sp)
		movea.l d1,a1
		addq.l  #2,d1
		asr.l   #1,d1
		lea	($C00004).l,a6
		move.w	#$8F02,(a6)
		move.w  (word_FFFDB6).w,d3
		bset    #4,d3
		move.w	d3,(a6)
		move.l	#$940000,d3
		move.w	d2,d3
		lsl.l   #8,d3
		move.w	#$9300,d3
		move.b	d2,d3
		move.l	d3,(a6)
		move.l	#$960000,d3
		move.w	d1,d3
		lsl.l   #8,d3
		move.w	#$9500,d3
		move.b	d1,d3
		move.l	d3,(a6)
		swap    d1
		move.w	#$9700,d3
		move.b	d1,d3
		move.w	d3,(a6)
		ori.l   #$40000080,d0
		swap    d0
		move.w	d0,(a6)
		swap    d0
		move.w	d0,-(sp)
		move.w  (sp)+,(a6)
		move.w  (word_FFFDB6).w,(a6)
		andi.w  #$FF7F,d0
		move.l	d0,(a6)
		move.l  (a1),-4(a6)
		move.w  (word_FFFDD2).w,(a6)
		movea.l (sp)+,a1
		rts
; End of function sub_9F4

; ---------------------------------------------------------------------------

loc_A64:				; CODE XREF: ROM:00000374↑j
		lea	($C00004).l,a6
		move.w	#$8F01,(a6)
		move.w  (word_FFFDB6).w,d3
		bset    #4,d3
		move.w	d3,(a6)
		move.l	#$940000,d3
		move.w	d2,d3
		lsl.l   #8,d3
		move.w	#$9300,d3
		move.b	d2,d3
		move.l	d3,(a6)
		move.l	#$960000,d3
		move.w	d1,d3
		lsl.l   #8,d3
		move.w	#$9500,d3
		move.b	d1,d3
		move.l	d3,(a6)
		move.w	#$97C0,(a6)
		ori.w   #$C0,d0
		move.l	d0,(a6)

loc_AA6:				; CODE XREF: ROM:00000AAC↓j
		move.w  (a6),d3
		btst	#1,d3
		bne.s	loc_AA6
		move.w  (word_FFFDB6).w,(a6)
		move.w	#$8F02,(a6)
		rts
; ---------------------------------------------------------------------------
		move.l	d0,($C00004).l

loc_ABE:				; CODE XREF: ROM:00000AC4↓j
		move.w  ($C00000).l,(a2)+
		dbf	d1,loc_ABE
		rts

; =============== S U B R O U T I N E =======================================


sub_ACA:				; CODE XREF: ROM:000002C4↑j
				        ; sub_1988+20↓p ...
		lea	($C00000).l,a5
		move.w	#0,-(sp)
		move.w  (word_FFFE2E).w,-(sp)

loc_AD8:				; CODE XREF: sub_ACA+1C↓j
		move.l	d0,4(a5)
		move.w	d1,d3

loc_ADE:				; CODE XREF: sub_ACA+16↓j
		move.w  (a1)+,(a5)
		dbf	d3,loc_ADE
		add.l   (sp),d0
		dbf	d2,loc_AD8
		addq.w  #4,sp
		rts
; End of function sub_ACA

; ---------------------------------------------------------------------------

loc_AEE:				; CODE XREF: ROM:000002C8↑j
		lea	($C00000).l,a5
		move.w	#0,-(sp)
		move.w  (word_FFFE2E).w,-(sp)

loc_AFC:				; CODE XREF: ROM:00000B0C↓j
		move.l	d0,4(a5)
		move.w	d1,d4

loc_B02:				; CODE XREF: ROM:00000B06↓j
		move.b  (a1)+,d3
		move.w	d3,(a5)
		dbf	d4,loc_B02
		add.l   (sp),d0
		dbf	d2,loc_AFC
		addq.w  #4,sp
		rts

; =============== S U B R O U T I N E =======================================


sub_B14:				; CODE XREF: sub_3620+1C↓p
		lea	($C00000).l,a5
		move.w	#0,-(sp)
		move.w  (word_FFFE2E).w,-(sp)

loc_B22:				; CODE XREF: sub_B14+20↓j
		move.l	d0,4(a5)
		move.w	d1,d5

loc_B28:				; CODE XREF: sub_B14+1A↓j
		move.w  (a1)+,d4
		or.w    d3,d4
		move.w	d4,(a5)
		dbf	d5,loc_B28
		add.l   (sp),d0
		dbf	d2,loc_B22
		addq.w  #4,sp
		rts
; End of function sub_B14


; =============== S U B R O U T I N E =======================================


sub_B3C:				; CODE XREF: ROM:0000036C↑j
				        ; ROM:00004308↓p
		lea	($C00000).l,a5
		move.w	#0,-(sp)
		move.w  (word_FFFE2E).w,-(sp)

loc_B4A:				; CODE XREF: sub_B3C+1E↓j
		move.l	d0,4(a5)
		move.w	d1,d4

loc_B50:				; CODE XREF: sub_B3C+18↓j
		move.w	d3,(a5)
		addq.w  #1,d3
		dbf	d4,loc_B50
		add.l   (sp),d0
		dbf	d2,loc_B4A
		addq.w  #4,sp
		rts
; End of function sub_B3C

; ---------------------------------------------------------------------------

loc_B62:				; CODE XREF: ROM:00000370↑j
		lea	($C00000).l,a5
		move.w	#0,-(sp)
		move.w  (word_FFFE2E).w,-(sp)
		sub.w   d1,d3
		sub.w   d1,d3
		subq.w  #2,d3

loc_B76:				; CODE XREF: ROM:00000B86↓j
		move.l	d0,4(a5)
		move.w	d1,d4

loc_B7C:				; CODE XREF: ROM:00000B7E↓j
		move.w  (a1)+,(a5)
		dbf	d4,loc_B7C
		adda.w  d3,a1
		add.l   (sp),d0
		dbf	d2,loc_B76
		addq.w  #4,sp
		rts
; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_4208
;   ADDITIONAL PARENT FUNCTION sub_347E
;   ADDITIONAL PARENT FUNCTION sub_3876
;   ADDITIONAL PARENT FUNCTION sub_3A7A
;   ADDITIONAL PARENT FUNCTION sub_4210

loc_B8E:				; CODE XREF: ROM:000002CC↑j
				        ; sub_347E+C↓j ...
		lea	($C00000).l,a5
		move.w	#0,-(sp)
		move.w  (word_FFFE2E).w,-(sp)

loc_B9C:				; CODE XREF: sub_4208-365E↓j
		move.l	d0,4(a5)
		move.w	d1,d5

loc_BA2:				; CODE XREF: sub_4208-3664↓j
		move.w	d3,(a5)
		dbf	d5,loc_BA2
		add.l   (sp),d0
		dbf	d2,loc_B9C
		addq.w  #4,sp
		rts
; END OF FUNCTION CHUNK FOR sub_4208

; =============== S U B R O U T I N E =======================================


sub_BB2:				; CODE XREF: sub_573C:loc_2D8↑j
				        ; sub_1684+118↓p ...
		bset    #6,(word_FFFDB6+1).w
		bra.s	loc_BD2
; End of function sub_BB2

; ---------------------------------------------------------------------------

loc_BBA:				; CODE XREF: ROM:00000384↑j
		move.l	#$C0000000,($C00004).l
		move.w	#0,($C00000).l

; =============== S U B R O U T I N E =======================================


sub_BCC:				; CODE XREF: sub_2DC↑j
				        ; sub_1684+4↓p ...
		bclr    #6,(word_FFFDB6+1).w

loc_BD2:				; CODE XREF: sub_BB2+6↑j
		move.w  (word_FFFDB6).w,($C00004).l
		rts
; End of function sub_BCC


; =============== S U B R O U T I N E =======================================


palload:				; CODE XREF: j_palload↑j
				        ; sub_1684+2C↓p ...
		bset    #0,(byte_FFFE29).w

loc_BE2:				; CODE XREF: ROM:000002E0↑j
		move.l	a3,-(sp)
		moveq	#0,d0
		move.b  (a1)+,d0
		lea	(word_FFFB80).w,a3
		adda.w  d0,a3
		move.b  (a1)+,d0

loc_BF0:				; CODE XREF: palload+16↓j
		move.w  (a1)+,(a3)+
		dbf	d0,loc_BF0
		movea.l (sp)+,a3
		rts
; End of function palload


; =============== S U B R O U T I N E =======================================


sub_BFA:				; CODE XREF: ROM:000002E8↑j
				        ; sub_7A4+E↑p ...
		bclr    #0,(byte_FFFE29).w
		beq.s	locret_C5E
		lea	($C00004).l,a4
		move.w  (word_FFFDB6).w,d4
		bset    #4,d4
		move.w	d4,(a4)
		move    sr,-(sp)
		ori	#$700,sr
		move.w	#$100,($A11100).l
		move.l	#$94009340,(a4)
		move.l	#$96FD95C0,(a4)
		move.w	#$977F,(a4)
		move.w	#$C000,(a4)
		move.w	#$80,-(sp)

loc_C38:				; CODE XREF: sub_BFA+46↓j
		btst	#0,($A11100).l
		bne.s	loc_C38
		move.w  (sp)+,(a4)
		move.w	#0,($A11100).l
		move.w  (word_FFFDB6).w,(a4)
		move.l	#$C0000000,(a4)
		move.w  (word_FFFB80).w,-4(a4)
		move    (sp)+,sr

locret_C5E:		             ; CODE XREF: sub_BFA+6↑j
		rts
; End of function sub_BFA

; ---------------------------------------------------------------------------

loc_C60:				; CODE XREF: ROM:00000388↑j
		movem.l d0-d5/a0,-(sp)
		lea	(word_FFFB80).w,a0
		adda.w  d0,a0
		moveq	#0,d0

loc_C6C:				; CODE XREF: ROM:00000C96↓j
		moveq	#$E,d2
		move.w  (a0),d3
		move.w	d3,d4
		and.b   d2,d4
		beq.s	loc_C78
		subq.w  #2,d3

loc_C78:				; CODE XREF: ROM:00000C74↑j
		move.w	#$E0,d2
		move.w	d3,d4
		and.b   d2,d4
		beq.s	loc_C86
		subi.w  #$20,d3 ; ' '

loc_C86:				; CODE XREF: ROM:00000C80↑j
		move.w	#$E00,d2
		and.w   d2,d4
		beq.s	loc_C92
		subi.w  #$200,d3

loc_C92:				; CODE XREF: ROM:00000C8C↑j
		move.w	d3,(a0)+
		or.w    d3,d0
		dbf	d1,loc_C6C
		bset    #0,(byte_FFFE29).w
		tst.w	d0
		movem.l (sp)+,d0-d5/a0
		rts
; ---------------------------------------------------------------------------

loc_CA8:				; CODE XREF: ROM:00000390↑j
		move.b  (a1)+,(byte_FFFE46).w
		move.b  (a1)+,(byte_FFFE47).w
		move.l	a1,(dword_FFFE4A).w
		move.w	#$E,(word_FFFE48).w
		rts
; ---------------------------------------------------------------------------

loc_CBC:				; CODE XREF: ROM:0000038C↑j
		movem.l d0-d4/a0-a1,-(sp)
		moveq	#0,d0
		move.b  (byte_FFFE46).w,d0
		lea	(word_FFFB80).w,a1
		adda.w  d0,a1
		move.b  (byte_FFFE47).w,d0
		movea.l (dword_FFFE4A).w,a0

loc_CD4:				; CODE XREF: ROM:00000D06↓j
		move.w  (word_FFFE48).w,d1
		move.w  (a0)+,d2
		move.w	d2,d3
		andi.w  #$E,d3
		sub.w   d1,d3
		bpl.s	loc_CE6
		moveq	#0,d3

loc_CE6:				; CODE XREF: ROM:00000CE2↑j
		asl.w   #4,d1
		move.w	d2,d4
		andi.w  #$E0,d4
		sub.w   d1,d4
		bpl.s	loc_CF4
		moveq	#0,d4

loc_CF4:				; CODE XREF: ROM:00000CF0↑j
		asl.w   #4,d1
		andi.w  #$E00,d2
		sub.w   d1,d2
		bpl.s	loc_D00
		moveq	#0,d2

loc_D00:				; CODE XREF: ROM:00000CFC↑j
		or.w    d4,d3
		or.w    d3,d2
		move.w	d2,(a1)+
		dbf	d0,loc_CD4
		tst.w	(word_FFFE48).w
		beq.s	loc_D14
		subq.w  #2,(word_FFFE48).w

loc_D14:				; CODE XREF: ROM:00000D0E↑j
		bset    #0,(byte_FFFE29).w
		movem.l (sp)+,d0-d4/a0-a1
		rts

; =============== S U B R O U T I N E =======================================


nemdectovram:		           ; CODE XREF: ROM:000002EC↑j
				        ; sub_1684+40↓p ...
		movem.l d0-d7/a1-a5,-(sp)
		lea	sub_DA6(pc),a3
		lea	($C00000).l,a2
		bra.s	loc_D38
; End of function nemdectovram


; =============== S U B R O U T I N E =======================================


nemdectoram:		            ; CODE XREF: ROM:000002F0↑j
				        ; sub_1A06+A↓p ...
		movem.l d0-d7/a1-a5,-(sp)
		lea	loc_DBC(pc),a3

loc_D38:				; CODE XREF: nemdectovram+E↑j
		lea	(nemesisbuffer).w,a4
		move.w  (a1)+,d2
		add.w   d2,d2
		bcc.s	loc_D46
		adda.w  #$A,a3

loc_D46:				; CODE XREF: nemdectoram+10↑j
		lsl.w   #2,d2
		movea.w d2,a5
		moveq	#8,d3
		moveq	#0,d2
		moveq	#0,d4
		bsr.w	sub_DD6
		move.b  (a1)+,d5
		asl.w   #8,d5
		move.b  (a1)+,d5
		moveq	#$10,d6

loc_D5C:				; CODE XREF: nemdectoram+66↓j
		moveq	#8,d0
		bsr.w	sub_E38
		cmpi.w  #$FC,d1
		bcc.s	loc_D98
		add.w   d1,d1
		move.b  (a4,d1.w),d0
		ext.w   d0
		bsr.w	sub_E4C
		move.b  1(a4,d1.w),d1

loc_D78:				; CODE XREF: nemdectoram+74↓j
		move.w	d1,d0
		andi.w  #$F,d1
		andi.w  #$F0,d0
		lsr.w   #4,d0

loc_D84:				; CODE XREF: nemdectoram:loc_D92↓j
		lsl.l   #4,d4
		or.b    d1,d4
		subq.w  #1,d3
		bne.s	loc_D92
		jmp	(a3)
; ---------------------------------------------------------------------------

loc_D8E:				; CODE XREF: sub_DA6+6↓j
				        ; sub_DA6+12↓j ...
		moveq	#0,d4
		moveq	#8,d3

loc_D92:				; CODE XREF: nemdectoram+5A↑j
		dbf	d0,loc_D84
		bra.s	loc_D5C
; ---------------------------------------------------------------------------

loc_D98:				; CODE XREF: nemdectoram+36↑j
		moveq	#6,d0
		bsr.w	sub_E4C
		moveq	#7,d0
		bsr.w	sub_E48
		bra.s	loc_D78
; End of function nemdectoram


; =============== S U B R O U T I N E =======================================


sub_DA6:				; DATA XREF: nemdectovram+4↑o
		move.l	d4,(a2)
		subq.w  #1,a5
		move.w	a5,d4
		bne.s	loc_D8E
		bra.s	loc_DD0
; ---------------------------------------------------------------------------
		eor.l   d4,d2
		move.l	d2,(a2)
		subq.w  #1,a5
		move.w	a5,d4
		bne.s	loc_D8E
		bra.s	loc_DD0
; ---------------------------------------------------------------------------

loc_DBC:				; DATA XREF: nemdectoram+4↑o
		move.l	d4,(a2)+
		subq.w  #1,a5
		move.w	a5,d4
		bne.s	loc_D8E
		bra.s	loc_DD0
; ---------------------------------------------------------------------------
		eor.l   d4,d2
		move.l	d2,(a2)+
		subq.w  #1,a5
		move.w	a5,d4
		bne.s	loc_D8E

loc_DD0:				; CODE XREF: sub_DA6+8↑j
				        ; sub_DA6+14↑j ...
		movem.l (sp)+,d0-d7/a1-a5
		rts
; End of function sub_DA6


; =============== S U B R O U T I N E =======================================


sub_DD6:				; CODE XREF: nemdectoram+20↑p
		move.b  (a1)+,d0

loc_DD8:				; CODE XREF: sub_DD6+E↓j
		cmpi.b  #$FF,d0
		bne.s	loc_DE0
		rts
; ---------------------------------------------------------------------------

loc_DE0:				; CODE XREF: sub_DD6+6↑j
		move.w	d0,d7

loc_DE2:				; CODE XREF: sub_DD6+34↓j
				        ; sub_DD6:loc_E26↓j
		move.b  (a1)+,d0
		bmi.s	loc_DD8
		move.b	d0,d1
		andi.w  #$F,d7
		andi.w  #$70,d1 ; 'p'
		or.w    d1,d7
		andi.w  #$F,d0
		move.b	d0,d1
		lsl.w   #8,d1
		or.w    d1,d7
		moveq	#8,d1
		sub.w   d0,d1
		bne.s	loc_E0C
		move.b  (a1)+,d0
		add.w   d0,d0
		move.w	d7,(a4,d0.w)
		bra.s	loc_DE2
; ---------------------------------------------------------------------------

loc_E0C:				; CODE XREF: sub_DD6+2A↑j
		move.b  (a1)+,d0
		lsl.w   d1,d0
		add.w   d0,d0
		moveq	#1,d5
		lsl.w   d1,d5
		subq.w  #1,d5
		lea	(a4,d0.w),a4

loc_E1C:				; CODE XREF: sub_DD6+48↓j
		move.w	d7,(a4)+
		dbf	d5,loc_E1C
		lea	(nemesisbuffer).w,a4

loc_E26:
		bra.s	loc_DE2
; End of function sub_DD6

; ---------------------------------------------------------------------------
		dc.w 1
		dc.w 3
		dc.w 7
		dc.w $F
		dc.w $1F
		dc.w $3F
		dc.w $7F
		dc.w $FF

; =============== S U B R O U T I N E =======================================


sub_E38:				; CODE XREF: nemdectoram+2E↑p
				        ; sub_E48↓p
		move.w	d6,d7
		sub.w   d0,d7
		move.w	d5,d1
		lsr.w   d7,d1
		add.w   d0,d0
		and.w   loc_E26(pc,d0.w),d1
		rts
; End of function sub_E38


; =============== S U B R O U T I N E =======================================


sub_E48:				; CODE XREF: nemdectoram+70↑p
		bsr.s   sub_E38
		lsr.w   #1,d0
; End of function sub_E48


; =============== S U B R O U T I N E =======================================


sub_E4C:				; CODE XREF: nemdectoram+40↑p
				        ; nemdectoram+6A↑p
		sub.w   d0,d6
		cmpi.w  #9,d6
		bcc.s	locret_E5A
		addq.w  #8,d6
		asl.w   #8,d5
		move.b  (a1)+,d5

locret_E5A:		             ; CODE XREF: sub_E4C+6↑j
		rts
; End of function sub_E4C


; =============== S U B R O U T I N E =======================================


sounddriverload:		        ; CODE XREF: initial_pc_entry+16C↑p
				        ; initial_pc_entry+1EA↑p ...
		lea	($A11100).l,a4
		move    sr,-(sp)
		ori	#$700,sr
		move.w	#$100,(a4)
		move.w	#$100,$100(a4)

loc_E72:				; CODE XREF: sounddriverload+1A↓j
		btst	#0,(a4)
		bne.s	loc_E72
		lea	($A00000).l,a6
		lea	(z80_11000).l,a5
		move.w	#$F81,d7

loc_E88:				; CODE XREF: sounddriverload+2E↓j
		move.b  (a5)+,(a6)+
		dbf	d7,loc_E88
		lea	($A01000).l,a6
		lea	(z80_11F82).l,a5
		move.w	#$D1,d7

loc_E9E:				; CODE XREF: sounddriverload+44↓j
		move.b  (a5)+,(a6)+
		dbf	d7,loc_E9E
		lea	($A01300).l,a6
		lea	(z80_12054).l,a5
		move.w	#$2DD,d7

loc_EB4:				; CODE XREF: sounddriverload+5A↓j
		move.b  (a5)+,(a6)+
		dbf	d7,loc_EB4
		move.w	#0,$100(a4)
		move.w	#0,(a4)
		move.w	#$100,$100(a4)
		move    (sp)+,sr
		rts
; End of function sounddriverload


; =============== S U B R O U T I N E =======================================


sub_ECE:				; CODE XREF: sub_1684+8↓p
				        ; sub_1E76+10↓p ...
		move.b  #$E3,d7

loc_ED2:				; CODE XREF: ROM:00004324↓p
				        ; ROM:000044D8↓p ...
		move    sr,-(sp)
		ori	#$700,sr
		move.w	#$100,($A11100).l

loc_EE0:				; CODE XREF: sub_ECE+1A↓j
		btst	#0,($A11100).l
		bne.s	loc_EE0
		move.b	d7,($A01C0A).l
		move.w	#0,($A11100).l
		move    (sp)+,sr
		rts
; End of function sub_ECE


; =============== S U B R O U T I N E =======================================


sub_EFC:				; CODE XREF: ROM:00000298↑j
				        ; sub_7A4:loc_7C6↑p ...
		move.w	#$100,($A11100).l

loc_F04:				; CODE XREF: sub_EFC+10↓j
		btst	#0,($A11100).l
		bne.s	loc_F04
		bsr.s   joypadread
		move.w	#0,($A11100).l
		rts
; End of function sub_EFC


; =============== S U B R O U T I N E =======================================


joypadread:		             ; CODE XREF: sub_EFC+12↑p
		lea	(word_FFFE20).w,a5
		lea	($A10003).l,a6
		bsr.w	sub_F2A
		addq.w  #2,a6
; End of function joypadread


; =============== S U B R O U T I N E =======================================


sub_F2A:				; CODE XREF: joypadread+A↑p
		move.b  #0,(a6)
		nop
		nop
		move.b  (a6),d7
		asl.b   #2,d7
		move.b  #$40,(a6) ; '@'
		andi.w  #$C0,d7
		move.b  (a6),d6
		andi.w  #$3F,d6 ; '?'
		or.b    d6,d7
		not.b   d7
		move.b  (a5),d6
		eor.b   d7,d6
		move.b	d7,(a5)+
		and.b   d7,d6
		move.b	d6,(a5)+
		rts
; End of function sub_F2A


; =============== S U B R O U T I N E =======================================


sub_F54:				; CODE XREF: initial_pc_entry+168↑p
				        ; initial_pc_entry+1E6↑p
		moveq	#$40,d7 ; '@'
		move.b	d7,($A10009).l
		move.b	d7,($A1000B).l
		move.b	d7,($A1000D).l
		rts
; End of function sub_F54

; ---------------------------------------------------------------------------

loc_F6A:				; CODE XREF: ROM:0000029C↑j
		movem.l d1-d2/a5,-(sp)
		move    sr,-(sp)
		ori	#$700,sr
		move.w	#$100,($A11100).l

loc_F7C:				; CODE XREF: ROM:00000F84↓j
		btst	#0,($A11100).l
		bne.s	loc_F7C
		lea	byte_FB4(pc),a5
		move.b  (a5),6(a6)
		moveq	#0,d7
		moveq	#8,d1

loc_F92:				; CODE XREF: ROM:00000FA2↓j
		move.b  (a5)+,(a6)
		nop
		nop
		move.b  (a6),d2
		and.b   (a5)+,d2
		beq.s	loc_FA0
		or.b    d1,d7

loc_FA0:				; CODE XREF: ROM:00000F9C↑j
		lsr.b   #1,d1
		bne.s	loc_F92
		move.w	#0,($A11100).l
		move    (sp)+,sr
		movem.l (sp)+,d1-d2/a5
		rts
; ---------------------------------------------------------------------------
byte_FB4:       dc.b $40, $C,$40,  3,  0, $C,  0,  3
				        ; DATA XREF: ROM:00000F86↑o

; =============== S U B R O U T I N E =======================================


sub_FBC:				; CODE XREF: ROM:00000340↑j
				        ; initial_pc_entry+178↑p ...
		moveq	#0,d0
		lea	($A1200E).l,a6
		move.b	d0,(a6)
		addq.w  #2,a6
		move.l	d0,(a6)+
		move.l	d0,(a6)+
		move.l	d0,(a6)+
		move.l	d0,(a6)+
		lea	(byte_FFFDDE).w,a6
		move.w	d0,(a6)+
		move.l	d0,(a6)+
		move.l	d0,(a6)+
		move.l	d0,(a6)+
		move.l	d0,(a6)+
		rts
; End of function sub_FBC

; ---------------------------------------------------------------------------

loc_FE0:				; CODE XREF: ROM:00000FE8↓j
		btst	#0,($A1200F).l
		beq.s	loc_FE0
		rts

; =============== S U B R O U T I N E =======================================


sub_FEC:				; CODE XREF: ROM:00000344↑j
				        ; sub_7A4+4↑p ...
		lea	($A1200E).l,a4
		bset    #0,(a4)
		lea	(byte_FFFDDE).w,a6
		bclr    #1,(a6)
		lea	($A12001).l,a5
		btst	#0,(a5)
		beq.s	locret_1054
		btst	#1,(a5)
		bne.s	locret_1054
		addq.w  #1,a4
		btst	#0,(a4)
		beq.s	loc_1046
		bset    #1,(a6)
		bchg    #0,(a6)+
		beq.s	loc_102A

loc_1022:		               ; CODE XREF: sub_FEC+3A↓j
		btst	#1,(a4)
		bne.s	loc_1022
		bra.s	loc_1030
; ---------------------------------------------------------------------------

loc_102A:		               ; CODE XREF: sub_FEC+34↑j
				        ; sub_FEC+42↓j
		btst	#1,(a4)
		beq.s	loc_102A

loc_1030:		               ; CODE XREF: sub_FEC+3C↑j
		move.b  (a4),(a6)+
		addq.w  #1,a4
		moveq	#3,d0

loc_1036:		               ; CODE XREF: sub_FEC+4E↓j
		move.l  (a6),(a4)+
		clr.l   (a6)+
		dbf	d0,loc_1036
		move.l  (a4)+,(a6)+
		move.l  (a4)+,(a6)+
		move.l  (a4)+,(a6)+
		move.l  (a4)+,(a6)+

loc_1046:		               ; CODE XREF: sub_FEC+2A↑j
		bset    #0,-1(a5)
		bset    #1,($A1200E).l

locret_1054:		            ; CODE XREF: sub_FEC+1C↑j
				        ; sub_FEC+22↑j
		rts
; End of function sub_FEC


; =============== S U B R O U T I N E =======================================


sub_1056:		               ; CODE XREF: ROM:00000348↑j
				        ; sub_7A4+2A↑p
		bclr    #1,($A1200E).l
		lea	(byte_FFFDDE).w,a4
		btst	#1,(a4)
		beq.s	locret_10B6
		btst	#2,1(a4)
		beq.s	locret_10B6
		bset    #2,(a4)
		lea	(word_FFFDF0).w,a0
		move.w  (a0)+,d0
		move.w	d0,(word_FFFE3A).w
		andi.w  #$A000,d0
		bne.s	locret_10B6
		btst	#3,1(a4)
		beq.s	loc_10A6
		btst	#5,(a4)
		beq.s	locret_10B6
		move.w  (a0)+,(word_FFFE3C).w
		move.w  (a0)+,(word_FFFE3E).w
		move.b  (a0)+,d0
		move.b	d0,(byte_FFFE43).w
		bset    #6,(a4)
		rts
; ---------------------------------------------------------------------------

loc_10A6:		               ; CODE XREF: sub_1056+34↑j
		move.w  (a0)+,(word_FFFE44).w
		move.w  (a0)+,(word_FFFE40).w
		move.b  (a0)+,(byte_FFFE42).w
		bset    #5,(a4)

locret_10B6:		            ; CODE XREF: sub_1056+10↑j
				        ; sub_1056+18↑j ...
		rts
; End of function sub_1056


; =============== S U B R O U T I N E =======================================


sub_10B8:		               ; CODE XREF: initial_pc_entry+204↑p
				        ; sub_1124+C↓p ...
		bclr    #6,(byte_FFFDDE).w
		bclr    #5,(byte_FFFDDE).w
		rts
; End of function sub_10B8


; =============== S U B R O U T I N E =======================================


sub_10C6:		               ; CODE XREF: ROM:0000034C↑j
				        ; sub_10C6+8↓j ...
		btst	#6,($A1200F).l
		beq.s	sub_10C6
		bclr    #2,($A1200E).l
		rts
; End of function sub_10C6


; =============== S U B R O U T I N E =======================================


sub_10DA:		               ; CODE XREF: initial_pc_entry+3E3E↓p
		bclr    #0,(byte_FFFDDD).w
		bset    #7,($A1200E).l
		bset    #1,($A12003).l
		rts
; End of function sub_10DA


; =============== S U B R O U T I N E =======================================


sub_10F2:		               ; CODE XREF: initial_pc_entry:loc_425C↓p
		btst	#0,(byte_FFFDDD).w
		beq.s	loc_110E
		btst	#7,($A1200F).l
		bne.s	loc_111E
		bclr    #0,(byte_FFFDDD).w
		or.w    d0,d0
		rts
; ---------------------------------------------------------------------------

loc_110E:		               ; CODE XREF: sub_10F2+6↑j
		btst	#7,($A1200F).l
		beq.s	loc_111E
		bset    #0,(byte_FFFDDD).w

loc_111E:		               ; CODE XREF: sub_10F2+10↑j
				        ; sub_10F2+24↑j
		ori	#1,ccr
		rts
; End of function sub_10F2


; =============== S U B R O U T I N E =======================================


sub_1124:		               ; CODE XREF: ROM:00000378↑j
				        ; initial_pc_entry+1494↓p
				        ; DATA XREF: ...
		cmpi.w  #0,d0
		beq.s	loc_1136
		cmpi.w  #$12,d0
		bne.s	loc_113C
		bsr.w	sub_10B8
		bra.s	loc_113C
; ---------------------------------------------------------------------------

loc_1136:		               ; CODE XREF: sub_1124+4↑j
		moveq	#$FFFFFFFF,d1
		bsr.w	sub_123E

loc_113C:		               ; CODE XREF: sub_1124+A↑j
				        ; sub_1124+10↑j
		moveq	#0,d3
		move.b  unk_1180(pc,d0.w),d3
		move.b  unk_1181(pc,d0.w),d0
		bmi.s	loc_116C
		bne.s	loc_1150
		move.w	d3,(dword_FFFDE0).w
		rts
; ---------------------------------------------------------------------------

loc_1150:		               ; CODE XREF: sub_1124+24↑j
		cmpi.b  #1,d0
		beq.s	loc_1176
		move.w	d2,d0
		andi.l  #$F,d0
		swap    d0
		lsr.l   #4,d0
		or.w    d0,d1
		andi.w  #$FF0,d2
		lsl.w   #4,d2
		or.w    d2,d3

loc_116C:		               ; CODE XREF: sub_1124+22↑j
		swap    d3
		move.w	d1,d3
		move.l	d3,(dword_FFFDE0).w
		rts
; ---------------------------------------------------------------------------

loc_1176:		               ; CODE XREF: sub_1124+30↑j
		move.b	d3,d1
		swap    d1
		move.l	d1,(dword_FFFDE0).w
		rts
; End of function sub_1124

; ---------------------------------------------------------------------------
unk_1180:       dc.b  $A
unk_1181:       dc.b   0
		dc.b   2
		dc.b   0
		dc.b   3
		dc.b   0
		dc.b   4
		dc.b   0
		dc.b   5
		dc.b   0
		dc.b   6
		dc.b   0
		dc.b   7
		dc.b   0
		dc.b   8
		dc.b   0
		dc.b   9
		dc.b   0
		dc.b $10
		dc.b $FF
		dc.b $11
		dc.b $FF
		dc.b $12
		dc.b $FF
		dc.b $13
		dc.b $FF
		dc.b $14
		dc.b   1
		dc.b $15
		dc.b $FF
		dc.b $16
		dc.b   1
		dc.b $17
		dc.b   1
		dc.b $18
		dc.b   1
		dc.b $20
		dc.b $FF
		dc.b $21 ; !
		dc.b $FF
		dc.b $80
		dc.b   0
		dc.b $81
		dc.b   0
		dc.b $82
		dc.b $FF
		dc.b $83
		dc.b $FF
		dc.b $85
		dc.b   2
		dc.b $86
		dc.b   2
		dc.b $87
		dc.b   0
		dc.b $89
		dc.b   0
		dc.b $8A
		dc.b   0
		dc.b $8B
		dc.b   0
		dc.b $8C
		dc.b $FF
		dc.b $8D
		dc.b   0
		dc.b $8F
		dc.b   0
		dc.b $90
		dc.b   0
		dc.b $91
		dc.b   0
		dc.b $92
		dc.b $FF
		dc.b $93
		dc.b $FF
		dc.b   0
		dc.b $FF
		dc.b $C0
		dc.b $FF
		dc.b $C1
		dc.b $FF
		dc.b $19
		dc.b $FF
		dc.b $C2
		dc.b $FF
		dc.b $C3
		dc.b $FF
; ---------------------------------------------------------------------------

loc_11D6:		               ; CODE XREF: ROM:00000350↑j
		move.w	d0,(dword_FFFDE0).w
		move.w	d1,(dword_FFFDE0+2).w
		rts
; ---------------------------------------------------------------------------

loc_11E0:		               ; CODE XREF: ROM:00000354↑j
		move.w	d0,(dword_FFFDE8).w
		move.w	d1,(dword_FFFDE8+2).w
		rts
; ---------------------------------------------------------------------------

loc_11EA:		               ; CODE XREF: ROM:00000358↑j
		move.w	d0,(word_FFFDEC).w
		move.w	d1,(word_FFFDEE).w
		rts

; =============== S U B R O U T I N E =======================================


sub_11F4:		               ; CODE XREF: ROM:0000035C↑j
				        ; initial_pc_entry+18A↑p ...
		cmpi.w  #1,d0
		bne.s	loc_1202
		bset    #2,($A1200E).l

loc_1202:		               ; CODE XREF: sub_11F4+4↑j
		move.w	d0,(word_FFFDE4).w
		move.w	d1,(word_FFFDE6).w
		rts
; End of function sub_11F4


; =============== S U B R O U T I N E =======================================


sub_120C:		               ; CODE XREF: sub_7A4+2E↑p
				        ; ROM:loc_18CC↓p
		btst	#1,(byte_FFFDDE).w
		beq.s	locret_1234
		btst	#2,(byte_FFFDDF).w
		bne.s	locret_1234
		btst	#2,(byte_FFFDDF).w
		bne.s	locret_1234
		move.w  (word_FFFDF0).w,d0
		move.w  (word_FFFDF2).w,d1
		andi.w  #$FC,d0
		jmp	loc_1236(pc,d0.w)
; ---------------------------------------------------------------------------

locret_1234:		            ; CODE XREF: sub_120C+6↑j
				        ; sub_120C+E↑j ...
		rts
; End of function sub_120C

; ---------------------------------------------------------------------------

loc_1236:
		nop
		rts
; ---------------------------------------------------------------------------
		bra.w	*+4

; =============== S U B R O U T I N E =======================================


sub_123E:		               ; CODE XREF: initial_pc_entry+158↑p
				        ; sub_1124+14↑p ...
		move.b	d1,(byte_FFFDDC).w
		rts
; End of function sub_123E


; =============== S U B R O U T I N E =======================================


sub_1244:		               ; CODE XREF: sub_1F7E+28↓p
				        ; sub_1F7E+C6↓p ...
		move.b  (byte_FFFDDC).w,d0
		rts
; End of function sub_1244


; =============== S U B R O U T I N E =======================================


sub_124A:		               ; CODE XREF: sub_1F7E+1A↓p
				        ; sub_1F7E+4C4↓p ...
		cmpi.b  #4,(byte_FFFDDC).w
		beq.s	locret_1258
		cmpi.b  #6,(byte_FFFDDC).w

locret_1258:		            ; CODE XREF: sub_124A+6↑j
		rts
; End of function sub_124A


; =============== S U B R O U T I N E =======================================


sub_125A:		               ; CODE XREF: ROM:0000030C↑j
				        ; ROM:loc_1F0C↓p
		btst	#0,(byte_FFFE26).w
		beq.s	locret_12BE
		lea	($C00004).l,a4
		move.w  (word_FFFDB6).w,d4
		bset    #4,d4
		move.w	d4,(a4)
		move    sr,-(sp)
		ori	#$700,sr
		move.w	#$100,($A11100).l
		move.l	#$94019340,(a4)
		move.l	#$96FC9580,(a4)
		move.w	#$977F,(a4)
		move.w	#$7800,(a4)
		move.w	#$82,-(sp)

loc_1298:		               ; CODE XREF: sub_125A+46↓j
		btst	#0,($A11100).l
		bne.s	loc_1298
		move.w  (sp)+,(a4)
		move.w	#0,($A11100).l
		move.w  (word_FFFDB6).w,(a4)
		move.l	#$78000002,(a4)
		move.w  (dword_FFF900).w,-4(a4)
		move    (sp)+,sr

locret_12BE:		            ; CODE XREF: sub_125A+6↑j
		rts
; End of function sub_125A


; =============== S U B R O U T I N E =======================================


sub_12C0:		               ; CODE XREF: ROM:0000032C↑j
				        ; sub_1F7E+58↓p ...
		move.l	a5,-(sp)
		move.w  (word_FFFE20).w,d1
		tst.w	d0
		beq.s	loc_12CE
		move.w  (word_FFFE22).w,d1

loc_12CE:		               ; CODE XREF: sub_12C0+8↑j
		lea	(word_FFFE24).w,a5
		adda.w  d0,a5
		andi.b  #$F,d1
		bne.s	loc_12EC
		andi.w  #$F00,d1
		beq.s	loc_12F0
		subq.b  #1,(a5)
		bpl.s	loc_12F0
		move.b  #5,(a5)
		lsr.w   #8,d1
		bra.s	loc_12F0
; ---------------------------------------------------------------------------

loc_12EC:		               ; CODE XREF: sub_12C0+18↑j
		move.b  #$14,(a5)

loc_12F0:		               ; CODE XREF: sub_12C0+1E↑j
				        ; sub_12C0+22↑j ...
		move.b	d1,(a1)
		movea.l (sp)+,a5
		rts
; End of function sub_12C0

; ---------------------------------------------------------------------------

loc_12F6:		               ; CODE XREF: ROM:00000310↑j
		lsr.l   #2,d0
		move.w	d0,d1
		swap    d0
		subq.w  #1,d1

loc_12FE:		               ; CODE XREF: ROM:00001300↓j
				        ; ROM:00001304↓j
		move.l  (a0)+,(a1)+
		dbf	d1,loc_12FE
		dbf	d0,loc_12FE
		jmp	(a2)

; =============== S U B R O U T I N E =======================================


sub_130A:		               ; CODE XREF: ROM:0000031C↑j
				        ; ROM:000042F6↓p
		move.w  (word_FFFE2C).w,d1
		lea	($C00000).l,a5

loc_1314:		               ; CODE XREF: sub_130A+24↓j
		move.l	d0,4(a5)

loc_1318:		               ; CODE XREF: sub_130A+1A↓j
		moveq	#0,d2
		move.b  (a1)+,d2
		bmi.s	locret_1330
		beq.s	loc_1326
		add.w   d1,d2
		move.w	d2,(a5)
		bra.s	loc_1318
; ---------------------------------------------------------------------------

loc_1326:		               ; CODE XREF: sub_130A+14↑j
		swap    d0
		add.w   (word_FFFE2E).w,d0
		swap    d0
		bra.s	loc_1314
; ---------------------------------------------------------------------------

locret_1330:		            ; CODE XREF: sub_130A+12↑j
		rts
; End of function sub_130A


; =============== S U B R O U T I N E =======================================


sub_1332:		               ; CODE XREF: ROM:00000328↑j
				        ; ROM:000042D4↓p
		move.l	#$44000000,d0
		move.w	#0,(word_FFFE2C).w
		move.l	#$11011,d1
; End of function sub_1332


; =============== S U B R O U T I N E =======================================


sub_1344:		               ; CODE XREF: sub_324↑j
		move.l	d0,d2
		lea	(unk_B000).l,a1
		move.w	#$60,d2 ; '`'
; End of function sub_1344


; =============== S U B R O U T I N E =======================================


sub_1350:		               ; CODE XREF: ROM:00000320↑j
				        ; sub_3BDA+22↓p ...
		asl.w   #2,d2
		subq.w  #1,d2
		lea	($C00000).l,a5
		move.l	d0,4(a5)
		move.l	d1,-(sp)

loc_1360:		               ; CODE XREF: sub_1350+26↓j
		move.w  (a1)+,d1
		bsr.s   loc_1380
		bsr.s   sub_137E
		bsr.s   sub_137E
		bsr.s   sub_137E
		move.l	d3,(a5)
		bsr.s   loc_1380
		bsr.s   sub_137E
		bsr.s   sub_137E
		bsr.s   sub_137E
		move.l	d3,(a5)
		dbf	d2,loc_1360
		move.l  (sp)+,d1
		rts
; End of function sub_1350


; =============== S U B R O U T I N E =======================================


sub_137E:		               ; CODE XREF: sub_1350+14↑p
				        ; sub_1350+16↑p ...
		rol.l   #8,d3
; End of function sub_137E


loc_1380:		               ; CODE XREF: sub_1350+12↑p
				        ; sub_1350+1C↑p
		rol.w   #2,d1
		move.w	d1,d4
		andi.w  #3,d4
		move.b  4(sp,d4.w),d3
		rts

; =============== S U B R O U T I N E =======================================


sub_138E:		               ; CODE XREF: ROM:00000334↑j
				        ; sub_1684+BA↓p ...
		lea	($C00000).l,a5
		move.w	d2,d6
		addq.w  #1,d6

loc_1398:		               ; CODE XREF: sub_138E+24↓j
		move.w	d3,d5
		move.l	d0,4(a5)
		move.w	d1,d4

loc_13A0:		               ; CODE XREF: sub_138E+16↓j
		move.w	d5,(a5)
		add.w   d6,d5
		dbf	d4,loc_13A0
		addq.w  #1,d3
		swap    d0
		add.w   (word_FFFE2E).w,d0
		swap    d0
		dbf	d2,loc_1398
		rts
; End of function sub_138E


; =============== S U B R O U T I N E =======================================


sub_13B8:		               ; CODE XREF: ROM:00000338↑j
				        ; sub_2B64+4↓p ...
		move.w  (word_FFFE2A).w,d1
		muls.w  #$3619,d1
		addi.w  #$5D35,d1
		move.w	d1,(word_FFFE2A).w
		muls.w  d0,d1
		swap    d0
		clr.w   d0
		asr.l   #1,d0
		add.l   d1,d0
		swap    d0
		ext.l   d0
		rts
; End of function sub_13B8


; =============== S U B R O U T I N E =======================================


sub_13D8:		               ; CODE XREF: ROM:0000033C↑j
				        ; sub_80C+14↑p
		move.w  (word_FFFE2A).w,d0
		muls.w  #$3619,d0
		addi.w  #$5D35,d0
		move.w	d0,(word_FFFE2A).w
		rts
; End of function sub_13D8

; ---------------------------------------------------------------------------

loc_13EA:		               ; CODE XREF: ROM:00000380↑j
		move.w	d6,-(sp)
		andi.l  #$FFFF,d1
		divu.w  #$3E8,d1
		move.w	d1,d6
		asl.w   #4,d6
		clr.w   d1
		swap    d1
		divu.w  #$64,d1 ; 'd'
		or.b    d1,d6
		asl.w   #4,d6
		clr.w   d1
		swap    d1
		divu.w  #$A,d1
		or.b    d1,d6
		asl.w   #4,d6
		swap    d1
		or.w    d6,d1
		move.w  (sp)+,d6
		rts
; ---------------------------------------------------------------------------

loc_141A:		               ; CODE XREF: ROM:00000394↑j
				        ; ROM:00001426↓j
		move.w  (a1)+,d2
		beq.s	locret_1428
		movem.l (a1)+,d0-d1
		jsr	sub_9F4
		bra.s	loc_141A
; ---------------------------------------------------------------------------

locret_1428:		            ; CODE XREF: ROM:0000141C↑j
		rts

; =============== S U B R O U T I N E =======================================


enidec:				 ; CODE XREF: ROM:00000330↑j
				        ; sub_1988+E↓p ...
		movem.l d0-d7/a3-a6,-(sp)
		movea.w d0,a3
		move.b  (a1)+,d0
		ext.w   d0
		movea.w d0,a5
		move.b  (a1)+,d0
		ext.w   d0
		ext.l   d0
		ror.l   #1,d0
		ror.w   #1,d0
		move.l	d0,d4
		movea.w (a1)+,a6
		adda.w  a3,a6
		movea.w (a1)+,a4
		adda.w  a3,a4
		move.b  (a1)+,d5
		asl.w   #8,d5
		move.b  (a1)+,d5
		moveq	#$10,d6

loc_1452:		               ; CODE XREF: ROM:00001484↓j
				        ; ROM:0000148C↓j ...
		moveq	#7,d0
		move.w	d6,d7
		sub.w   d0,d7
		move.w	d5,d1
		lsr.w   d7,d1
		andi.w  #$7F,d1
		move.w	d1,d2
		cmpi.w  #$40,d1 ; '@'
		bcc.s	loc_146C
		moveq	#6,d0
		lsr.w   #1,d2

loc_146C:		               ; CODE XREF: enidec+3C↑j
		bsr.w	sub_1574
		andi.w  #$F,d2
		lsr.w   #4,d1
		add.w   d1,d1
		jmp	loc_14C8(pc,d1.w)
; End of function enidec

; ---------------------------------------------------------------------------

loc_147C:		               ; CODE XREF: ROM:00001480↓j
				        ; ROM:loc_14C8↓j ...
		move.w	a6,(a2)+
		addq.w  #1,a6
		dbf	d2,loc_147C
		bra.s	loc_1452
; ---------------------------------------------------------------------------

loc_1486:		               ; CODE XREF: ROM:00001488↓j
				        ; ROM:000014CC↓j ...
		move.w	a4,(a2)+
		dbf	d2,loc_1486
		bra.s	loc_1452
; ---------------------------------------------------------------------------

loc_148E:		               ; CODE XREF: ROM:000014D0↓j
		bsr.w	sub_14F0

loc_1492:		               ; CODE XREF: ROM:00001494↓j
		move.w	d1,(a2)+
		dbf	d2,loc_1492
		bra.s	loc_1452
; ---------------------------------------------------------------------------

loc_149A:		               ; CODE XREF: ROM:000014D2↓j
		bsr.w	sub_14F0

loc_149E:		               ; CODE XREF: ROM:000014A2↓j
		move.w	d1,(a2)+
		addq.w  #1,d1
		dbf	d2,loc_149E
		bra.s	loc_1452
; ---------------------------------------------------------------------------

loc_14A8:		               ; CODE XREF: ROM:000014D4↓j
		bsr.w	sub_14F0

loc_14AC:		               ; CODE XREF: ROM:000014B0↓j
		move.w	d1,(a2)+
		subq.w  #1,d1
		dbf	d2,loc_14AC
		bra.s	loc_1452
; ---------------------------------------------------------------------------

loc_14B6:		               ; CODE XREF: ROM:000014D6↓j
		cmpi.w  #$F,d2
		beq.s	loc_14D8

loc_14BC:		               ; CODE XREF: ROM:000014C2↓j
		bsr.w	sub_14F0
		move.w	d1,(a2)+
		dbf	d2,loc_14BC
		bra.s	loc_1452
; ---------------------------------------------------------------------------

loc_14C8:
		bra.s	loc_147C
; ---------------------------------------------------------------------------
		bra.s	loc_147C
; ---------------------------------------------------------------------------
		bra.s	loc_1486
; ---------------------------------------------------------------------------
		bra.s	loc_1486
; ---------------------------------------------------------------------------
		bra.s	loc_148E
; ---------------------------------------------------------------------------
		bra.s	loc_149A
; ---------------------------------------------------------------------------
		bra.s	loc_14A8
; ---------------------------------------------------------------------------
		bra.s	loc_14B6
; ---------------------------------------------------------------------------

loc_14D8:		               ; CODE XREF: ROM:000014BA↑j
		subq.w  #1,a1
		cmpi.w  #$10,d6
		bne.s	loc_14E2
		subq.w  #1,a1

loc_14E2:		               ; CODE XREF: ROM:000014DE↑j
		move.w	a1,d0
		lsr.w   #1,d0
		bcc.s	loc_14EA
		addq.w  #1,a1

loc_14EA:		               ; CODE XREF: ROM:000014E6↑j
		movem.l (sp)+,d0-d7/a3-a6
		rts

; =============== S U B R O U T I N E =======================================


sub_14F0:		               ; CODE XREF: ROM:loc_148E↑p
				        ; ROM:loc_149A↑p ...
		move.w	a3,d3
		swap    d4
		bpl.s	loc_1500
		subq.w  #1,d6
		btst	d6,d5
		beq.s	loc_1500
		ori.w   #$1000,d3

loc_1500:		               ; CODE XREF: sub_14F0+4↑j
				        ; sub_14F0+A↑j
		swap    d4
		bpl.s	loc_150E
		subq.w  #1,d6
		btst	d6,d5
		beq.s	loc_150E
		ori.w   #$800,d3

loc_150E:		               ; CODE XREF: sub_14F0+12↑j
				        ; sub_14F0+18↑j
		move.w	d5,d1
		move.w	d6,d7
		sub.w   a5,d7
		bcc.s	loc_153E
		move.w	d7,d6
		addi.w  #$10,d6
		neg.w   d7
		lsl.w   d7,d1
		move.b  (a1),d5
		rol.b   d7,d5
		add.w   d7,d7
		and.w   loc_1552(pc,d7.w),d5
		add.w   d5,d1

loc_152C:		               ; CODE XREF: sub_14F0:loc_1552↓j
		move.w	a5,d0
		add.w   d0,d0
		and.w   loc_1552(pc,d0.w),d1
		add.w   d3,d1
		move.b  (a1)+,d5
		lsl.w   #8,d5
		move.b  (a1)+,d5
		rts
; ---------------------------------------------------------------------------

loc_153E:		               ; CODE XREF: sub_14F0+24↑j
		beq.s	loc_1550
		lsr.w   d7,d1
		move.w	a5,d0
		add.w   d0,d0
		and.w   loc_1552(pc,d0.w),d1
		add.w   d3,d1
		move.w	a5,d0
		bra.s	sub_1574
; ---------------------------------------------------------------------------

loc_1550:		               ; CODE XREF: sub_14F0:loc_153E↑j
		moveq	#$10,d6

loc_1552:
		bra.s	loc_152C
; End of function sub_14F0

; ---------------------------------------------------------------------------
		dc.w 1
		dc.w 3
		dc.w 7
		dc.w $F
		dc.w $1F
		dc.w $3F
		dc.w $7F
		dc.w $FF
		dc.w $1FF
		dc.w $3FF
		dc.w $7FF
		dc.w $FFF
		dc.w $1FFF
		dc.w $3FFF
		dc.w $7FFF
		dc.w $FFFF

; =============== S U B R O U T I N E =======================================


sub_1574:		               ; CODE XREF: enidec:loc_146C↑p
				        ; sub_14F0+5E↑j
		sub.w   d0,d6
		cmpi.w  #9,d6
		bcc.s	locret_1582
		addq.w  #8,d6
		asl.w   #8,d5
		move.b  (a1)+,d5

locret_1582:		            ; CODE XREF: sub_1574+6↑j
		rts
; End of function sub_1574


; =============== S U B R O U T I N E =======================================


sub_1584:		               ; CODE XREF: ROM:000002F8↑j
				        ; ROM:loc_1594↓p ...
		movea.w a0,a6
		moveq	#0,d6

loc_1588:		               ; CODE XREF: sub_1584+6↓j
		move.l	d6,(a6)+
		dbf	d7,loc_1588
		rts
; End of function sub_1584

; ---------------------------------------------------------------------------

loc_1590:		               ; CODE XREF: ROM:000002FC↑j
		movem.l d5/a0,-(sp)

loc_1594:		               ; CODE XREF: ROM:00001598↓j
		bsr.s   sub_1584
		movea.w a6,a0
		dbf	d5,loc_1594
		movem.l (sp)+,d5/a0
		rts

; =============== S U B R O U T I N E =======================================


sub_15A2:		               ; CODE XREF: ROM:00000300↑j
				        ; sub_162C+30↓p
		btst	#1,2(a0)
		beq.s	loc_15AC
		rts
; ---------------------------------------------------------------------------

loc_15AC:		               ; CODE XREF: sub_15A2+6↑j
		movea.l 4(a0),a1
		moveq	#0,d1
		move.b  (a1)+,d1
		move.b  (a1)+,$19(a0)
		tst.b	2(a0)
		bpl.s	loc_15C2
		addq.b  #1,$19(a0)

loc_15C2:		               ; CODE XREF: sub_15A2+1A↑j
		move.w  $C(a0),d2
		cmpi.w  #$180,d2
		bhi.s	locret_1618
		move.w  8(a0),d3

loc_15D0:		               ; CODE XREF: sub_15A2+68↓j
				        ; sub_15A2+72↓j
		move.b  (a1)+,d0
		ext.w   d0
		add.w   d2,d0
		move.w	d0,(a2)+
		move.b  (a1)+,(a2)+
		move.b	d6,(a2)+
		move.b  (a1)+,d0
		or.b    $18(a0),d0
		move.b	d0,(a2)+
		move.b  (a1)+,(a2)+
		move.b  (a1)+,d0
		tst.b	2(a0)
		bpl.s	loc_15F6
		bchg    #3,-2(a2)
		move.b  (a1),d0

loc_15F6:		               ; CODE XREF: sub_15A2+4A↑j
		addq.w  #1,a1
		ext.w   d0
		add.w   d3,d0
		move.w	d0,d4
		subi.w  #$41,d4 ; 'A'
		cmpi.w  #$17F,d4
		bcs.s	loc_1610
		subq.w  #6,a2
		dbf	d1,loc_15D0
		rts
; ---------------------------------------------------------------------------

loc_1610:		               ; CODE XREF: sub_15A2+64↑j
		move.w	d0,(a2)+
		addq.b  #1,d6
		dbf	d1,loc_15D0

locret_1618:		            ; CODE XREF: sub_15A2+28↑j
		rts
; End of function sub_15A2


; =============== S U B R O U T I N E =======================================


sub_161A:		               ; CODE XREF: sub_162C+22↓p
		move.l  $10(a0),d2
		add.l   d2,8(a0)
		move.l  $14(a0),d3
		add.l   d3,$C(a0)
		rts
; End of function sub_161A


; =============== S U B R O U T I N E =======================================


sub_162C:		               ; CODE XREF: ROM:000002F4↑j
				        ; initial_pc_entry+1A18↓p
		move.l	a1,(dword_FFFE30).w
		move.l	a1,-(sp)
		move.w	#1,(word_FFFE38).w

loc_1638:		               ; CODE XREF: sub_162C+42↓j
		movem.w d0-d1,-(sp)
		move.w  (a0),d0
		beq.s	loc_1668
		andi.w  #$7FFC,d0
		movea.l (jmp_FE34).w,a1
		movea.l (a1,d0.w),a1
		jsr	(a1)
		bsr.s   sub_161A
		tst.w	(a0)
		beq.s	loc_1668
		movea.l (dword_FFFE30).w,a2
		move.w  (word_FFFE38).w,d6
		bsr.w	sub_15A2
		move.w	d6,(word_FFFE38).w
		move.l	a2,(dword_FFFE30).w

loc_1668:		               ; CODE XREF: sub_162C+12↑j
				        ; sub_162C+26↑j
		movem.w (sp)+,d0-d1
		adda.w  d1,a0
		dbf	d0,loc_1638
		movea.l (dword_FFFE30).w,a2
		cmpa.l  (sp)+,a2
		beq.s	loc_1680
		clr.b   -5(a2)
		rts
; ---------------------------------------------------------------------------

loc_1680:		               ; CODE XREF: sub_162C+4C↑j
		clr.l   (a2)
		rts
; End of function sub_162C


; =============== S U B R O U T I N E =======================================


sub_1684:		               ; CODE XREF: initial_pc_entry:loc_182E↓p
		st      (byte_FFFE28).w
		jsr	sub_BCC
		jsr	sub_ECE
		move.w	#$FFFF,d1
		move.l	#$40000000,d0
		jsr	loc_922
		bsr.w	sub_10B8
		lea	word_17B6(pc),a1
		jsr	loc_876
		lea	(word_17C6).l,a1
		jsr	palload
		move.l	#$61A00002,($C00004).l
		lea	(unk_CAFC).l,a1
		jsr	nemdectovram
		move.l	#$60200003,($C00004).l
		lea	(unk_EECE).l,a1
		jsr	nemdectovram
		bsr.w	sub_1988
		bsr.w	sub_1A06
		clr.b   (byte_FFC0FF).w
		clr.b   (byte_FFC100).w

loc_16EC:		               ; CODE XREF: sub_1684+70↓j
		btst	#2,($A12003).l
		bne.s	loc_16EC

loc_16F6:		               ; CODE XREF: sub_1684+7A↓j
		btst	#0,($A12003).l
		beq.s	loc_16F6
		ori	#$700,sr
		clr.l   ($210000).l
		lea	($21A000).l,a0
		move.w	#$17BF,d7

loc_1714:		               ; CODE XREF: sub_1684+96↓j
		move.l	#0,(a0)+
		dbf	d7,loc_1714
		bsr.w	sub_1B6E

loc_1722:		               ; CODE XREF: sub_1684+A6↓j
		bset    #1,($A12003).l
		beq.s	loc_1722
		andi    #$F8FF,sr
		move.l	#$66020003,d0
		moveq	#$25,d1 ; '%'
		moveq	#4,d2
		move.w	#1,d3
		jsr	sub_138E
		moveq	#$25,d1 ; '%'
		moveq	#4,d2
		move.w	#$BF,d3
		jsr	sub_138E
		moveq	#$25,d1 ; '%'
		moveq	#3,d2
		move.w	#$17D,d3
		jsr	sub_138E
		moveq	#$25,d1 ; '%'
		moveq	#5,d2
		move.w	#$429,d3
		jsr	sub_138E
		move.l	#$74020003,d0
		moveq	#$25,d1 ; '%'
		moveq	#4,d2
		move.w	#$215,d3
		jsr	sub_138E
		moveq	#$25,d1 ; '%'
		moveq	#4,d2
		move.w	#$2D3,d3
		jsr	sub_138E
		moveq	#$25,d1 ; '%'
		moveq	#3,d2
		move.w	#$391,d3
		jsr	sub_138E
		moveq	#$25,d1 ; '%'
		moveq	#5,d2
		move.w	#$429,d3
		jsr	sub_138E
		jsr	sub_BB2
		lea	(loc_18CC).l,a1
		jsr	sub_414
		clr.b   (byte_FFFE28).w
		bsr.w	sub_10C6
		jmp	sub_80C
; End of function sub_1684

; ---------------------------------------------------------------------------
word_17B6:      dc.w $8238              ; DATA XREF: sub_1684+1E↑o
		dc.w $8338
		dc.w $8406
		dc.w $8570
		dc.w $8B00
		dc.w $8D38
		dc.w $9011
		dc.w 0
word_17C6:      dc.w $32		; DATA XREF: sub_1684+26↑o
		dc.w 0
		dc.w $EEE
		dc.w $CCC
		dc.w $AAA
		dc.w $888
		dc.w $666
		dc.w $444
		dc.w $222
		dc.w 0
		dc.w $2AC
		dc.w $8A
		dc.w $68
		dc.w $AAA
		dc.w $CA6
		dc.w $A84
		dc.w $862
		dc.w 0
		dc.w 0
		dc.w $ECC
		dc.w $864
		dc.w $A42
		dc.w $A64
		dc.w $C84
		dc.w $C86
		dc.w $CA8
		dc.w $EA8
		dc.w $EC8
		dc.w $CA8
		dc.w $CCA
		dc.w $ECA
		dc.w $EEC
		dc.w $EEE
		dc.w 0
		dc.w $A00
		dc.w $C00
		dc.w $E20
		dc.w $E40
		dc.w $A64
		dc.w $E60
		dc.w $C86
		dc.w $E80
		dc.w $EA8
		dc.w $EA0
		dc.w $CA8
		dc.w $EC0
		dc.w $ECA
		dc.w $EEC
		dc.w $EEE
		dc.w 0
		dc.w $EEE
		dc.w $888
; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR initial_pc_entry

loc_182E:		               ; CODE XREF: initial_pc_entry+1AA↑j
		bsr.w	sub_1684

loc_1832:		               ; CODE XREF: initial_pc_entry:loc_18B2↓j
		jsr	sub_80C
		move.b  (byte_FFFDDC).w,d0
		bmi.s	loc_184E
		tst.b	(byte_FFC0FF).w
		bne.s	loc_18B6
		btst	#7,(word_FFFE20+1).w
		bne.s	loc_18B6
		moveq	#2,d2
		bra.s	loc_1868
; ---------------------------------------------------------------------------

loc_184E:		               ; CODE XREF: initial_pc_entry+1420↑j
		tst.b	(byte_FFC0FF).w
		bne.s	loc_1860
		btst	#7,(word_FFFE20+1).w
		bne.s	loc_1860
		moveq	#0,d2
		bra.s	loc_1868
; ---------------------------------------------------------------------------

loc_1860:		               ; CODE XREF: initial_pc_entry+1438↑j
				        ; initial_pc_entry+1440↑j
		move.b  #1,(byte_FFC0FF).w
		moveq	#1,d2

loc_1868:		               ; CODE XREF: initial_pc_entry+1432↑j
				        ; initial_pc_entry+1444↑j
		bsr.w	sub_1B4E
		tst.b	(byte_FFC100).w
		beq.s	loc_1896
		btst	#7,(word_FFFE20+1).w
		bne.w	initial_pc_entry
		cmpi.b  #1,(byte_FFC100).w
		beq.s	loc_188A
		subq.b  #1,(byte_FFC100).w
		bra.s	loc_18B2
; ---------------------------------------------------------------------------

loc_188A:		               ; CODE XREF: initial_pc_entry+1468↑j
		cmpi.b  #$40,(word_FFFE3A).w ; '@'
		beq.s	loc_18B2
		bra.w	initial_pc_entry
; ---------------------------------------------------------------------------

loc_1896:		               ; CODE XREF: initial_pc_entry+1456↑j
		move.b  (word_FFFE20).w,d0
		cmpi.b  #$71,d0 ; 'q'
		bne.w	loc_18B2
		move.b  #$FF,(byte_FFC100).w
		clr.b   (byte_FFC0FF).w
		moveq	#0,d0
		bsr.w	sub_1124

loc_18B2:		               ; CODE XREF: initial_pc_entry+146E↑j
				        ; initial_pc_entry+1476↑j ...
		bra.w	loc_1832
; ---------------------------------------------------------------------------

loc_18B6:		               ; CODE XREF: initial_pc_entry+1426↑j
				        ; initial_pc_entry+142E↑j
		moveq	#1,d0
		moveq	#8,d1
		jsr	sub_11F4
		moveq	#8,d0
		jsr	sub_630
		rts
; END OF FUNCTION CHUNK FOR initial_pc_entry
; ---------------------------------------------------------------------------
		moveq	#$C,d0
		jmp	sub_630
; ---------------------------------------------------------------------------

loc_18CC:		               ; DATA XREF: sub_1684+11C↑o
		bsr.w	sub_120C
		btst	#0,($A12003).l
		beq.s	locret_1946
		move.w  ($210000).l,d3
		cmpi.w  #3,d3
		bne.s	loc_18FE
		move.l	#$40000010,($C00004).l
		move.w	#$40,($C00000).l ; '@'
		bsr.w	sub_1BBE
		bra.s	loc_191A
; ---------------------------------------------------------------------------

loc_18FE:		               ; CODE XREF: ROM:000018E4↑j
		cmpi.w  #7,d3
		bne.s	loc_191A
		move.l	#$40000010,($C00004).l
		move.w	#$120,($C00000).l
		bsr.w	sub_1BBE

loc_191A:		               ; CODE XREF: ROM:000018FC↑j
				        ; ROM:00001902↑j
		move.w  ($210000).l,d3
		lsl.w   #1,d3
		moveq	#0,d0
		move.w  word_1948(pc,d3.w),d0
		lsl.l   #2,d0
		lsr.w   #2,d0
		swap    d0
		move.w  word_1958(pc,d3.w),d2
		lsl.w   #1,d3
		move.l	dword_1968(pc,d3.w),d1
		jsr	sub_9F4

loc_193C:		               ; CODE XREF: ROM:00001944↓j
		bset    #1,($A12003).l
		beq.s	loc_193C

locret_1946:		            ; CODE XREF: ROM:000018D8↑j
		rts
; ---------------------------------------------------------------------------
word_1948:      dc.w $20
		dc.w $17E0
		dc.w $2FA0
		dc.w $8520
		dc.w $42A0
		dc.w $5A60
		dc.w $7220
		dc.w $8520
word_1958:      dc.w $BE0
		dc.w $BE0
		dc.w $980
		dc.w $E40
		dc.w $BE0
		dc.w $BE0
		dc.w $980
		dc.w $E40
dword_1968:     dc.l $21A000
		dc.l $21B7C0
		dc.l $21CF80
		dc.l $21E280
		dc.l $21A000
		dc.l $21B7C0
		dc.l $21CF80
		dc.l $21E280

; =============== S U B R O U T I N E =======================================


sub_1988:		               ; CODE XREF: sub_1684+58↑p
		lea	(unk_EE88).l,a1
		lea	(unk_FFE000).w,a2
		move.w	#$250D,d0
		jsr	enidec
		moveq	#$25,d1 ; '%'
		moveq	#$13,d2
		move.l	#$54020003,d0
		lea	(unk_FFE000).w,a1
		jsr	sub_ACA
		lea	(unk_F15E).l,a1
		lea	(unk_FFE000).w,a2
		move.w	#$4701,d0
		jsr	enidec
		moveq	#7,d1
		moveq	#2,d2
		move.l	#$5CBE0003,d0
		lea	(unk_FFE000).w,a1
		jsr	sub_ACA
		move.l	#$60000003,($C00004).l
		move.w	#0,($C00000).l
		move.w	#0,($C00000).l
		move.l	#$40000010,($C00004).l
		move.w	#$120,($C00000).l
		move.w	#$120,($C00000).l
		rts
; End of function sub_1988


; =============== S U B R O U T I N E =======================================


sub_1A06:		               ; CODE XREF: sub_1684+5C↑p
		lea	(unk_FFE000).w,a2
		lea	(unk_F5F2).l,a1
		jsr	nemdectoram
		lea	(unk_FFE000).w,a0
		move.l	#$52600003,d1
		move.w	#$E,d6
		bsr.w	sub_1AF8
		moveq	#$D,d1
		moveq	#1,d2
		move.l	#$53320003,d0
		lea	(unk_1AC0).l,a1
		jsr	sub_ACA
		lea	(unk_FFE000).w,a2
		lea	(unk_F168).l,a1
		jsr	nemdectoram
		move.w	#$11,d1
		lea	(unk_FFE000).w,a0
		lea	(byte_FFC100).w,a1
		bsr.w	sub_1B16
		lea	(unk_FFE000).w,a2
		lea	(unk_F28A).l,a1
		jsr	nemdectoram
		move.w	#$14,d1
		lea	(unk_FFE000).w,a0
		lea	(unk_FFC800).w,a1
		bsr.w	sub_1B16
		lea	(unk_FFE000).w,a2
		lea	(unk_F40C).l,a1
		jsr	nemdectoram
		move.w	#$1C,d1
		lea	(unk_FFE000).w,a0
		lea	(unk_FFCF00).w,a1
		bsr.w	sub_1B16
		moveq	#1,d6
		move.w	#$6723,d0
		move.l	#$5E0C0003,d1

loc_1AA0:		               ; CODE XREF: sub_1A06+B4↓j
		moveq	#$1B,d7
		move.l	d1,($C00004).l

loc_1AA8:		               ; CODE XREF: sub_1A06+AA↓j
		move.w	d0,($C00000).l
		addq.w  #4,d0
		dbf	d7,loc_1AA8
		addi.l  #$800000,d1
		dbf	d6,loc_1AA0
		rts
; End of function sub_1A06

; ---------------------------------------------------------------------------
unk_1AC0:       dc.b $66 ; f            ; DATA XREF: sub_1A06+2A↑o
		dc.b $93
		dc.b $66 ; f
		dc.b $97
		dc.b $66 ; f
		dc.b $93
		dc.b $66 ; f
		dc.b $93
		dc.b $66 ; f
		dc.b $93
		dc.b $66 ; f
		dc.b $93
		dc.b $66 ; f
		dc.b $93
		dc.b $66 ; f
		dc.b $93
		dc.b $66 ; f
		dc.b $93
		dc.b $66 ; f
		dc.b $93
		dc.b $66 ; f
		dc.b $93
		dc.b $66 ; f
		dc.b $93
		dc.b $66 ; f
		dc.b $93
		dc.b $66 ; f
		dc.b $93
		dc.b $66 ; f
		dc.b $9B
		dc.b $66 ; f
		dc.b $9F
		dc.b $66 ; f
		dc.b $A3
		dc.b $66 ; f
		dc.b $A7
		dc.b $66 ; f
		dc.b $AB
		dc.b $66 ; f
		dc.b $AF
		dc.b $66 ; f
		dc.b $B3
		dc.b $66 ; f
		dc.b $B7
		dc.b $66 ; f
		dc.b $BB
		dc.b $66 ; f
		dc.b $BF
		dc.b $66 ; f
		dc.b $C3
		dc.b $66 ; f
		dc.b $C7
		dc.b $66 ; f
		dc.b $CB
		dc.b $6E ; n
		dc.b $CB

; =============== S U B R O U T I N E =======================================


sub_1AF8:		               ; CODE XREF: sub_1A06+1C↑p
				        ; sub_1AF8+18↓j ...
		move.l	d1,($C00004).l
		moveq	#$F,d7

loc_1B00:		               ; CODE XREF: sub_1AF8+E↓j
		move.w  (a0)+,($C00000).l
		dbf	d7,loc_1B00
		addi.l  #$800000,d1
		dbf	d6,sub_1AF8
		rts
; End of function sub_1AF8


; =============== S U B R O U T I N E =======================================


sub_1B16:		               ; CODE XREF: sub_1A06+4E↑p
				        ; sub_1A06+6C↑p ...
		movea.l a1,a2
		move.w	#$1BF,d7

loc_1B1C:		               ; CODE XREF: sub_1B16+C↓j
		move.l	#0,(a2)+
		dbf	d7,loc_1B1C
		movea.l a1,a2
		moveq	#$1C,d7
		sub.w   d1,d7
		lsr.w   #1,d7
		lsl.w   #5,d7
		adda.w  d7,a2
		movea.l a2,a1
		move.w	d1,d7
		lsl.w   #4,d7
		subq.w  #1,d7
		move.w	d7,d0

loc_1B3C:		               ; CODE XREF: sub_1B16+28↓j
		move.w  (a0)+,(a2)+
		dbf	d7,loc_1B3C
		adda.w  #$380,a1

loc_1B46:		               ; CODE XREF: sub_1B16+32↓j
		move.w  (a0)+,(a1)+
		dbf	d0,loc_1B46
		rts
; End of function sub_1B16


; =============== S U B R O U T I N E =======================================


sub_1B4E:		               ; CODE XREF: initial_pc_entry:loc_1868↑p
		lsl.w   #2,d2
		movea.l dword_1B62(pc,d2.w),a0
		move.l	#$64600003,d1
		move.w	#$37,d6 ; '7'
		bsr.s   sub_1AF8
		rts
; End of function sub_1B4E

; ---------------------------------------------------------------------------
dword_1B62:     dc.l $FFFFC100
		dc.l $FFFFC800
		dc.l $FFFFCF00

; =============== S U B R O U T I N E =======================================


sub_1B6E:		               ; CODE XREF: sub_1684+9A↑p
		lea	(unk_B300).l,a0
		lea	($200000).l,a1
		move.w	#$2F7F,d7

loc_1B7E:		               ; CODE XREF: sub_1B6E+12↓j
		move.w  (a0)+,(a1)+
		dbf	d7,loc_1B7E
		lea	($220000).l,a1
		move.w	#$7FFF,d7

loc_1B8E:		               ; CODE XREF: sub_1B6E+26↓j
		move.l	#0,(a1)+
		dbf	d7,loc_1B8E
		moveq	#$12,d1
		moveq	#9,d2
		lea	(unk_C980).l,a0
		lea	($220000).l,a1
		movea.l a1,a2

loc_1BAA:		               ; CODE XREF: sub_1B6E+4A↓j
		move.w	d1,d3

loc_1BAC:		               ; CODE XREF: sub_1B6E+40↓j
		move.w  (a0)+,(a1)+
		dbf	d3,loc_1BAC
		adda.w  #$200,a2
		movea.l a2,a1
		dbf	d2,loc_1BAA
		rts
; End of function sub_1B6E


; =============== S U B R O U T I N E =======================================


sub_1BBE:		               ; CODE XREF: ROM:000018F8↑p
				        ; ROM:00001916↑p
		move.w  ($210002).l,d0
		lea	(word_1C06).l,a1
		btst	#7,d0
		bne.s	loc_1BD6
		lea	(word_1D06).l,a1

loc_1BD6:		               ; CODE XREF: sub_1BBE+10↑j
		btst	#6,d0
		beq.s	loc_1BE8
		andi.w  #$7F,d0
		move.w	#$7F,d1
		sub.w   d0,d1
		move.w	d1,d0

loc_1BE8:		               ; CODE XREF: sub_1BBE+1C↑j
		andi.w  #$3F,d0 ; '?'
		lsr.w   #3,d0
		lsl.w   #5,d0
		adda.w  d0,a1
		moveq	#$F,d0
		lea	(word_FFFB80).w,a3

loc_1BF8:		               ; CODE XREF: sub_1BBE+3C↓j
		move.w  (a1)+,(a3)+
		dbf	d0,loc_1BF8
		bset    #0,(byte_FFFE29).w
		rts
; End of function sub_1BBE

; ---------------------------------------------------------------------------
word_1C06:      dc.w 0		  ; DATA XREF: sub_1BBE+6↑o
		dc.w $EEE
		dc.w $CCC
		dc.w $AAA
		dc.w $888
		dc.w $666
		dc.w $444
		dc.w $222
		dc.w 0
		dc.w $2AC
		dc.w $8A
		dc.w $68
		dc.w 0
		dc.w $CA6
		dc.w $A84
		dc.w $862
		dc.w 0
		dc.w $EEE
		dc.w $EEE
		dc.w $CCC
		dc.w $AAA
		dc.w $888
		dc.w $666
		dc.w $444
		dc.w $222
		dc.w $4CE
		dc.w $2AC
		dc.w $8A
		dc.w 0
		dc.w $EC8
		dc.w $CA6
		dc.w $A84
		dc.w 0
		dc.w $EEE
		dc.w $EEE
		dc.w $EEE
		dc.w $CCC
		dc.w $AAA
		dc.w $888
		dc.w $666
		dc.w $444
		dc.w $4EE
		dc.w $2CE
		dc.w $AC
		dc.w 0
		dc.w $EE8
		dc.w $CC6
		dc.w $AA4
		dc.w 0
		dc.w $EEE
		dc.w $EEE
		dc.w $EEE
		dc.w $CCC
		dc.w $CCC
		dc.w $AAA
		dc.w $888
		dc.w $666
		dc.w $4EE
		dc.w $4CE
		dc.w $AE
		dc.w 0
		dc.w $EE6
		dc.w $EC6
		dc.w $CA4
		dc.w 0
		dc.w $EEE
		dc.w $EEE
		dc.w $EEE
		dc.w $EEE
		dc.w $CCC
		dc.w $CCC
		dc.w $AAA
		dc.w $888
		dc.w $6EE
		dc.w $EEA
		dc.w $CE
		dc.w 0
		dc.w $EE6
		dc.w $EC4
		dc.w $EC0
		dc.w 0
		dc.w $EEE
		dc.w $EEE
		dc.w $EEE
		dc.w $EEE
		dc.w $EEE
		dc.w $CCC
		dc.w $CCC
		dc.w $AAA
		dc.w $AEE
		dc.w $2EE
		dc.w $CE
		dc.w 0
		dc.w $EEA
		dc.w $EE8
		dc.w $EC8
		dc.w 0
		dc.w $EEE
		dc.w $EEE
		dc.w $EEE
		dc.w $EEE
		dc.w $EEE
		dc.w $EEE
		dc.w $CCC
		dc.w $CCC
		dc.w $AEE
		dc.w $8EE
		dc.w $6EE
		dc.w 0
		dc.w $EEC
		dc.w $EEA
		dc.w $EE8
		dc.w 0
		dc.w $EEE
		dc.w $EEE
		dc.w $EEE
		dc.w $EEE
		dc.w $EEE
		dc.w $EEE
		dc.w $EEE
		dc.w $EEE
		dc.w $EEE
		dc.w $EEE
		dc.w $EEE
		dc.w 0
		dc.w $EEE
		dc.w $EEE
		dc.w $EEE
word_1D06:      dc.w 0		  ; DATA XREF: sub_1BBE+12↑o
		dc.w $EEE
		dc.w $CCC
		dc.w $AAA
		dc.w $888
		dc.w $666
		dc.w $444
		dc.w $222
		dc.w 0
		dc.w $2AC
		dc.w $8A
		dc.w $68
		dc.w 0
		dc.w $CA6
		dc.w $A84
		dc.w $862
		dc.w 0
		dc.w $CCC
		dc.w $AAA
		dc.w $888
		dc.w $666
		dc.w $444
		dc.w $222
		dc.w 0
		dc.w 0
		dc.w $2AC
		dc.w $8A
		dc.w $68
		dc.w 0
		dc.w $CA6
		dc.w $A84
		dc.w $862
		dc.w 0
		dc.w $CCC
		dc.w $AAA
		dc.w $888
		dc.w $666
		dc.w $444
		dc.w $222
		dc.w 0
		dc.w 0
		dc.w $2AC
		dc.w $8A
		dc.w $68
		dc.w 0
		dc.w $CA6
		dc.w $A84
		dc.w $862
		dc.w 0
		dc.w $AAA
		dc.w $888
		dc.w $666
		dc.w $444
		dc.w $222
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w $8A
		dc.w $68
		dc.w $46
		dc.w 0
		dc.w $A84
		dc.w $864
		dc.w $642
		dc.w 0
		dc.w $AAA
		dc.w $888
		dc.w $666
		dc.w $444
		dc.w $222
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w $8A
		dc.w $68
		dc.w $46
		dc.w 0
		dc.w $A84
		dc.w $862
		dc.w $640
		dc.w 0
		dc.w $888
		dc.w $666
		dc.w $444
		dc.w $222
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w $8A
		dc.w $68
		dc.w $46
		dc.w 0
		dc.w $A84
		dc.w $862
		dc.w $640
		dc.w 0
		dc.w $888
		dc.w $666
		dc.w $444
		dc.w $222
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w $68
		dc.w $46
		dc.w $24
		dc.w 0
		dc.w $862
		dc.w $642
		dc.w $420
		dc.w 0
		dc.w $666
		dc.w $444
		dc.w $222
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w $68
		dc.w $46
		dc.w $24
		dc.w 0
		dc.w $862
		dc.w $642
		dc.w $420
; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR initial_pc_entry

loc_1E06:		               ; CODE XREF: initial_pc_entry+1AE↑j
		bsr.w	sub_1E76

loc_1E0A:		               ; CODE XREF: initial_pc_entry+1A3C↓j
		jsr	sub_80C
		ori	#$700,sr
		jsr	sub_3D30
		bsr.w	sub_289A
		bcs.s	loc_1E36
		cmpi.b  #1,(byte_FFDF02).w
		beq.s	loc_1E36
		lea	(unk_FFD900).w,a0
		lea	(dword_FFF900).w,a1
		moveq	#0,d0
		move.w	#$80,d1
		jsr	sub_162C

loc_1E36:		               ; CODE XREF: initial_pc_entry+1A00↑j
				        ; initial_pc_entry+1A08↑j
		bsr.w	sub_2982
		bsr.w	sub_3AEE
		bsr.w	sub_348E
		bsr.w	sub_3886
		bsr.w	sub_35CE
		jsr	sub_3D88
		move.b  (byte_FFDF07).w,d0
		andi.b  #$C0,d0
		beq.s	loc_1E0A
		andi    #$F8FF,sr
		btst	#6,d0
		bne.s	loc_1E70
		moveq	#1,d0
		moveq	#$10,d1
		jsr	sub_11F4
		moveq	#$10,d0
		jmp	sub_630
; ---------------------------------------------------------------------------

loc_1E70:		               ; CODE XREF: initial_pc_entry+1A46↑j
		moveq	#$C,d0
		jmp	sub_630
; END OF FUNCTION CHUNK FOR initial_pc_entry

; =============== S U B R O U T I N E =======================================


sub_1E76:		               ; CODE XREF: initial_pc_entry:loc_1E06↑p
		st      (byte_FFFE28).w
		jsr	sub_BCC
		lea	word_1F00(pc),a1
		jsr	loc_876
		jsr	sub_ECE
		jsr	sub_8B8
		lea	(loc_1F0C).l,a1
		jsr	sub_414
		bsr.w	sub_1F70
		move.b  #1,(dword_FFDF0A+2).w
		move.b  #$10,(dword_FFDF0A+1).w
		move.b  #$10,(dword_FFDF0A+3).w
		bsr.w	sub_32D4
		bsr.w	sub_3AE4
		bsr.w	sub_3D28
		jsr	sub_3D88
		move.l	#$1EF8,(jmp_FE34).w
		bsr.w	sub_1F7E
		clr.b   (byte_FFDF03).w
		bsr.w	sub_3DF2
		bsr.w	sub_3B68
		move.l	#$40000010,($C00004).l
		move.l	#$1000100,($C00000).l
		bsr.w	sub_10C6
		clr.b   (byte_FFFE28).w
		bsr.w	sub_80C
		jsr	sub_BB2
		rts
; End of function sub_1E76

; ---------------------------------------------------------------------------
		dc.l loc_1FBC
word_1F00:      dc.w $8328              ; DATA XREF: sub_1E76+8↑o
		dc.w $8230
		dc.w $8407
		dc.w $855C
		dc.w $8D2F
		dc.w 0
; ---------------------------------------------------------------------------

loc_1F0C:		               ; DATA XREF: sub_1E76+18↑o
		jsr	sub_125A
		bsr.w	sub_3EB4
		bclr    #5,(word_FFDF08+1).w
		beq.s	locret_1F26
		not.b   (byte_FFDF03).w
		beq.s	loc_1F28
		bra.w	loc_3E1A
; ---------------------------------------------------------------------------

locret_1F26:		            ; CODE XREF: ROM:00001F1A↑j
		rts
; ---------------------------------------------------------------------------

loc_1F28:		               ; CODE XREF: ROM:00001F20↑j
		move.w	#$9011,($C00004).l
		move.w	#$9011,(word_FFFDD4).w
		move.w	#$8700,($C00004).l
		move.w	#$8700,(word_FFFDC2).w
		move.l	#$40000010,($C00004).l
		move.l	#$1000100,($C00000).l
		move.l	#$7C000002,($C00004).l
		move.l	#0,($C00000).l
		jmp	sub_BB2

; =============== S U B R O U T I N E =======================================


sub_1F70:		               ; CODE XREF: sub_1E76+22↑p
		lea	(word_FFDF00).w,a0
		moveq	#$11,d0

loc_1F76:		               ; CODE XREF: sub_1F70+8↓j
		clr.l   (a0)+
		dbf	d0,loc_1F76
		rts
; End of function sub_1F70


; =============== S U B R O U T I N E =======================================


sub_1F7E:		               ; CODE XREF: sub_1E76+50↑p

; FUNCTION CHUNK AT 0000277E SIZE 0000001E BYTES
; FUNCTION CHUNK AT 00002830 SIZE 00000018 BYTES
; FUNCTION CHUNK AT 0000296C SIZE 0000000A BYTES
; FUNCTION CHUNK AT 00003474 SIZE 0000000A BYTES

		lea	(unk_FFD900).w,a0
		moveq	#$F,d7
		bsr.w	sub_1584
		move.w	#4,(a0)
		move.l	#unk_A9DC,4(a0)
		clr.l   $34(a0)
		bsr.w	sub_124A
		beq.s	loc_1FB4
		move.l	#$10001,$32(a0)
		bsr.w	sub_1244
		bne.s	loc_1FB4
		move.l	#1,$32(a0)

loc_1FB4:		               ; CODE XREF: sub_1F7E+1E↑j
				        ; sub_1F7E+2C↑j
		clr.w   $24(a0)
		bra.w	loc_24F4
; ---------------------------------------------------------------------------

loc_1FBC:		               ; DATA XREF: ROM:00001EFC↑o
		move.b  #$40,$18(a0) ; '@'
		addi.b  #$20,$21(a0) ; ' '
		bpl.s	loc_1FD0
		move.b  #$20,$18(a0) ; ' '

loc_1FD0:		               ; CODE XREF: sub_1F7E+4A↑j
		lea	$42(a0),a1
		moveq	#0,d0
		bsr.w	sub_12C0
		btst	#3,(word_FFDF08).w
		beq.s	loc_1FE4
		rts
; ---------------------------------------------------------------------------

loc_1FE4:		               ; CODE XREF: sub_1F7E+62↑j
		btst	#7,(word_FFFE20).w
		bne.s	loc_2014
		move.w  $24(a0),d0
		jmp	loc_1FF4(pc,d0.w)
; ---------------------------------------------------------------------------

loc_1FF4:
		bra.w	loc_2162
; ---------------------------------------------------------------------------
		bra.w	loc_2182
; ---------------------------------------------------------------------------
		bra.w	loc_21EA
; ---------------------------------------------------------------------------
		bra.w	loc_2272
; ---------------------------------------------------------------------------
		bra.w	loc_22F6
; ---------------------------------------------------------------------------
		bra.w	loc_238C
; ---------------------------------------------------------------------------
		bra.w	loc_22F0
; ---------------------------------------------------------------------------
		bra.w	loc_23B4
; ---------------------------------------------------------------------------

loc_2014:		               ; CODE XREF: sub_1F7E+6C↑j
		cmpi.w  #4,$24(a0)
		beq.w	loc_20B6
		move.b  (word_FFFE20+1).w,d0
		btst	#7,d0
		beq.s	loc_2054
		tst.w	$24(a0)
		bne.s	loc_203A
		tst.l	$32(a0)
		bne.s	loc_203A
		moveq	#$C,d0
		bra.w	loc_296C
; ---------------------------------------------------------------------------

loc_203A:		               ; CODE XREF: sub_1F7E+AE↑j
				        ; sub_1F7E+B4↑j
		cmpi.l  #1,$32(a0)
		bne.s	loc_204C
		bsr.w	sub_1244
		beq.w	loc_277E

loc_204C:		               ; CODE XREF: sub_1F7E+C4↑j
		bsr.w	loc_23B4
		bra.w	loc_24F4
; ---------------------------------------------------------------------------

loc_2054:		               ; CODE XREF: sub_1F7E+A8↑j
		andi.b  #$7C,d0 ; '|'
		beq.w	loc_24F4
		bsr.s   loc_2066
		bsr.w	loc_24F4
		bra.w	loc_277E
; ---------------------------------------------------------------------------

loc_2066:		               ; CODE XREF: sub_1F7E+DE↑p
		btst	#6,d0
		bne.s	loc_2086
		btst	#5,d0
		bne.s	loc_2090
		btst	#4,d0
		bne.s	loc_20A6
		btst	#3,d0
		bne.s	loc_20AE
		move.w	#4,$32(a0)
		rts
; ---------------------------------------------------------------------------

loc_2086:		               ; CODE XREF: sub_1F7E+EC↑j
		move.l	#1,$32(a0)
		rts
; ---------------------------------------------------------------------------

loc_2090:		               ; CODE XREF: sub_1F7E+F2↑j
		move.w	#3,$32(a0)
		btst	#2,(word_FFDF08).w
		beq.s	locret_20A4
		move.w	#2,$32(a0)

locret_20A4:		            ; CODE XREF: sub_1F7E+11E↑j
		rts
; ---------------------------------------------------------------------------

loc_20A6:		               ; CODE XREF: sub_1F7E+F8↑j
		move.w	#1,$32(a0)
		rts
; ---------------------------------------------------------------------------

loc_20AE:		               ; CODE XREF: sub_1F7E+FE↑j
		move.w	#5,$32(a0)
		rts
; ---------------------------------------------------------------------------

loc_20B6:		               ; CODE XREF: sub_1F7E+9C↑j
		move.b  (word_FFFE20+1).w,d0
		btst	#7,d0
		beq.s	loc_20F6
		bclr    #1,2(a0)
		btst	#0,(byte_FFDF04).w
		beq.s	loc_20DC
		andi.b  #$FC,(byte_FFDF04).w
		bsr.w	sub_3A08
		bsr.w	sub_3A8A

loc_20DC:		               ; CODE XREF: sub_1F7E+14E↑j
		tst.l	$32(a0)
		bne.s	loc_20EA
		bsr.w	sub_1244
		beq.w	loc_277E

loc_20EA:		               ; CODE XREF: sub_1F7E+162↑j
		move.l	#$10000,$32(a0)
		bra.w	sub_25EE
; ---------------------------------------------------------------------------

loc_20F6:		               ; CODE XREF: sub_1F7E+140↑j
		andi.b  #$7C,d0 ; '|'
		beq.w	sub_25EE
		bsr.s   loc_2108
		bsr.w	sub_25EE
		bra.w	loc_277E
; ---------------------------------------------------------------------------

loc_2108:		               ; CODE XREF: sub_1F7E+180↑p
		btst	#6,d0
		bne.s	loc_212A
		btst	#5,d0
		bne.s	loc_2134
		btst	#4,d0
		bne.s	loc_214E
		btst	#3,d0
		bne.s	loc_2158
		move.l	#1,$32(a0)
		rts
; ---------------------------------------------------------------------------

loc_212A:		               ; CODE XREF: sub_1F7E+18E↑j
		move.l	#0,$32(a0)
		rts
; ---------------------------------------------------------------------------

loc_2134:		               ; CODE XREF: sub_1F7E+194↑j
		move.l	#$10001,$32(a0)
		btst	#2,(word_FFDF08).w
		beq.s	locret_214C
		move.l	#$20000,$32(a0)

locret_214C:		            ; CODE XREF: sub_1F7E+1C4↑j
		rts
; ---------------------------------------------------------------------------

loc_214E:		               ; CODE XREF: sub_1F7E+19A↑j
		move.l	#$10000,$32(a0)
		rts
; ---------------------------------------------------------------------------

loc_2158:		               ; CODE XREF: sub_1F7E+1A0↑j
		move.l	#$20001,$32(a0)
		rts
; ---------------------------------------------------------------------------

loc_2162:		               ; CODE XREF: sub_1F7E:loc_1FF4↑j
		move.b  (word_FFFE20+1).w,d0
		andi.b  #$70,d0 ; 'p'
		beq.s	loc_2170
		bsr.w	loc_277E

loc_2170:		               ; CODE XREF: sub_1F7E+1EC↑j
		move.b  (word_FFFE20).w,d0
		andi.b  #$70,d0 ; 'p'
		bne.s	loc_217E
		bsr.w	loc_2404

loc_217E:		               ; CODE XREF: sub_1F7E+1FA↑j
		bra.w	loc_24F4
; ---------------------------------------------------------------------------

loc_2182:		               ; CODE XREF: sub_1F7E+7A↑j
		move.b  (word_FFFE20+1).w,d0
		btst	#4,d0
		beq.s	loc_21C4
		bchg    #1,2(a0)
		move.b  (byte_FFDF04).w,d0
		addq.b  #1,d0
		andi.b  #3,d0
		andi.b  #$FC,(byte_FFDF04).w
		or.b    d0,(byte_FFDF04).w
		cmpi.b  #3,d0
		bne.s	loc_21B2
		bsr.w	sub_3AC8
		bra.s	loc_21B6
; ---------------------------------------------------------------------------

loc_21B2:		               ; CODE XREF: sub_1F7E+22C↑j
		bsr.w	sub_3A8A

loc_21B6:		               ; CODE XREF: sub_1F7E+232↑j
		btst	#0,(byte_FFDF04).w
		beq.w	sub_3A08
		bra.w	sub_3A7A
; ---------------------------------------------------------------------------

loc_21C4:		               ; CODE XREF: sub_1F7E+20C↑j
		btst	#1,2(a0)
		bne.s	loc_21E4
		andi.b  #$60,d0 ; '`'
		beq.s	loc_21D6
		bsr.w	loc_277E

loc_21D6:		               ; CODE XREF: sub_1F7E+252↑j
		move.b  (word_FFFE20).w,d0
		andi.b  #$60,d0 ; '`'
		bne.s	loc_21E4
		bsr.w	loc_2566

loc_21E4:		               ; CODE XREF: sub_1F7E+24C↑j
				        ; sub_1F7E+260↑j
		bsr.w	sub_25EE
		rts
; ---------------------------------------------------------------------------

loc_21EA:		               ; CODE XREF: sub_1F7E+7E↑j
		move.b  (word_FFFE20+1).w,d0
		andi.b  #$70,d0 ; 'p'
		bne.s	loc_2222
		moveq	#0,d0
		move.w  (word_FFD700).w,d0
		move.w  (dword_FFDF3C).w,d2
		bsr.w	sub_262E
		bsr.w	sub_26B6
		cmp.w   (dword_FFDF3C).w,d2
		beq.s	loc_2218
		move.w	d2,-(sp)
		move.w	d2,(dword_FFDF3C).w
		bsr.w	sub_37D0
		move.w  (sp)+,d2

loc_2218:		               ; CODE XREF: sub_1F7E+28C↑j
		move.w	#$110,d3
		bsr.w	sub_270E
		rts
; ---------------------------------------------------------------------------

loc_2222:		               ; CODE XREF: sub_1F7E+274↑j
		move.w  $30(a0),d1
		beq.s	loc_2254
		btst	#4,d0
		beq.s	loc_2238
		tst.w	(word_FFD766).w
		bne.w	loc_2830
		rts
; ---------------------------------------------------------------------------

loc_2238:		               ; CODE XREF: sub_1F7E+2AE↑j
		move.w	d1,d0
		bsr.w	sub_32EE
		bcs.s	locret_2270
		move.w  (word_FFD766).w,d0
		subq.w  #1,d0
		bsr.w	sub_39F6
		move.w	d0,(dword_FFDF3C+2).w
		bsr.w	sub_3846
		rts
; ---------------------------------------------------------------------------

loc_2254:		               ; CODE XREF: sub_1F7E+2A8↑j
		bsr.w	sub_27BE
		bsr.w	sub_3022
		bsr.w	sub_2FA0
		btst	#6,(word_FFDF08).w
		beq.s	locret_2270
		bsr.w	sub_337E
		bsr.w	sub_38F2

locret_2270:		            ; CODE XREF: sub_1F7E+2C0↑j
				        ; sub_1F7E+2E8↑j
		rts
; ---------------------------------------------------------------------------

loc_2272:		               ; CODE XREF: sub_1F7E+82↑j
		move.b  (word_FFFE20+1).w,d0
		andi.b  #$70,d0 ; 'p'
		bne.s	loc_22C2
		moveq	#0,d0
		move.w  (word_FFD766).w,d0
		move.w  (dword_FFDF3C+2).w,d2
		bsr.w	sub_262E
		tst.w	$32(a0)
		bne.s	loc_22A4
		btst	#2,$42(a0)
		beq.s	loc_229E
		bsr.w	sub_262E
		bra.s	loc_22A4
; ---------------------------------------------------------------------------

loc_229E:		               ; CODE XREF: sub_1F7E+318↑j
		move.w	#1,$32(a0)

loc_22A4:		               ; CODE XREF: sub_1F7E+310↑j
				        ; sub_1F7E+31E↑j
		bsr.w	sub_26B6
		cmp.w   (dword_FFDF3C+2).w,d2
		beq.s	loc_22BA
		move.w	d2,-(sp)
		move.w	d2,(dword_FFDF3C+2).w
		bsr.w	sub_3846
		move.w  (sp)+,d2

loc_22BA:		               ; CODE XREF: sub_1F7E+32E↑j
		move.w	#$F8,d3
		bra.w	sub_270E
; ---------------------------------------------------------------------------

loc_22C2:		               ; CODE XREF: sub_1F7E+2FC↑j
		btst	#4,d0
		bne.w	sub_2804
		bsr.w	sub_387C
		move.w  $30(a0),d0
		subq.w  #1,d0
		bsr.w	sub_330C
		beq.w	sub_2804
		move.w  $30(a0),d0
		cmp.w   (word_FFD766).w,d0
		bls.s   loc_22EA
		bsr.w	sub_2756

loc_22EA:		               ; CODE XREF: sub_1F7E+366↑j
		bsr.w	sub_3846
		rts
; ---------------------------------------------------------------------------

loc_22F0:		               ; CODE XREF: sub_1F7E+8E↑j
		lea	((dword_FFDF0A+3)).w,a6
		bra.s	loc_22FA
; ---------------------------------------------------------------------------

loc_22F6:		               ; CODE XREF: sub_1F7E+86↑j
		lea	((dword_FFDF0A+1)).w,a6

loc_22FA:		               ; CODE XREF: sub_1F7E+376↑j
		move.b  (word_FFFE20+1).w,d0
		move.b	d0,d1
		andi.b  #$70,d1 ; 'p'
		beq.s	loc_230E
		bsr.w	sub_347E
		bra.w	sub_27BE
; ---------------------------------------------------------------------------

loc_230E:		               ; CODE XREF: sub_1F7E+386↑j
		btst	#3,d0
		beq.s	loc_231A
		clr.w   $32(a0)
		bra.s	loc_236E
; ---------------------------------------------------------------------------

loc_231A:		               ; CODE XREF: sub_1F7E+394↑j
		btst	#2,d0
		beq.s	loc_2328
		move.w	#1,$32(a0)
		bra.s	loc_236E
; ---------------------------------------------------------------------------

loc_2328:		               ; CODE XREF: sub_1F7E+3A0↑j
		move.b  (a6),d2
		btst	#0,$42(a0)
		beq.s	loc_234C
		moveq	#1,d1
		tst.w	$32(a0)
		beq.s	loc_233C
		moveq	#$10,d1

loc_233C:		               ; CODE XREF: sub_1F7E+3BA↑j
		move	#4,ccr
		abcd    d1,d2
		cmpi.b  #$59,d2 ; 'Y'
		bls.s   loc_236C
		moveq	#2,d2
		bra.s	loc_236C
; ---------------------------------------------------------------------------

loc_234C:		               ; CODE XREF: sub_1F7E+3B2↑j
		btst	#1,$42(a0)
		beq.s	loc_236E
		moveq	#1,d1
		tst.w	$32(a0)
		beq.s	loc_235E
		moveq	#$10,d1

loc_235E:		               ; CODE XREF: sub_1F7E+3DC↑j
		move	#4,ccr
		sbcd    d1,d2
		cmpi.b  #2,d2
		bge.s	loc_236C
		moveq	#$59,d2 ; 'Y'

loc_236C:		               ; CODE XREF: sub_1F7E+3C8↑j
				        ; sub_1F7E+3CC↑j ...
		move.b	d2,(a6)

loc_236E:		               ; CODE XREF: sub_1F7E+39A↑j
				        ; sub_1F7E+3A8↑j ...
		move.w	#$117,$C(a0)
		move.w	#$196,8(a0)
		tst.w	$32(a0)
		bne.s	loc_2386
		move.w	#$1A6,8(a0)

loc_2386:		               ; CODE XREF: sub_1F7E+400↑j
		move.b  (a6),d1
		bra.w	loc_3474
; ---------------------------------------------------------------------------

loc_238C:		               ; CODE XREF: sub_1F7E+8A↑j
		cmpi.w  #0,(word_FFDF20).w
		beq.w	sub_27BE
		move.b  (word_FFFE20+1).w,d1
		andi.b  #$70,d1 ; 'p'
		beq.s	locret_23B2
		cmpi.w  #$100,(word_FFDF20).w
		bne.s	locret_23B2
		moveq	#$1A,d0
		bsr.w	loc_296C
		bra.w	sub_27BE
; ---------------------------------------------------------------------------

locret_23B2:		            ; CODE XREF: sub_1F7E+420↑j
				        ; sub_1F7E+428↑j
		rts
; ---------------------------------------------------------------------------

loc_23B4:		               ; CODE XREF: sub_1F7E+92↑j
				        ; sub_1F7E:loc_204C↑p
		move.l	#$10001,$36(a0)
		move.w  $24(a0),d0
		jmp	loc_23C4(pc,d0.w)
; ---------------------------------------------------------------------------

loc_23C4:
		bra.w	loc_23FA
; ---------------------------------------------------------------------------
		bra.w	loc_23E2
; ---------------------------------------------------------------------------
		bra.w	loc_23F2
; ---------------------------------------------------------------------------
		bra.w	loc_23F2
; ---------------------------------------------------------------------------
		bra.w	loc_23EE
; ---------------------------------------------------------------------------
		bra.w	loc_23E8
; ---------------------------------------------------------------------------
		bra.w	loc_23EE
; ---------------------------------------------------------------------------
		bra.s	loc_23EE
; ---------------------------------------------------------------------------

loc_23E2:		               ; CODE XREF: sub_1F7E+44A↑j
		moveq	#$19,d0
		bra.w	loc_296C
; ---------------------------------------------------------------------------

loc_23E8:		               ; CODE XREF: sub_1F7E+45A↑j
		bsr.w	sub_3106
		bra.s	loc_23F2
; ---------------------------------------------------------------------------

loc_23EE:		               ; CODE XREF: sub_1F7E+456↑j
				        ; sub_1F7E+45E↑j ...
		bsr.w	sub_347E

loc_23F2:		               ; CODE XREF: sub_1F7E+44E↑j
				        ; sub_1F7E+452↑j ...
		bsr.w	sub_3022
		clr.w   $24(a0)

loc_23FA:		               ; CODE XREF: sub_1F7E:loc_23C4↑j
		move.l	#$10001,$32(a0)
		rts
; ---------------------------------------------------------------------------

loc_2404:		               ; CODE XREF: sub_1F7E+1FC↑p
		bsr.w	sub_1244
		bne.s	loc_2432
		move.b  (word_FFFE20+1).w,d1
		andi.b  #5,d1
		beq.s	loc_241E
		move.l	#1,$32(a0)
		rts
; ---------------------------------------------------------------------------

loc_241E:		               ; CODE XREF: sub_1F7E+494↑j
		move.b  (word_FFFE20+1).w,d1
		andi.b  #$A,d1
		beq.s	locret_2430
		move.l	#$30004,$32(a0)

locret_2430:		            ; CODE XREF: sub_1F7E+4A8↑j
		rts
; ---------------------------------------------------------------------------

loc_2432:		               ; CODE XREF: sub_1F7E+48A↑j
		move.b  $42(a0),d1
		btst	#2,d1
		beq.s	loc_2454
		tst.w	$34(a0)
		bne.s	loc_2448
		bsr.w	sub_124A
		bne.s	locret_246C

loc_2448:		               ; CODE XREF: sub_1F7E+4C2↑j
		tst.w	$32(a0)
		beq.s	locret_246C
		subq.w  #1,$32(a0)
		bra.s	locret_246C
; ---------------------------------------------------------------------------

loc_2454:		               ; CODE XREF: sub_1F7E+4BC↑j
		btst	#3,d1
		beq.s	loc_2474
		move.w  $34(a0),d2
		move.b  byte_246E(pc,d2.w),d2
		cmp.w   $32(a0),d2
		beq.s	locret_246C
		addq.w  #1,$32(a0)

locret_246C:		            ; CODE XREF: sub_1F7E+4C8↑j
				        ; sub_1F7E+4CE↑j ...
		rts
; ---------------------------------------------------------------------------
byte_246E:      dc.b   1,  7,  3,  3,  3,  0
; ---------------------------------------------------------------------------

loc_2474:		               ; CODE XREF: sub_1F7E+4DA↑j
		btst	#0,$42(a0)
		beq.s	loc_24B4
		move.w  $34(a0),d1
		beq.s	locret_24B2
		subq.w  #1,$34(a0)
		cmpi.w  #2,d1
		bcc.s	loc_24A8
		bsr.w	sub_124A
		bne.s	loc_24A0
		cmpi.b  #3,$32(a0)
		bhi.s	loc_24A0
		clr.w   $32(a0)
		rts
; ---------------------------------------------------------------------------

loc_24A0:		               ; CODE XREF: sub_1F7E+512↑j
				        ; sub_1F7E+51A↑j
		move.w	#1,$32(a0)
		rts
; ---------------------------------------------------------------------------

loc_24A8:		               ; CODE XREF: sub_1F7E+50C↑j
		bne.s	locret_24B2
		lsl     $32(a0)
		addq.w  #1,$32(a0)

locret_24B2:		            ; CODE XREF: sub_1F7E+502↑j
				        ; sub_1F7E:loc_24A8↑j
		rts
; ---------------------------------------------------------------------------

loc_24B4:		               ; CODE XREF: sub_1F7E+4FC↑j
		btst	#1,$42(a0)
		beq.s	locret_24F2
		move.w  $34(a0),d1
		beq.s	loc_24D8
		cmpi.w  #4,d1
		beq.s	locret_24EA
		addq.w  #1,$34(a0)
		cmpi.w  #1,d1
		bne.s	locret_24F2
		lsr     $32(a0)
		rts
; ---------------------------------------------------------------------------

loc_24D8:		               ; CODE XREF: sub_1F7E+542↑j
		addq.w  #1,$34(a0)
		lsl     $32(a0)
		lsl     $32(a0)
		addq.w  #1,$32(a0)
		rts
; ---------------------------------------------------------------------------

locret_24EA:		            ; CODE XREF: sub_1F7E+548↑j
		rts
; ---------------------------------------------------------------------------
		move.w	#1,$32(a0)

locret_24F2:		            ; CODE XREF: sub_1F7E+53C↑j
				        ; sub_1F7E+552↑j
		rts
; ---------------------------------------------------------------------------

loc_24F4:		               ; CODE XREF: sub_1F7E+3A↑j
				        ; sub_1F7E+D2↑j ...
		moveq	#0,d0
		move.w  $34(a0),d1
		lea	word_255C(pc),a1
		subq.w  #1,d1
		bmi.s	loc_2508

loc_2502:		               ; CODE XREF: sub_1F7E+586↓j
		add.w   (a1)+,d0
		dbf	d1,loc_2502

loc_2508:		               ; CODE XREF: sub_1F7E+582↑j
		add.w   $32(a0),d0
		move.w	d0,$30(a0)
		move.w  $34(a0),d1
		add.w   d1,d1
		move.w  word_253E(pc,d1.w),$C(a0)
		cmpi.w  #9,d0
		bls.s   loc_2534
		move.w  $32(a0),d1
		mulu.w  #$44,d1 ; 'D'
		addi.w  #$D0,d1
		move.w	d1,8(a0)
		rts
; ---------------------------------------------------------------------------

loc_2534:		               ; CODE XREF: sub_1F7E+5A2↑j
		add.w   d0,d0
		move.w  word_2548(pc,d0.w),8(a0)
		rts
; End of function sub_1F7E

; ---------------------------------------------------------------------------
word_253E:      dc.w $A2
		dc.w $C8
		dc.w $130
		dc.w $140
		dc.w $150
word_2548:      dc.w $118
		dc.w $150
		dc.w $A8
		dc.w $D4
		dc.w $EC
		dc.w $118
		dc.w $134
		dc.w $15C
		dc.w $174
		dc.w $1A0
word_255C:      dc.w 2		  ; DATA XREF: sub_1F7E+57C↑o
		dc.w 8
		dc.w 4
		dc.w 4
		dc.w 4
; ---------------------------------------------------------------------------

loc_2566:		               ; CODE XREF: sub_1F7E+262↑p
		bsr.w	sub_1244
		bne.s	loc_258C
		move.b  (word_FFFE20+1).w,d1
		btst	#0,d1
		beq.s	loc_257C
		clr.l   $32(a0)
		rts
; ---------------------------------------------------------------------------

loc_257C:		               ; CODE XREF: ROM:00002574↑j
		btst	#1,d1
		beq.s	locret_258A
		move.l	#3,$32(a0)

locret_258A:		            ; CODE XREF: ROM:00002580↑j
		rts
; ---------------------------------------------------------------------------

loc_258C:		               ; CODE XREF: ROM:0000256A↑j
		btst	#3,$42(a0)
		beq.s	loc_25A2
		cmpi.w  #2,$32(a0)
		bcc.s	locret_25C2
		addq.w  #1,$32(a0)
		rts
; ---------------------------------------------------------------------------

loc_25A2:		               ; CODE XREF: ROM:00002592↑j
		btst	#2,$42(a0)
		beq.s	loc_25C4
		tst.w	$32(a0)
		beq.s	locret_25C2
		cmpi.w  #2,$34(a0)
		bne.s	loc_25BE
		clr.w   $32(a0)
		rts
; ---------------------------------------------------------------------------

loc_25BE:		               ; CODE XREF: ROM:000025B6↑j
		subq.w  #1,$32(a0)

locret_25C2:		            ; CODE XREF: ROM:0000259A↑j
				        ; ROM:000025AE↑j
		rts
; ---------------------------------------------------------------------------

loc_25C4:		               ; CODE XREF: ROM:000025A8↑j
		btst	#0,$42(a0)
		beq.s	loc_25D8
		tst.w	$34(a0)
		beq.s	locret_25EC
		subq.w  #1,$34(a0)
		rts
; ---------------------------------------------------------------------------

loc_25D8:		               ; CODE XREF: ROM:000025CA↑j
		btst	#1,$42(a0)
		beq.s	locret_25EC
		cmpi.w  #3,$34(a0)
		bcc.s	locret_25EC
		addq.w  #1,$34(a0)

locret_25EC:		            ; CODE XREF: ROM:000025D0↑j
				        ; ROM:000025DE↑j ...
		rts

; =============== S U B R O U T I N E =======================================


sub_25EE:		               ; CODE XREF: sub_1F7E+174↑j
				        ; sub_1F7E+17C↑j ...
		move.w  $34(a0),d0
		move.w	d0,d1
		add.w   d0,d0
		add.w   d1,d0
		add.w   $32(a0),d0
		cmpi.w  #7,d0
		bls.s   loc_2604
		subq.w  #1,d0

loc_2604:		               ; CODE XREF: sub_25EE+12↑j
		move.w	d0,$30(a0)
		mulu.w  #$C,d1
		addi.w  #$9D,d1
		move.w	d1,$C(a0)
		move.w	#$164,d1
		add.b   byte_2622(pc,d0.w),d1
		move.w	d1,8(a0)
		rts
; End of function sub_25EE

; ---------------------------------------------------------------------------
byte_2622:      dc.b $12,$30,$48,$12,$30,$48,$20,$48
		dc.b $20,$36,$48,  0

; =============== S U B R O U T I N E =======================================


sub_262E:		               ; CODE XREF: sub_1F7E+280↑p
				        ; sub_1F7E+308↑p ...
		subq.w  #1,d0
		bmi.w	locret_26B4
		divu.w  #$A,d0
		move.w	d0,d1
		swap    d0
		addq.w  #1,d0
		btst	#2,$42(a0)
		beq.s	loc_2676
		tst.w	$32(a0)
		beq.s	loc_2652
		subq.w  #1,$32(a0)
		rts
; ---------------------------------------------------------------------------

loc_2652:		               ; CODE XREF: sub_262E+1C↑j
		tst.w	$34(a0)
		beq.s	loc_2664
		cmp.w   $34(a0),d2
		bne.s	loc_2660
		subq.w  #1,d2

loc_2660:		               ; CODE XREF: sub_262E+2E↑j
		subq.w  #1,$34(a0)

loc_2664:		               ; CODE XREF: sub_262E+28↑j
		move.w	#$A,$32(a0)
		cmp.w   $34(a0),d1
		bhi.s	locret_26B4
		move.w	d0,$32(a0)
		rts
; ---------------------------------------------------------------------------

loc_2676:		               ; CODE XREF: sub_262E+16↑j
		btst	#3,$42(a0)
		beq.s	locret_26B4
		cmp.w   $34(a0),d1
		bhi.s	loc_2696
		cmp.w   $32(a0),d0
		bls.s   loc_2690
		addq.w  #1,$32(a0)
		rts
; ---------------------------------------------------------------------------

loc_2690:		               ; CODE XREF: sub_262E+5A↑j
		clr.w   $32(a0)
		rts
; ---------------------------------------------------------------------------

loc_2696:		               ; CODE XREF: sub_262E+54↑j
		cmpi.w  #$A,$32(a0)
		bcc.s	loc_26A4
		addq.w  #1,$32(a0)
		rts
; ---------------------------------------------------------------------------

loc_26A4:		               ; CODE XREF: sub_262E+6E↑j
		clr.w   $32(a0)
		cmp.w   $34(a0),d2
		beq.s	loc_26B0
		addq.w  #1,d2

loc_26B0:		               ; CODE XREF: sub_262E+7E↑j
		addq.w  #1,$34(a0)

locret_26B4:		            ; CODE XREF: sub_262E+2↑j
				        ; sub_262E+40↑j ...
		rts
; End of function sub_262E


; =============== S U B R O U T I N E =======================================


sub_26B6:		               ; CODE XREF: sub_1F7E+284↑p
				        ; sub_1F7E:loc_22A4↑p
		move.b  $42(a0),d3
		andi.b  #$C,d3
		bne.s	locret_270C
		tst.w	$32(a0)
		beq.s	locret_270C
		btst	#0,$42(a0)
		beq.s	loc_26E2
		tst.w	$34(a0)
		beq.s	locret_270C
		cmp.w   $34(a0),d2
		bne.s	loc_26DC
		subq.w  #1,d2

loc_26DC:		               ; CODE XREF: sub_26B6+22↑j
		subq.w  #1,$34(a0)
		rts
; ---------------------------------------------------------------------------

loc_26E2:		               ; CODE XREF: sub_26B6+16↑j
		btst	#1,$42(a0)
		beq.s	locret_270C
		cmp.w   $34(a0),d1
		bls.s   locret_270C
		cmp.w   $34(a0),d2
		beq.s	loc_26F8
		addq.w  #1,d2

loc_26F8:		               ; CODE XREF: sub_26B6+3E↑j
		addq.w  #1,$34(a0)
		cmp.w   $34(a0),d1
		bne.s	locret_270C
		cmp.w   $32(a0),d0
		bhi.s	locret_270C
		move.w	d0,$32(a0)

locret_270C:		            ; CODE XREF: sub_26B6+8↑j
				        ; sub_26B6+E↑j ...
		rts
; End of function sub_26B6


; =============== S U B R O U T I N E =======================================


sub_270E:		               ; CODE XREF: sub_1F7E+29E↑p
				        ; sub_1F7E+340↑j ...
		move.w  $32(a0),d0
		beq.s	loc_2744
		subq.w  #1,d0
		move.w  $34(a0),d1
		mulu.w  #$A,d1
		add.w   d0,d1
		addq.w  #1,d1
		move.w	d1,$30(a0)
		mulu.w  #$18,d0
		addi.w  #$A8,d0
		move.w	d0,8(a0)
		moveq	#0,d0
		cmp.w   $34(a0),d2
		beq.s	loc_273C
		moveq	#8,d0

loc_273C:		               ; CODE XREF: sub_270E+2A↑j
		add.w   d3,d0
		move.w	d0,$C(a0)
		rts
; ---------------------------------------------------------------------------

loc_2744:		               ; CODE XREF: sub_270E+4↑j
		clr.w   $30(a0)
		move.w	#$1A8,8(a0)
		move.w	#$118,$C(a0)
		rts
; End of function sub_270E


; =============== S U B R O U T I N E =======================================


sub_2756:		               ; CODE XREF: sub_1F7E+368↑p
		subq.w  #1,$32(a0)
		bne.s	loc_2774
		move.w	#$A,$32(a0)
		move.w  $34(a0),d0
		subq.w  #1,$34(a0)
		cmp.w   (dword_FFDF3C+2).w,d0
		bne.s	loc_2774
		subq.w  #1,(dword_FFDF3C+2).w

loc_2774:		               ; CODE XREF: sub_2756+4↑j
				        ; sub_2756+18↑j
		move.w  (dword_FFDF3C+2).w,d2
		move.w	#$100,d3
		bra.s	sub_270E
; End of function sub_2756

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_1F7E

loc_277E:		               ; CODE XREF: sub_1F7E+CA↑j
				        ; sub_1F7E+E4↑j ...
		cmpi.w  #4,$24(a0)
		beq.s	loc_278C
		lea	sub_279C(pc),a1
		bra.s	loc_2790
; ---------------------------------------------------------------------------

loc_278C:		               ; CODE XREF: sub_1F7E+806↑j
		lea	loc_27B2(pc),a1

loc_2790:		               ; CODE XREF: sub_1F7E+80C↑j
		move.w  $30(a0),d0
		move.b  (a1,d0.w),d0
		bra.w	loc_296C
; END OF FUNCTION CHUNK FOR sub_1F7E

; =============== S U B R O U T I N E =======================================


sub_279C:		               ; DATA XREF: sub_1F7E+808↑o
		cmpi.b  #6,a6
		btst	d1,d2
		subi.b  #8,d5
		btst	d4,(a0)
		eori.b  #$11,(a2)
		move.b  (a3),d3
		move.b  (a4),d6
		btst	d5,(a5)

loc_27B2:		               ; DATA XREF: sub_1F7E:loc_278C↑o
		btst	d0,d6
		btst	d1,d4
		andi.b  #9,d5
		move.b  (sp),-(a4)
		move.b	d0,d4
; End of function sub_279C


; =============== S U B R O U T I N E =======================================


sub_27BE:		               ; CODE XREF: sub_1F7E:loc_2254↑p
				        ; sub_1F7E+38C↑j ...
		move.l  (dword_FFD936).w,(dword_FFD932).w
		move.w  (word_FFD93A).w,(word_FFD930).w
		clr.w   (word_FFD924).w
		bclr    #1,(byte_FFD902).w
		rts
; End of function sub_27BE


; =============== S U B R O U T I N E =======================================


sub_27D6:		               ; CODE XREF: ROM:00003094↓p
		bsr.w	sub_2870
		move.l	#$10001,(dword_FFD932).w
		move.w	#4,(word_FFD930).w
		bclr    #1,(byte_FFD902).w
		bclr    #0,(byte_FFDF04).w
		bclr    #1,(byte_FFDF04).w
		move.w	#4,(word_FFD924).w
		bra.w	sub_3A08
; End of function sub_27D6


; =============== S U B R O U T I N E =======================================


sub_2804:		               ; CODE XREF: sub_1F7E+348↑j
				        ; sub_1F7E+35A↑j ...
		tst.w	(word_FFD924).w
		beq.s	loc_2812
		move.l  (dword_FFD93C).w,(dword_FFD932).w
		bra.s	loc_2828
; ---------------------------------------------------------------------------

loc_2812:		               ; CODE XREF: sub_2804+4↑j
		move.l	#$20002,(dword_FFD936).w
		move.w	#$10,(word_FFD93A).w
		clr.l   (dword_FFD932).w
		clr.l   (dword_FFDF3C).w

loc_2828:		               ; CODE XREF: sub_2804+C↑j
		move.w	#8,(word_FFD924).w
		rts
; End of function sub_2804

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_1F7E

loc_2830:		               ; CODE XREF: sub_1F7E+2B4↑j
		move.l  (dword_FFD932).w,(dword_FFD93C).w
		clr.w   (dword_FFD932).w
		move.w  (dword_FFDF3C+2).w,(dword_FFD932+2).w
		move.w	#$C,(word_FFD924).w
		rts
; END OF FUNCTION CHUNK FOR sub_1F7E

; =============== S U B R O U T I N E =======================================


sub_2848:		               ; CODE XREF: ROM:0000320C↓p
		bsr.s   sub_2870
		move.w	#$10,(word_FFD924).w
		rts
; End of function sub_2848


; =============== S U B R O U T I N E =======================================


sub_2852:		               ; CODE XREF: ROM:00003246↓p
		bsr.s   sub_2870
		move.w	#$18,(word_FFD924).w
		rts
; End of function sub_2852

; ---------------------------------------------------------------------------
		bsr.s   sub_2870
		move.w	#$1C,(word_FFD924).w
		rts

; =============== S U B R O U T I N E =======================================


sub_2866:		               ; CODE XREF: ROM:000030F4↓p
		bsr.s   sub_2870
		move.w	#$14,(word_FFD924).w
		rts
; End of function sub_2866


; =============== S U B R O U T I N E =======================================


sub_2870:		               ; CODE XREF: sub_27D6↑p
				        ; sub_2848↑p ...
		move.l  (dword_FFD932).w,(dword_FFD936).w
		move.w  (word_FFD930).w,(word_FFD93A).w
		clr.l   (dword_FFD932).w
		rts
; End of function sub_2870


; =============== S U B R O U T I N E =======================================


sub_2882:		               ; CODE XREF: sub_28A8+72↓p
		cmpi.w  #4,(word_FFD924).w
		beq.s	loc_2894
		move.l	#1,(dword_FFD932).w
		rts
; ---------------------------------------------------------------------------

loc_2894:		               ; CODE XREF: sub_2882+6↑j
		clr.l   (dword_FFD932).w
		rts
; End of function sub_2882


; =============== S U B R O U T I N E =======================================


sub_289A:		               ; CODE XREF: initial_pc_entry+19FC↑p
		move.w  (word_FFDF1C).w,d0
		beq.s	locret_28A6
		bsr.s   sub_28A8
		ori	#1,ccr

locret_28A6:		            ; CODE XREF: sub_289A+4↑j
		rts
; End of function sub_289A


; =============== S U B R O U T I N E =======================================


sub_28A8:		               ; CODE XREF: sub_289A+6↑p

; FUNCTION CHUNK AT 00002E7E SIZE 00000008 BYTES

		lea	(word_FFDF08).w,a0
		lea	sub_1124(pc),a6
		bclr    #0,(word_FFDF1C+1).w
		bne.w	sub_2DE6
		bclr    #6,(word_FFDF1C+1).w
		bne.w	loc_2E7E
		bclr    #7,(word_FFDF1C+1).w
		bne.w	sub_2C00
		bclr    #0,(word_FFDF1C).w
		bne.w	sub_2BEE
		bclr    #3,(word_FFDF1C+1).w
		bne.w	sub_2B54
		bclr    #2,(word_FFDF1C+1).w
		bne.w	sub_2AA2
		bclr    #4,(word_FFDF1C+1).w
		bne.w	sub_2A54
		bclr    #5,(word_FFDF1C+1).w
		bra.w	*+4
; ---------------------------------------------------------------------------

loc_2900:		               ; CODE XREF: sub_28A8+54↑j
		move.b  (word_FFFE44+1).w,d7
		cmpi.w  #$1000,(word_FFDF20).w
		bne.s	loc_291E
		moveq	#0,d7
		bset    #4,(byte_FFDF04).w
		bset    #0,(byte_FFDF05).w
		bsr.w	sub_2882

loc_291E:		               ; CODE XREF: sub_28A8+62↑j
		bsr.w	sub_332A
		bsr.w	sub_334E
		bset    #2,(byte_FFDF04).w
		bsr.w	sub_38F2
		tst.b	(byte_FFDF34).w
		beq.s	loc_295C
		bset    #6,(byte_FFDF04).w
		bset    #6,1(a0)
		bsr.w	sub_33DC
		cmp.b   (byte_FFDF34).w,d1
		bcc.s	loc_2950
		move.b	d1,(byte_FFDF34).w

loc_2950:		               ; CODE XREF: sub_28A8+A2↑j
		moveq	#0,d0
		move.b  (byte_FFDF34).w,d0
		subq.w  #1,d0
		bsr.w	sub_33C0

loc_295C:		               ; CODE XREF: sub_28A8+8C↑j
		btst	#4,(byte_FFDF04).w
		bne.w	locret_296A
		bsr.w	sub_3DDC

locret_296A:		            ; CODE XREF: sub_28A8+BA↑j
		rts
; End of function sub_28A8

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_1F7E

loc_296C:		               ; CODE XREF: sub_1F7E+B8↑j
				        ; sub_1F7E+42C↑p ...
		move.w	d0,(word_FFDF00).w
		st      (byte_FFDF02).w
		rts
; END OF FUNCTION CHUNK FOR sub_1F7E
; ---------------------------------------------------------------------------
		move.w	#$B,(word_FFDF00).w
		st      (byte_FFDF02).w
		rts

; =============== S U B R O U T I N E =======================================


sub_2982:		               ; CODE XREF: initial_pc_entry:loc_1E36↑p
		bsr.w	sub_1244
		bmi.s	loc_2994
		bset    #3,(byte_FFDF04).w
		bne.s	loc_2994
		bsr.w	sub_3756

loc_2994:		               ; CODE XREF: sub_2982+4↑j
				        ; sub_2982+C↑j
		lea	(word_FFDF08).w,a0
		lea	sub_1124(pc),a6
		move.w  (word_FFDF00).w,d0
		asl.w   #2,d0
		jmp	loc_29A6(pc,d0.w)
; End of function sub_2982

; ---------------------------------------------------------------------------

loc_29A6:
		nop
		rts
; ---------------------------------------------------------------------------
		bra.w	loc_2A1A
; ---------------------------------------------------------------------------
		bra.w	loc_2AC8
; ---------------------------------------------------------------------------
		bra.w	loc_2B84
; ---------------------------------------------------------------------------
		bra.w	loc_2C2A
; ---------------------------------------------------------------------------
		bra.w	loc_2CDE
; ---------------------------------------------------------------------------
		bra.w	loc_2D8E
; ---------------------------------------------------------------------------
		bra.w	loc_2DFE
; ---------------------------------------------------------------------------
		bra.w	loc_2EA2
; ---------------------------------------------------------------------------
		bra.w	loc_2F36
; ---------------------------------------------------------------------------
		bra.w	loc_2F66
; ---------------------------------------------------------------------------
		bra.w	loc_3032
; ---------------------------------------------------------------------------
		bra.w	loc_3074
; ---------------------------------------------------------------------------
		bra.w	loc_3084
; ---------------------------------------------------------------------------
		bra.w	loc_3090
; ---------------------------------------------------------------------------
		bra.w	loc_30B2
; ---------------------------------------------------------------------------
		bra.w	loc_3134
; ---------------------------------------------------------------------------
		bra.w	loc_31A2
; ---------------------------------------------------------------------------
		bra.w	loc_31EE
; ---------------------------------------------------------------------------
		bra.w	loc_3262
; ---------------------------------------------------------------------------
		bra.w	loc_322A
; ---------------------------------------------------------------------------
		bra.w	loc_327A
; ---------------------------------------------------------------------------
		bra.w	loc_2FDA
; ---------------------------------------------------------------------------
		bra.w	loc_328A
; ---------------------------------------------------------------------------
		bra.w	loc_32A0
; ---------------------------------------------------------------------------
		bra.w	loc_309A
; ---------------------------------------------------------------------------
		bra.w	loc_3114
; ---------------------------------------------------------------------------
		bra.w	loc_2C14
; ---------------------------------------------------------------------------
		bra.w	sub_304E
; ---------------------------------------------------------------------------

loc_2A1A:		               ; CODE XREF: ROM:000029AA↑j
		tst.b	(byte_FFDF02).w
		bpl.s	loc_2A3C
		btst	#0,(a0)
		beq.s	loc_2A2C
		bsr.w	sub_2AA2
		bra.s	loc_2A4A
; ---------------------------------------------------------------------------

loc_2A2C:		               ; CODE XREF: ROM:00002A24↑j
		btst	#2,(a0)
		beq.s	loc_2A44
		move.b  #1,(byte_FFDF02).w
		bra.w	sub_2DAA
; ---------------------------------------------------------------------------

loc_2A3C:		               ; CODE XREF: ROM:00002A1E↑j
		tst.b	(word_FFFE3A).w
		beq.s	loc_2A44
		rts
; ---------------------------------------------------------------------------

loc_2A44:		               ; CODE XREF: ROM:00002A30↑j
				        ; ROM:00002A40↑j
		moveq	#0,d0
		jsr	(a6)
		bsr.s   sub_2A54

loc_2A4A:		               ; CODE XREF: ROM:00002A2A↑j
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w
		rts

; =============== S U B R O U T I N E =======================================


sub_2A54:		               ; CODE XREF: sub_28A8+4A↑j
				        ; ROM:00002A48↑p
		bset    #0,(a0)
		bsr.w	sub_3744
		andi.b  #1,(byte_FFDF04).w
		bclr    #0,(byte_FFDF05).w
		bsr.w	sub_2DE6
		moveq	#0,d7
		bsr.w	sub_332A
		bsr.w	sub_304E
		move.b  #$10,(dword_FFDF0A+1).w
		bsr.w	sub_303E
		bsr.w	sub_39C6
		clr.b   (byte_FFDF34).w
		clr.b   (word_FFFE44+1).w
		clr.w   (word_FFFE40).w
		move.w	#$2000,d0
		moveq	#0,d1
		bra.w	sub_35F6
; End of function sub_2A54


; =============== S U B R O U T I N E =======================================


sub_2A9A:		               ; CODE XREF: ROM:loc_2AC8↓p
				        ; ROM:loc_2B84↓p
		bclr    #0,(a0)
		bne.s	sub_2AA2
		rts
; End of function sub_2A9A


; =============== S U B R O U T I N E =======================================


sub_2AA2:		               ; CODE XREF: sub_28A8+40↑j
				        ; ROM:00002A26↑p ...
		move.w	#$1FF,d1
		moveq	#$12,d0
		jsr	(a6)
		bclr    #0,(a0)
		bclr    #2,(byte_FFDF04).w
		bsr.w	sub_373E
		move.w	#0,d0
		moveq	#0,d1
		bsr.w	sub_35F6
		andi    #$FB,ccr
		rts
; End of function sub_2AA2

; ---------------------------------------------------------------------------

loc_2AC8:		               ; CODE XREF: ROM:000029AE↑j
		bsr.s   sub_2A9A
		beq.s	loc_2AD4
		move.b  #1,(byte_FFDF02).w
		bra.s	locret_2B18
; ---------------------------------------------------------------------------

loc_2AD4:		               ; CODE XREF: ROM:00002ACA↑j
		btst	#4,(byte_FFDF04).w
		bne.s	loc_2B10
		btst	#2,(byte_FFDF04).w
		beq.s	locret_2B18
		bclr    #1,(a0)
		beq.s	loc_2AF8
		bset    #2,(a0)
		moveq	#6,d0
		jsr	(a6)
		bsr.w	sub_2C0C
		bra.s	loc_2B0C
; ---------------------------------------------------------------------------

loc_2AF8:		               ; CODE XREF: ROM:00002AE8↑j
		bset    #2,(a0)
		bne.s	loc_2B0C
		bsr.s   sub_2B1A
		beq.s	loc_2B08
		moveq	#$4E,d0 ; 'N'
		jsr	(a6)
		bra.s	loc_2B0C
; ---------------------------------------------------------------------------

loc_2B08:		               ; CODE XREF: ROM:00002B00↑j
		moveq	#$4C,d0 ; 'L'
		jsr	(a6)

loc_2B0C:		               ; CODE XREF: ROM:00002AF6↑j
				        ; ROM:00002AFC↑j ...
		bsr.w	sub_2B74

loc_2B10:		               ; CODE XREF: ROM:00002ADA↑j
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w

locret_2B18:		            ; CODE XREF: ROM:00002AD2↑j
				        ; ROM:00002AE2↑j
		rts

; =============== S U B R O U T I N E =======================================


sub_2B1A:		               ; CODE XREF: ROM:00002AFE↑p
				        ; ROM:00002BC6↓p
		btst	#2,1(a0)
		beq.s	loc_2B2C
		bsr.w	sub_344E
		bsr.w	sub_38F2
		bra.s	loc_2B48
; ---------------------------------------------------------------------------

loc_2B2C:		               ; CODE XREF: sub_2B1A+6↑j
		btst	#3,1(a0)
		beq.s	loc_2B38
		bsr.s   sub_2B64
		bra.s	loc_2B4C
; ---------------------------------------------------------------------------

loc_2B38:		               ; CODE XREF: sub_2B1A+18↑j
		move.w  (a0),d0
		andi.w  #$400C,d0
		bne.s	loc_2B48
		moveq	#0,d1
		move.b  (byte_FFDF34).w,d1
		bne.s	loc_2B4C

loc_2B48:		               ; CODE XREF: sub_2B1A+10↑j
				        ; sub_2B1A+24↑j
		bsr.w	sub_33CC

loc_2B4C:		               ; CODE XREF: sub_2B1A+1C↑j
				        ; sub_2B1A+2C↑j
		move.w  (a0),d0
		andi.w  #$400C,d0
		rts
; End of function sub_2B1A


; =============== S U B R O U T I N E =======================================


sub_2B54:		               ; CODE XREF: sub_28A8+36↑j
				        ; ROM:00002D02↓p
		bsr.s   sub_2B64
		moveq	#$4E,d0 ; 'N'
		jsr	(a6)
		btst	#3,(a0)
		bne.w	sub_2F16
		rts
; End of function sub_2B54


; =============== S U B R O U T I N E =======================================


sub_2B64:		               ; CODE XREF: sub_2B1A+1A↑p
				        ; sub_2B54↑p
		move.w  (word_FFD7CE).w,d0
		bsr.w	sub_13B8
		bsr.w	sub_33C0
		bra.w	sub_33CC
; End of function sub_2B64


; =============== S U B R O U T I N E =======================================


sub_2B74:		               ; CODE XREF: ROM:loc_2B0C↑p
				        ; sub_2C00+8↓p
		move.w	#$2000,d0
		bra.w	loc_2B7E
; ---------------------------------------------------------------------------

loc_2B7C:		               ; CODE XREF: sub_2BEE+E↓j
				        ; sub_2DE6-4↓j
		moveq	#0,d0

loc_2B7E:		               ; CODE XREF: sub_2B74+4↑j
		moveq	#$A,d1
		bra.w	sub_35F6
; End of function sub_2B74

; ---------------------------------------------------------------------------

loc_2B84:		               ; CODE XREF: ROM:000029B2↑j
		bsr.w	sub_2A9A
		beq.s	loc_2B92
		move.b  #1,(byte_FFDF02).w
		rts
; ---------------------------------------------------------------------------

loc_2B92:		               ; CODE XREF: ROM:00002B88↑j
		btst	#4,(byte_FFDF04).w
		bne.s	loc_2BE4
		btst	#2,(byte_FFDF04).w
		beq.s	locret_2BEC
		move.w  (a0),d0
		move.w  (word_FFDF1E).w,d1
		eor.w   d1,d0
		btst	#9,d0
		bne.s	locret_2BEC
		btst	#2,(a0)
		bne.s	loc_2BD8
		bchg    #1,(a0)
		bne.s	loc_2BE2
		bset    #2,(a0)
		move.w	#$2000,d0
		bsr.s   sub_2C0E
		bsr.w	sub_2B1A
		beq.s	loc_2BD2
		moveq	#$50,d0 ; 'P'
		jsr	(a6)
		bra.s	loc_2BE4
; ---------------------------------------------------------------------------

loc_2BD2:		               ; CODE XREF: ROM:00002BCA↑j
		moveq	#$1C,d0
		jsr	(a6)
		bra.s	loc_2BE4
; ---------------------------------------------------------------------------

loc_2BD8:		               ; CODE XREF: ROM:00002BB4↑j
		bchg    #1,(a0)
		bne.s	loc_2BE2
		bsr.s   sub_2BEE
		bra.s	loc_2BE4
; ---------------------------------------------------------------------------

loc_2BE2:		               ; CODE XREF: ROM:00002BBA↑j
				        ; ROM:00002BDC↑j
		bsr.s   sub_2C00

loc_2BE4:		               ; CODE XREF: ROM:00002B98↑j
				        ; ROM:00002BD0↑j ...
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w

locret_2BEC:		            ; CODE XREF: ROM:00002BA0↑j
				        ; ROM:00002BAE↑j
		rts

; =============== S U B R O U T I N E =======================================


sub_2BEE:		               ; CODE XREF: sub_28A8+2C↑j
				        ; ROM:00002BDE↑p
		bset    #1,(a0)
		moveq	#4,d0
		jsr	(a6)
		move.w	#$2000,d0
		bsr.s   sub_2C0E
		bra.w	loc_2B7C
; End of function sub_2BEE


; =============== S U B R O U T I N E =======================================


sub_2C00:		               ; CODE XREF: sub_28A8+22↑j
				        ; ROM:loc_2BE2↑p
		bclr    #1,(a0)
		moveq	#6,d0
		jsr	(a6)
		bsr.w	sub_2B74
; End of function sub_2C00


; =============== S U B R O U T I N E =======================================


sub_2C0C:		               ; CODE XREF: ROM:00002AF2↑p
				        ; sub_2DE6-8↓p
		moveq	#0,d0
; End of function sub_2C0C


; =============== S U B R O U T I N E =======================================


sub_2C0E:		               ; CODE XREF: ROM:00002BC4↑p
				        ; sub_2BEE+C↑p
		moveq	#9,d1
		bra.w	sub_35F6
; End of function sub_2C0E

; ---------------------------------------------------------------------------

loc_2C14:		               ; CODE XREF: ROM:00002A12↑j
		cmpi.w  #$100,(word_FFDF20).w
		bne.s	locret_2C28
		moveq	#4,d0
		jsr	(a6)
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w

locret_2C28:		            ; CODE XREF: ROM:00002C1A↑j
		rts
; ---------------------------------------------------------------------------

loc_2C2A:		               ; CODE XREF: ROM:000029B6↑j
		move.w  (a0),d7
		btst	#8,d7
		bne.w	loc_2CC0
		btst	#4,(byte_FFDF04).w
		bne.s	loc_2CB6
		btst	#1,d7
		bne.s	loc_2CB6
		btst	#$A,d7
		beq.s	loc_2C9C
		move.w  (dword_FFDF28).w,d6
		cmpi.w  #2,d6
		bcs.s	loc_2C58
		bsr.w	sub_33CC
		bra.s	loc_2C62
; ---------------------------------------------------------------------------

loc_2C58:		               ; CODE XREF: ROM:00002C50↑j
		btst	#3,d7
		bne.s	loc_2CB6
		bsr.w	sub_3426

loc_2C62:		               ; CODE XREF: ROM:00002C56↑j
		move.b	d1,(byte_FFDF34).w
		bset    #6,(byte_FFDF04).w
		bset    #6,1(a0)
		andi.w  #$400C,d7
		beq.s	loc_2C8A
		btst	#1,(a0)
		beq.s	loc_2C84
		moveq	#$50,d0 ; 'P'
		jsr	(a6)
		bra.s	loc_2CB6
; ---------------------------------------------------------------------------

loc_2C84:		               ; CODE XREF: ROM:00002C7C↑j
		moveq	#$4E,d0 ; 'N'
		jsr	(a6)
		bra.s	loc_2CB6
; ---------------------------------------------------------------------------

loc_2C8A:		               ; CODE XREF: ROM:00002C76↑j
		btst	#1,(a0)
		beq.s	loc_2C96
		moveq	#$1C,d0
		jsr	(a6)
		bra.s	loc_2CB6
; ---------------------------------------------------------------------------

loc_2C96:		               ; CODE XREF: ROM:00002C8E↑j
		moveq	#$4C,d0 ; 'L'
		jsr	(a6)
		bra.s	loc_2CB6
; ---------------------------------------------------------------------------

loc_2C9C:		               ; CODE XREF: ROM:00002C46↑j
		btst	#2,d7
		bne.s	loc_2CB6
		bsr.w	sub_3426
		move.b	d1,(byte_FFDF34).w
		bset    #6,(byte_FFDF04).w
		bset    #6,1(a0)

loc_2CB6:		               ; CODE XREF: ROM:00002C3A↑j
				        ; ROM:00002C40↑j ...
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w
		rts
; ---------------------------------------------------------------------------

loc_2CC0:		               ; CODE XREF: ROM:00002C30↑j
		bset    #6,(byte_FFDF04).w
		bset    #6,1(a0)
		subq.b  #1,(byte_FFDF34).w
		beq.s	loc_2CD6
		bmi.s	loc_2CD6
		bra.s	loc_2CB6
; ---------------------------------------------------------------------------

loc_2CD6:		               ; CODE XREF: ROM:00002CD0↑j
				        ; ROM:00002CD2↑j
		move.b  #1,(byte_FFDF34).w
		bra.s	loc_2CB6
; ---------------------------------------------------------------------------

loc_2CDE:		               ; CODE XREF: ROM:000029BA↑j
		move.w  (a0),d7
		btst	#8,d7
		bne.w	loc_2D6E
		btst	#4,(byte_FFDF04).w
		bne.s	loc_2D64
		btst	#1,d7
		bne.s	loc_2D64
		btst	#$A,d7
		beq.s	loc_2D48
		btst	#3,d7
		beq.s	loc_2D08
		bsr.w	sub_2B54
		bra.s	loc_2D64
; ---------------------------------------------------------------------------

loc_2D08:		               ; CODE XREF: ROM:00002D00↑j
		bsr.w	sub_33EE
		beq.s	loc_2D64
		move.b	d1,(byte_FFDF34).w
		bset    #6,(byte_FFDF04).w
		bset    #6,1(a0)
		andi.w  #$400C,d7
		beq.s	loc_2D36
		btst	#1,(a0)
		beq.s	loc_2D30
		moveq	#$50,d0 ; 'P'
		jsr	(a6)
		bra.s	loc_2D64
; ---------------------------------------------------------------------------

loc_2D30:		               ; CODE XREF: ROM:00002D28↑j
		moveq	#$4E,d0 ; 'N'
		jsr	(a6)
		bra.s	loc_2D64
; ---------------------------------------------------------------------------

loc_2D36:		               ; CODE XREF: ROM:00002D22↑j
		btst	#1,(a0)
		beq.s	loc_2D42
		moveq	#$1C,d0
		jsr	(a6)
		bra.s	loc_2D64
; ---------------------------------------------------------------------------

loc_2D42:		               ; CODE XREF: ROM:00002D3A↑j
		moveq	#$4C,d0 ; 'L'
		jsr	(a6)
		bra.s	loc_2D64
; ---------------------------------------------------------------------------

loc_2D48:		               ; CODE XREF: ROM:00002CFA↑j
		btst	#2,d7
		bne.s	loc_2D64
		bsr.w	sub_33EE
		beq.s	loc_2D64
		move.b	d1,(byte_FFDF34).w
		bset    #6,(byte_FFDF04).w
		bset    #6,1(a0)

loc_2D64:		               ; CODE XREF: ROM:00002CEE↑j
				        ; ROM:00002CF4↑j ...
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w
		rts
; ---------------------------------------------------------------------------

loc_2D6E:		               ; CODE XREF: ROM:00002CE4↑j
		bset    #6,(byte_FFDF04).w
		bset    #6,1(a0)
		addq.b  #1,(byte_FFDF34).w
		cmpi.b  #99,(byte_FFDF34).w
		bls.s   loc_2D64
		move.b  #99,(byte_FFDF34).w
		bra.s	loc_2D64
; ---------------------------------------------------------------------------

loc_2D8E:		               ; CODE XREF: ROM:000029BE↑j
		btst	#2,(a0)
		bne.s	loc_2D9A
		btst	#1,(a0)
		beq.s	loc_2DA0

loc_2D9A:		               ; CODE XREF: ROM:00002D92↑j
		bsr.s   sub_2DAA
		bsr.w	sub_3106

loc_2DA0:		               ; CODE XREF: ROM:00002D98↑j
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w
		rts

; =============== S U B R O U T I N E =======================================


sub_2DAA:		               ; CODE XREF: ROM:00002A38↑j
				        ; ROM:loc_2D9A↑p
		moveq	#2,d0
		jsr	(a6)
; End of function sub_2DAA

; START OF FUNCTION CHUNK FOR sub_2DE6

loc_2DAE:		               ; CODE XREF: sub_2DE6+4↓j
				        ; sub_2DE6+16↓j
		bclr    #2,(a0)
		bclr    #1,(a0)
		bsr.w	sub_33BA
		bsr.w	sub_33CC
		move.b	d1,(byte_FFDF34).w
		bclr    #6,(byte_FFDF04).w
		bclr    #6,1(a0)
		move.b  (byte_FFFE43).w,d3
		bsr.w	sub_33BA
		clr.b   (byte_FFFE43).w
		bsr.w	sub_3106
		bsr.w	sub_2C0C
		bra.w	loc_2B7C
; END OF FUNCTION CHUNK FOR sub_2DE6

; =============== S U B R O U T I N E =======================================


sub_2DE6:		               ; CODE XREF: sub_28A8+E↑j
				        ; sub_2A54+14↑p

; FUNCTION CHUNK AT 00002DAE SIZE 00000038 BYTES

		btst	#3,(a0)
		beq.s	loc_2DAE
		bsr.w	sub_2E86
		bsr.w	sub_2F16
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w
		bra.s	loc_2DAE
; End of function sub_2DE6

; ---------------------------------------------------------------------------

loc_2DFE:		               ; CODE XREF: ROM:000029C2↑j
		move.w  (a0),d0
		btst	#$A,d0
		beq.s	loc_2E74
		btst	#1,d0
		bne.s	loc_2E74
		move.w  (word_FFDF1E).w,d1
		eor.w   d0,d1
		btst	#$A,d1
		bne.s	loc_2E74
		btst	#$B,d1
		bne.s	locret_2E7C
		tst.b	(byte_FFDF02).w
		bpl.s	loc_2E50
		cmpi.w  #$100,(word_FFDF20).w
		beq.s	loc_2E34
		cmpi.w  #$500,(word_FFDF20).w
		bne.s	loc_2E74

loc_2E34:		               ; CODE XREF: ROM:00002E2A↑j
		bset    #3,(a0)
		bclr    #4,(a0)
		move.b  #1,(byte_FFDF02).w
		moveq	#$A,d0
		jsr	(a6)
		move.w	#$2000,d0
		moveq	#5,d1
		bra.w	sub_361C
; ---------------------------------------------------------------------------

loc_2E50:		               ; CODE XREF: ROM:00002E22↑j
		move.b  (word_FFFE20).w,d0
		andi.b  #$70,d0 ; 'p'
		bne.s	locret_2E7C
		bsr.s   sub_2E86
		bclr    #0,1(a0)
		beq.s	loc_2E70
		btst	#1,(a0)
		bne.s	loc_2E74
		moveq	#6,d0
		jsr	(a6)
		bra.s	loc_2E74
; ---------------------------------------------------------------------------

loc_2E70:		               ; CODE XREF: ROM:00002E62↑j
		moveq	#$C,d0
		jsr	(a6)

loc_2E74:		               ; CODE XREF: ROM:00002E04↑j
				        ; ROM:00002E0A↑j ...
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w

locret_2E7C:		            ; CODE XREF: ROM:00002E1C↑j
				        ; ROM:00002E58↑j
		rts
; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_28A8

loc_2E7E:		               ; CODE XREF: sub_28A8+18↑j
		bset    #0,1(a0)
		rts
; END OF FUNCTION CHUNK FOR sub_28A8

; =============== S U B R O U T I N E =======================================


sub_2E86:		               ; CODE XREF: sub_2DE6+6↑p
				        ; ROM:00002E5A↑p
		btst	#4,(a0)
		bne.s	locret_2E92
		bclr    #3,(a0)
		bne.s	loc_2E94

locret_2E92:		            ; CODE XREF: sub_2E86+4↑j
		rts
; ---------------------------------------------------------------------------

loc_2E94:		               ; CODE XREF: sub_2E86+A↑j
		moveq	#2,d0
		bsr.w	sub_11F4
		moveq	#0,d0
		moveq	#5,d1
		bra.w	sub_361C
; End of function sub_2E86

; ---------------------------------------------------------------------------

loc_2EA2:		               ; CODE XREF: ROM:000029C6↑j
		move.w  (a0),d0
		btst	#$A,d0
		beq.s	loc_2F0C
		btst	#1,d0
		bne.s	loc_2F0C
		move.w  (word_FFDF1E).w,d1
		eor.w   d0,d1
		btst	#$A,d1
		bne.s	loc_2F0C
		btst	#$B,d1
		bne.s	locret_2F14
		tst.b	(byte_FFDF02).w
		bpl.s	loc_2EF4
		cmpi.w  #$100,(word_FFDF20).w
		beq.s	loc_2ED8
		cmpi.w  #$500,(word_FFDF20).w
		bne.s	loc_2F0C

loc_2ED8:		               ; CODE XREF: ROM:00002ECE↑j
		bset    #3,(a0)
		bset    #4,(a0)
		move.b  #1,(byte_FFDF02).w
		moveq	#8,d0
		jsr	(a6)
		move.w	#$2000,d0
		moveq	#6,d1
		bra.w	sub_361C
; ---------------------------------------------------------------------------

loc_2EF4:		               ; CODE XREF: ROM:00002EC6↑j
		btst	#1,(word_FFDF32+1).w
		bne.s	locret_2F14
		move.b  (word_FFFE20).w,d0
		andi.b  #$70,d0 ; 'p'
		bne.s	locret_2F14
		moveq	#$C,d0
		jsr	(a6)
		bsr.s   sub_2F16

loc_2F0C:		               ; CODE XREF: ROM:00002EA8↑j
				        ; ROM:00002EAE↑j ...
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w

locret_2F14:		            ; CODE XREF: ROM:00002EC0↑j
				        ; ROM:00002EFA↑j ...
		rts

; =============== S U B R O U T I N E =======================================


sub_2F16:		               ; CODE XREF: sub_2B54+A↑j
				        ; sub_2DE6+A↑p ...
		bclr    #4,(a0)
		beq.s	locret_2F22
		bclr    #3,(a0)
		bne.s	loc_2F24

locret_2F22:		            ; CODE XREF: sub_2F16+4↑j
		rts
; ---------------------------------------------------------------------------

loc_2F24:		               ; CODE XREF: sub_2F16+A↑j
		moveq	#2,d0
		bsr.w	sub_11F4
		bclr    #4,(a0)
		moveq	#0,d0
		moveq	#6,d1
		bra.w	sub_361C
; End of function sub_2F16

; ---------------------------------------------------------------------------

loc_2F36:		               ; CODE XREF: ROM:000029CA↑j
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w
		btst	#0,(a0)
		beq.s	loc_2F46
		rts
; ---------------------------------------------------------------------------

loc_2F46:		               ; CODE XREF: ROM:00002F42↑j
		bchg    #5,(a0)
		beq.s	loc_2F5A

; =============== S U B R O U T I N E =======================================


sub_2F4C:		               ; CODE XREF: sub_304E+C↓p
		bclr    #5,(a0)
		moveq	#0,d0
		moveq	#8,d1
		bsr.w	sub_35F6
		rts
; End of function sub_2F4C

; ---------------------------------------------------------------------------

loc_2F5A:		               ; CODE XREF: ROM:00002F4A↑j
		move.w	#$2000,d0
		moveq	#8,d1
		bsr.w	sub_35F6
		rts
; ---------------------------------------------------------------------------

loc_2F66:		               ; CODE XREF: ROM:000029CE↑j
		tst.w	(word_FFD766).w
		beq.s	loc_2F96
		btst	#6,(a0)
		beq.s	loc_2F76
		bsr.s   sub_2FB0
		bra.s	loc_2F96
; ---------------------------------------------------------------------------

loc_2F76:		               ; CODE XREF: ROM:00002F70↑j
		btst	#2,(a0)
		bne.s	loc_2F96
		bset    #6,(a0)
		move.w	#$2000,d0
		moveq	#$F,d1
		bsr.w	sub_361C
		bsr.w	sub_337E
		clr.w   (word_FFDF3A).w
		bsr.w	sub_38F2

loc_2F96:		               ; CODE XREF: ROM:00002F6A↑j
				        ; ROM:00002F74↑j ...
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w
		rts

; =============== S U B R O U T I N E =======================================


sub_2FA0:		               ; CODE XREF: sub_1F7E+2DE↑p
		tst.w	(word_FFD766).w
		beq.s	sub_2FB0
		move.w	#$4000,d0
		moveq	#$10,d1
		bra.w	sub_361C
; End of function sub_2FA0


; =============== S U B R O U T I N E =======================================


sub_2FB0:		               ; CODE XREF: ROM:00002F72↑p
				        ; sub_2FA0+4↑j ...
		bclr    #6,(a0)
		bsr.w	sub_334E
		moveq	#0,d0
		tst.w	(word_FFD766).w
		beq.s	loc_2FC4
		move.w	#$4000,d0

loc_2FC4:		               ; CODE XREF: sub_2FB0+E↑j
		moveq	#$10,d1
		bsr.w	sub_361C
		bsr.w	sub_38F2
		bclr    #6,(a0)
		moveq	#0,d0
		moveq	#$F,d1
		bra.w	sub_361C
; End of function sub_2FB0

; ---------------------------------------------------------------------------

loc_2FDA:		               ; CODE XREF: ROM:000029FE↑j
		btst	#2,(byte_FFDF04).w
		beq.s	loc_3018
		tst.b	(word_FFFE44+1).w
		beq.s	loc_3018
		btst	#2,(a0)
		beq.s	loc_2FF4
		btst	#6,(a0)
		bne.s	loc_3018

loc_2FF4:		               ; CODE XREF: ROM:00002FEC↑j
		move.w	#$2000,d0
		moveq	#$10,d1
		bsr.w	sub_361C
		bsr.w	sub_3772
		bsr.w	sub_2804
		bsr.w	sub_37D0
		bsr.w	sub_37EA
		bsr.w	sub_3846
		bset    #7,1(a0)

loc_3018:		               ; CODE XREF: ROM:00002FE0↑j
				        ; ROM:00002FE6↑j ...
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w
		rts

; =============== S U B R O U T I N E =======================================


sub_3022:		               ; CODE XREF: sub_1F7E+2DA↑p
				        ; sub_1F7E:loc_23F2↑p
		bsr.w	sub_3860
		bsr.w	sub_3792
		bclr    #7,(word_FFDF08+1).w
		rts
; End of function sub_3022

; ---------------------------------------------------------------------------

loc_3032:		               ; CODE XREF: ROM:000029D2↑j
		bsr.s   sub_303E
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w
		rts

; =============== S U B R O U T I N E =======================================


sub_303E:		               ; CODE XREF: sub_2A54+28↑p
				        ; ROM:loc_3032↑p
		bsr.w	sub_32D4
		bsr.w	sub_2FB0
		bsr.w	sub_334E
		bra.w	sub_38F2
; End of function sub_303E


; =============== S U B R O U T I N E =======================================


sub_304E:		               ; CODE XREF: ROM:00002A16↑j
				        ; sub_2A54+1E↑p
		bsr.w	sub_316E
		bsr.w	sub_31DC
		bsr.w	sub_2FB0
		bsr.w	sub_2F4C
		bsr.w	sub_3106
		bsr.w	sub_3254
		bsr.w	sub_321E
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w
		rts
; End of function sub_304E

; ---------------------------------------------------------------------------

loc_3074:		               ; CODE XREF: ROM:000029D6↑j
		bset    #6,(byte_FFDF07).w
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w
		rts
; ---------------------------------------------------------------------------

loc_3084:		               ; CODE XREF: ROM:000029DA↑j
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w
		rts
; ---------------------------------------------------------------------------
		dc.b $4E ; N
		dc.b $75 ; u
; ---------------------------------------------------------------------------

loc_3090:		               ; CODE XREF: ROM:000029DE↑j
		bsr.w	sub_3106
		bsr.w	sub_27D6
		bra.s	loc_30A2
; ---------------------------------------------------------------------------

loc_309A:		               ; CODE XREF: ROM:00002A0A↑j
		bsr.w	sub_27BE
		bsr.w	sub_3A7A

loc_30A2:		               ; CODE XREF: ROM:00003098↑j
		bset    #5,1(a0)
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w
		rts
; ---------------------------------------------------------------------------

loc_30B2:		               ; CODE XREF: ROM:000029E2↑j
		btst	#2,(a0)
		beq.s	loc_30FC
		btst	#3,1(a0)
		bne.s	loc_30FC
		btst	#1,1(a0)
		bne.s	loc_30FA
		btst	#1,(a0)
		bne.s	loc_30FC
		cmpi.w  #$100,(word_FFDF20).w
		bne.s	loc_30FC
		move.l  (dword_FFDF24).w,d0
		move.w  (word_FFD7CC).w,d1
		move.b	d1,d0
		move.l	d0,(dword_FFDF10).w
		move.l  (dword_FFDF28).w,(dword_FFDF18).w
		move.w	#$4000,d0
		moveq	#7,d1
		bsr.w	sub_361C
		bsr.w	sub_2866
		bra.s	loc_30FC
; ---------------------------------------------------------------------------

loc_30FA:		               ; CODE XREF: ROM:000030C6↑j
		bsr.s   sub_3106

loc_30FC:		               ; CODE XREF: ROM:000030B6↑j
				        ; ROM:000030BE↑j ...
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w
		rts

; =============== S U B R O U T I N E =======================================


sub_3106:		               ; CODE XREF: sub_1F7E:loc_23E8↑p
				        ; ROM:00002D9C↑p ...
		bclr    #1,(word_FFDF08+1).w
		moveq	#0,d0
		moveq	#7,d1
		bra.w	sub_361C
; End of function sub_3106

; ---------------------------------------------------------------------------

loc_3114:		               ; CODE XREF: ROM:00002A0E↑j
		move.l  (dword_FFDF24).w,(dword_FFDF14).w
		move.w	#$2000,d0
		moveq	#7,d1
		bsr.w	sub_361C
		bset    #1,(word_FFDF08+1).w
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w
		rts
; ---------------------------------------------------------------------------

loc_3134:		               ; CODE XREF: ROM:000029E6↑j
		btst	#0,(a0)
		bne.s	loc_3164
		btst	#3,1(a0)
		bne.s	loc_3164
		btst	#2,1(a0)
		beq.s	loc_314E
		bsr.s   sub_316E
		bra.s	loc_3164
; ---------------------------------------------------------------------------

loc_314E:		               ; CODE XREF: ROM:00003148↑j
		btst	#2,(a0)
		bne.s	loc_3164
		bset    #2,1(a0)
		move.w	#$2000,d0
		moveq	#$C,d1
		bsr.w	sub_361C

loc_3164:		               ; CODE XREF: ROM:00003138↑j
				        ; ROM:00003140↑j ...
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w
		rts

; =============== S U B R O U T I N E =======================================


sub_316E:		               ; CODE XREF: sub_304E↑p
				        ; ROM:0000314A↑p
		bclr    #2,1(a0)
		move.w	#0,d0
		moveq	#$C,d1
		bsr.w	sub_361C

loc_317E:		               ; CODE XREF: sub_31DC+10↓j
		btst	#6,(a0)
		beq.s	loc_3192
		bsr.w	sub_337E
		move.b  (byte_FFFE43).w,d0
		bsr.w	sub_339C
		bra.s	loc_3196
; ---------------------------------------------------------------------------

loc_3192:		               ; CODE XREF: sub_316E+14↑j
		bsr.w	sub_334E

loc_3196:		               ; CODE XREF: sub_316E+22↑j
		bsr.w	sub_33CC
		move.b	d1,(byte_FFDF34).w
		bra.w	sub_38F2
; End of function sub_316E

; ---------------------------------------------------------------------------

loc_31A2:		               ; CODE XREF: ROM:000029EA↑j
		btst	#0,(a0)
		bne.s	loc_31D2
		btst	#2,1(a0)
		bne.s	loc_31D2
		btst	#3,1(a0)
		beq.s	loc_31BC
		bsr.s   sub_31DC
		bra.s	loc_31D2
; ---------------------------------------------------------------------------

loc_31BC:		               ; CODE XREF: ROM:000031B6↑j
		btst	#2,(a0)
		bne.s	loc_31D2
		bset    #3,1(a0)
		move.w	#$2000,d0
		moveq	#$D,d1
		bsr.w	sub_361C

loc_31D2:		               ; CODE XREF: ROM:000031A6↑j
				        ; ROM:000031AE↑j ...
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w
		rts

; =============== S U B R O U T I N E =======================================


sub_31DC:		               ; CODE XREF: sub_304E+4↑p
				        ; ROM:000031B8↑p
		bclr    #3,1(a0)
		move.w	#0,d0
		moveq	#$D,d1
		bsr.w	sub_361C
		bra.s	loc_317E
; End of function sub_31DC

; ---------------------------------------------------------------------------

loc_31EE:		               ; CODE XREF: ROM:000029EE↑j
		btst	#0,(a0)
		bne.s	loc_3214
		btst	#1,1(a0)
		bne.s	loc_3214
		bchg    #7,(a0)
		bne.s	loc_3212
		move.w	#$2000,d0
		moveq	#$12,d1
		bsr.w	sub_361C
		bsr.w	sub_2848
		bra.s	loc_3214
; ---------------------------------------------------------------------------

loc_3212:		               ; CODE XREF: ROM:00003200↑j
		bsr.s   sub_321E

loc_3214:		               ; CODE XREF: ROM:000031F2↑j
				        ; ROM:000031FA↑j ...
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w
		rts

; =============== S U B R O U T I N E =======================================


sub_321E:		               ; CODE XREF: sub_304E+18↑p
				        ; ROM:loc_3212↑p
		bclr    #7,(a0)
		moveq	#$12,d1
		moveq	#0,d0
		bra.w	sub_361C
; End of function sub_321E

; ---------------------------------------------------------------------------

loc_322A:		               ; CODE XREF: ROM:000029F6↑j
		btst	#0,(a0)
		bne.s	loc_324A
		bchg    #4,1(a0)
		beq.s	loc_323C
		bsr.s   sub_3254
		bra.s	loc_324A
; ---------------------------------------------------------------------------

loc_323C:		               ; CODE XREF: ROM:00003236↑j
		move.w	#$2000,d0
		moveq	#$E,d1
		bsr.w	sub_361C
		bsr.w	sub_2852

loc_324A:		               ; CODE XREF: ROM:0000322E↑j
				        ; ROM:0000323A↑j
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w
		rts

; =============== S U B R O U T I N E =======================================


sub_3254:		               ; CODE XREF: sub_304E+14↑p
				        ; ROM:00003238↑p
		bclr    #4,1(a0)
		moveq	#0,d0
		moveq	#$E,d1
		bra.w	sub_361C
; End of function sub_3254

; ---------------------------------------------------------------------------

loc_3262:		               ; CODE XREF: ROM:000029F2↑j
		addq.b  #1,(dword_FFDF0A).w
		andi.b  #3,(dword_FFDF0A).w
		bsr.w	sub_37B2
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w
		rts
; ---------------------------------------------------------------------------

loc_327A:		               ; CODE XREF: ROM:000029FA↑j
		bset    #7,(byte_FFDF07).w
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w
		rts
; ---------------------------------------------------------------------------

loc_328A:		               ; CODE XREF: ROM:00002A02↑j
		cmpi.b  #$F,(dword_FFDF0A+2).w
		bcc.s	loc_3296
		addq.b  #1,(dword_FFDF0A+2).w

loc_3296:		               ; CODE XREF: ROM:00003290↑j
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w
		rts
; ---------------------------------------------------------------------------

loc_32A0:		               ; CODE XREF: ROM:00002A06↑j
		cmpi.b  #1,(dword_FFDF0A+2).w
		bls.s   loc_32AC
		subq.b  #1,(dword_FFDF0A+2).w

loc_32AC:		               ; CODE XREF: ROM:000032A6↑j
		clr.w   (word_FFDF00).w
		clr.b   (byte_FFDF02).w
		rts
; ---------------------------------------------------------------------------
		btst	#2,(word_FFDF08).w
		beq.s	loc_32C4
		cmp.b   (byte_FFFE43).w,d1
		rts
; ---------------------------------------------------------------------------

loc_32C4:		               ; CODE XREF: ROM:000032BC↑j
		andi    #$FB,ccr
		rts
; ---------------------------------------------------------------------------
		bsr.w	sub_33CC
		move.b	d1,(byte_FFDF34).w
		rts

; =============== S U B R O U T I N E =======================================


sub_32D4:		               ; CODE XREF: sub_1E76+38↑p
				        ; sub_303E↑p
		movem.l d7/a6,-(sp)
		clr.w   (word_FFD766).w
		lea	(unk_FFD768).w,a6
		moveq	#$18,d7

loc_32E2:		               ; CODE XREF: sub_32D4+10↓j
		clr.l   (a6)+
		dbf	d7,loc_32E2
		movem.l (sp)+,d7/a6
		rts
; End of function sub_32D4


; =============== S U B R O U T I N E =======================================


sub_32EE:		               ; CODE XREF: sub_1F7E+2BC↑p
		lea	(word_FFD766).w,a1
		cmpi.w  #$63,(a1) ; 'c'
		beq.s	loc_3306
		addq.w  #1,(a1)
		move.l	d1,-(sp)
		move.w  (a1)+,d1
		move.b	d0,-1(a1,d1.w)
		move.l  (sp)+,d1
		rts
; ---------------------------------------------------------------------------

loc_3306:		               ; CODE XREF: sub_32EE+8↑j
		ori	#1,ccr
		rts
; End of function sub_32EE


; =============== S U B R O U T I N E =======================================


sub_330C:		               ; CODE XREF: sub_1F7E+356↑p
		lea	(word_FFD766).w,a1
		tst.w	(a1)
		beq.s	locret_3328
		subq.w  #1,(a1)
		move.w  (a1),d1
		sub.w   d0,d1

loc_331A:		               ; CODE XREF: sub_330C+16↓j
		move.b  3(a1,d0.w),2(a1,d0.w)
		addq.w  #1,d0
		dbf	d1,loc_331A
		tst.w	(a1)

locret_3328:		            ; CODE XREF: sub_330C+6↑j
		rts
; End of function sub_330C


; =============== S U B R O U T I N E =======================================


sub_332A:		               ; CODE XREF: sub_28A8:loc_291E↑p
				        ; sub_2A54+1A↑p
		movem.l d0-d1/a1,-(sp)
		moveq	#0,d0
		move.b	d7,d0
		move.w	d0,(word_FFD700).w
		subq.w  #1,d0
		bmi.s	loc_3348
		moveq	#1,d1
		lea	(unk_FFD702).w,a1

loc_3340:		               ; CODE XREF: sub_332A+1A↓j
		move.b	d1,(a1)+
		addq.w  #1,d1
		dbf	d0,loc_3340

loc_3348:		               ; CODE XREF: sub_332A+E↑j
		movem.l (sp)+,d0-d1/a1
		rts
; End of function sub_332A


; =============== S U B R O U T I N E =======================================


sub_334E:		               ; CODE XREF: sub_28A8+7A↑p
				        ; sub_2FB0+4↑p ...
		movem.l d0-d1/a1-a2,-(sp)
		btst	#2,(word_FFDF08).w
		bne.s	loc_335E
		bsr.s   sub_33BA
		bra.s	loc_3366
; ---------------------------------------------------------------------------

loc_335E:		               ; CODE XREF: sub_334E+A↑j
		bsr.s   sub_33CC
		subq.w  #1,d1
		move.w	d1,(word_FFD7CC).w

loc_3366:		               ; CODE XREF: sub_334E+E↑j
		lea	(word_FFD700).w,a1
		lea	(word_FFD7CE).w,a2
		move.w  (a1)+,d0
		move.w	d0,(a2)+

loc_3372:		               ; CODE XREF: sub_334E+26↓j
		move.b  (a1)+,(a2)+
		dbf	d0,loc_3372
		movem.l (sp)+,d0-d1/a1-a2
		rts
; End of function sub_334E


; =============== S U B R O U T I N E =======================================


sub_337E:		               ; CODE XREF: sub_1F7E+2EA↑p
				        ; ROM:00002F8A↑p ...
		movem.l a1-a2,-(sp)
		lea	(word_FFD7CC).w,a1
		clr.w   (a1)+
		lea	(word_FFD766).w,a2
		move.w  (a2)+,(a1)+
		moveq	#$18,d0

loc_3390:		               ; CODE XREF: sub_337E+14↓j
		move.l  (a2)+,(a1)+
		dbf	d0,loc_3390
		movem.l (sp)+,a1-a2
		rts
; End of function sub_337E


; =============== S U B R O U T I N E =======================================


sub_339C:		               ; CODE XREF: sub_316E+1E↑p
		movem.l d1/a1-a2,-(sp)
		lea	(word_FFD7CC).w,a1
		lea	(unk_FFD768).w,a2
		moveq	#0,d1

loc_33AA:		               ; CODE XREF: sub_339C+14↓j
		cmp.b   (a2)+,d0
		beq.s	loc_33B2
		addq.w  #1,d1
		bra.s	loc_33AA
; ---------------------------------------------------------------------------

loc_33B2:		               ; CODE XREF: sub_339C+10↑j
		move.w	d1,(a1)
		movem.l (sp)+,d1/a1-a2
		rts
; End of function sub_339C


; =============== S U B R O U T I N E =======================================


sub_33BA:		               ; CODE XREF: sub_2DE6-30↑p
				        ; sub_2DE6-14↑p ...
		clr.w   (word_FFD7CC).w
		rts
; End of function sub_33BA


; =============== S U B R O U T I N E =======================================


sub_33C0:		               ; CODE XREF: sub_28A8+B0↑p
				        ; sub_2B64+8↑p ...
		cmp.w   (word_FFD7CC).w,d0
		beq.s	locret_33CA
		move.w	d0,(word_FFD7CC).w

locret_33CA:		            ; CODE XREF: sub_33C0+4↑j
		rts
; End of function sub_33C0


; =============== S U B R O U T I N E =======================================


sub_33CC:		               ; CODE XREF: sub_2B1A:loc_2B48↑p
				        ; sub_2B64+C↑j ...
		move.l	a1,-(sp)
		lea	(word_FFD7CC).w,a1
		move.w  (a1),d1
		move.b  4(a1,d1.w),d1
		movea.l (sp)+,a1
		rts
; End of function sub_33CC


; =============== S U B R O U T I N E =======================================


sub_33DC:		               ; CODE XREF: sub_28A8+9A↑p
		move.l	a1,-(sp)
		lea	(word_FFD7CE).w,a1
		move.w  (a1)+,d1
		subq.w  #1,d1
		move.b  (a1,d1.w),d1
		movea.l (sp)+,a1
		rts
; End of function sub_33DC


; =============== S U B R O U T I N E =======================================


sub_33EE:		               ; CODE XREF: ROM:loc_2D08↑p
				        ; ROM:00002D4E↑p
		movem.l a1,-(sp)
		lea	(word_FFD7CC).w,a1
		addq.w  #1,(a1)
		move.w  (a1)+,d1
		cmp.w   (a1)+,d1
		bcs.s	loc_341C
		btst	#5,(word_FFDF08).w
		beq.s	loc_340E
		clr.w   -4(a1)
		moveq	#0,d1
		bra.s	loc_341C
; ---------------------------------------------------------------------------

loc_340E:		               ; CODE XREF: sub_33EE+16↑j
		subq.w  #1,d1
		move.w	d1,-4(a1)
		moveq	#0,d1
		movem.l (sp)+,a1
		rts
; ---------------------------------------------------------------------------

loc_341C:		               ; CODE XREF: sub_33EE+E↑j
				        ; sub_33EE+1E↑j
		move.b  (a1,d1.w),d1
		movem.l (sp)+,a1
		rts
; End of function sub_33EE


; =============== S U B R O U T I N E =======================================


sub_3426:		               ; CODE XREF: ROM:00002C5E↑p
				        ; ROM:00002CA2↑p
		move.l	a1,-(sp)
		lea	(word_FFD7CC).w,a1
		subq.w  #1,(a1)
		bpl.s	loc_3444
		btst	#5,(word_FFDF08).w
		beq.s	loc_3442
		move.w  2(a1),d1
		subq.w  #1,d1
		move.w	d1,(a1)
		bra.s	loc_3444
; ---------------------------------------------------------------------------

loc_3442:		               ; CODE XREF: sub_3426+10↑j
		clr.w   (a1)

loc_3444:		               ; CODE XREF: sub_3426+8↑j
				        ; sub_3426+1A↑j
		move.w  (a1),d1
		move.b  4(a1,d1.w),d1
		movea.l (sp)+,a1
		rts
; End of function sub_3426


; =============== S U B R O U T I N E =======================================


sub_344E:		               ; CODE XREF: sub_2B1A+8↑p
		lea	(word_FFD7CC).w,a1
		clr.w   (a1)+
		move.w  (a1)+,d3
		move.w	d3,d4
		subq.w  #1,d3

loc_345A:		               ; CODE XREF: sub_344E+20↓j
		move.w	d4,d0
		bsr.w	sub_13B8
		move.b  (a1,d3.w),d2
		move.b  (a1,d0.w),(a1,d3.w)
		move.b	d2,(a1,d0.w)
		dbf	d3,loc_345A
		rts
; End of function sub_344E

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_1F7E

loc_3474:		               ; CODE XREF: sub_1F7E+40A↑j
		move.l	#$58C20003,d0
		bra.w	sub_3588
; END OF FUNCTION CHUNK FOR sub_1F7E

; =============== S U B R O U T I N E =======================================


sub_347E:		               ; CODE XREF: sub_1F7E+388↑p
				        ; sub_1F7E:loc_23EE↑p

; FUNCTION CHUNK AT 00000B8E SIZE 00000024 BYTES

		move.l	#$58C20003,d0
		moveq	#3,d1
		moveq	#1,d2
		moveq	#0,d3
		jmp	loc_B8E
; End of function sub_347E


; =============== S U B R O U T I N E =======================================


sub_348E:		               ; CODE XREF: initial_pc_entry+1A24↑p
		moveq	#0,d0
		moveq	#0,d1
		btst	#4,(byte_FFDF04).w
		bne.s	loc_34D6
		btst	#2,(byte_FFDF04).w
		bne.s	loc_34AC
		btst	#6,(byte_FFDF04).w
		bne.s	loc_34C6
		bra.s	loc_34D6
; ---------------------------------------------------------------------------

loc_34AC:		               ; CODE XREF: sub_348E+12↑j
		btst	#2,(word_FFDF08).w
		bra.s	loc_34CE
; ---------------------------------------------------------------------------
		dc.b   8
		dc.b $38 ; 8
		dc.b   0
		dc.b   6
		dc.b $DF
		dc.b   4
		dc.b $66 ; f
		dc.b  $A
		dc.b $10
		dc.b $38 ; 8
		dc.b $FE
		dc.b $45 ; E
		dc.b $32 ; 2
		dc.b $38 ; 8
		dc.b $FE
		dc.b $40 ; @
		dc.b $60 ; `
		dc.b $10
; ---------------------------------------------------------------------------

loc_34C6:		               ; CODE XREF: sub_348E+1A↑j
		moveq	#0,d1
		move.b  (byte_FFDF34).w,d0
		bne.s	loc_34D6

loc_34CE:		               ; CODE XREF: sub_348E+24↑j
		move.b  (byte_FFDF2C).w,d0
		move.w  (word_FFDF22).w,d1

loc_34D6:		               ; CODE XREF: sub_348E+A↑j
				        ; sub_348E+1C↑j ...
		lea	(unk_FFDF35).w,a6
		move.b	d0,(a6)
		move.w	d1,(word_FFDF36).w
		lea	dword_3514(pc),a4
		move.b  (a6)+,d1
		bsr.s   sub_3530
		move.l  (a4)+,d0
		bsr.w	sub_3588
		move.l  (a4)+,d0
		bsr.s   sub_3548
		move.b  (a6)+,d1
		move.l  (a4)+,d0
		bsr.w	sub_3588
		move.l  (a4)+,d0
		bsr.s   sub_3548
		move.b  (a6)+,d1
		move.l  (a4)+,d0
		bsr.w	sub_3588
		move.l  (a4)+,d0
		bsr.s   sub_3548
		move.b  (dword_FFDF0A+2).w,d1
		bsr.s   sub_3530
		move.l  (a4)+,d0
		bra.s	sub_3548
; End of function sub_348E

; ---------------------------------------------------------------------------
dword_3514:     dc.l $551A0003          ; DATA XREF: sub_348E+52↑o
		dc.l $42AE0003
		dc.l $55300003
		dc.l $42B80003
		dc.l $553A0003
		dc.l $42BE0003
		dc.l $42C80003

; =============== S U B R O U T I N E =======================================


sub_3530:		               ; CODE XREF: ROM:0000037C↑j
				        ; sub_348E+58↑p ...
		move.w	d6,-(sp)
		andi.l  #$FF,d1
		divu.w  #$A,d1
		move.w	d1,d6
		asl.w   #4,d6
		swap    d1
		add.b   d6,d1
		move.w  (sp)+,d6
		rts
; End of function sub_3530


; =============== S U B R O U T I N E =======================================


sub_3548:		               ; CODE XREF: sub_348E+62↑p
				        ; sub_348E+6E↑p ...
		btst	#0,(byte_FFDF04).w
		beq.s	loc_3558
		btst	#1,(byte_FFDF04).w
		bne.s	locret_3586

loc_3558:		               ; CODE XREF: sub_3548+6↑j
		movem.l d0-d1,-(sp)
		move.l	d0,($C00004).l
		move.b	d1,d0
		andi.w  #$F0,d0
		lsr.w   #4,d0
		addi.w  #$25AC,d0
		move.w	d0,($C00000).l
		andi.w  #$F,d1
		addi.w  #$25AC,d1
		move.w	d1,($C00000).l
		movem.l (sp)+,d0-d1

locret_3586:		            ; CODE XREF: sub_3548+E↑j
		rts
; End of function sub_3548


; =============== S U B R O U T I N E =======================================


sub_3588:		               ; CODE XREF: sub_1F7E+14FC↑j
				        ; sub_348E+5C↑p ...
		movem.l d0-d6/a5-a6,-(sp)
		lea	(unk_FFEF7A).w,a6
		lea	($C00000).l,a5
		move.l	d0,4(a5)
		move.b	d1,d4
		asr.w   #4,d1
		bsr.s   sub_35BE
		move.l	d2,(a5)
		move.l	d3,d6
		move.w	d4,d1
		bsr.s   sub_35BE
		move.l	d2,(a5)
		addi.l  #$800000,d0
		move.l	d0,4(a5)
		move.l	d6,(a5)
		move.l	d3,(a5)
		movem.l (sp)+,d0-d6/a5-a6
		rts
; End of function sub_3588


; =============== S U B R O U T I N E =======================================


sub_35BE:		               ; CODE XREF: sub_3588+16↑p
				        ; sub_3588+1E↑p
		andi.w  #$F,d1
		asl.w   #3,d1
		move.l  (a6,d1.w),d2
		move.l  4(a6,d1.w),d3
		rts
; End of function sub_35BE


; =============== S U B R O U T I N E =======================================


sub_35CE:		               ; CODE XREF: initial_pc_entry+1A2C↑p
		moveq	#0,d1
		btst	#0,(byte_FFDF05).w
		bne.s	loc_35E4
		moveq	#$A,d1
		btst	#1,(byte_FFDF05).w
		bne.s	loc_35E4
		rts
; ---------------------------------------------------------------------------

loc_35E4:		               ; CODE XREF: sub_35CE+8↑j
				        ; sub_35CE+12↑j
		moveq	#0,d0
		addi.b  #$20,(byte_FFDF06).w ; ' '
		bpl.s	sub_35F6
		move.w	#$2000,d0
		bra.w	*+4
; End of function sub_35CE


; =============== S U B R O U T I N E =======================================


sub_35F6:		               ; CODE XREF: sub_2A54+42↑j
				        ; sub_2AA2+1C↑p ...
		btst	#0,(byte_FFDF04).w
		bne.s	sub_361C
		lea	unk_36E6(pc),a1
		move.w	d0,-(sp)
		beq.s	loc_360A
		move.w	#$4000,d0

loc_360A:		               ; CODE XREF: sub_35F6+E↑j
		bsr.s   sub_3620
		move.w  (sp)+,d0
		cmpi.w  #5,d1
		bcs.s	sub_361C
		cmpi.w  #7,d1
		bhi.s	sub_361C
		rts
; End of function sub_35F6


; =============== S U B R O U T I N E =======================================


sub_361C:		               ; CODE XREF: ROM:00002E4C↑j
				        ; sub_2E86+18↑j ...
		lea	word_3646(pc),a1
; End of function sub_361C


; =============== S U B R O U T I N E =======================================


sub_3620:		               ; CODE XREF: sub_35F6:loc_360A↑p
		cmpi.w  #$13,d1
		bls.s   loc_3628
		rts
; ---------------------------------------------------------------------------

loc_3628:		               ; CODE XREF: sub_3620+4↑j
		movem.l d0-d5/a5,-(sp)
		asl.w   #3,d1
		adda.w  d1,a1
		move.w	d0,d3
		movem.w (a1),d0-d2/a1
		swap    d0
		move.w	#3,d0
		jsr	sub_B14
		movem.l (sp)+,d0-d5/a5
		rts
; End of function sub_3620

; ---------------------------------------------------------------------------
word_3646:      dc.w $5408              ; DATA XREF: sub_361C↑o
		dc.w 0
		dc.w 0
		dc.w $EEA0
		dc.w $5412
		dc.w 1
		dc.w 0
		dc.w $EEA2
		dc.w $542A
		dc.w 1
		dc.w 0
		dc.w $EEAC
		dc.w $5434
		dc.w 1
		dc.w 0
		dc.w $EEB0
		dc.w $5BBA
		dc.w 7
		dc.w 0
		dc.w $EF5A
		dc.w $543A
		dc.w 1
		dc.w 0
		dc.w $EEB4
		dc.w $5446
		dc.w 0
		dc.w 0
		dc.w $EEB8
		dc.w $5B86
		dc.w 7
		dc.w 0
		dc.w $EECA
		dc.w $5A86
		dc.w 7
		dc.w 0
		dc.w $EEBA
		dc.w $5418
		dc.w 1
		dc.w 0
		dc.w $EEA6
		dc.w $5424
		dc.w 0
		dc.w 0
		dc.w $EEAA
		dc.w $5C86
		dc.w 7
		dc.w 0
		dc.w $EEDA
		dc.w $5A98
		dc.w 7
		dc.w 0
		dc.w $EEEA
		dc.w $5B98
		dc.w 7
		dc.w 0
		dc.w $EEFA
		dc.w $5C98
		dc.w 7
		dc.w 0
		dc.w $EF0A
		dc.w $5AA8
		dc.w 7
		dc.w 0
		dc.w $EF1A
		dc.w $5BA8
		dc.w 7
		dc.w 0
		dc.w $EF2A
		dc.w $5CA8
		dc.w 7
		dc.w 0
		dc.w $EF3A
		dc.w $5ABA
		dc.w 7
		dc.w 0
		dc.w $EF4A
		dc.w $5CBA
		dc.w 7
		dc.w 0
		dc.w $EF6A
unk_36E6:       dc.b $43 ; C            ; DATA XREF: sub_35F6+8↑o
		dc.b $3A ; :
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   1
		dc.b $F0
		dc.b $56 ; V
		dc.b $43 ; C
		dc.b $40 ; @
		dc.b   0
		dc.b   1
		dc.b   0
		dc.b   1
		dc.b $F0
		dc.b $5A ; Z
		dc.b $44 ; D
		dc.b $38 ; 8
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b   0
		dc.b $F0
		dc.b $66 ; f
		dc.b $44 ; D
		dc.b $46 ; F
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b   0
		dc.b $F0
		dc.b $70 ; p
		dc.b $44 ; D
		dc.b $B8
		dc.b   0
		dc.b   3
		dc.b   0
		dc.b   1
		dc.b $F0
		dc.b $76 ; v
		dc.b $45 ; E
		dc.b $C2
		dc.b   0
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b $F0
		dc.b $A2
		dc.b $45 ; E
		dc.b $C8
		dc.b   0
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b $F0
		dc.b $A6
		dc.b $45 ; E
		dc.b $B8
		dc.b   0
		dc.b   3
		dc.b   0
		dc.b   0
		dc.b $F0
		dc.b $9A
		dc.b $44 ; D
		dc.b $C2
		dc.b   0
		dc.b   4
		dc.b   0
		dc.b   1
		dc.b $F0
		dc.b $86
		dc.b $43 ; C
		dc.b $48 ; H
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   1
		dc.b $F0
		dc.b $62 ; b
		dc.b $44 ; D
		dc.b $40 ; @
		dc.b   0
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b $F0
		dc.b $6C ; l

; =============== S U B R O U T I N E =======================================


sub_373E:		               ; CODE XREF: sub_2AA2+12↑p
				        ; sub_3B68+1E↓p
		lea	(unk_FFE962).w,a1
		bra.s	loc_3748
; End of function sub_373E


; =============== S U B R O U T I N E =======================================


sub_3744:		               ; CODE XREF: sub_2A54+4↑p
		lea	(unk_FFE980).w,a1

loc_3748:		               ; CODE XREF: sub_373E+4↑j
		move.l	#$52860003,d0
		moveq	#4,d1
		moveq	#2,d2
		jmp	sub_ACA
; End of function sub_3744


; =============== S U B R O U T I N E =======================================


sub_3756:		               ; CODE XREF: sub_2982+E↑p
				        ; sub_3B68+1A↓p
		lea	(unk_FFE8C0).w,a1
		bsr.w	sub_124A
		bne.s	loc_3764
		lea	(unk_FFE8F6).w,a1

loc_3764:		               ; CODE XREF: sub_3756+8↑j
		move.l	#$51160003,d0
		moveq	#8,d1
		moveq	#2,d2
		jmp	sub_ACA
; End of function sub_3756


; =============== S U B R O U T I N E =======================================


sub_3772:		               ; CODE XREF: ROM:00002FFE↑p
		move.l	#$59420003,($C00004).l
		move.l	#$5A805A9,($C00000).l
		move.l	#$5AA05AB,($C00000).l
		rts
; End of function sub_3772


; =============== S U B R O U T I N E =======================================


sub_3792:		               ; CODE XREF: sub_3022+4↑p
		move.l	#$59420003,($C00004).l
		move.l	#0,($C00000).l
		move.l	#0,($C00000).l
		rts
; End of function sub_3792


; =============== S U B R O U T I N E =======================================


sub_37B2:		               ; CODE XREF: ROM:0000326C↑p
				        ; sub_3B68+2E↓p
		moveq	#0,d0
		move.b  (dword_FFDF0A).w,d0
		mulu.w  #$20,d0 ; ' '
		lea	(unk_FFF0AA).w,a1
		adda.w  d0,a1
		move.l	#$56200003,d0
		moveq	#7,d1
		moveq	#1,d2
		jmp	sub_ACA
; End of function sub_37B2


; =============== S U B R O U T I N E =======================================


sub_37D0:		               ; CODE XREF: sub_1F7E+294↑p
				        ; ROM:00003006↑p
		move.l	#$58860003,d0
		move.w  (word_FFD700).w,d2
		beq.w	sub_39D0
		move.w  (dword_FFDF3C).w,d1
		lea	(unk_FFD702).w,a1
		bra.w	loc_3908
; End of function sub_37D0


; =============== S U B R O U T I N E =======================================


sub_37EA:		               ; CODE XREF: ROM:0000300A↑p
		lea	($C00000).l,a1
		move.l	#$57040003,4(a1)
		move.w  (word_FFE554).w,(a1)
		move.l	#$57840003,4(a1)
		move.w  (word_FFE554).w,(a1)
		move.l	#$57400003,4(a1)
		move.l  (dword_FFE590).w,(a1)
		move.l  (dword_FFE590+2).w,(a1)
		move.w  (word_FFE594).w,(a1)
		move.l	#$57C00003,4(a1)
		move.l  (dword_FFE5E0).w,(a1)
		move.l  (dword_FFE5E0+2).w,(a1)
		move.w  (word_FFE5E4).w,(a1)
		move.l	#$58040003,4(a1)
		moveq	#$E,d0
		lea	(unk_FFE5F4).w,a2

loc_383E:		               ; CODE XREF: sub_37EA+56↓j
		move.l  (a2)+,(a1)
		dbf	d0,loc_383E
		rts
; End of function sub_37EA


; =============== S U B R O U T I N E =======================================


sub_3846:		               ; CODE XREF: sub_1F7E+2D0↑p
				        ; sub_1F7E+336↑p ...
		move.l	#$57060003,d0
		move.w  (word_FFD766).w,d2
		beq.w	sub_39D0
		move.w  (dword_FFDF3C+2).w,d1
		lea	(unk_FFD768).w,a1
		bra.w	loc_3908
; End of function sub_3846


; =============== S U B R O U T I N E =======================================


sub_3860:		               ; CODE XREF: sub_3022↑p
		move.l	#$57040003,d0
		moveq	#$22,d1 ; '"'
		moveq	#2,d2
		bsr.s   sub_3876
		move.l	#$58860003,d0
		moveq	#$1C,d1
		moveq	#1,d2
; End of function sub_3860


; =============== S U B R O U T I N E =======================================


sub_3876:		               ; CODE XREF: sub_3860+A↑p

; FUNCTION CHUNK AT 00000B8E SIZE 00000024 BYTES

		moveq	#0,d3
		jmp	loc_B8E
; End of function sub_3876


; =============== S U B R O U T I N E =======================================


sub_387C:		               ; CODE XREF: sub_1F7E+34C↑p
		move.l	#$57060003,d0
		bra.w	sub_39D0
; End of function sub_387C


; =============== S U B R O U T I N E =======================================


sub_3886:		               ; CODE XREF: initial_pc_entry+1A28↑p
		btst	#2,(byte_FFDF04).w
		beq.s	locret_38F0
		btst	#4,(byte_FFDF04).w
		bne.s	locret_38F0
		move.l	#$78860003,d0
		move.w  (word_FFDF3A).w,d1
		move.w	#$2000,d2
		move.w  (word_FFDF38).w,d3
		lea	(unk_FFD7D0).w,a1
		bsr.w	sub_3960
		move.w  (word_FFD7CC).w,d3
		move.w	d3,(word_FFDF38).w
		btst	#2,(word_FFDF08).w
		beq.s	locret_38F0
		moveq	#0,d1
		move.w	d3,d1
		divu.w  #$A,d1
		subq.w  #1,d1
		bpl.s	loc_38CE
		moveq	#0,d1

loc_38CE:		               ; CODE XREF: sub_3886+44↑j
		cmp.w   (word_FFDF3A).w,d1
		beq.s	loc_38E2
		move.w	d1,(word_FFDF3A).w
		movem.l d1/d3/a1,-(sp)
		bsr.s   sub_38F2
		movem.l (sp)+,d1/d3/a1

loc_38E2:		               ; CODE XREF: sub_3886+4C↑j
		move.l	#$78860003,d0
		move.w	#$4000,d2
		bra.w	sub_3960
; ---------------------------------------------------------------------------

locret_38F0:		            ; CODE XREF: sub_3886+6↑j
				        ; sub_3886+E↑j ...
		rts
; End of function sub_3886


; =============== S U B R O U T I N E =======================================


sub_38F2:		               ; CODE XREF: sub_1F7E+2EE↑p
				        ; sub_28A8+84↑p ...
		move.w  (word_FFD7CE).w,d2
		beq.w	sub_39C6
		move.l	#$78860003,d0
		move.w  (word_FFDF3A).w,d1
		lea	(unk_FFD7D0).w,a1

loc_3908:		               ; CODE XREF: sub_37D0+16↑j
				        ; sub_3846+16↑j
		movem.l d0-d1/a1,-(sp)
		bsr.w	sub_39D0
		movem.l (sp)+,d0-d1/a1
		mulu.w  #$A,d1
		adda.w  d1,a1
		sub.w   d1,d2
		move.w	d2,d4
		move.w	#$2000,d2
		subq.w  #1,d4
		move.w	#9,d6
		cmp.w   d6,d4
		bls.s   sub_3944
		exg     d6,d4
		bsr.s   sub_3944
		addi.l  #$800000,d0
		exg     d6,d4
		subi.w  #$A,d4
		cmpi.w  #9,d4
		bls.s   sub_3944
		moveq	#9,d4
; End of function sub_38F2


; =============== S U B R O U T I N E =======================================


sub_3944:		               ; CODE XREF: sub_38F2+38↑j
				        ; sub_38F2+3C↑p ...
		move.l	d0,($C00004).l
		bra.s	loc_3954
; ---------------------------------------------------------------------------

loc_394C:		               ; CODE XREF: sub_3944+16↓j
		move.w  (word_FFE55A).w,($C00000).l

loc_3954:		               ; CODE XREF: sub_3944+6↑j
		move.b  (a1)+,d1
		bsr.w	sub_3998
		dbf	d4,loc_394C
		rts
; End of function sub_3944


; =============== S U B R O U T I N E =======================================


sub_3960:		               ; CODE XREF: sub_3886+26↑p
				        ; sub_3886+66↑j
		mulu.w  #$A,d1
		move.w	d3,d4
		sub.w   d1,d4
		bmi.s	locret_3996
		cmpi.b  #$14,d4
		bcc.s	locret_3996
		swap    d0
		cmpi.b  #$A,d4
		bcs.s	loc_3980
		addi.w  #$80,d0
		subi.w  #$A,d4

loc_3980:		               ; CODE XREF: sub_3960+16↑j
		add.w   d4,d4
		add.w   d4,d0
		add.w   d4,d4
		add.w   d4,d0
		swap    d0
		move.l	d0,($C00004).l
		move.b  (a1,d3.w),d1
		bsr.s   sub_3998

locret_3996:		            ; CODE XREF: sub_3960+8↑j
				        ; sub_3960+E↑j
		rts
; End of function sub_3960


; =============== S U B R O U T I N E =======================================


sub_3998:		               ; CODE XREF: sub_3944+12↑p
				        ; sub_3960+34↑p
		bsr.w	sub_3530
		move.w	d1,d3
		lsr.w   #4,d3
		andi.w  #$F,d3
		bne.s	loc_39AA
		addi.w  #$A,d3

loc_39AA:		               ; CODE XREF: sub_3998+C↑j
		addi.w  #$59D,d3
		add.w   d2,d3
		swap    d3
		move.w	d1,d3
		andi.w  #$F,d3
		addi.w  #$59D,d3
		add.w   d2,d3
		move.l	d3,($C00000).l
		rts
; End of function sub_3998


; =============== S U B R O U T I N E =======================================


sub_39C6:		               ; CODE XREF: sub_2A54+2C↑p
				        ; sub_38F2+4↑j
		move.l	#$78860003,d0
		clr.w   (word_FFDF3A).w
; End of function sub_39C6


; =============== S U B R O U T I N E =======================================


sub_39D0:		               ; CODE XREF: sub_37D0+A↑j
				        ; sub_3846+A↑j ...
		bsr.s   sub_39D8
		addi.l  #$800000,d0
; End of function sub_39D0


; =============== S U B R O U T I N E =======================================


sub_39D8:		               ; CODE XREF: sub_39D0↑p
		move.l	d0,($C00004).l
		moveq	#$D,d1
		lea	(unk_FFE556).w,a1

loc_39E4:		               ; CODE XREF: sub_39D8+12↓j
		move.l  (a1)+,($C00000).l
		dbf	d1,loc_39E4
		move.w  (a1)+,($C00000).l
		rts
; End of function sub_39D8


; =============== S U B R O U T I N E =======================================


sub_39F6:		               ; CODE XREF: sub_1F7E+2C8↑p
		andi.l  #$FFFF,d0
		divu.w  #$A,d0
		subq.w  #1,d0
		bpl.s	locret_3A06
		moveq	#0,d0

locret_3A06:		            ; CODE XREF: sub_39F6+C↑j
		rts
; End of function sub_39F6


; =============== S U B R O U T I N E =======================================


sub_3A08:		               ; CODE XREF: sub_1F7E+156↑p
				        ; sub_1F7E+23E↑j ...
		btst	#0,(byte_FFDF04).w
		bne.s	locret_3A78
		lea	(unk_FFEFCA).w,a1
		move.l	#$43380003,d0
		moveq	#9,d1
		moveq	#6,d2
		jsr	sub_ACA
		move.w	#$2000,d7
		moveq	#0,d0
		moveq	#8,d1
		btst	#5,(word_FFDF08).w
		beq.s	loc_3A34
		move.w	d7,d0

loc_3A34:		               ; CODE XREF: sub_3A08+28↑j
		bsr.w	sub_35F6
		moveq	#0,d0
		moveq	#$A,d1
		btst	#2,(word_FFDF08).w
		beq.s	loc_3A4E
		btst	#1,(word_FFDF08).w
		bne.s	loc_3A4E
		move.w	d7,d0

loc_3A4E:		               ; CODE XREF: sub_3A08+3A↑j
				        ; sub_3A08+42↑j
		bsr.w	sub_35F6
		moveq	#0,d0
		moveq	#9,d1
		btst	#1,(word_FFDF08).w
		beq.s	loc_3A60
		move.w	d7,d0

loc_3A60:		               ; CODE XREF: sub_3A08+54↑j
		bsr.w	sub_35F6
		moveq	#0,d0
		moveq	#7,d1

loc_3A68:		               ; CODE XREF: sub_3A08+6C↓j
		movem.l d0-d1,-(sp)
		bsr.w	sub_35F6
		movem.l (sp)+,d0-d1
		dbf	d1,loc_3A68

locret_3A78:		            ; CODE XREF: sub_3A08+6↑j
		rts
; End of function sub_3A08


; =============== S U B R O U T I N E =======================================


sub_3A7A:		               ; CODE XREF: sub_1F7E+242↑j
				        ; ROM:0000309E↑p

; FUNCTION CHUNK AT 00000B8E SIZE 00000024 BYTES

		move.l	#$43380003,d0
		moveq	#9,d1
		moveq	#6,d2
		moveq	#0,d3
		jmp	loc_B8E
; End of function sub_3A7A


; =============== S U B R O U T I N E =======================================


sub_3A8A:		               ; CODE XREF: sub_1F7E+15A↑p
				        ; sub_1F7E:loc_21B2↑p ...
		lea	($C00000).l,a5
		move.l	#$42AA0003,4(a5)
		move.l	#$25B625B7,(a5)
		move.l	#$42B40003,4(a5)
		move.l	#$25B625BA,(a5)
		move.l	#$42BC0003,4(a5)
		move.w	#$25BB,(a5)
		move.l	#$42C40003,4(a5)
		move.l	#$25B825B9,(a5)
		rts
; End of function sub_3A8A


; =============== S U B R O U T I N E =======================================


sub_3AC8:		               ; CODE XREF: sub_1F7E+22E↑p
		lea	($C00000).l,a5
		move.l	#$42AA0003,4(a5)
		move.w	#$4001,d0
		moveq	#$10,d1

loc_3ADC:		               ; CODE XREF: sub_3AC8+16↓j
		move.w	d0,(a5)
		dbf	d1,loc_3ADC
		rts
; End of function sub_3AC8


; =============== S U B R O U T I N E =======================================


sub_3AE4:		               ; CODE XREF: sub_1E76+3C↑p
		clr.l   (dword_FFDF48).w
		clr.l   (dword_FFDF4C).w
		rts
; End of function sub_3AE4


; =============== S U B R O U T I N E =======================================


sub_3AEE:		               ; CODE XREF: initial_pc_entry+1A20↑p
		lea	($C00000).l,a5
		move.l	#$770A0003,($C00004).l
		move.w  (dword_FFDF2E).w,d0
		move.l  (dword_FFE46A).w,d1
		lea	(unk_FFDF44).w,a1
		bsr.s   sub_3B22
		move.l	#$778A0003,($C00004).l
		move.w  (dword_FFDF2E+2).w,d0
		move.l  (dword_FFE4BA).w,d1
		lea	(dword_FFDF48).w,a1
; End of function sub_3AEE


; =============== S U B R O U T I N E =======================================


sub_3B22:		               ; CODE XREF: sub_3AEE+1C↑p
		move.b  2(a1),3(a1)
		move.b  1(a1),2(a1)
		move.b  (a1),1(a1)
		move.b	d0,(a1)+
		add.b   (a1)+,d0
		add.b   (a1)+,d0
		add.b   (a1)+,d0
		lsr.b   #2,d0
		ori.l   #$20002000,d1
		moveq	#$F,d2
		andi.w  #$1F,d0
		beq.s	loc_3B5A
		subq.w  #1,d0
		sub.w   d0,d2

loc_3B4E:		               ; CODE XREF: sub_3B22+2E↓j
		move.l	d1,(a5)
		dbf	d0,loc_3B4E
		dbf	d2,loc_3B5A
		rts
; ---------------------------------------------------------------------------

loc_3B5A:		               ; CODE XREF: sub_3B22+26↑j
				        ; sub_3B22+32↑j
		andi.l  #$1FFF1FFF,d1

loc_3B60:		               ; CODE XREF: sub_3B22+40↓j
		move.l	d1,(a5)
		dbf	d2,loc_3B60
		rts
; End of function sub_3B22


; =============== S U B R O U T I N E =======================================


sub_3B68:		               ; CODE XREF: sub_1E76+5C↑p
		bsr.w	sub_3BDA
		moveq	#5,d7
		lea	dword_3B9E(pc),a0

loc_3B72:		               ; CODE XREF: sub_3B68+16↓j
		move.l  (a0)+,d0
		movea.w (a0)+,a1
		move.w  (a0)+,d1
		move.w  (a0)+,d2
		jsr	sub_ACA
		dbf	d7,loc_3B72
		bsr.w	sub_3756
		bsr.w	sub_373E
		moveq	#0,d0
		moveq	#$13,d1

loc_3B8E:		               ; CODE XREF: sub_3B68+2A↓j
		bsr.w	sub_361C
		dbf	d1,loc_3B8E
		bsr.w	sub_37B2
		jmp	sub_3A8A
; End of function sub_3B68

; ---------------------------------------------------------------------------
dword_3B9E:     dc.l $70000003          ; DATA XREF: sub_3B68+6↑o
		dc.w $E000
		dc.w $27
		dc.w $1B
		dc.l $51280003
		dc.w $E92C
		dc.w 8
		dc.w 2
		dc.l $52900003
		dc.w $E99E
		dc.w $1C
		dc.w 2
		dc.l $54060003
		dc.w $EA4C
		dc.w $21
		dc.w 0
		dc.l $54800003
		dc.w $EA90
		dc.w $27
		dc.w 4
		dc.l $59800003
		dc.w $EC20
		dc.w $27
		dc.w 7

; =============== S U B R O U T I N E =======================================


sub_3BDA:		               ; CODE XREF: sub_3B68↑p
		lea	(off_3C28).l,a0
		movea.l (a0)+,a1
		jsr	palload
		bsr.s   sub_3C14
		lea	(unk_A42E).l,a1
		move.l	#$75800002,d0
		move.l	#$99944944,d1
		moveq	#$10,d2
		jsr	sub_1350
		bsr.s   sub_3C14
		move.w  (a0)+,d7
		movea.w (a0)+,a2

loc_3C06:		               ; CODE XREF: sub_3BDA+34↓j
		move.w  (a0)+,d0
		movea.l (a0)+,a1
		jsr	enidec
		dbf	d7,loc_3C06
		rts
; End of function sub_3BDA


; =============== S U B R O U T I N E =======================================


sub_3C14:		               ; CODE XREF: sub_3BDA+C↑p
				        ; sub_3BDA+26↑p
		move.l  (a0)+,($C00004).l

loc_3C1A:		               ; CODE XREF: sub_3C14+10↓j
		move.l  (a0)+,d0
		beq.s	locret_3C26
		movea.l d0,a1
		jsr	nemdectovram
		bra.s	loc_3C1A
; ---------------------------------------------------------------------------

locret_3C26:		            ; CODE XREF: sub_3C14+8↑j
		rts
; End of function sub_3C14

; ---------------------------------------------------------------------------
off_3C28:       dc.l pal_3CA6           ; DATA XREF: sub_3BDA↑o
		dc.b $44 ; D
		dc.b   0
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b   0
		dc.b $95
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $90
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $9B
		dc.b $64 ; d
		dc.b   0
		dc.b   0
		dc.b $97
		dc.b $9A
		dc.b   0
		dc.b   0
		dc.b $9A
		dc.b $7C ; |
		dc.b   0
		dc.b   0
		dc.b $92
		dc.b $48 ; H
		dc.b   0
		dc.b   0
		dc.b $95
		dc.b $DE
		dc.b   0
		dc.b   0
		dc.b $A1
		dc.b $F4
		dc.b   0
		dc.b   0
		dc.b $93
		dc.b $10
		dc.b   0
		dc.b   0
		dc.b $A1
		dc.b $84
		dc.b   0
		dc.b   0
		dc.b $A4
		dc.b $AE
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $7C ; |
		dc.b $20
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b   0
		dc.b $A4
		dc.b $E0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   8
		dc.b $E0
		dc.b   0
		dc.b   4
		dc.b $24 ; $
		dc.b   0
		dc.b   0
		dc.b $A6
		dc.b $10
		dc.b   4
		dc.b $54 ; T
		dc.b   0
		dc.b   0
		dc.b $A9
		dc.b $48 ; H
		dc.b   4
		dc.b $B5
		dc.b   0
		dc.b   0
		dc.b $A8
		dc.b $6A ; j
		dc.b   4
		dc.b $E6
		dc.b   0
		dc.b   0
		dc.b $A8
		dc.b $B8
		dc.b   4
		dc.b $FC
		dc.b   0
		dc.b   0
		dc.b $A7
		dc.b $DC
		dc.b   5
		dc.b   9
		dc.b   0
		dc.b   0
		dc.b $A8
		dc.b $36 ; 6
		dc.b   5
		dc.b $44 ; D
		dc.b   0
		dc.b   0
		dc.b $A9
		dc.b $A4
		dc.b   5
		dc.b $69 ; i
		dc.b   0
		dc.b   0
		dc.b $A7
		dc.b $E4
		dc.b   5
		dc.b $E1
		dc.b   0
		dc.b   0
		dc.b $A9
		dc.b $B4
pal_3CA6:       dc.w $3F		; DATA XREF: ROM:off_3C28↑o
		dc.w $660
		dc.w $886
		dc.w $AA8
		dc.w $CCA
		dc.w $EEE
		dc.w $CCA
		dc.w $6EE
		dc.w $48C
		dc.w $2C4
		dc.w 0
		dc.w $66
		dc.w $484
		dc.w $242
		dc.w $22
		dc.w 0
		dc.w $840
		dc.w 0
		dc.w $886
		dc.w $AA8
		dc.w $CCA
		dc.w $EEE
		dc.w $4AE
		dc.w 0
		dc.w $48C
		dc.w $24E
		dc.w 0
		dc.w 0
		dc.w $484
		dc.w $4C2
		dc.w $264
		dc.w $22
		dc.w $840
		dc.w 0
		dc.w $886
		dc.w $AA8
		dc.w $CCA
		dc.w $EEE
		dc.w $EC6
		dc.w $E80
		dc.w $48C
		dc.w $46E
		dc.w 0
		dc.w $268
		dc.w 0
		dc.w $6E2
		dc.w $486
		dc.w $44
		dc.w $840
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0

; =============== S U B R O U T I N E =======================================


sub_3D28:		               ; CODE XREF: sub_1E76+40↑p
		clr.w   ($200300).l
		rts
; End of function sub_3D28


; =============== S U B R O U T I N E =======================================


sub_3D30:		               ; CODE XREF: initial_pc_entry+19F8↑p
				        ; sub_3D30+8↓j
		btst	#0,($A12003).l
		bne.s	sub_3D30
		move    sr,-(sp)
		ori	#$700,sr
		lea	($200000).l,a1
		move.w  $300(a1),(word_FFDF1C).w
		move.w  $302(a1),(word_FFDF1E).w
		move.w  $304(a1),(word_FFDF20).w
		move.w  $324(a1),(word_FFDF22).w
		move.l  $308(a1),(dword_FFDF24).w
		move.l  $30C(a1),(dword_FFDF28).w
		move.b  $310(a1),(byte_FFDF2C).w
		move.l  $326(a1),(dword_FFDF2E).w
		move.w  $32A(a1),(word_FFDF32).w
		move.w  $464(a1),d0
		bsr.w	sub_33C0
		move    (sp)+,sr
		rts
; End of function sub_3D30


; =============== S U B R O U T I N E =======================================


sub_3D88:		               ; CODE XREF: initial_pc_entry+1A30↑p
				        ; sub_1E76+44↑p ...
		btst	#0,($A12003).l
		bne.s	sub_3D88
		move    sr,-(sp)
		ori	#$700,sr
		lea	($200000).l,a1
		move.w  (word_FFDF1C).w,$300(a1)
		move.w  (word_FFDF08).w,$32C(a1)
		move.l  (dword_FFDF0A).w,$32E(a1)
		move.w  (word_FFDF0E).w,$332(a1)
		move.l  (dword_FFDF10).w,$334(a1)
		move.l  (dword_FFDF14).w,$338(a1)
		move.l  (dword_FFDF18).w,$33C(a1)
		lea	$3FE(a1),a1
		lea	(word_FFD766).w,a2
		moveq	#$33,d0 ; '3'

loc_3DD2:		               ; CODE XREF: sub_3D88+4C↓j
		move.l  (a2)+,(a1)+
		dbf	d0,loc_3DD2
		move    (sp)+,sr
		rts
; End of function sub_3D88


; =============== S U B R O U T I N E =======================================


sub_3DDC:		               ; CODE XREF: sub_28A8+BE↑p
		lea	($200000).l,a1
		lea	(unk_FFDA00).w,a2
		move.w	#$95,d0

loc_3DEA:		               ; CODE XREF: sub_3DDC+10↓j
		move.l  (a1)+,(a2)+
		dbf	d0,loc_3DEA
		rts
; End of function sub_3DDC


; =============== S U B R O U T I N E =======================================


sub_3DF2:		               ; CODE XREF: sub_1E76+58↑p
		clr.b   (byte_FFDF03).w
		move.l	#$40200000,($C00004).l
		moveq	#7,d0

loc_3E02:		               ; CODE XREF: sub_3DF2+1A↓j
		move.l	#$FFFFFFFF,($C00000).l
		dbf	d0,loc_3E02
		bsr.w	sub_41E6
		bsr.w	sub_4218
		rts
; End of function sub_3DF2

; ---------------------------------------------------------------------------

loc_3E1A:		               ; CODE XREF: ROM:00001F22↑j
				        ; ROM:00003E22↓j
		btst	#0,($A12003).l
		beq.s	loc_3E1A
		jsr	sub_BCC
		move.w	#$9001,($C00004).l
		move.w	#$9001,(word_FFFDD4).w
		move.w	#$8730,($C00004).l
		move.w	#$8730,(word_FFFDC2).w
		move.l	#$40000010,($C00004).l
		move.w	#$20,($C00000).l ; ' '
		lea	($C00004).l,a4
		move.w  (word_FFFDB6).w,d4
		bset    #4,d4
		move.w	d4,(a4)
		move.w	#$100,($A11100).l
		move.w	#$9501,d0
		move.l	#$97119600,d1
		move.w	#$4060,d2
		move.w	#$80,d3
		lea	($220000).l,a1
		moveq	#$26,d6 ; '&'

loc_3E88:		               ; CODE XREF: ROM:loc_3E9E↓j
		bsr.w	sub_41C0
		lea	$400(a1),a1
		addq.w  #2,d1
		addi.w  #$360,d2
		bpl.s	loc_3E9E
		subi.w  #$4000,d2
		addq.w  #1,d3

loc_3E9E:		               ; CODE XREF: ROM:00003E96↑j
		dbf	d6,loc_3E88
		move.w	#0,($A11100).l
		bsr.w	sub_4030
		jsr	sub_BB2
		rts

; =============== S U B R O U T I N E =======================================


sub_3EB4:		               ; CODE XREF: ROM:00001F10↑p
				        ; sub_3EB4+8↓j
		btst	#0,($A12003).l
		beq.s	sub_3EB4
		lea	($20E0FC).l,a0
		move.b  (dword_FFDF0A+2).w,-$78(a0)
		lea	($C00004).l,a4
		lea	-4(a4),a3
		tst.b	(byte_FFDF03).w
		beq.s	loc_3EFA
		move.l	#$7C020002,($C00004).l
		move.w  ($20E080).l,(a3)
		move.l	#$40020010,($C00004).l
		move.w  ($20E082).l,(a3)

loc_3EFA:		               ; CODE XREF: sub_3EB4+24↑j
		bset    #4,(word_FFFDB6+1).w
		move.w  (word_FFFDB6).w,(a4)
		move.w	#$100,($A11100).l
		moveq	#0,d7

loc_3F0E:		               ; CODE XREF: sub_3EB4+80↓j
		move.w  2(a0),d6
		cmp.w   (a0),d6
		beq.s	loc_3F36
		addq.w  #8,2(a0)
		andi.w  #$3F8,2(a0)
		lea	loc_3F70(pc),a6
		tst.b	(byte_FFDF03).w
		bne.s	loc_3F2E
		lea	sub_3F96(pc),a6

loc_3F2E:		               ; CODE XREF: sub_3EB4+74↑j
		bsr.s   sub_3F58
		cmpi.w  #$7D0,d7
		bls.s   loc_3F0E

loc_3F36:		               ; CODE XREF: sub_3EB4+60↑j
		tst.b	(byte_FFDF03).w
		beq.s	loc_3F44
		bclr    #1,($A1200E).l

loc_3F44:		               ; CODE XREF: sub_3EB4+86↑j
		move.w	#0,($A11100).l
		bclr    #4,(word_FFFDB6+1).w
		move.w  (word_FFFDB6).w,(a4)
		rts
; End of function sub_3EB4


; =============== S U B R O U T I N E =======================================


sub_3F58:		               ; CODE XREF: sub_3EB4:loc_3F2E↑p

; FUNCTION CHUNK AT 00003FBC SIZE 00000074 BYTES
; FUNCTION CHUNK AT 0000404A SIZE 00000044 BYTES
; FUNCTION CHUNK AT 000040A8 SIZE 00000026 BYTES
; FUNCTION CHUNK AT 000040F2 SIZE 000000AE BYTES

		moveq	#0,d0
		move.w  6(a0,d6.w),d0
		move.l  8(a0,d6.w),d1
		move.w  4(a0,d6.w),d6
		cmpi.w  #$20,d6 ; ' '
		bhi.s	locret_3F94
		jmp	(a6,d6.w)
; ---------------------------------------------------------------------------

loc_3F70:		               ; DATA XREF: sub_3EB4+6C↑o
		bra.w	locret_3F94
; ---------------------------------------------------------------------------
		bra.w	loc_3FBC
; ---------------------------------------------------------------------------
		bra.w	loc_4018
; ---------------------------------------------------------------------------
		bra.w	loc_40F2
; ---------------------------------------------------------------------------
		bra.w	loc_4124
; ---------------------------------------------------------------------------
		bra.w	loc_4176
; ---------------------------------------------------------------------------
		bra.w	sub_4030
; ---------------------------------------------------------------------------
		bra.w	loc_404A
; ---------------------------------------------------------------------------
		bra.w	loc_40A8
; ---------------------------------------------------------------------------

locret_3F94:		            ; CODE XREF: sub_3F58+12↑j
				        ; sub_3F58:loc_3F70↑j
		rts
; End of function sub_3F58


; =============== S U B R O U T I N E =======================================


sub_3F96:		               ; DATA XREF: sub_3EB4+76↑o

; FUNCTION CHUNK AT 00003FBC SIZE 00000074 BYTES
; FUNCTION CHUNK AT 0000404A SIZE 00000044 BYTES
; FUNCTION CHUNK AT 000040A8 SIZE 00000026 BYTES

		bra.w	locret_3FBA
; ---------------------------------------------------------------------------
		bra.w	loc_3FBC
; ---------------------------------------------------------------------------
		bra.w	loc_4018
; ---------------------------------------------------------------------------
		bra.w	locret_3FBA
; ---------------------------------------------------------------------------
		bra.w	locret_3FBA
; ---------------------------------------------------------------------------
		bra.w	locret_3FBA
; ---------------------------------------------------------------------------
		bra.w	locret_3FBA
; ---------------------------------------------------------------------------
		bra.w	loc_404A
; ---------------------------------------------------------------------------
		bra.w	loc_40A8
; ---------------------------------------------------------------------------

locret_3FBA:		            ; CODE XREF: sub_3F96↑j
				        ; sub_3F96+C↑j ...
		rts
; End of function sub_3F96

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_3F58
;   ADDITIONAL PARENT FUNCTION sub_3F96

loc_3FBC:		               ; CODE XREF: sub_3F58+1C↑j
				        ; sub_3F96+4↑j
		bclr    #1,($A1200E).l
		btst	#3,d0
		beq.s	loc_3FDE
		bclr    #7,(byte_FFDF04).w
		beq.s	locret_4016
		addi.w  #$1388,d7
		bsr.w	sub_4218
		jmp	sub_BB2
; ---------------------------------------------------------------------------

loc_3FDE:		               ; CODE XREF: sub_3F58+70↑j
		bset    #7,(byte_FFDF04).w
		bne.s	locret_4016
		tst.b	(byte_FFDF03).w
		beq.s	locret_4016
		addi.w  #$1388,d7
		jsr	sub_BCC
		move.w	#$8F01,(a4)
		move.l	#$948393A0,(a4)
		move.w	#$9780,(a4)
		move.l	#$40600080,(a4)
		move.b	d1,(a3)

loc_400A:		               ; CODE XREF: sub_3F58+B8↓j
		move.w  (a4),d4
		btst	#1,d4
		bne.s	loc_400A
		move.w	#$8F02,(a4)

locret_4016:		            ; CODE XREF: sub_3F58+78↑j
				        ; sub_3F58+8C↑j ...
		rts
; ---------------------------------------------------------------------------

loc_4018:		               ; CODE XREF: sub_3F58+20↑j
				        ; sub_3F96+8↑j
		andi.w  #$F,d1
		add.w   d1,d1
		lea	(word_FFFB80).w,a1
		move.w  $60(a1,d1.w),$5E(a1)
		bset    #0,(byte_FFFE29).w
		rts
; END OF FUNCTION CHUNK FOR sub_3F58

; =============== S U B R O U T I N E =======================================


sub_4030:		               ; CODE XREF: ROM:00003EAA↑p
				        ; sub_3F58+30↑j
		lea	(word_FFFBE0).w,a2
		lea	($20E002).l,a1
		moveq	#7,d0

loc_403C:		               ; CODE XREF: sub_4030+E↓j
		move.l  (a1)+,(a2)+
		dbf	d0,loc_403C
		bset    #0,(byte_FFFE29).w
		rts
; End of function sub_4030

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_3F58
;   ADDITIONAL PARENT FUNCTION sub_3F96

loc_404A:		               ; CODE XREF: sub_3F58+34↑j
				        ; sub_3F96+1C↑j
		bsr.s   sub_408E
		move.w	#$8F80,($C00004).l
		move.w	#$8F80,(word_FFFDD2).w
		moveq	#$1A,d6
		move.l	d4,(a4)

loc_405E:		               ; CODE XREF: sub_3F58:loc_4076↓j
		move.w	d0,(a3)
		addq.w  #1,d0
		dbf	d3,loc_406A
		subi.w  #$1B,d0

loc_406A:		               ; CODE XREF: sub_3F58+10A↑j
		dbf	d2,loc_4076
		andi.l  #$707E0003,d4
		move.l	d4,(a4)

loc_4076:		               ; CODE XREF: sub_3F58:loc_406A↑j
		dbf	d6,loc_405E
		move.w	#$8F02,($C00004).l
		move.w	#$8F02,(word_FFFDD2).w
		addi.w  #$B4,d7
		rts
; END OF FUNCTION CHUNK FOR sub_3F58

; =============== S U B R O U T I N E =======================================


sub_408E:		               ; CODE XREF: sub_3F58:loc_404A↑p
				        ; sub_3F58+154↓p
		move.w	d1,d2
		move.w	d1,d3
		lsr.w   #8,d2
		andi.w  #$FF,d2
		andi.w  #$FF,d3
		move.l	#$60000003,d4
		clr.w   d1
		add.l   d1,d4
		rts
; End of function sub_408E

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_3F58
;   ADDITIONAL PARENT FUNCTION sub_3F96

loc_40A8:		               ; CODE XREF: sub_3F58+38↑j
				        ; sub_3F96+20↑j
		addi.w  #$1A7,d7
		bsr.s   sub_408E
		movem.l d0-d4,-(sp)
		bsr.s   sub_40CE
		movem.l (sp)+,d0-d4
		addi.l  #$800000,d4
		cmpi.l  #$70000003,d4
		bcs.s	loc_40CC
		subi.l  #$10000000,d4

loc_40CC:		               ; CODE XREF: sub_3F58+16C↑j
		addq.w  #1,d0
; END OF FUNCTION CHUNK FOR sub_3F58

; =============== S U B R O U T I N E =======================================


sub_40CE:		               ; CODE XREF: sub_3F58+15A↑p
		moveq	#$26,d6 ; '&'
		move.l	d4,(a4)

loc_40D2:		               ; CODE XREF: sub_40CE:loc_40EC↓j
		move.w	d0,(a3)
		addi.w  #$1B,d0
		dbf	d3,loc_40E0
		subi.w  #$41D,d0

loc_40E0:		               ; CODE XREF: sub_40CE+A↑j
		dbf	d2,loc_40EC
		andi.l  #$7F800003,d4
		move.l	d4,(a4)

loc_40EC:		               ; CODE XREF: sub_40CE:loc_40E0↑j
		dbf	d6,loc_40D2
		rts
; End of function sub_40CE

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR sub_3F58

loc_40F2:		               ; CODE XREF: sub_3F58+24↑j
		move.w	d0,d2
		andi.w  #$FFFE,d0
		lea	($220000).l,a1
		adda.l  d0,a1
		bsr.w	sub_41A0
		lsr.w   #1,d2
		bcc.s	locret_4122
		lea	$3D0(a1),a1
		addi.l  #$3600000,d1
		bpl.w	sub_41A0
		subi.l  #$40000000,d1
		addq.w  #1,d1
		bsr.w	sub_41A0

locret_4122:		            ; CODE XREF: sub_3F58+1AE↑j
		rts
; ---------------------------------------------------------------------------

loc_4124:		               ; CODE XREF: sub_3F58+28↑j
		move.w	d0,d6
		move.w	d1,d3
		ori.w   #$80,d3
		swap    d1
		move.w	d1,d2
		addq.w  #2,d0
		lea	($220000).l,a1
		andi.w  #$FFFE,d0
		adda.l  d0,a1
		lsr.w   #1,d0
		move.l	#$97110000,d1
		move.w	d0,d1
		lsr.w   #8,d1
		ori.w   #$9600,d1
		andi.w  #$FF,d0
		ori.w   #$9500,d0
		bsr.w	sub_41C0
		lsr.w   #1,d6
		bcc.s	locret_4174
		addq.w  #2,d1
		lea	$400(a1),a1
		addi.w  #$360,d2
		bpl.s	loc_4170
		subi.w  #$4000,d2
		addq.w  #1,d3

loc_4170:		               ; CODE XREF: sub_3F58+210↑j
		bsr.w	sub_41C0

locret_4174:		            ; CODE XREF: sub_3F58+204↑j
		rts
; ---------------------------------------------------------------------------

loc_4176:		               ; CODE XREF: sub_3F58+2C↑j
		andi.w  #$FFFE,d0
		lea	($220000).l,a1
		adda.l  d0,a1
		moveq	#$26,d3 ; '&'

loc_4184:		               ; CODE XREF: sub_3F58:loc_419A↓j
		bsr.s   sub_41A0
		lea	$3D0(a1),a1
		addi.l  #$3600000,d1
		bpl.s	loc_419A
		subi.l  #$40000000,d1
		addq.w  #1,d1

loc_419A:		               ; CODE XREF: sub_3F58+238↑j
		dbf	d3,loc_4184
		rts
; END OF FUNCTION CHUNK FOR sub_3F58

; =============== S U B R O U T I N E =======================================


sub_41A0:		               ; CODE XREF: sub_3F58+1A8↑p
				        ; sub_3F58+1BA↑j ...
		move.l	d1,(a4)
		move.l  (a1)+,(a3)
		move.l  (a1)+,(a3)
		move.l  (a1)+,(a3)
		move.l  (a1)+,(a3)
		move.l  (a1)+,(a3)
		move.l  (a1)+,(a3)
		move.l  (a1)+,(a3)
		move.l  (a1)+,(a3)
		move.l  (a1)+,(a3)
		move.l  (a1)+,(a3)
		move.l  (a1)+,(a3)
		move.l  (a1)+,(a3)
		addi.w  #$28,d7 ; '('
		rts
; End of function sub_41A0


; =============== S U B R O U T I N E =======================================


sub_41C0:		               ; CODE XREF: ROM:loc_3E88↑p
				        ; sub_3F58+1FE↑p ...
		move.l	#$940193B0,(a4)
		move.w	d0,(a4)
		move.l	d1,(a4)
		move.w	d2,(a4)
		move.w	d3,-(sp)
		move.w  (sp)+,(a4)
		move.w	d2,(a4)
		andi.w  #$FF7F,d3
		move.w	d3,(a4)
		ori.w   #$80,d3
		move.l  (a1),-4(a4)
		addi.w  #$FA,d7
		rts
; End of function sub_41C0


; =============== S U B R O U T I N E =======================================


sub_41E6:		               ; CODE XREF: sub_3DF2+1E↑p
		move.w	#$4001,d3
		move.l	#$42000003,d0
		bsr.s   sub_4210
		move.l	#$4F000003,d0
		bsr.s   sub_4210
		move.l	#$43000003,d0
		bsr.s   sub_4208
		move.l	#$434C0003,d0
; End of function sub_41E6


; =============== S U B R O U T I N E =======================================


sub_4208:		               ; CODE XREF: sub_41E6+1A↑p

; FUNCTION CHUNK AT 00000B8E SIZE 00000024 BYTES

		moveq	#1,d1
		moveq	#$17,d2
		bra.w	loc_B8E
; End of function sub_4208


; =============== S U B R O U T I N E =======================================


sub_4210:		               ; CODE XREF: sub_41E6+A↑p
				        ; sub_41E6+12↑p

; FUNCTION CHUNK AT 00000B8E SIZE 00000024 BYTES

		moveq	#$27,d1 ; '''
		moveq	#1,d2
		bra.w	loc_B8E
; End of function sub_4210


; =============== S U B R O U T I N E =======================================


sub_4218:		               ; CODE XREF: sub_3DF2+22↑p
				        ; sub_3F58+7E↑p
		movem.l d4-d6/a5,-(sp)
		move.l	#$60000003,d0
		moveq	#$26,d1 ; '&'
		moveq	#$1A,d2
		move.w	#$6003,d3
		jsr	sub_138E
		movem.l (sp)+,d4-d6/a5
		rts
; End of function sub_4218

; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR initial_pc_entry

loc_4234:		               ; CODE XREF: initial_pc_entry+1B2↑j
		lea	(sub_4284).l,a1
		jsr	sub_40E
		andi    #$F8FF,sr
		lea	(startram).l,a0
		move.w	#$3EBF,d0
		moveq	#0,d1

loc_424E:		               ; CODE XREF: initial_pc_entry+3E36↓j
		move.l	d1,(a0)+
		dbf	d0,loc_424E
		bsr.w	sub_FBC
		jsr	sub_10DA

loc_425C:		               ; CODE XREF: initial_pc_entry+3E46↓j
		jsr	sub_10F2
		bcs.s	loc_425C
		move.w	#$1FFF,d0
		lea	(startram).l,a1
		lea	($200000).l,a0

loc_4272:		               ; CODE XREF: initial_pc_entry+3E5A↓j
		move.l  (a0)+,(a1)+
		dbf	d0,loc_4272
		moveq	#$FFFFFFFF,d1
		bsr.w	sub_123E
		moveq	#$14,d0
		jmp	sub_630
; END OF FUNCTION CHUNK FOR initial_pc_entry

; =============== S U B R O U T I N E =======================================


sub_4284:		               ; DATA XREF: initial_pc_entry:loc_4234↑o
		bsr.s   sub_4288
		rte
; End of function sub_4284


; =============== S U B R O U T I N E =======================================


sub_4288:		               ; CODE XREF: ROM:00000360↑j
				        ; sub_4284↑p ...
		move.l	a5,-(sp)
		lea	($A12001).l,a5
		bset    #0,-1(a5)
		movea.l (sp)+,a5
		rts
; End of function sub_4288

; ---------------------------------------------------------------------------

loc_429A:		               ; CODE XREF: ROM:00000364↑j
		move.l  (FD08_address).w,-(sp)
		move.w  (FD06_jmp).w,-(sp)
		move.l	a1,-(sp)
		st      (byte_FFFE28).w
		move.l	#locret_4360,(FDAA_address).w
		move.w	#$4EF9,(FDA8_jmp).w
		move.l	#loc_4418,(FD08_address).w
		move.w	#$4EF9,(FD06_jmp).w
		andi    #$F8FF,sr
		jsr	sounddriverload
		jsr	sub_86C
		jsr	sub_8B8
		jsr	sub_1332
		movea.l (sp)+,a1
		jsr	palload
		move.l	#$60000000,d0
		move.l	#$22022,d1
		moveq	#$1B,d2
		jsr	sub_1350
		move.l	#$42060003,d0
		jsr	sub_130A
		move.l	#$479E0003,d0
		moveq	#8,d1
		moveq	#2,d2
		move.w	#$100,d3
		jsr	sub_B3C
		clr.b   (byte_FFFE28).w
		jsr	sub_BB2
		move.w	#$3B,d7 ; ';'

loc_4318:		               ; CODE XREF: ROM:0000431C↓j
		jsr	sub_80C
		dbf	d7,loc_4318
		move.w	#$81,d7
		jsr	loc_ED2
		moveq	#0,d7
		lea	unk_4362(pc),a6
		lea	word_437C(pc),a5
		moveq	#0,d6

loc_4334:		               ; CODE XREF: ROM:00004356↓j
		cmp.w   d6,d7
		bcs.s	loc_434C
		moveq	#0,d0
		move.b  (a6)+,d0
		add.w   d0,d6
		lea	(word_FFFB80).w,a4
		move.l  (a5)+,(a4)+
		move.w  (a5)+,(a4)+
		bset    #0,(byte_FFFE29).w

loc_434C:		               ; CODE XREF: ROM:00004336↑j
		jsr	sub_80C
		addq.w  #1,d7
		cmpi.w  #$B4,d7
		bcs.s	loc_4334
		move.w  (sp)+,(FD06_jmp).w
		move.l  (sp)+,(FD08_address).w

locret_4360:		            ; DATA XREF: ROM:000042A8↑o
		rts
; ---------------------------------------------------------------------------
unk_4362:       dc.b   2		; DATA XREF: ROM:0000432A↑o
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   5
		dc.b   3
		dc.b   3
		dc.b   4
		dc.b   4
		dc.b   4
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b $23 ; #
		dc.b $B5
word_437C:      dc.w $CCC               ; DATA XREF: ROM:0000432E↑o
		dc.w 0
		dc.w $E00
		dc.w $AAA
		dc.w 0
		dc.w $E00
		dc.w $888
		dc.w 0
		dc.w $E00
		dc.w $666
		dc.w 0
		dc.w $E00
		dc.w $444
		dc.w 0
		dc.w $E00
		dc.w $222
		dc.w $EEE
		dc.w $E00
		dc.w 0
		dc.w $EEE
		dc.w $E00
		dc.w 0
		dc.w $EEE
		dc.w $EEA
		dc.w 0
		dc.w $EEE
		dc.w $EE8
		dc.w 0
		dc.w $EEE
		dc.w $EE6
		dc.w 0
		dc.w $EEE
		dc.w $EC0
		dc.w 0
		dc.w $EEE
		dc.w $EA0
		dc.w 0
		dc.w $EEE
		dc.w $E80
		dc.w 0
		dc.w $EEE
		dc.w $E60
		dc.w 0
		dc.w $EEE
		dc.w $E40
		dc.w 0
		dc.w $EEE
		dc.w $E00
		dc.w 0
		dc.w $EEE
		dc.w $E20
		dc.w 0
		dc.w $EEE
		dc.w $E40
		dc.w 0
		dc.w $EEE
		dc.w $E60
		dc.w 0
		dc.w $EEE
		dc.w $E80
		dc.w 0
		dc.w $EEE
		dc.w $EA0
		dc.w 0
		dc.w $EEE
		dc.w $EC0
		dc.w 0
		dc.w $EEE
		dc.w $EE6
		dc.w 0
		dc.w $EEE
		dc.w $EE8
		dc.w 0
		dc.w $EEE
		dc.w $EEA
		dc.w 0
		dc.w $EEE
		dc.w $E60
; ---------------------------------------------------------------------------

loc_4418:		               ; DATA XREF: ROM:000042B6↑o
		movem.l d0-d7/a0-a6,-(sp)
		jsr	sub_4288
		tst.b	(byte_FFFE28).w
		bne.s	loc_442A
		bsr.w	sub_BFA

loc_442A:		               ; CODE XREF: ROM:00004424↑j
		clr.b   (byte_FFFE26).w
		movem.l (sp)+,d0-d7/a0-a6
		rte
; ---------------------------------------------------------------------------
; START OF FUNCTION CHUNK FOR initial_pc_entry

loc_4434:		               ; CODE XREF: initial_pc_entry+1B6↑j
		bsr.w	sub_573C
		bsr.s   sub_443E
		jmp	loc_5E8
; END OF FUNCTION CHUNK FOR initial_pc_entry

; =============== S U B R O U T I N E =======================================


sub_443E:		               ; CODE XREF: initial_pc_entry+401E↑p
				        ; sub_443E+12↓j
		moveq	#$3C,d0 ; '<'
		and.w   (word_FFFE70).l,d0
		jsr	loc_4454(pc,d0.w)
		tst.w	(word_FFFE70).l
		bpl.s	sub_443E
		rts
; End of function sub_443E

; ---------------------------------------------------------------------------

loc_4454:
		bra.w	loc_44AE
; ---------------------------------------------------------------------------
		bra.w	loc_44F4
; ---------------------------------------------------------------------------
		bra.w	loc_4540
; ---------------------------------------------------------------------------
		bra.w	loc_45A6
; ---------------------------------------------------------------------------
		bra.w	loc_57E8
; ---------------------------------------------------------------------------

loc_4468:		               ; CODE XREF: ROM:00004474↓j
		jsr	sub_308
		nop
		nop
		nop
		nop
		bra.s	loc_4468

; =============== S U B R O U T I N E =======================================


sub_4476:		               ; CODE XREF: sub_4476+8↓j
				        ; sub_4482+2A↓j ...
		btst	#0,($A12003).l
		beq.s	sub_4476
		rts
; End of function sub_4476


; =============== S U B R O U T I N E =======================================


sub_4482:		               ; CODE XREF: ROM:000044B2↓p
				        ; sub_4502+4↓p ...
		lea	(dword_FFFDE0).w,a0
		lea	$10(a0),a1

loc_448A:		               ; CODE XREF: sub_4482+12↓j
		tst.l	8(a1)
		beq.s	loc_4496
		jsr	sub_308
		bra.s	loc_448A
; ---------------------------------------------------------------------------

loc_4496:		               ; CODE XREF: sub_4482+C↑j
		move.w	d0,8(a0)

loc_449A:		               ; CODE XREF: sub_4482+20↓j
		bset    #1,($A12003).l
		beq.s	loc_449A
		jsr	sub_308
		clr.l   8(a0)
		bra.s	sub_4476
; End of function sub_4482

; ---------------------------------------------------------------------------

loc_44AE:		               ; CODE XREF: ROM:loc_4454↑j
		move.w	#1,d0
		bsr.s   sub_4482
		lea	($210000).l,a2
		lea	$4010(a2),a0
		lea	$4000(a2),a1
		move.w	#0,d0
		jsr	unk_FFFDAE
		bcs.s	loc_44CE
		moveq	#3,d1

loc_44CE:		               ; CODE XREF: ROM:000044CA↑j
		add.w   d1,d1
		move.w  word_44EC(pc,d1.w),0(a2)
		moveq	#$FFFFFF93,d7
		jsr	loc_ED2
		move.w	#4,(word_FFFE70).l
		move.b  #0,$C(a1)
		rts
; ---------------------------------------------------------------------------
word_44EC:      dc.w 0
		dc.w $8000
		dc.w $8001
		dc.w $8081
; ---------------------------------------------------------------------------

loc_44F4:		               ; CODE XREF: ROM:00004458↑j
		bsr.s   sub_4502
		bsr.s   sub_450C
		move.w	#8,(word_FFFE70).l
		rts

; =============== S U B R O U T I N E =======================================


sub_4502:		               ; CODE XREF: ROM:loc_44F4↑p
		move.w	#2,d0
		bsr.w	sub_4482
		rts
; End of function sub_4502


; =============== S U B R O U T I N E =======================================


sub_450C:		               ; CODE XREF: ROM:000044F6↑p
		lea	($210000).l,a2
		cmpi.w  #$8081,0(a2)
		bne.s	loc_4532
		lea	$4000(a2),a1
		move.w	#1,d0
		jsr	unk_FFFDAE
		cmpi.w  #$FFFF,d0
		bne.s	loc_4536
		cmpi.w  #$FFFF,d1
		bne.s	loc_4536

loc_4532:		               ; CODE XREF: sub_450C+C↑j
		moveq	#0,d0
		moveq	#0,d1

loc_4536:		               ; CODE XREF: sub_450C+1E↑j
				        ; sub_450C+24↑j
		move.w	d0,2(a2)
		move.w	d1,4(a2)
		rts
; End of function sub_450C

; ---------------------------------------------------------------------------

loc_4540:		               ; CODE XREF: ROM:0000445C↑j
		lea	($200000).l,a0
		lea	($210000).l,a1
		lea	(byte_FFFE76).l,a2
		move.b  #0,(a2)
		bset    #0,(a2)
		tst.w	0(a1)
		bpl.s	loc_4564
		bset    #1,(a2)

loc_4564:		               ; CODE XREF: ROM:0000455E↑j
		tst.w	4(a0)
		beq.s	loc_456E
		bset    #2,(a2)

loc_456E:		               ; CODE XREF: ROM:00004568↑j
		tst.w	4(a1)
		beq.s	loc_4578
		bset    #3,(a2)

loc_4578:		               ; CODE XREF: ROM:00004572↑j
		tst.w	4(a0)
		beq.s	loc_4588
		tst.w	2(a1)
		beq.s	loc_4588
		bset    #4,(a2)

loc_4588:		               ; CODE XREF: ROM:0000457C↑j
				        ; ROM:00004582↑j
		tst.w	4(a1)
		beq.s	loc_4598
		tst.w	2(a0)
		beq.s	loc_4598
		bset    #5,(a2)

loc_4598:		               ; CODE XREF: ROM:0000458C↑j
				        ; ROM:00004592↑j
		bset    #6,(a2)
		move.w	#$C,(word_FFFE70).l
		rts
; ---------------------------------------------------------------------------

loc_45A6:		               ; CODE XREF: ROM:00004460↑j
		moveq	#$7C,d0 ; '|'
		and.w   (word_FFFE72).l,d0
		jsr	loc_45B8(pc,d0.w)
		jsr	sub_308
		rts
; ---------------------------------------------------------------------------

loc_45B8:
		bra.w	loc_45F0
; ---------------------------------------------------------------------------
		bra.w	loc_4778
; ---------------------------------------------------------------------------
		bra.w	loc_49AE
; ---------------------------------------------------------------------------
		bra.w	loc_4C06
; ---------------------------------------------------------------------------
		bra.w	loc_4D32
; ---------------------------------------------------------------------------
		bra.w	loc_5154
; ---------------------------------------------------------------------------
		bra.w	loc_5280
; ---------------------------------------------------------------------------
		bra.w	loc_5604
; ---------------------------------------------------------------------------
		bra.w	*+4
; ---------------------------------------------------------------------------

loc_45DC:		               ; CODE XREF: ROM:000045D8↑j
				        ; ROM:000045E4↓j
		bset    #1,($A12003).l
		beq.s	loc_45DC
		move.w	#$10,(word_FFFE70).l
		rts
; ---------------------------------------------------------------------------

loc_45F0:		               ; CODE XREF: ROM:loc_45B8↑j
		bset    #7,(word_FFFE72).l
		bne.s	loc_4606
		bsr.w	sub_461A
		bsr.w	sub_4660
		bsr.w	sub_46E0

loc_4606:		               ; CODE XREF: ROM:000045F8↑j
		move.b  (word_FFFE20+1).w,d0
		andi.w  #$F0,d0
		beq.s	locret_4618
		move.w	#4,(word_FFFE72).l

locret_4618:		            ; CODE XREF: ROM:0000460E↑j
		rts

; =============== S U B R O U T I N E =======================================


sub_461A:		               ; CODE XREF: ROM:000045FA↑p
		bsr.w	sub_494C
		movem.w word_4648(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_464E(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_4654(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_465A(pc),d0-d2
		bsr.w	sub_48D0
		rts
; End of function sub_461A

; ---------------------------------------------------------------------------
word_4648:      dc.w $8100              ; DATA XREF: sub_461A+4↑w
		dc.w $284
		dc.w 0
word_464E:      dc.w $8100              ; DATA XREF: sub_461A+E↑w
		dc.w $704
		dc.w 4
word_4654:      dc.w $8100              ; DATA XREF: sub_461A+18↑w
		dc.w $B92
		dc.w $11
word_465A:      dc.w $8100              ; DATA XREF: sub_461A+22↑w
		dc.w $90
		dc.w $1F

; =============== S U B R O U T I N E =======================================


sub_4660:		               ; CODE XREF: ROM:000045FE↑p
		lea	($200000).l,a4
		btst	#0,1(a4)
		beq.s	loc_46BC
		movem.w word_46C8(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_46CE(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_46D4(pc),d0-d2
		bsr.w	sub_48D0
		lea	$4000(a4),a0
		move.w	#$426,d0
		moveq	#0,d1
		bsr.w	sub_4914
		lea	($220596).l,a0
		move.w  4(a4),d0
		moveq	#$30,d1 ; '0'
		bsr.w	sub_4968
		lea	($2205BE).l,a0
		move.w  2(a4),d0
		moveq	#$30,d1 ; '0'
		bsr.w	sub_4968
		rts
; ---------------------------------------------------------------------------

loc_46BC:		               ; CODE XREF: sub_4660+C↑j
		movem.w word_46DA(pc),d0-d2
		bsr.w	sub_48D0
		rts
; End of function sub_4660

; ---------------------------------------------------------------------------
word_46C8:      dc.w $8100              ; DATA XREF: sub_4660+E↑w
		dc.w $3C0
		dc.w 1
word_46CE:      dc.w $8100              ; DATA XREF: sub_4660+18↑w
		dc.w $504
		dc.w 2
word_46D4:      dc.w $8100              ; DATA XREF: sub_4660+22↑w
		dc.w $524
		dc.w 3
word_46DA:      dc.w $8100              ; DATA XREF: sub_4660:loc_46BC↑w
		dc.w $496
		dc.w $1D

; =============== S U B R O U T I N E =======================================


sub_46E0:		               ; CODE XREF: ROM:00004602↑p
		lea	($210000).l,a4
		tst.w	0(a4)
		bmi.s	loc_46F8
		movem.w word_4772(pc),d0-d2
		bsr.w	sub_48D0
		rts
; ---------------------------------------------------------------------------

loc_46F8:		               ; CODE XREF: sub_46E0+A↑j
		btst	#0,1(a4)
		beq.s	loc_474E
		movem.w word_475A(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_4760(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_4766(pc),d0-d2
		bsr.w	sub_48D0
		lea	$4000(a4),a0
		move.w	#$8A6,d0
		moveq	#0,d1
		bsr.w	sub_4914
		lea	($220A16).l,a0
		move.w  4(a4),d0
		moveq	#$30,d1 ; '0'
		bsr.w	sub_4968
		lea	($220A3E).l,a0
		move.w  2(a4),d0
		moveq	#$30,d1 ; '0'
		bsr.w	sub_4968
		rts
; ---------------------------------------------------------------------------

loc_474E:		               ; CODE XREF: sub_46E0+1E↑j
		movem.w word_476C(pc),d0-d2
		bsr.w	sub_48D0
		rts
; End of function sub_46E0

; ---------------------------------------------------------------------------
word_475A:      dc.w $8100              ; DATA XREF: sub_46E0+20↑w
		dc.w $840
		dc.w 1
word_4760:      dc.w $8100              ; DATA XREF: sub_46E0+2A↑w
		dc.w $984
		dc.w 2
word_4766:      dc.w $8100              ; DATA XREF: sub_46E0+34↑w
		dc.w $9A4
		dc.w 3
word_476C:      dc.w $8100              ; DATA XREF: sub_46E0:loc_474E↑w
		dc.w $996
		dc.w $1D
word_4772:      dc.w $8100              ; DATA XREF: sub_46E0+C↑w
		dc.w $896
		dc.w $1E
; ---------------------------------------------------------------------------

loc_4778:		               ; CODE XREF: ROM:000045BC↑j
		bset    #7,(word_FFFE72).l
		bne.s	loc_4786
		bsr.w	sub_47AC

loc_4786:		               ; CODE XREF: ROM:00004780↑j
		bsr.w	sub_4866
		move.b  (word_FFFE20+1).w,d0
		andi.w  #$F0,d0
		beq.s	locret_47AA
		move.w  (dword_FFFE7A).l,d0
		lsl.w   #2,d0
		addq.w  #8,d0
		move.w	d0,(word_FFFE72).l
		moveq	#$FFFFFF91,d7
		jsr	loc_ED2

locret_47AA:		            ; CODE XREF: ROM:00004792↑j
		rts

; =============== S U B R O U T I N E =======================================


sub_47AC:		               ; CODE XREF: ROM:00004782↑p
		bsr.w	sub_494C
		lea	(byte_FFFE76).l,a4
		movem.w word_483C(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_4842(pc),d0-d2
		btst	#1,(a4)
		bne.s	loc_47D0
		addi.w  #$2000,d0

loc_47D0:		               ; CODE XREF: sub_47AC+1E↑j
		bsr.w	sub_48D0
		movem.w word_4848(pc),d0-d2
		btst	#2,(a4)
		bne.s	loc_47E4
		addi.w  #$2000,d0

loc_47E4:		               ; CODE XREF: sub_47AC+32↑j
		bsr.w	sub_48D0
		movem.w word_484E(pc),d0-d2
		btst	#3,(a4)
		bne.s	loc_47F8
		addi.w  #$2000,d0

loc_47F8:		               ; CODE XREF: sub_47AC+46↑j
		bsr.w	sub_48D0
		movem.w word_4854(pc),d0-d2
		btst	#4,(a4)
		bne.s	loc_480C
		addi.w  #$2000,d0

loc_480C:		               ; CODE XREF: sub_47AC+5A↑j
		bsr.w	sub_48D0
		movem.w word_485A(pc),d0-d2
		btst	#5,(a4)
		bne.s	loc_4820
		addi.w  #$2000,d0

loc_4820:		               ; CODE XREF: sub_47AC+6E↑j
		bsr.w	sub_48D0
		movem.w word_4860(pc),d0-d2
		bsr.w	sub_48D0
		clr.w   (dword_FFFE7A).l
		clr.w   (word_FFFE78).l
		rts
; End of function sub_47AC

; ---------------------------------------------------------------------------
word_483C:      dc.w $8100              ; DATA XREF: sub_47AC+A↑w
		dc.w $216
		dc.w 5
word_4842:      dc.w $8100              ; DATA XREF: sub_47AC+14↑w
		dc.w $396
		dc.w 6
word_4848:      dc.w $8100              ; DATA XREF: sub_47AC+28↑w
		dc.w $516
		dc.w 7
word_484E:      dc.w $8100              ; DATA XREF: sub_47AC+3C↑w
		dc.w $696
		dc.w 8
word_4854:      dc.w $8100              ; DATA XREF: sub_47AC+50↑w
		dc.w $816
		dc.w 9
word_485A:      dc.w $8100              ; DATA XREF: sub_47AC+64↑w
		dc.w $996
		dc.w $A
word_4860:      dc.w $8100              ; DATA XREF: sub_47AC+78↑w
		dc.w $B16
		dc.w $B

; =============== S U B R O U T I N E =======================================


sub_4866:		               ; CODE XREF: ROM:loc_4786↑p
		moveq	#0,d1
		move.w  (dword_FFFE7A).l,d1
		moveq	#3,d0
		and.b   (word_FFFE78).l,d0
		beq.s	loc_48A0
		moveq	#$FFFFFF90,d7
		jsr	loc_ED2
		lsr.b   #1,d0
		bne.s	loc_4884
		not.b   d0

loc_4884:		               ; CODE XREF: sub_4866+1A↑j
		ext.w   d0

loc_4886:		               ; CODE XREF: sub_4866+32↓j
		add.w   d0,d1
		addq.w  #7,d1
		divu.w  #7,d1
		clr.w   d1
		swap    d1
		btst	d1,(byte_FFFE76).l
		beq.s	loc_4886
		move.w	d1,(dword_FFFE7A).l

loc_48A0:		               ; CODE XREF: sub_4866+10↑j
		mulu.w  #$18,d1
		addi.w  #$A0,d1
		swap    d1
		move.w	#$D01,d1
		move.l	#$1000D4,d2
		moveq	#4,d0
		moveq	#$20,d3 ; ' '

loc_48B8:		               ; CODE XREF: ROM:00004B5A↓p
				        ; sub_4F56+CC↓j ...
		lea	($220E00).l,a0

loc_48BE:		               ; CODE XREF: sub_4866+62↓j
		movem.l d1-d2,(a0)
		addq.w  #8,a0
		addq.w  #1,d1
		add.w   d3,d2
		dbf	d0,loc_48BE
		clr.l   (a0)
		rts
; End of function sub_4866


; =============== S U B R O U T I N E =======================================


sub_48D0:		               ; CODE XREF: sub_461A+A↑p
				        ; sub_461A+14↑p ...
		lea	($220000).l,a1
		lea	(unk_10588).l,a2
		lea	(unk_1077E).l,a3
		adda.w  d1,a1
		add.w   d2,d2
		adda.w  (a2,d2.w),a2

loc_48EA:		               ; CODE XREF: sub_48D0+26↓j
		move.w  (a2)+,d2
		bmi.s	locret_48F8
		lsl.w   #2,d2
		lea	(a3,d2.w),a0
		bsr.s   sub_48FA
		bra.s	loc_48EA
; ---------------------------------------------------------------------------

locret_48F8:		            ; CODE XREF: sub_48D0+1C↑j
		rts
; End of function sub_48D0


; =============== S U B R O U T I N E =======================================


sub_48FA:		               ; CODE XREF: sub_48D0+24↑p
		movem.w (a0),d1-d2
		subq.w  #1,d1
		add.w   d0,d2

loc_4902:		               ; CODE XREF: sub_48FA+14↓j
		move.w	d2,(a1)
		addq.w  #1,d2
		move.w	d2,$80(a1)
		addq.w  #1,d2
		addq.w  #2,a1
		dbf	d1,loc_4902
		rts
; End of function sub_48FA


; =============== S U B R O U T I N E =======================================


sub_4914:		               ; CODE XREF: sub_4660+36↑p
				        ; sub_46E0+48↑p ...
		lea	($220000).l,a1
		adda.w  d0,a1

loc_491C:		               ; CODE XREF: sub_4914+12↓j
		moveq	#0,d0
		move.b  (a0)+,d0
		beq.s	locret_4928
		add.w   d1,d0
		move.w	d0,(a1)+
		bra.s	loc_491C
; ---------------------------------------------------------------------------

locret_4928:		            ; CODE XREF: sub_4914+C↑j
		rts
; End of function sub_4914


; =============== S U B R O U T I N E =======================================


sub_492A:		               ; CODE XREF: sub_573C+84↓p
		move.l	#$42000000,($C00004).l
		lea	($C00000).l,a0
		moveq	#$FFFFFFFF,d0
		moveq	#7,d1

loc_493E:		               ; CODE XREF: sub_492A+1C↓j
		moveq	#7,d3

loc_4940:		               ; CODE XREF: sub_492A+18↓j
		move.l	d0,(a0)
		dbf	d3,loc_4940
		dbf	d1,loc_493E
		rts
; End of function sub_492A


; =============== S U B R O U T I N E =======================================


sub_494C:		               ; CODE XREF: sub_461A↑p
				        ; sub_47AC↑p ...
		lea	($220E00).l,a0
		move.w	#$DF,d4

loc_4956:		               ; CODE XREF: ROM:00004AD8↓p
				        ; ROM:00005040↓p ...
		moveq	#0,d0
		moveq	#0,d1
		moveq	#0,d2
		moveq	#0,d3

loc_495E:		               ; CODE XREF: sub_494C+16↓j
		movem.l d0-d3,-(a0)
		dbf	d4,loc_495E
		rts
; End of function sub_494C


; =============== S U B R O U T I N E =======================================


sub_4968:		               ; CODE XREF: sub_4660+46↑p
				        ; sub_4660+56↑p ...
		pea     (a0)
		andi.l  #$FFFF,d0
		divu.w  #$2710,d0
		bsr.s   sub_49A2
		divu.w  #$3E8,d0
		bsr.s   sub_49A2
		divu.w  #$64,d0 ; 'd'
		bsr.s   sub_49A2
		divu.w  #$A,d0
		bsr.s   sub_49A2
		move.w	d0,(a0)
		movea.l (sp)+,a0
		moveq	#4,d0

loc_498E:		               ; CODE XREF: sub_4968+28↓j
		tst.w	(a0)+
		dbne    d0,loc_498E
		bne.s	loc_4998
		addq.w  #1,d0

loc_4998:		               ; CODE XREF: sub_4968+2C↑j
		subq.w  #2,a0

loc_499A:		               ; CODE XREF: sub_4968+34↓j
		add.w   d1,(a0)+
		dbf	d0,loc_499A
		rts
; End of function sub_4968


; =============== S U B R O U T I N E =======================================


sub_49A2:		               ; CODE XREF: sub_4968+C↑p
				        ; sub_4968+12↑p ...
		move.w	d0,(a0)+
		swap    d0
		andi.l  #$FFFF,d0
		rts
; End of function sub_49A2

; ---------------------------------------------------------------------------

loc_49AE:		               ; CODE XREF: ROM:000045C0↑j
		bset    #7,(word_FFFE72).l
		bne.s	loc_49BE
		clr.w   (word_FFFE74).l

loc_49BE:		               ; CODE XREF: ROM:000049B6↑j
		lea	($200000).l,a4
		moveq	#$7C,d0 ; '|'
		and.w   (word_FFFE74).l,d0
		jsr	loc_49D2(pc,d0.w)
		rts
; ---------------------------------------------------------------------------

loc_49D2:
		bra.w	loc_49F8
; ---------------------------------------------------------------------------
		bra.w	loc_4B34
; ---------------------------------------------------------------------------
		bra.w	loc_49E6
; ---------------------------------------------------------------------------
		bra.w	loc_4ABE
; ---------------------------------------------------------------------------
		bra.w	loc_4BC4
; ---------------------------------------------------------------------------

loc_49E6:		               ; CODE XREF: ROM:000049DA↑j
		move.w	#3,d0
		bsr.w	sub_4482
		move.w	#$C,(word_FFFE74).l
		rts
; ---------------------------------------------------------------------------

loc_49F8:		               ; CODE XREF: ROM:loc_49D2↑j
		clr.l   ($220E00).l
		bsr.w	sub_494C
		movem.w word_4A94(pc),d0-d2
		bsr.w	sub_48D0
		tst.b	1(a4)
		beq.s	loc_4A6E
		bgt.s   loc_4A48
		movem.w word_4AA6(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_4AAC(pc),d0-d2
		bsr.w	sub_48D0
		lea	($220618).l,a0
		move.w  4(a4),d0
		moveq	#$30,d1 ; '0'
		bsr.w	sub_4968
		lea	($220640).l,a0
		move.w  2(a4),d0
		moveq	#$30,d1 ; '0'
		bsr.w	sub_4968

loc_4A48:		               ; CODE XREF: ROM:00004A12↑j
		movem.w word_4A9A(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_4AA0(pc),d0-d2
		bsr.w	sub_48D0
		lea	$4000(a4),a0
		move.w	#$4A4,d0
		moveq	#0,d1
		bsr.w	sub_4914
		bsr.w	sub_4BE4

loc_4A6E:		               ; CODE XREF: ROM:00004A10↑j
		movem.w word_4AB2(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_4AB8(pc),d0-d2
		bsr.w	sub_48D0
		move.w	#4,(word_FFFE74).l
		move.w	#1,(dword_FFFE7A).l
		rts
; ---------------------------------------------------------------------------
word_4A94:      dc.w $8100              ; DATA XREF: ROM:00004A02↑w
		dc.w $11C
		dc.w 5
word_4A9A:      dc.w $8100              ; DATA XREF: ROM:loc_4A48↑w
		dc.w $306
		dc.w $12
word_4AA0:      dc.w $8100              ; DATA XREF: ROM:00004A52↑w
		dc.w $43C
		dc.w 1
word_4AA6:      dc.w $8100              ; DATA XREF: ROM:00004A14↑w
		dc.w $586
		dc.w 2
word_4AAC:      dc.w $8100              ; DATA XREF: ROM:00004A1E↑w
		dc.w $5A6
		dc.w 3
word_4AB2:      dc.w $8100              ; DATA XREF: ROM:loc_4A6E↑w
		dc.w $998
		dc.w $E
word_4AB8:      dc.w $8100              ; DATA XREF: ROM:00004A78↑w
		dc.w $B16
		dc.w $F
; ---------------------------------------------------------------------------

loc_4ABE:		               ; CODE XREF: ROM:000049DE↑j
				        ; ROM:00004C36↓j
		bset    #7,(word_FFFE74).l
		bne.s	loc_4B0A
		clr.l   ($220E00).l
		lea	($220E00).l,a0
		move.w	#$BF,d4
		bsr.w	loc_4956
		btst	#0,1(a4)
		beq.s	loc_4AF0
		movem.w word_4B22(pc),d0-d2
		bsr.w	sub_48D0
		bra.s	loc_4B00
; ---------------------------------------------------------------------------

loc_4AF0:		               ; CODE XREF: ROM:00004AE2↑j
		movem.w word_4B2E(pc),d0-d2
		bsr.w	sub_48D0
		moveq	#$FFFFFF92,d7
		jsr	loc_ED2

loc_4B00:		               ; CODE XREF: ROM:00004AEE↑j
		movem.w word_4B28(pc),d0-d2
		bsr.w	sub_48D0

loc_4B0A:		               ; CODE XREF: ROM:00004AC6↑j
		moveq	#$FFFFFFF0,d0
		and.b   (word_FFFE20+1).w,d0
		beq.s	locret_4B20
		moveq	#$FFFFFF91,d7
		jsr	loc_ED2
		move.w	#$10,(word_FFFE74).l

locret_4B20:		            ; CODE XREF: ROM:00004B10↑j
		rts
; ---------------------------------------------------------------------------
word_4B22:      dc.w $8100              ; DATA XREF: ROM:00004AE4↑w
		dc.w $512
		dc.w $10
word_4B28:      dc.w $8100              ; DATA XREF: ROM:loc_4B00↑w
		dc.w $712
		dc.w $11
word_4B2E:      dc.w $8100              ; DATA XREF: ROM:loc_4AF0↑w
		dc.w $512
		dc.w $21
; ---------------------------------------------------------------------------

loc_4B34:		               ; CODE XREF: ROM:000049D6↑j
				        ; ROM:00004C2E↓j
		bsr.w	sub_4B90
		moveq	#0,d2
		move.w  (dword_FFFE7A).l,d2
		mulu.w  #$60,d2 ; '`'
		addi.w  #$D8,d2
		swap    d2
		move.w	#$10,d2
		swap    d2
		move.l	#$1300901,d1
		moveq	#1,d0
		moveq	#$18,d3
		bsr.w	loc_48B8
		move.b  (word_FFFE20+1).w,d0
		andi.w  #$F0,d0
		beq.s	locret_4B7E
		tst.w	(dword_FFFE7A).l
		bne.s	loc_4B80
		moveq	#$FFFFFF91,d7
		jsr	loc_ED2
		move.w	#8,(word_FFFE74).l

locret_4B7E:		            ; CODE XREF: ROM:00004B66↑j
		rts
; ---------------------------------------------------------------------------

loc_4B80:		               ; CODE XREF: ROM:00004B6E↑j
		moveq	#$FFFFFF90,d7
		jsr	loc_ED2
		move.w	#$10,(word_FFFE74).l
		rts

; =============== S U B R O U T I N E =======================================


sub_4B90:		               ; CODE XREF: ROM:loc_4B34↑p
				        ; sub_5128↓p
		moveq	#$C,d0
		and.b   (word_FFFE20+1).w,d0
		beq.s	locret_4BC2
		move.w  (dword_FFFE7A).l,d1
		beq.s	loc_4BAE
		btst	#2,d0
		beq.s	locret_4BC2
		clr.w   (dword_FFFE7A).l
		bra.s	loc_4BBC
; ---------------------------------------------------------------------------

loc_4BAE:		               ; CODE XREF: sub_4B90+E↑j
		btst	#3,d0
		beq.s	locret_4BC2
		move.w	#1,(dword_FFFE7A).l

loc_4BBC:		               ; CODE XREF: sub_4B90+1C↑j
		moveq	#$FFFFFF90,d7
		jsr	loc_ED2

locret_4BC2:		            ; CODE XREF: sub_4B90+6↑j
				        ; sub_4B90+14↑j ...
		rts
; End of function sub_4B90

; ---------------------------------------------------------------------------

loc_4BC4:		               ; CODE XREF: ROM:000049E2↑j
				        ; ROM:00004C3A↓j ...
		move.w	#4,(word_FFFE70).l
		move.w	#4,(word_FFFE72).l
		move.w	#0,(word_FFFE74).l
		clr.w   (dword_FFFE7A).l
		rts

; =============== S U B R O U T I N E =======================================


sub_4BE4:		               ; CODE XREF: ROM:00004A6A↑p
				        ; ROM:00004CB0↓p
		movem.w word_4BFA(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_4C00(pc),d0-d2
		bsr.w	sub_48D0
		rts
; End of function sub_4BE4

; ---------------------------------------------------------------------------
word_4BFA:      dc.w $8100              ; DATA XREF: sub_4BE4↑w
		dc.w $706
		dc.w $C
word_4C00:      dc.w $8100              ; DATA XREF: sub_4BE4+A↑w
		dc.w $806
		dc.w $D
; ---------------------------------------------------------------------------

loc_4C06:		               ; CODE XREF: ROM:000045C4↑j
		bset    #7,(word_FFFE72).l
		bne.s	loc_4C16
		clr.w   (word_FFFE74).l

loc_4C16:		               ; CODE XREF: ROM:00004C0E↑j
		lea	($210000).l,a4
		moveq	#$7C,d0 ; '|'
		and.w   (word_FFFE74).l,d0
		jsr	loc_4C2A(pc,d0.w)
		rts
; ---------------------------------------------------------------------------

loc_4C2A:
		bra.w	loc_4C3E
; ---------------------------------------------------------------------------
		bra.w	loc_4B34
; ---------------------------------------------------------------------------
		bra.w	loc_4D04
; ---------------------------------------------------------------------------
		bra.w	loc_4ABE
; ---------------------------------------------------------------------------
		bra.w	loc_4BC4
; ---------------------------------------------------------------------------

loc_4C3E:		               ; CODE XREF: ROM:loc_4C2A↑j
		clr.l   ($220E00).l
		bsr.w	sub_494C
		movem.w word_4CDA(pc),d0-d2
		bsr.w	sub_48D0
		tst.b	1(a4)
		beq.s	loc_4CB4
		bgt.s   loc_4C8E
		movem.w word_4CEC(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_4CF2(pc),d0-d2
		bsr.w	sub_48D0
		lea	($220618).l,a0
		move.w  4(a4),d0
		moveq	#$30,d1 ; '0'
		bsr.w	sub_4968
		lea	($220640).l,a0
		move.w  2(a4),d0
		moveq	#$30,d1 ; '0'
		bsr.w	sub_4968

loc_4C8E:		               ; CODE XREF: ROM:00004C58↑j
		movem.w word_4CE0(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_4CE6(pc),d0-d2
		bsr.w	sub_48D0
		lea	$4000(a4),a0
		move.w	#$4A4,d0
		moveq	#0,d1
		bsr.w	sub_4914
		bsr.w	sub_4BE4

loc_4CB4:		               ; CODE XREF: ROM:00004C56↑j
		movem.w word_4CF8(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_4CFE(pc),d0-d2
		bsr.w	sub_48D0
		move.w	#4,(word_FFFE74).l
		move.w	#1,(dword_FFFE7A).l
		rts
; ---------------------------------------------------------------------------
word_4CDA:      dc.w $8100              ; DATA XREF: ROM:00004C48↑w
		dc.w $11C
		dc.w 6
word_4CE0:      dc.w $8100              ; DATA XREF: ROM:loc_4C8E↑w
		dc.w $306
		dc.w $17
word_4CE6:      dc.w $8100              ; DATA XREF: ROM:00004C98↑w
		dc.w $43C
		dc.w 1
word_4CEC:      dc.w $8100              ; DATA XREF: ROM:00004C5A↑w
		dc.w $586
		dc.w 2
word_4CF2:      dc.w $8100              ; DATA XREF: ROM:00004C64↑w
		dc.w $5A6
		dc.w 3
word_4CF8:      dc.w $8100              ; DATA XREF: ROM:loc_4CB4↑w
		dc.w $998
		dc.w $E
word_4CFE:      dc.w $8100              ; DATA XREF: ROM:00004CBE↑w
		dc.w $B16
		dc.w $F
; ---------------------------------------------------------------------------

loc_4D04:		               ; CODE XREF: ROM:00004C32↑j
		lea	$4000(a4),a1
		move.w	#6,d0
		jsr	unk_FFFDAE
		bcs.s	loc_4D1A
		move.w	#$8081,0(a4)
		bra.s	loc_4D28
; ---------------------------------------------------------------------------

loc_4D1A:		               ; CODE XREF: ROM:00004D10↑j
		move.w	#0,0(a4)
		clr.w   2(a4)
		clr.w   4(a4)

loc_4D28:		               ; CODE XREF: ROM:00004D18↑j
		move.w	#$C,(word_FFFE74).l
		rts
; ---------------------------------------------------------------------------

loc_4D32:		               ; CODE XREF: ROM:000045C8↑j
		lea	($200000).l,a4
		moveq	#$7C,d0 ; '|'
		and.w   (word_FFFE74).l,d0
		jsr	loc_4D46(pc,d0.w)
		rts
; ---------------------------------------------------------------------------

loc_4D46:
		bra.w	loc_4D5E
; ---------------------------------------------------------------------------
		bra.w	loc_4E20
; ---------------------------------------------------------------------------
		bra.w	loc_5026
; ---------------------------------------------------------------------------
		bra.w	loc_4D8C
; ---------------------------------------------------------------------------
		bra.w	loc_50D2
; ---------------------------------------------------------------------------
		bra.w	loc_4BC4
; ---------------------------------------------------------------------------

loc_4D5E:		               ; CODE XREF: ROM:loc_4D46↑j
		bsr.w	sub_4D9E
		movem.w word_4D80(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_4D86(pc),d0-d2
		bsr.w	sub_48D0
		move.w	#4,(word_FFFE74).l
		rts
; ---------------------------------------------------------------------------
word_4D80:      dc.w $8100              ; DATA XREF: ROM:00004D62↑w
		dc.w $11C
		dc.w 7
word_4D86:      dc.w $8100              ; DATA XREF: ROM:00004D6C↑w
		dc.w $306
		dc.w $12
; ---------------------------------------------------------------------------

loc_4D8C:		               ; CODE XREF: ROM:00004D52↑j
		move.w	#8,d0
		bsr.w	sub_4482
		move.w	#$10,(word_FFFE74).l
		rts

; =============== S U B R O U T I N E =======================================


sub_4D9E:		               ; CODE XREF: ROM:loc_4D5E↑p
				        ; ROM:loc_5180↓p ...
		clr.l   ($220E00).l
		clr.l   (dword_FFFE7A).l
		bsr.w	sub_494C
		movem.w word_4E08(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_4E0E(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_4E14(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_4E1A(pc),d0-d2
		bsr.w	sub_48D0
		lea	($220598).l,a0
		move.w  4(a4),d0
		move.w	#$8030,d1
		bsr.w	sub_4968
		lea	($2205C0).l,a0
		move.w  2(a4),d0
		move.w	#$8030,d1
		bsr.w	sub_4968
		lea	$4000(a4),a0
		move.w	#$4A4,d0
		moveq	#0,d1
		bra.w	sub_4914
; End of function sub_4D9E

; ---------------------------------------------------------------------------
word_4E08:      dc.w $8100              ; DATA XREF: sub_4D9E+10↑w
		dc.w $43C
		dc.w 1
word_4E0E:      dc.w $8100              ; DATA XREF: sub_4D9E+1A↑w
		dc.w $506
		dc.w 2
word_4E14:      dc.w $8100              ; DATA XREF: sub_4D9E+24↑w
		dc.w $526
		dc.w 3
word_4E1A:      dc.w $8100              ; DATA XREF: sub_4D9E+2E↑w
		dc.w $68A
		dc.w $13
; ---------------------------------------------------------------------------

loc_4E20:		               ; CODE XREF: ROM:00004D4A↑j
		bset    #7,(word_FFFE74).l
		bne.s	loc_4E3C
		clr.w   $A(a4)
		clr.w   $C(a4)
		bsr.w	sub_4E98
		clr.w   (word_FFFE78).l

loc_4E3C:		               ; CODE XREF: ROM:00004E28↑j
		bsr.s   sub_4E58
		move.b  (word_FFFE20+1).w,d0
		andi.w  #$F0,d0
		beq.s	locret_4E56
		moveq	#$FFFFFF91,d7
		jsr	loc_ED2
		move.w	#8,(word_FFFE74).l

locret_4E56:		            ; CODE XREF: ROM:00004E46↑j
		rts

; =============== S U B R O U T I N E =======================================


sub_4E58:		               ; CODE XREF: ROM:loc_4E3C↑p
				        ; ROM:loc_5356↓p
		bsr.w	sub_4F56
		move.w  (dword_FFFE7A+2).l,d0
		bmi.s	loc_4E78
		beq.s	loc_4E86
		moveq	#$A,d1
		add.w   $A(a4),d1
		cmp.w   4(a4),d1
		beq.s	loc_4E86
		add.w   d0,$A(a4)
		bra.s	loc_4E82
; ---------------------------------------------------------------------------

loc_4E78:		               ; CODE XREF: sub_4E58+A↑j
		add.w   $A(a4),d0
		bmi.s	loc_4E86
		move.w	d0,$A(a4)

loc_4E82:		               ; CODE XREF: sub_4E58+1E↑j
		bsr.w	sub_4E98

loc_4E86:		               ; CODE XREF: sub_4E58+C↑j
				        ; sub_4E58+18↑j ...
		move.w  $A(a4),d0
		move.w  (dword_FFFE7A).l,d1
		add.w   d1,d0
		move.w	d0,$C(a4)
		rts
; End of function sub_4E58


; =============== S U B R O U T I N E =======================================


sub_4E98:		               ; CODE XREF: ROM:00004E32↑p
				        ; sub_4E58:loc_4E82↑p ...
		lea	$80(a4),a0
		moveq	#9,d0

loc_4E9E:		               ; CODE XREF: sub_4E98+E↓j
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		dbf	d0,loc_4E9E
		move.w	#4,d0
		bsr.w	sub_4482
		lea	$80(a4),a0
		bsr.w	sub_4F30

loc_4EBA:		               ; CODE XREF: sub_5240+30↓j
		lea	$80(a4),a2
		moveq	#$A,d7
		cmp.w   4(a4),d7
		ble.s	loc_4ECA
		move.w  4(a4),d7

loc_4ECA:		               ; CODE XREF: sub_4E98+2C↑j
		subq.w  #1,d7
		move.w  $A(a4),d6
		moveq	#0,d5

loc_4ED2:		               ; CODE XREF: sub_4E98+82↓j
		move.w	#$8100,d1
		moveq	#1,d0
		add.w   d6,d0
		lea	($220000).l,a0
		move.w	d5,d2
		lsl.w   #7,d2
		addi.w  #$80A,d2
		adda.w  d2,a0
		move.w	#$8030,d1
		bsr.w	sub_4968
		move.w	#$8000,d1
		lea	(a2),a1
		addq.w  #6,a0
		move.w	#$8000,d1
		bsr.w	sub_4F20
		moveq	#0,d0
		move.w  $E(a2),d0
		addq.w  #6,a0
		move.w	#$8030,d1
		bsr.w	sub_4968
		lea	$10(a2),a2
		addq.w  #1,d5
		addq.w  #1,d6
		dbf	d7,loc_4ED2
		rts
; End of function sub_4E98


; =============== S U B R O U T I N E =======================================


sub_4F20:		               ; CODE XREF: sub_4E98+66↑p
		moveq	#$A,d2

loc_4F22:		               ; CODE XREF: sub_4F20+A↓j
		moveq	#0,d0
		move.b  (a1)+,d0
		add.w   d1,d0
		move.w	d0,(a0)+
		dbf	d2,loc_4F22
		rts
; End of function sub_4F20


; =============== S U B R O U T I N E =======================================


sub_4F30:		               ; CODE XREF: sub_4E98+1E↑p
				        ; sub_5240+2C↓p
		moveq	#9,d0

loc_4F32:		               ; CODE XREF: sub_4F30+20↓j
		lea	(a0),a1
		move.w	d0,-(sp)
		moveq	#$A,d0

loc_4F38:		               ; CODE XREF: sub_4F30+16↓j
		moveq	#$7F,d1
		and.b   (a1),d1
		cmpi.b  #$20,d1 ; ' '
		bcc.s	loc_4F44
		moveq	#$20,d1 ; ' '

loc_4F44:		               ; CODE XREF: sub_4F30+10↑j
		move.b	d1,(a1)+
		dbf	d0,loc_4F38
		lea	$10(a0),a0
		move.w  (sp)+,d0
		dbf	d0,loc_4F32
		rts
; End of function sub_4F30


; =============== S U B R O U T I N E =======================================


sub_4F56:		               ; CODE XREF: sub_4E58↑p
				        ; sub_5200↓p
		moveq	#0,d1
		move.w  (dword_FFFE7A).l,d1
		moveq	#3,d0
		and.b   (word_FFFE78).l,d0
		beq.s	loc_4FD4
		moveq	#$FFFFFF90,d7
		jsr	loc_ED2
		lsr.b   #1,d0
		bne.s	loc_4F74
		not.b   d0

loc_4F74:		               ; CODE XREF: sub_4F56+1A↑j
		ext.w   d0
		add.w   d0,d1
		cmpi.w  #$A,4(a4)
		blt.s   loc_4FAA
		tst.w	d1
		bmi.s	loc_4F9E
		cmpi.w  #9,d1
		bgt.s   loc_4F92
		clr.w   (dword_FFFE7A+2).l
		bra.s	loc_4FDA
; ---------------------------------------------------------------------------

loc_4F92:		               ; CODE XREF: sub_4F56+32↑j
		moveq	#9,d1
		move.w	#1,(dword_FFFE7A+2).l
		bra.s	loc_4FDA
; ---------------------------------------------------------------------------

loc_4F9E:		               ; CODE XREF: sub_4F56+2C↑j
		moveq	#0,d1
		move.w	#$FFFF,(dword_FFFE7A+2).l
		bra.s	loc_4FDA
; ---------------------------------------------------------------------------

loc_4FAA:		               ; CODE XREF: sub_4F56+28↑j
		tst.w	d1
		bmi.s	loc_4FBC
		cmp.w   4(a4),d1
		bge.s	loc_4FC6
		clr.w   (dword_FFFE7A+2).l
		bra.s	loc_4FDA
; ---------------------------------------------------------------------------

loc_4FBC:		               ; CODE XREF: sub_4F56+56↑j
		moveq	#0,d1
		clr.w   (dword_FFFE7A+2).l
		bra.s	loc_4FDA
; ---------------------------------------------------------------------------

loc_4FC6:		               ; CODE XREF: sub_4F56+5C↑j
		move.w  4(a4),d1
		subq.w  #1,d1
		clr.w   (dword_FFFE7A+2).l
		bra.s	loc_4FDA
; ---------------------------------------------------------------------------

loc_4FD4:		               ; CODE XREF: sub_4F56+10↑j
		clr.w   (dword_FFFE7A+2).l

loc_4FDA:		               ; CODE XREF: sub_4F56+3A↑j
				        ; sub_4F56+46↑j ...
		move.w	d1,(dword_FFFE7A).l
		lsl.w   #4,d1
		lea	$80(a4),a0
		adda.w  d1,a0
		pea     (a0)
		lea	$120(a4),a1
		moveq	#$A,d0

loc_4FF0:		               ; CODE XREF: sub_4F56+9C↓j
		move.b  (a0)+,(a1)+
		dbf	d0,loc_4FF0
		movea.l (sp)+,a0
		move.w  $E(a0),$12C(a4)
		move.b  $B(a0),$12B(a4)
		moveq	#0,d1
		move.w  (dword_FFFE7A).l,d1
		lsl.w   #3,d1
		addi.w  #$100,d1
		swap    d1
		move.w	#$C01,d1
		move.l	#$1000A4,d2
		moveq	#6,d0
		moveq	#$20,d3 ; ' '
		bra.w	loc_48B8
; End of function sub_4F56

; ---------------------------------------------------------------------------

loc_5026:		               ; CODE XREF: ROM:00004D4E↑j
				        ; ROM:00005170↓j
		bset    #7,(word_FFFE74).l
		bne.s	loc_5084
		clr.l   ($220E00).l
		lea	($220E00).l,a0
		move.w	#$77,d4 ; 'w'
		bsr.w	loc_4956
		movem.w word_50BA(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_50C0(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_50C6(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_50CC(pc),d0-d2
		bsr.w	sub_48D0
		lea	$120(a4),a0
		move.w	#$718,d0
		move.w	#$8000,d1
		bsr.w	sub_4914
		move.w	#1,(dword_FFFE7A).l

loc_5084:		               ; CODE XREF: ROM:0000502E↑j
		bsr.w	sub_5128
		move.b  (word_FFFE20+1).w,d0
		andi.w  #$F0,d0
		beq.s	locret_50A8
		tst.w	(dword_FFFE7A).l
		bne.s	loc_50AA
		moveq	#$FFFFFF91,d7
		jsr	loc_ED2
		move.w	#$C,(word_FFFE74).l

locret_50A8:		            ; CODE XREF: ROM:00005090↑j
		rts
; ---------------------------------------------------------------------------

loc_50AA:		               ; CODE XREF: ROM:00005098↑j
		moveq	#$FFFFFF90,d7
		jsr	loc_ED2
		move.w	#$14,(word_FFFE74).l
		rts
; ---------------------------------------------------------------------------
word_50BA:      dc.w $8100              ; DATA XREF: ROM:00005044↑w
		dc.w $68A
		dc.w $18
word_50C0:      dc.w $8100              ; DATA XREF: ROM:0000504E↑w
		dc.w $6B2
		dc.w $14
word_50C6:      dc.w $8100              ; DATA XREF: ROM:00005058↑w
		dc.w $91A
		dc.w $15
word_50CC:      dc.w $8100              ; DATA XREF: ROM:00005062↑w
		dc.w $B16
		dc.w $F
; ---------------------------------------------------------------------------

loc_50D2:		               ; CODE XREF: ROM:00004D56↑j
				        ; ROM:00005178↓j
		bset    #7,(word_FFFE74).l
		bne.s	loc_5104
		clr.l   ($220E00).l
		lea	($220E00).l,a0
		move.w	#$BF,d4
		bsr.w	loc_4956
		movem.w word_511C(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_5122(pc),d0-d2
		bsr.w	sub_48D0

loc_5104:		               ; CODE XREF: ROM:000050DA↑j
		moveq	#$FFFFFFF0,d0
		and.b   (word_FFFE20+1).w,d0
		beq.s	locret_511A
		moveq	#$FFFFFF91,d7
		jsr	loc_ED2
		move.w	#$14,(word_FFFE74).l

locret_511A:		            ; CODE XREF: ROM:0000510A↑j
		rts
; ---------------------------------------------------------------------------
word_511C:      dc.w $8100              ; DATA XREF: ROM:000050F0↑w
		dc.w $512
		dc.w $16
word_5122:      dc.w $8100              ; DATA XREF: ROM:000050FA↑w
		dc.w $712
		dc.w $11

; =============== S U B R O U T I N E =======================================


sub_5128:		               ; CODE XREF: ROM:loc_5084↑p
				        ; ROM:loc_5406↓p
		bsr.w	sub_4B90
		moveq	#0,d2
		move.w  (dword_FFFE7A).l,d2
		mulu.w  #$60,d2 ; '`'
		addi.w  #$D8,d2
		swap    d2
		move.w	#$10,d2
		swap    d2
		move.l	#$1300901,d1
		moveq	#1,d0
		moveq	#$18,d3
		bsr.w	loc_48B8
		rts
; End of function sub_5128

; ---------------------------------------------------------------------------

loc_5154:		               ; CODE XREF: ROM:000045CC↑j
		lea	($210000).l,a4
		moveq	#$7C,d0 ; '|'
		and.w   (word_FFFE74).l,d0
		jsr	loc_5168(pc,d0.w)
		rts
; ---------------------------------------------------------------------------

loc_5168:
		bra.w	loc_5180
; ---------------------------------------------------------------------------
		bra.w	loc_51C8
; ---------------------------------------------------------------------------
		bra.w	loc_5026
; ---------------------------------------------------------------------------
		bra.w	sub_51AE
; ---------------------------------------------------------------------------
		bra.w	loc_50D2
; ---------------------------------------------------------------------------
		bra.w	loc_4BC4
; ---------------------------------------------------------------------------

loc_5180:		               ; CODE XREF: ROM:loc_5168↑j
		bsr.w	sub_4D9E
		movem.w word_51A2(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_51A8(pc),d0-d2
		bsr.w	sub_48D0
		move.w	#4,(word_FFFE74).l
		rts
; ---------------------------------------------------------------------------
word_51A2:      dc.w $8100              ; DATA XREF: ROM:00005184↑w
		dc.w $11C
		dc.w 8
word_51A8:      dc.w $8100              ; DATA XREF: ROM:0000518E↑w
		dc.w $306
		dc.w $17

; =============== S U B R O U T I N E =======================================


sub_51AE:		               ; CODE XREF: ROM:00005174↑j
				        ; ROM:loc_5332↓p
		clr.b   $12B(a4)
		lea	$120(a4),a0
		move.w	#5,d0
		jsr	unk_FFFDAE
		move.w	#$10,(word_FFFE74).l
		rts
; End of function sub_51AE

; ---------------------------------------------------------------------------

loc_51C8:		               ; CODE XREF: ROM:0000516C↑j
		bset    #7,(word_FFFE74).l
		bne.s	loc_51E4
		clr.w   $A(a4)
		clr.w   $C(a4)
		bsr.w	sub_5240
		clr.w   (word_FFFE78).l

loc_51E4:		               ; CODE XREF: ROM:000051D0↑j
		bsr.s   sub_5200
		move.b  (word_FFFE20+1).w,d0
		andi.w  #$F0,d0
		beq.s	locret_51FE
		moveq	#$FFFFFF91,d7
		jsr	loc_ED2
		move.w	#8,(word_FFFE74).l

locret_51FE:		            ; CODE XREF: ROM:000051EE↑j
		rts

; =============== S U B R O U T I N E =======================================


sub_5200:		               ; CODE XREF: ROM:loc_51E4↑p
				        ; ROM:loc_56C4↓p
		bsr.w	sub_4F56
		move.w  (dword_FFFE7A+2).l,d0
		bmi.s	loc_5220
		beq.s	loc_522E
		moveq	#$A,d1
		add.w   $A(a4),d1
		cmp.w   4(a4),d1
		beq.s	loc_522E
		add.w   d0,$A(a4)
		bra.s	loc_522A
; ---------------------------------------------------------------------------

loc_5220:		               ; CODE XREF: sub_5200+A↑j
		add.w   $A(a4),d0
		bmi.s	loc_522E
		move.w	d0,$A(a4)

loc_522A:		               ; CODE XREF: sub_5200+1E↑j
		bsr.w	sub_5240

loc_522E:		               ; CODE XREF: sub_5200+C↑j
				        ; sub_5200+18↑j ...
		move.w  $A(a4),d0
		move.w  (dword_FFFE7A).l,d1
		add.w   d1,d0
		move.w	d0,$C(a4)
		rts
; End of function sub_5200


; =============== S U B R O U T I N E =======================================


sub_5240:		               ; CODE XREF: ROM:000051DA↑p
				        ; sub_5200:loc_522A↑p ...
		lea	$80(a4),a0
		moveq	#9,d0

loc_5246:		               ; CODE XREF: sub_5240+E↓j
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		clr.l   (a0)+
		dbf	d0,loc_5246
		move.w  $A(a4),d1
		swap    d1
		move.w	#$A,d1
		lea	$80(a4),a1
		lea	sub_5274(pc),a0
		move.w	#7,d0
		jsr	unk_FFFDAE
		bsr.w	sub_4F30
		bra.w	loc_4EBA
; End of function sub_5240


; =============== S U B R O U T I N E =======================================


sub_5274:		               ; DATA XREF: sub_5240+20↑o
		move.l  $2A2A(a2),d5
		move.l  $2A2A(a2),d5
		move.l  $2A00(a2),d5

loc_5280:		               ; CODE XREF: ROM:000045D0↑j
		lea	($210000).l,a3
		lea	($200000).l,a4
		moveq	#$7C,d0 ; '|'
		and.w   (word_FFFE74).l,d0
		jsr	loc_529A(pc,d0.w)
		rts
; End of function sub_5274

; ---------------------------------------------------------------------------

loc_529A:
		bra.w	loc_52BE
; ---------------------------------------------------------------------------
		bra.w	loc_5340
; ---------------------------------------------------------------------------
		bra.w	loc_53A8
; ---------------------------------------------------------------------------
		bra.w	loc_52EC
; ---------------------------------------------------------------------------
		bra.w	loc_5454
; ---------------------------------------------------------------------------
		bra.w	loc_4BC4
; ---------------------------------------------------------------------------
		bra.w	loc_54AA
; ---------------------------------------------------------------------------
		bra.w	loc_5538
; ---------------------------------------------------------------------------
		bra.w	loc_55A6
; ---------------------------------------------------------------------------

loc_52BE:		               ; CODE XREF: ROM:loc_529A↑j
		bsr.w	sub_4D9E
		movem.w word_52E0(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_52E6(pc),d0-d2
		bsr.w	sub_48D0
		move.w	#4,(word_FFFE74).l
		rts
; ---------------------------------------------------------------------------
word_52E0:      dc.w $8100              ; DATA XREF: ROM:000052C2↑w
		dc.w $114
		dc.w 9
word_52E6:      dc.w $8100              ; DATA XREF: ROM:000052CC↑w
		dc.w $306
		dc.w $12
; ---------------------------------------------------------------------------

loc_52EC:		               ; CODE XREF: ROM:000052A6↑j
		move.w	#5,d0
		bsr.w	sub_4482
		moveq	#2,d7

loc_52F6:		               ; CODE XREF: ROM:00005318↓j
		lea	$120(a4),a0
		lea	$130(a4),a1
		move.w	#4,d0
		jsr	unk_FFFDAE
		bcs.s	loc_5328
		lea	$120(a4),a0
		lea	$130(a4),a1
		move.w	#8,d0
		jsr	unk_FFFDAE
		dbcc    d7,loc_52F6
		bcs.s	loc_5332
		move.w	#$10,(word_FFFE74).l
		rts
; ---------------------------------------------------------------------------

loc_5328:		               ; CODE XREF: ROM:00005306↑j
		move.w	#$18,(word_FFFE74).l
		rts
; ---------------------------------------------------------------------------

loc_5332:		               ; CODE XREF: ROM:0000531C↑j
		bsr.w	sub_51AE
		move.w	#$20,(word_FFFE74).l ; ' '
		rts
; ---------------------------------------------------------------------------

loc_5340:		               ; CODE XREF: ROM:0000529E↑j
		bset    #7,(word_FFFE74).l
		bne.s	loc_5356
		clr.w   $A(a4)
		clr.w   $C(a4)
		bsr.w	sub_4E98

loc_5356:		               ; CODE XREF: ROM:00005348↑j
		bsr.w	sub_4E58
		move.b  (word_FFFE20+1).w,d0
		andi.w  #$F0,d0
		bne.s	loc_5366
		rts
; ---------------------------------------------------------------------------

loc_5366:		               ; CODE XREF: ROM:00005362↑j
		lea	$120(a4),a0
		move.w	#2,d0
		clr.b   $12B(a4)
		jsr	unk_FFFDAE
		bcs.s	loc_5382
		move.w	#$1C,(word_FFFE74).l
		rts
; ---------------------------------------------------------------------------

loc_5382:		               ; CODE XREF: ROM:00005376↑j
				        ; ROM:000056E4↓j
		move.w  $12C(a4),d0
		move.w  2(a3),d1
		cmp.w   d0,d1
		bge.s	loc_5398
		move.w	#$18,(word_FFFE74).l
		rts
; ---------------------------------------------------------------------------

loc_5398:		               ; CODE XREF: ROM:0000538C↑j
		moveq	#$FFFFFF91,d7
		jsr	loc_ED2
		move.w	#8,(word_FFFE74).l
		rts
; ---------------------------------------------------------------------------

loc_53A8:		               ; CODE XREF: ROM:000052A2↑j
				        ; ROM:00005626↓j
		bset    #7,(word_FFFE74).l
		bne.s	loc_5406
		clr.l   ($220E00).l
		lea	($220E00).l,a0
		move.w	#$77,d4 ; 'w'
		bsr.w	loc_4956
		movem.w word_543C(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_5442(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_5448(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_544E(pc),d0-d2
		bsr.w	sub_48D0
		lea	$120(a4),a0
		move.w	#$718,d0
		move.w	#$8000,d1
		bsr.w	sub_4914
		move.w	#1,(dword_FFFE7A).l

loc_5406:		               ; CODE XREF: ROM:000053B0↑j
		bsr.w	sub_5128
		move.b  (word_FFFE20+1).w,d0
		andi.w  #$F0,d0
		beq.s	locret_542A
		tst.w	(dword_FFFE7A).l
		bne.s	loc_542C
		moveq	#$FFFFFF91,d7
		jsr	loc_ED2
		move.w	#$C,(word_FFFE74).l

locret_542A:		            ; CODE XREF: ROM:00005412↑j
		rts
; ---------------------------------------------------------------------------

loc_542C:		               ; CODE XREF: ROM:0000541A↑j
		moveq	#$FFFFFF90,d7
		jsr	loc_ED2
		move.w	#$14,(word_FFFE74).l
		rts
; ---------------------------------------------------------------------------
word_543C:      dc.w $8100              ; DATA XREF: ROM:000053C6↑w
		dc.w $68A
		dc.w $18
word_5442:      dc.w $8100              ; DATA XREF: ROM:000053D0↑w
		dc.w $6B2
		dc.w $20
word_5448:      dc.w $8100              ; DATA XREF: ROM:000053DA↑w
		dc.w $91A
		dc.w $15
word_544E:      dc.w $8100              ; DATA XREF: ROM:000053E4↑w
		dc.w $B16
		dc.w $F
; ---------------------------------------------------------------------------

loc_5454:		               ; CODE XREF: ROM:000052AA↑j
				        ; ROM:0000562E↓j
		bset    #7,(word_FFFE74).l
		bne.s	loc_5486
		clr.l   ($220E00).l
		lea	($220E00).l,a0
		move.w	#$BF,d4
		bsr.w	loc_4956
		movem.w word_549E(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_54A4(pc),d0-d2
		bsr.w	sub_48D0

loc_5486:		               ; CODE XREF: ROM:0000545C↑j
		moveq	#$FFFFFFF0,d0
		and.b   (word_FFFE20+1).w,d0
		beq.s	locret_549C
		moveq	#$FFFFFF91,d7
		jsr	loc_ED2
		move.w	#$14,(word_FFFE74).l

locret_549C:		            ; CODE XREF: ROM:0000548C↑j
		rts
; ---------------------------------------------------------------------------
word_549E:      dc.w $8100              ; DATA XREF: ROM:00005472↑w
		dc.w $512
		dc.w $1C
word_54A4:      dc.w $8100              ; DATA XREF: ROM:0000547C↑w
		dc.w $712
		dc.w $11
; ---------------------------------------------------------------------------

loc_54AA:		               ; CODE XREF: ROM:000052B2↑j
				        ; ROM:00005636↓j
		bset    #7,(word_FFFE74).l
		bne.s	loc_5506
		clr.l   ($220E00).l
		lea	($220E00).l,a0
		move.w	#$77,d4 ; 'w'
		bsr.w	loc_4956
		movem.w word_5520(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_5526(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_552C(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_5532(pc),d0-d2
		bsr.w	sub_48D0
		lea	$120(a4),a0
		move.w	#$718,d0
		move.w	#$8000,d1
		bsr.w	sub_4914
		moveq	#$FFFFFF92,d7
		jsr	loc_ED2

loc_5506:		               ; CODE XREF: ROM:000054B2↑j
		move.b  (word_FFFE20+1).w,d0
		andi.w  #$F0,d0
		beq.s	locret_551E
		move.w	#$14,(word_FFFE74).l
		moveq	#$FFFFFF91,d7
		jsr	loc_ED2

locret_551E:		            ; CODE XREF: ROM:0000550E↑j
		rts
; ---------------------------------------------------------------------------
word_5520:      dc.w $8100              ; DATA XREF: ROM:000054C8↑w
		dc.w $68A
		dc.w $18
word_5526:      dc.w $8100              ; DATA XREF: ROM:000054D2↑w
		dc.w $6B2
		dc.w $19
word_552C:      dc.w $8100              ; DATA XREF: ROM:000054DC↑w
		dc.w $78A
		dc.w $1A
word_5532:      dc.w $8100              ; DATA XREF: ROM:000054E6↑w
		dc.w $992
		dc.w $11
; ---------------------------------------------------------------------------

loc_5538:		               ; CODE XREF: ROM:000052B6↑j
				        ; ROM:0000563A↓j
		bset    #7,(word_FFFE74).l
		bne.s	loc_557A
		clr.l   ($220E00).l
		lea	($220E00).l,a0
		move.w	#$77,d4 ; 'w'
		bsr.w	loc_4956
		movem.w word_5594(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_559A(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_55A0(pc),d0-d2
		bsr.w	sub_48D0
		moveq	#$FFFFFF92,d7
		jsr	loc_ED2

loc_557A:		               ; CODE XREF: ROM:00005540↑j
		move.b  (word_FFFE20+1).w,d0
		andi.w  #$F0,d0
		beq.s	locret_5592
		move.w	#$14,(word_FFFE74).l
		moveq	#$FFFFFF91,d7
		jsr	loc_ED2

locret_5592:		            ; CODE XREF: ROM:00005582↑j
		rts
; ---------------------------------------------------------------------------
word_5594:      dc.w $8100              ; DATA XREF: ROM:00005556↑w
		dc.w $70A
		dc.w $1B
word_559A:      dc.w $8100              ; DATA XREF: ROM:00005560↑w
		dc.w $88A
		dc.w $1A
word_55A0:      dc.w $8100              ; DATA XREF: ROM:0000556A↑w
		dc.w $A92
		dc.w $11
; ---------------------------------------------------------------------------

loc_55A6:		               ; CODE XREF: ROM:000052BA↑j
				        ; ROM:0000563E↓j
		bset    #7,(word_FFFE74).l
		bne.s	loc_55DE
		clr.l   ($220E00).l
		lea	($220E00).l,a0
		move.w	#$77,d4 ; 'w'
		bsr.w	loc_4956
		movem.w word_55F8(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_55FE(pc),d0-d2
		bsr.w	sub_48D0
		moveq	#$FFFFFF92,d7
		jsr	loc_ED2

loc_55DE:		               ; CODE XREF: ROM:000055AE↑j
		move.b  (word_FFFE20+1).w,d0
		andi.w  #$F0,d0
		beq.s	locret_55F6
		move.w	#$14,(word_FFFE74).l
		moveq	#$FFFFFF91,d7
		jsr	loc_ED2

locret_55F6:		            ; CODE XREF: ROM:000055E6↑j
		rts
; ---------------------------------------------------------------------------
word_55F8:      dc.w $8100              ; DATA XREF: ROM:000055C4↑w
		dc.w $794
		dc.w $1A
word_55FE:      dc.w $8100              ; DATA XREF: ROM:000055CE↑w
		dc.w $A92
		dc.w $11
; ---------------------------------------------------------------------------

loc_5604:		               ; CODE XREF: ROM:000045D4↑j
		lea	($200000).l,a3
		lea	($210000).l,a4
		moveq	#$7C,d0 ; '|'
		and.w   (word_FFFE74).l,d0
		jsr	loc_561E(pc,d0.w)
		rts
; ---------------------------------------------------------------------------

loc_561E:
		bra.w	loc_5642
; ---------------------------------------------------------------------------
		bra.w	loc_56AE
; ---------------------------------------------------------------------------
		bra.w	loc_53A8
; ---------------------------------------------------------------------------
		bra.w	loc_5670
; ---------------------------------------------------------------------------
		bra.w	loc_5454
; ---------------------------------------------------------------------------
		bra.w	loc_4BC4
; ---------------------------------------------------------------------------
		bra.w	loc_54AA
; ---------------------------------------------------------------------------
		bra.w	loc_5538
; ---------------------------------------------------------------------------
		bra.w	loc_55A6
; ---------------------------------------------------------------------------

loc_5642:		               ; CODE XREF: ROM:loc_561E↑j
		bsr.w	sub_4D9E
		movem.w word_5664(pc),d0-d2
		bsr.w	sub_48D0
		movem.w word_566A(pc),d0-d2
		bsr.w	sub_48D0
		move.w	#4,(word_FFFE74).l
		rts
; ---------------------------------------------------------------------------
word_5664:      dc.w $8100              ; DATA XREF: ROM:00005646↑w
		dc.w $114
		dc.w $A
word_566A:      dc.w $8100              ; DATA XREF: ROM:00005650↑w
		dc.w $306
		dc.w $17
; ---------------------------------------------------------------------------

loc_5670:		               ; CODE XREF: ROM:0000562A↑j
		lea	$120(a4),a0
		lea	$130(a4),a1
		clr.b   $12B(a4)
		move.w	#3,d0
		jsr	unk_FFFDAE
		move.w	d0,$12C(a4)
		move.b	d1,$12B(a4)
		move.w	#6,d0
		bsr.w	sub_4482
		tst.w	$12E(a3)
		bmi.s	loc_56A4
		move.w	#$10,(word_FFFE74).l
		rts
; ---------------------------------------------------------------------------

loc_56A4:		               ; CODE XREF: ROM:00005698↑j
		move.w	#$20,(word_FFFE74).l ; ' '
		rts
; ---------------------------------------------------------------------------

loc_56AE:		               ; CODE XREF: ROM:00005622↑j
		bset    #7,(word_FFFE74).l
		bne.s	loc_56C4
		clr.w   $A(a4)
		clr.w   $C(a4)
		bsr.w	sub_5240

loc_56C4:		               ; CODE XREF: ROM:000056B6↑j
		bsr.w	sub_5200
		move.b  (word_FFFE20+1).w,d0
		andi.w  #$F0,d0
		bne.s	loc_56D4
		rts
; ---------------------------------------------------------------------------

loc_56D4:		               ; CODE XREF: ROM:000056D0↑j
		clr.b   $12B(a4)
		move.w	#7,d0
		bsr.w	sub_4482
		tst.w	$12E(a3)
		bne.w	loc_5382
		move.w	#$1C,(word_FFFE74).l
		rts
; ---------------------------------------------------------------------------

loc_56F2:		               ; DATA XREF: sub_573C+20↓o
		btst	#0,($A12003).l
		beq.s	loc_572E
		move.l	#$74000003,($C00004).l
		lea	($220E00).l,a0
		lea	($C00000).l,a1
		moveq	#$27,d0 ; '''

loc_5714:		               ; CODE XREF: ROM:00005716↓j
		move.l  (a0)+,(a1)
		dbeq    d0,loc_5714
		move.l	#$40000003,d0
		move.l	#$220000,d1
		move.w	#$700,d2
		jsr	sub_2D4

loc_572E:		               ; CODE XREF: ROM:000056FA↑j
		moveq	#0,d0
		lea	(word_FFFE78).l,a1
		jsr	sub_12C0
		rts

; =============== S U B R O U T I N E =======================================


sub_573C:		               ; CODE XREF: initial_pc_entry:loc_4434↑p

; FUNCTION CHUNK AT 000002D8 SIZE 00000004 BYTES

		st      (byte_FFFE28).w
		jsr	sub_2DC

loc_5744:		               ; CODE XREF: sub_573C+10↓j
		btst	#2,($A12003).l
		bne.s	loc_5744

loc_574E:		               ; CODE XREF: sub_573C+1A↓j
		bset    #1,($A12003).l
		beq.s	loc_574E
		bsr.w	sub_4476
		lea	loc_56F2(pc),a1
		jsr	sub_414
		move.l	#0,(dword_FFFDE8).w
		lea	word_57FC(pc),a1
		jsr	sub_2B0
		jsr	sub_2A0
		bsr.w	sub_494C
		clr.l   ($220E00).l
		move.l	#$60000000,($C00004).l
		lea	(unk_F69C).l,a1
		jsr	nemdectovram
		move.l	#$61C00000,($C00004).l
		lea	(unk_F7AE).l,a1
		jsr	nemdectovram
		move.l	#$44000000,d0
		move.w	#0,(word_FFFE2C).w
		move.l	#$EE0EE,d1
		jsr	sub_324
		bsr.w	sub_492A
		lea	byte_581C(pc),a1
		jsr	j_palload
		jsr	sub_ECE
		lea	(word_FFFE70).l,a0
		moveq	#0,d0
		moveq	#3,d1

loc_57DA:		               ; CODE XREF: sub_573C+A0↓j
		move.l	d0,(a0)+
		dbf	d1,loc_57DA
		clr.b   (byte_FFFE28).w
		jmp	loc_2D8
; End of function sub_573C

; ---------------------------------------------------------------------------

loc_57E8:		               ; CODE XREF: ROM:00004464↑j
		moveq	#$3B,d7 ; ';'

loc_57EA:		               ; CODE XREF: ROM:000057EE↓j
		jsr	sub_308
		dbf	d7,loc_57EA
		move.w	#$FFFF,(word_FFFE70).l
		rts
; ---------------------------------------------------------------------------
word_57FC:      dc.w $8004              ; DATA XREF: sub_573C+30↑o
		dc.w $8124
		dc.w $8230
		dc.w $8334
		dc.w $8407
		dc.w $857A
		dc.w $8700
		dc.w $8A00
		dc.w $8B02
		dc.w $8C81
		dc.w $8D3C
		dc.w $8F02
		dc.w $9001
		dc.w $9100
		dc.w $9200
		dc.w 0
byte_581C:      dc.b 0		  ; DATA XREF: sub_573C+88↑o
		dc.b $1F
		dc.w 0
		dc.w $EEE
		dc.w $AAA
		dc.w $CCC
		dc.w $888
		dc.w $444
		dc.w 0
		dc.w 8
		dc.w $AC
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w $EEE
		dc.w $A40
		dc.w 0
		dc.w $666
		dc.w $444
		dc.w $888
		dc.w $444
		dc.w 0
		dc.w 0
		dc.w 4
		dc.w $68
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
		dc.w 0
unk_585E:       dc.b   0		; DATA XREF: ROM:000059B8↓o
		dc.b   0
		dc.b   0
		dc.b   1
		dc.b   1
		dc.b   1
		dc.b   0
		dc.b   1
unk_5866:       dc.b $57 ; W            ; DATA XREF: sub_6500+F2↓o
		dc.b $A6
		dc.b $71 ; q
		dc.b $4B ; K
		dc.b $C6
		dc.b $19
unk_586C:       dc.b $A7		; DATA XREF: sub_6500+DC↓o
		dc.b $72 ; r
		dc.b $4C ; L
		dc.b $C7
		dc.b $1A
		dc.b   1
unk_5872:       dc.b   0		; DATA XREF: ROM:000059D2↓o
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   1
		dc.b   1
unk_5878:       dc.b $14		; DATA XREF: sub_6500+C4↓o
		dc.b $3A ; :
		dc.b $38 ; 8
		dc.b $12
		dc.b $1A
		dc.b   6
unk_587E:       dc.b $3B ; ;            ; DATA XREF: sub_6500+AE↓o
		dc.b $39 ; 9
		dc.b $13
		dc.b $1B
		dc.b   7
		dc.b   1
asc_5884:       dc.b '___________',0    ; DATA XREF: ROM:00005EF6↓o
		dc.l $40
aSegaCdRom:     dc.b 'SEGA_CD_ROM',0    ; DATA XREF: ROM:00005A3E↓o
				        ; ROM:00005AF6↓o ...
		dc.l $1000000
aRamCartridge:  dc.b 'RAM_CARTRIDGE___' ; DATA XREF: ROM:00005A16↓o
dword_58B4:     dc.l $600000            ; DATA XREF: ROM:loc_591A↓r
				        ; ROM:00005938↓r ...
dword_58B8:     dc.l $7FFFFF            ; DATA XREF: ROM:000058E0↓r
				        ; ROM:0000592E↓r ...
; ---------------------------------------------------------------------------
		move.l  off_58CA(pc),2(a0)
		move.w  word_58C8(pc),(a0)
		rts
; ---------------------------------------------------------------------------
word_58C8:      dc.w $4EF9              ; DATA XREF: ROM:000058C2↑r
off_58CA:       dc.l loc_58CE           ; DATA XREF: ROM:000058BC↑r
; ---------------------------------------------------------------------------

loc_58CE:		               ; DATA XREF: sub_398+40↑o
				        ; ROM:off_58CA↑o
		movem.l a2/a5,-(sp)
		movea.l #$FFFFFE80,a5
		add.w   d0,d0
		add.w   d0,d0
		jsr	loc_58EE(pc,d0.w)
		movea.l dword_58B8(pc),a2
		bclr    #0,(a2)
		movem.l (sp)+,a2/a5
		rts
; ---------------------------------------------------------------------------

loc_58EE:
		bra.w	loc_595A
; ---------------------------------------------------------------------------
		bra.w	loc_5ADA
; ---------------------------------------------------------------------------
		bra.w	sub_5B1A
; ---------------------------------------------------------------------------
		bra.w	loc_5C14
; ---------------------------------------------------------------------------
		bra.w	loc_5C78
; ---------------------------------------------------------------------------
		bra.w	sub_5DB6
; ---------------------------------------------------------------------------
		bra.w	loc_5EDA
; ---------------------------------------------------------------------------
		bra.w	loc_5F70
; ---------------------------------------------------------------------------
		bra.w	loc_5B94
; ---------------------------------------------------------------------------
		bra.w	loc_591A
; ---------------------------------------------------------------------------
		bra.w	loc_592A
; ---------------------------------------------------------------------------

loc_591A:		               ; CODE XREF: ROM:00005912↑j
		movea.l dword_58B4(pc),a1
		move.w	#$40,d1 ; '@'
		exg     a0,a1
		bsr.w	sub_64DA
		rts
; ---------------------------------------------------------------------------

loc_592A:		               ; CODE XREF: ROM:00005916↑j
		movem.l a2-a3,-(sp)
		movea.l dword_58B8(pc),a2
		bset    #0,(a2)
		movea.l a0,a3
		movea.l dword_58B4(pc),a1
		movea.l a1,a2
		move.w	#$40,d1 ; '@'
		exg     a0,a1
		bsr.w	sub_6638
		movep.l 0(a2),d0
		cmp.l   (a3),d0
		beq.s	loc_5954
		move	#1,ccr

loc_5954:		               ; CODE XREF: ROM:0000594E↑j
		movem.l (sp)+,a2-a3
		rts
; ---------------------------------------------------------------------------

loc_595A:		               ; CODE XREF: ROM:loc_58EE↑j
		movem.l d2/a2-a4,-(sp)
		movem.l a1,-(sp)
		move.l	a0,0(a5)
		lea	$200(a0),a0
		move.l	a0,4(a5)
		lea	$40(a0),a0
		move.l	a0,8(a5)
		lea	$100(a0),a0
		move.l	a0,$C(a5)
		lea	$100(a0),a0
		move.l	a0,$10(a5)
		lea	$40(a0),a0
		move.l	a0,$14(a5)
		lea	$40(a0),a0
		move.l	a0,$18(a5)
		lea	$100(a0),a0
		move.l	a0,$5A(a5)
		lea	$40(a0),a0
		move.l	a0,$6A(a5)
		movea.l 0(a5),a0
		bsr.w	sub_61EA
		move.l	#$80100,d2
		movea.l $18(a5),a0
		lea	unk_585E(pc),a1
		movea.l 8(a5),a3
		movea.l $C(a5),a4
		bsr.w	sub_6212
		move.l	#$60040,d2
		movea.l $18(a5),a0
		lea	unk_5872(pc),a1
		movea.l $10(a5),a3
		movea.l $14(a5),a4
		bsr.w	sub_6212
		clr.l   $30(a5)
		clr.l   $34(a5)
		clr.l   $66(a5)
		movem.l (sp)+,a1
		bsr.w	sub_6890
		bcs.w   loc_5A88
		movea.l a1,a2
		movea.l $5A(a5),a1
		movea.l $38(a5),a0
		lea	$60(a0),a0
		move.w	#$10,d1
		bsr.w	sub_64DA
		movea.l a2,a1
		movea.l $5A(a5),a2
		lea	aRamCartridge(pc),a0 ; "RAM_CARTRIDGE___"
		cmpm.l  (a0)+,(a2)+
		beq.s	loc_5A28
		cmpm.l  (a0)+,(a2)+
		beq.s	loc_5A28
		cmpm.l  (a0)+,(a2)+
		bne.w	loc_5A82

loc_5A28:		               ; CODE XREF: ROM:00005A1C↑j
				        ; ROM:00005A20↑j
		movea.l a1,a2
		movea.l $38(a5),a0
		lea	$40(a0),a0
		move.w	#$C,d1
		move.w	d1,d2
		bsr.w	sub_64DA
		movea.l a2,a1
		lea	aSegaCdRom(pc),a2 ; "SEGA_CD_ROM"
		move.w	d2,d1
		bsr.w	sub_665E
		bne.w	loc_5AA2
		move.l  $30(a5),d0
		asr.l   #8,d0
		asr.l   #5,d0
		move	#0,ccr

loc_5A58:		               ; CODE XREF: ROM:00005A80↓j
		movem.l (sp)+,d2/a2-a4
		rts
; ---------------------------------------------------------------------------

loc_5A5E:		               ; CODE XREF: ROM:00005A8E↓j
				        ; ROM:00005A9E↓j
		movea.l a1,a2
		move.w	d1,d2
		add.w   d2,d2
		add.w   d2,d2
		lea	off_5ABA(pc),a1 ; "NOT_EXIST__"
		movea.l (a1,d2.w),a1
		move.w	d1,d2
		move.w	#$D,d1
		bsr.w	sub_6694
		movea.l a2,a1
		move.w	d2,d1

loc_5A7C:		               ; CODE XREF: ROM:00005AB8↓j
		move	#1,ccr
		bra.s	loc_5A58
; ---------------------------------------------------------------------------

loc_5A82:		               ; CODE XREF: ROM:00005A24↑j
		bsr.w	sub_6900
		bcc.s	loc_5A92

loc_5A88:		               ; CODE XREF: ROM:000059F6↑j
		moveq	#0,d0
		move.w	#0,d1
		bra.w	loc_5A5E
; ---------------------------------------------------------------------------

loc_5A92:		               ; CODE XREF: ROM:00005A86↑j
				        ; ROM:00005AAA↓j
		move.w	#1,d1
		move.l  $30(a5),d0
		asr.l   #8,d0
		asr.l   #5,d0
		bra.w	loc_5A5E
; ---------------------------------------------------------------------------

loc_5AA2:		               ; CODE XREF: ROM:00005A48↑j
		move.w	#$B,d1
		bsr.w	sub_6946
		bcs.s	loc_5A92
		move.l  $30(a5),d0
		asr.l   #8,d0
		asr.l   #5,d0
		move.w	#2,d1
		bra.s	loc_5A7C
; ---------------------------------------------------------------------------
off_5ABA:       dc.l aNotExist          ; DATA XREF: ROM:00005A66↑o
				        ; "NOT_EXIST__"
		dc.l aUnformat          ; "UNFORMAT___"
aNotExist:      dc.b 'NOT_EXIST__',0    ; DATA XREF: ROM:off_5ABA↑o
aUnformat:      dc.b 'UNFORMAT___',0    ; DATA XREF: ROM:00005ABE↑o
; ---------------------------------------------------------------------------

loc_5ADA:		               ; CODE XREF: ROM:000058F2↑j
		movem.l d2-d3/a2,-(sp)
		moveq	#0,d0
		bsr.w	sub_6838
		bcs.s	loc_5B0C
		move.w	d0,d3
		bsr.w	sub_6864
		bcs.s	loc_5B0C
		tst.w	d0
		bge.s	loc_5AF4
		moveq	#0,d0

loc_5AF4:		               ; CODE XREF: ROM:00005AF0↑j
		movea.l a1,a2
		lea	aSegaCdRom(pc),a1 ; "SEGA_CD_ROM"
		move.w	#$C,d1
		bsr.w	sub_6694
		movea.l a2,a1
		move.w	d3,d1

loc_5B06:		               ; CODE XREF: ROM:00005B18↓j
		movem.l (sp)+,d2-d3/a2
		rts
; ---------------------------------------------------------------------------

loc_5B0C:		               ; CODE XREF: ROM:00005AE4↑j
				        ; ROM:00005AEC↑j
		move.w	#$FFFF,d0
		move.w	#$FFFF,d1
		move	#1,ccr
		bra.s	loc_5B06

; =============== S U B R O U T I N E =======================================


sub_5B1A:		               ; CODE XREF: ROM:000058F6↑j
				        ; ROM:00005B9A↓p ...
		movem.l d2-d3/a2-a4/a6,-(sp)
		movea.l a0,a3
		bsr.w	sub_6838
		move.w	d0,d1
		ble.s	loc_5B8E
		movea.l $38(a5),a0
		subq.w  #1,d1

loc_5B2E:		               ; CODE XREF: sub_5B1A+1A↓j
		suba.l  #$40,a0 ; '@'
		dbf	d1,loc_5B2E
		move.w	d0,d2
		subq.w  #1,d2
		movea.l $5A(a5),a2
		lea	$1C(a5),a6
		move.l  (a6),d3
		clr.l   (a6)

loc_5B48:		               ; CODE XREF: sub_5B1A+48↓j
		movea.l a2,a1
		move.w	#$20,d1 ; ' '
		bsr.w	sub_6392
		bcs.s	loc_5B60
		move.w	#$B,d1
		movea.l a3,a1
		bsr.w	sub_665E
		beq.s	loc_5B68

loc_5B60:		               ; CODE XREF: sub_5B1A+38↑j
		move.l	d3,(a6)
		dbf	d2,loc_5B48
		bra.s	loc_5B8E
; ---------------------------------------------------------------------------

loc_5B68:		               ; CODE XREF: sub_5B1A+44↑j
		movea.l dword_58B4(pc),a0
		move.w  $C(a2),d2
		ble.w   loc_5B8E
		subq.w  #1,d2

loc_5B76:		               ; CODE XREF: sub_5B1A+62↓j
		adda.l  #$80,a0
		dbf	d2,loc_5B76
		move.b  $B(a2),d1
		move.w  $E(a2),d0

loc_5B88:		               ; CODE XREF: sub_5B1A+78↓j
		movem.l (sp)+,d2-d3/a2-a4/a6
		rts
; ---------------------------------------------------------------------------

loc_5B8E:		               ; CODE XREF: sub_5B1A+C↑j
				        ; sub_5B1A+4C↑j ...
		move	#1,ccr
		bra.s	loc_5B88
; End of function sub_5B1A

; ---------------------------------------------------------------------------

loc_5B94:		               ; CODE XREF: ROM:0000590E↑j
		movem.l d2/a3/a6,-(sp)
		movea.l a1,a2
		bsr.w	sub_5B1A
		bcs.w   loc_5C04
		tst.b	d1
		beq.w	loc_5BD6
		lea	$1C(a5),a6
		clr.l   (a6)
		subq.w  #1,d0
		move.w	d0,d2
		movea.l $5A(a5),a3

loc_5BB6:		               ; CODE XREF: ROM:00005BD0↓j
		movea.l a3,a1
		move.w	#$40,d1 ; '@'
		bsr.w	sub_6392
		movea.l a3,a1
		move.w	#$20,d1 ; ' '
		bsr.w	sub_665E
		bne.w	loc_5C0A
		adda.w  d1,a2
		dbf	d0,loc_5BB6
		bra.s	loc_5BFA
; ---------------------------------------------------------------------------

loc_5BD6:		               ; CODE XREF: ROM:00005BA4↑j
		movea.l $5A(a5),a3
		subq.w  #1,d0

loc_5BDC:		               ; CODE XREF: ROM:00005BF6↓j
		move.w	#$40,d1 ; '@'
		movea.l a3,a1
		bsr.w	sub_64DA
		move.w	#$40,d1 ; '@'
		movea.l a3,a1
		bsr.w	sub_665E
		bne.s	loc_5C0A
		adda.w  #$40,a2 ; '@'
		dbf	d0,loc_5BDC

loc_5BFA:		               ; CODE XREF: ROM:00005BD4↑j
		move	#0,ccr

loc_5BFE:		               ; CODE XREF: ROM:00005C12↓j
		movem.l (sp)+,d2/a3/a6
		rts
; ---------------------------------------------------------------------------

loc_5C04:		               ; CODE XREF: ROM:00005B9E↑j
		move.w	#0,d0
		bra.s	loc_5C0E
; ---------------------------------------------------------------------------

loc_5C0A:		               ; CODE XREF: ROM:00005BCA↑j
				        ; ROM:00005BF0↑j
		move.w	#$FFFF,d0

loc_5C0E:		               ; CODE XREF: ROM:00005C08↑j
		move	#1,ccr
		bra.s	loc_5BFE
; ---------------------------------------------------------------------------

loc_5C14:		               ; CODE XREF: ROM:000058FA↑j
		movem.l d2/a6,-(sp)
		movem.l a1,-(sp)
		bsr.w	sub_5B1A
		movem.l (sp)+,a1
		movem.w d0-d1,-(sp)
		bcs.w   loc_5C72
		tst.b	d1
		beq.w	loc_5C56
		lea	$1C(a5),a6
		clr.l   (a6)
		subq.w  #1,d0
		move.w	d0,d2

loc_5C3C:		               ; CODE XREF: ROM:00005C44↓j
		move.w	#$40,d1 ; '@'
		bsr.w	sub_6392
		dbf	d0,loc_5C3C
		lea	$1C(a5),a0
		btst	#7,0(a0)
		beq.s	loc_5C64
		bra.s	loc_5C72
; ---------------------------------------------------------------------------

loc_5C56:		               ; CODE XREF: ROM:00005C2E↑j
		subq.w  #1,d0

loc_5C58:		               ; CODE XREF: ROM:00005C60↓j
		move.w	#$40,d1 ; '@'
		bsr.w	sub_64DA
		dbf	d0,loc_5C58

loc_5C64:		               ; CODE XREF: ROM:00005C52↑j
		move	#0,ccr

loc_5C68:		               ; CODE XREF: ROM:00005C76↓j
		movem.w (sp)+,d0-d1
		movem.l (sp)+,d2/a6
		rts
; ---------------------------------------------------------------------------

loc_5C72:		               ; CODE XREF: ROM:00005C28↑j
				        ; ROM:00005C54↑j
		move	#1,ccr
		bra.s	loc_5C68
; ---------------------------------------------------------------------------

loc_5C78:		               ; CODE XREF: ROM:000058FE↑j
		movem.l d2-d7/a2-a4/a6,-(sp)
		movea.l dword_58B8(pc),a2
		bset    #0,(a2)
		move.l	a0,$42(a5)
		move.l	a1,$46(a5)
		bsr.w	sub_6864
		bcs.w   loc_5DB0
		move.w	d0,d5
		bsr.w	sub_5B1A
		bcs.s	loc_5CB0
		add.w   d0,d5
		movea.l $42(a5),a0
		cmp.w   $C(a0),d5
		blt.w   loc_5DB0
		bsr.w	sub_5DB6
		bra.s	loc_5CBC
; ---------------------------------------------------------------------------

loc_5CB0:		               ; CODE XREF: ROM:00005C9A↑j
		movea.l $42(a5),a0
		cmp.w   $C(a0),d5
		blt.w   loc_5DB0

loc_5CBC:		               ; CODE XREF: ROM:00005CAE↑j
		bsr.w	sub_6838
		bcs.w   loc_5DB0
		movea.l $38(a5),a0
		move.w	d0,d1
		bgt.s   loc_5CD0
		moveq	#1,d6
		bra.s	loc_5CFC
; ---------------------------------------------------------------------------

loc_5CD0:		               ; CODE XREF: ROM:00005CCA↑j
		subq.w  #1,d1

loc_5CD2:		               ; CODE XREF: ROM:00005CD8↓j
		suba.l  #$40,a0 ; '@'
		dbf	d1,loc_5CD2
		movea.l $5A(a5),a1
		lea	$1C(a5),a6
		clr.l   (a6)
		movea.l a1,a2
		move.w	#$20,d1 ; ' '
		bsr.w	sub_6392
		bcs.w   loc_5DB0
		move.w  $C(a2),d6
		add.w   $E(a2),d6

loc_5CFC:		               ; CODE XREF: ROM:00005CCE↑j
		movea.l dword_58B4(pc),a0
		move.w	d6,d2
		ble.s	loc_5D10
		subq.w  #1,d2

loc_5D06:		               ; CODE XREF: ROM:00005D0C↓j
		adda.l  #$80,a0
		dbf	d2,loc_5D06

loc_5D10:		               ; CODE XREF: ROM:00005D02↑j
		movea.l $42(a5),a2
		movea.l $46(a5),a1
		move.w  $C(a2),d0
		ble.w   loc_5DB0
		tst.b	$B(a2)
		beq.w	loc_5D3C
		subq.w  #1,d0
		move.w	#$40,d1 ; '@'

loc_5D2E:		               ; CODE XREF: ROM:00005D36↓j
		bsr.w	sub_6500
		bcs.w   loc_5DB0
		dbf	d0,loc_5D2E
		bra.s	loc_5D4A
; ---------------------------------------------------------------------------

loc_5D3C:		               ; CODE XREF: ROM:00005D24↑j
		subq.w  #1,d0

loc_5D3E:		               ; CODE XREF: ROM:00005D46↓j
		move.w	#$40,d1 ; '@'
		bsr.w	sub_6638
		dbf	d0,loc_5D3E

loc_5D4A:		               ; CODE XREF: ROM:00005D3A↑j
		bsr.w	sub_6838
		bcs.w   loc_5DB0
		addq.w  #1,d0
		movea.l $38(a5),a0
		move.w	d0,d1
		subq.w  #1,d1

loc_5D5C:		               ; CODE XREF: ROM:00005D62↓j
		suba.l  #$40,a0 ; '@'
		dbf	d1,loc_5D5C
		movea.l $42(a5),a1
		lea	$4A(a5),a2
		lea	0(a1),a1
		lea	0(a2),a2
		move.w	#$B,d1
		bsr.w	sub_6694
		movea.l $42(a5),a2
		lea	$4A(a5),a1
		move.b  $B(a2),$B(a1)
		move.w	d6,$C(a1)
		move.w  $C(a2),$E(a1)
		move.w	#$20,d1 ; ' '
		bsr.w	sub_6500
		bcs.s	loc_5DB0
		lea	$4A(a5),a1
		moveq	#0,d0
		bsr.w	sub_66D0

loc_5DAA:		               ; CODE XREF: ROM:00005DB4↓j
		movem.l (sp)+,d2-d7/a2-a4/a6
		rts
; ---------------------------------------------------------------------------

loc_5DB0:		               ; CODE XREF: ROM:00005C90↑j
				        ; ROM:00005CA6↑j ...
		move	#1,ccr
		bra.s	loc_5DAA

; =============== S U B R O U T I N E =======================================


sub_5DB6:		               ; CODE XREF: ROM:00005902↑j
				        ; ROM:00005CAA↑p
		movem.l d2-d4/a2-a6,-(sp)
		movea.l dword_58B8(pc),a2
		bset    #0,(a2)
		movea.l a0,a3
		bsr.w	sub_6838
		tst.w	d0
		ble.w   loc_5ED4
		movea.l $38(a5),a0
		move.w	d0,d1
		subq.w  #1,d1

loc_5DD6:		               ; CODE XREF: sub_5DB6+26↓j
		suba.l  #$40,a0 ; '@'
		dbf	d1,loc_5DD6
		move.w	d0,d2
		subq.w  #1,d2
		movea.l $5A(a5),a2
		lea	$1C(a5),a6
		clr.l   (a6)

loc_5DEE:		               ; CODE XREF: sub_5DB6:loc_5E06↓j
		movea.l a2,a1
		move.w	#$20,d1 ; ' '
		bsr.w	sub_6392
		bcs.s	loc_5E06
		move.w	#$B,d1
		movea.l a3,a1
		bsr.w	sub_665E
		beq.s	loc_5E0E

loc_5E06:		               ; CODE XREF: sub_5DB6+42↑j
		dbf	d2,loc_5DEE
		bra.w	loc_5ED4
; ---------------------------------------------------------------------------

loc_5E0E:		               ; CODE XREF: sub_5DB6+4E↑j
		movea.l a2,a1
		movem.l d0/a2,-(sp)
		lea	$4A(a5),a2
		move.w	#$10,d1
		bsr.w	sub_6694
		movem.l (sp)+,d0/a2
		move.w	d0,d3
		sub.w   d2,d3
		subq.w  #2,d3
		bcs.w   loc_5EC2
		movea.l dword_58B4(pc),a3
		move.w  $C(a2),d2
		subq.w  #1,d2

loc_5E38:		               ; CODE XREF: sub_5DB6+88↓j
		adda.l  #$80,a3
		dbf	d2,loc_5E38
		lea	$1C(a5),a6
		clr.l   (a6)

loc_5E48:		               ; CODE XREF: sub_5DB6+108↓j
		suba.l  #$80,a0
		movea.l a2,a1
		move.w	#$20,d1 ; ' '
		bsr.w	sub_6392
		bcs.w   loc_5ED4
		movea.l dword_58B4(pc),a4
		move.w  $C(a2),d2
		subq.w  #1,d2

loc_5E66:		               ; CODE XREF: sub_5DB6+B6↓j
		adda.l  #$80,a4
		dbf	d2,loc_5E66
		moveq	#0,d2
		move.w  $E(a2),d2
		mulu.w  #$40,d2 ; '@'
		add.w   d2,d2
		move.l	a3,d1
		sub.l   dword_58B4(pc),d1
		divu.w  #$80,d1
		swap    d1
		tst.w	d1
		beq.s	loc_5E92
		addi.l  #$10000,d1

loc_5E92:		               ; CODE XREF: sub_5DB6+D4↑j
		swap    d1
		move.w	d1,$C(a2)
		movem.l a0,-(sp)
		movea.l a2,a1
		move.w	#$20,d1 ; ' '
		bsr.w	sub_6500
		bcs.s	loc_5ED4
		move.w	d4,$C(a2)
		exg     a3,a2
		movea.l a4,a1
		move.w	d2,d1
		bsr.w	sub_66B0
		exg     a3,a2
		adda.w  d2,a3
		movem.l (sp)+,a0
		dbf	d3,loc_5E48

loc_5EC2:		               ; CODE XREF: sub_5DB6+74↑j
		move.b  #1,d0
		lea	$4A(a5),a1
		bsr.w	sub_66D0

loc_5ECE:		               ; CODE XREF: sub_5DB6+122↓j
		movem.l (sp)+,d2-d4/a2-a6
		rts
; ---------------------------------------------------------------------------

loc_5ED4:		               ; CODE XREF: sub_5DB6+14↑j
				        ; sub_5DB6+54↑j ...
		move	#1,ccr
		bra.s	loc_5ECE
; End of function sub_5DB6

; ---------------------------------------------------------------------------

loc_5EDA:		               ; CODE XREF: ROM:00005906↑j
		movem.l a3,-(sp)
		bsr.w	sub_6890
		bcs.w   loc_5F6A
		bsr.w	sub_6900
		bcs.w   loc_5F6A
		movea.l dword_58B8(pc),a3
		bset    #0,(a3)
		lea	asc_5884(pc),a1 ; "___________"
		movea.l $38(a5),a0
		move.w	#$10,d1
		bsr.w	sub_6638
		moveq	#0,d0
		movea.l $38(a5),a0
		lea	$30(a0),a0
		move.w	d0,d0
		move.w	d0,-(sp)
		swap    d0
		move.w  (sp)+,d0
		movea.l a0,a0
		movep.l d0,1(a0)
		adda.l  #8,a0
		movep.l d0,1(a0)
		move.w  $2E(a5),d0
		movea.l $38(a5),a0
		lea	$20(a0),a0
		move.w	d0,d0
		move.w	d0,-(sp)
		swap    d0
		move.w  (sp)+,d0
		movea.l a0,a0
		movep.l d0,1(a0)
		adda.l  #8,a0
		movep.l d0,1(a0)
		lea	aSegaCdRom(pc),a1 ; "SEGA_CD_ROM"
		movea.l $38(a5),a0
		lea	$40(a0),a0
		move.w	#$20,d1 ; ' '
		bsr.w	sub_6638
		move	#0,ccr

loc_5F64:		               ; CODE XREF: ROM:00005F6E↓j
		movem.l (sp)+,a3
		rts
; ---------------------------------------------------------------------------

loc_5F6A:		               ; CODE XREF: ROM:00005EE2↑j
				        ; ROM:00005EEA↑j
		move	#1,ccr
		bra.s	loc_5F64
; ---------------------------------------------------------------------------

loc_5F70:		               ; CODE XREF: ROM:0000590A↑j
		movem.l d2-d5/a2-a4/a6,-(sp)
		movea.l a1,a4
		move.w	d1,d4
		swap    d1
		move.w	d1,d5
		moveq	#0,d2
		moveq	#$A,d3
		movea.l a0,a2

loc_5F82:		               ; CODE XREF: ROM:00005F8A↓j
		cmpi.b  #$2A,(a2)+ ; '*'
		beq.s	loc_5F8E
		addq.w  #1,d2
		dbf	d3,loc_5F82

loc_5F8E:		               ; CODE XREF: ROM:00005F86↑j
		movea.l a0,a2
		bsr.w	sub_6838
		move.w	d0,d3
		ble.w   loc_5FF0
		subq.w  #1,d3
		movea.l $38(a5),a0
		suba.l  #$40,a0 ; '@'
		movea.l $5A(a5),a1
		lea	$1C(a5),a6
		clr.l   (a6)
		movea.l a1,a3

loc_5FB2:		               ; CODE XREF: ROM:00005FEC↓j
		tst.w	d4
		ble.s	loc_5FFA
		move.w	#$20,d1 ; ' '
		bsr.w	sub_6392
		movea.l a3,a1
		move.w	d2,d1
		beq.s	loc_5FCA
		bsr.w	sub_665E
		bne.s	loc_5FE8

loc_5FCA:		               ; CODE XREF: ROM:00005FC2↑j
		tst.w	d5
		ble.s	loc_5FD2
		subq.w  #1,d5
		bra.s	loc_5FE2
; ---------------------------------------------------------------------------

loc_5FD2:		               ; CODE XREF: ROM:00005FCC↑j
		move.w	#$10,d1
		exg     a2,a4
		bsr.w	sub_6694
		exg     a2,a4
		adda.w  d1,a4
		subq.w  #1,d4

loc_5FE2:		               ; CODE XREF: ROM:00005FD0↑j
		cmpi.w  #$B,d2
		beq.s	loc_5FF0

loc_5FE8:		               ; CODE XREF: ROM:00005FC8↑j
		suba.w  #$80,a0
		dbf	d3,loc_5FB2

loc_5FF0:		               ; CODE XREF: ROM:00005F96↑j
				        ; ROM:00005FE6↑j
		move	#0,ccr

loc_5FF4:		               ; CODE XREF: ROM:00005FFE↓j
		movem.l (sp)+,d2-d5/a2-a4/a6
		rts
; ---------------------------------------------------------------------------

loc_5FFA:		               ; CODE XREF: ROM:00005FB4↑j
		move	#1,ccr
		bra.s	loc_5FF4

; =============== S U B R O U T I N E =======================================


sub_6000:		               ; CODE XREF: sub_6500+A6↓p
		movem.l d2/d7,-(sp)
		move.w	d2,-(sp)
		move.w	d1,d0
		move.w	#$10,d2
		move.w	#$1F,d7
		bsr.s   sub_603A
		move.w	#1,d7
		movea.l sp,a0
		bsr.s   sub_603A
		addq.w  #2,sp

loc_601C:		               ; CODE XREF: sub_6000+1E↓j
		bsr.s   sub_602E
		bhi.s	loc_601C
		clr.l   (a1)+
		clr.l   (a1)+
		clr.l   (a1)+
		clr.l   (a1)+
		movem.l (sp)+,d2/d7
		rts
; End of function sub_6000


; =============== S U B R O U T I N E =======================================


sub_602E:		               ; CODE XREF: sub_6000:loc_601C↑p
				        ; sub_603A↓p
		move.w	d0,d1
		lsr.w   #8,d1
		move.b	d1,(a1)+
		lsl.w   #6,d0
		subq.w  #6,d2
		rts
; End of function sub_602E


; =============== S U B R O U T I N E =======================================


sub_603A:		               ; CODE XREF: sub_6000+10↑p
				        ; sub_6000+18↑p ...
		bsr.s   sub_602E
		cmpi.w  #8,d2
		bcc.s	sub_603A
		moveq	#8,d1
		sub.w   d2,d1
		lsr.w   d1,d0
		move.b  (a0)+,d0
		lsl.w   d1,d0
		addq.w  #8,d2
		subq.w  #1,d7
		bcc.s	sub_603A
		rts
; End of function sub_603A


; =============== S U B R O U T I N E =======================================


sub_6054:		               ; CODE XREF: sub_6392+C0↓p
		movem.l d2/d7,-(sp)
		move.b  (a1)+,d0
		lsl.w   #6,d0
		move.b  (a1)+,d0
		lsl.w   #2,d0
		move.w	d0,$2A(a5)
		lsl.w   #4,d0
		move.b  (a1)+,d0
		ror.w   #4,d0
		move.b	d0,$2B(a5)
		move.w	#$2A,d7 ; '*'
		moveq	#2,d2
		bsr.s   sub_609E
		bsr.s   sub_6092
		lsr.w   #4,d0
		move.b  (a1)+,d0
		lsl.w   #4,d0
		move.w	d0,$2C(a5)
		lsl.w   #2,d0
		move.b  (a1)+,d0
		lsr.w   #2,d0
		move.b	d0,$2D(a5)
		movem.l (sp)+,d2/d7
		rts
; End of function sub_6054


; =============== S U B R O U T I N E =======================================


sub_6092:		               ; CODE XREF: sub_6054+22↑p
				        ; sub_609E:loc_60A0↓p
		move.w	d0,d1
		lsr.w   #8,d1
		move.b	d1,(a0)+
		lsl.w   #8,d0
		subq.w  #8,d2
		rts
; End of function sub_6092


; =============== S U B R O U T I N E =======================================


sub_609E:		               ; CODE XREF: sub_6054+20↑p
		bra.s	loc_60A2
; ---------------------------------------------------------------------------

loc_60A0:		               ; CODE XREF: sub_609E+8↓j
		bsr.s   sub_6092

loc_60A2:		               ; CODE XREF: sub_609E↑j
				        ; sub_609E+1A↓j
		cmpi.w  #8,d2
		bhi.s	loc_60A0
		move.w	#8,d1
		sub.w   d2,d1
		lsr.w   d1,d0
		move.b  (a1)+,d0
		lsl.w   d1,d0
		addq.w  #6,d2
		subq.w  #1,d7
		bcc.s	loc_60A2
		rts
; End of function sub_609E


; =============== S U B R O U T I N E =======================================


sub_60BC:		               ; CODE XREF: sub_6392+62↓p
				        ; sub_6500+EE↓p
		movem.l d6-d7,-(sp)
		movea.l 4(a5),a0
		adda.w  d0,a0
		lea	$20(a5),a1
		moveq	#7,d7

loc_60CC:		               ; CODE XREF: sub_60BC+2A↓j
		movem.l a1,-(sp)
		move.b  (a0),d0
		moveq	#7,d6

loc_60D4:		               ; CODE XREF: sub_60BC+20↓j
		move.b  (a1),d1
		lsl.b   #1,d0
		roxl.b  #1,d1
		move.b	d1,(a1)+
		dbf	d6,loc_60D4
		movem.l (sp)+,a1
		addq.w  #8,a0
		dbf	d7,loc_60CC
		movem.l (sp)+,d6-d7
		rts
; End of function sub_60BC


; =============== S U B R O U T I N E =======================================


sub_60F0:		               ; CODE XREF: sub_6392+6C↓p
				        ; sub_6500+FC↓p
		movem.l d6-d7,-(sp)
		movea.l 4(a5),a0
		adda.w  d0,a0
		lea	$20(a5),a1
		moveq	#7,d7

loc_6100:		               ; CODE XREF: sub_60F0+2A↓j
		movem.l a0,-(sp)
		move.b  (a1)+,d0
		moveq	#7,d6

loc_6108:		               ; CODE XREF: sub_60F0+22↓j
		move.b  (a0),d1
		lsl.b   #1,d0
		roxl.b  #1,d1
		move.b	d1,(a0)
		addq.w  #8,a0
		dbf	d6,loc_6108
		movem.l (sp)+,a0
		dbf	d7,loc_6100
		movem.l (sp)+,d6-d7
		rts
; End of function sub_60F0


; =============== S U B R O U T I N E =======================================


sub_6124:		               ; CODE XREF: sub_6392+98↓p
				        ; sub_6500+C0↓p
		movea.l 4(a5),a0
		lea	$20(a5),a1
		movem.l d0/a0,-(sp)
		adda.w  d0,a0
		moveq	#4,d1

loc_6134:		               ; CODE XREF: sub_6124+18↓j
		move.b  (a0)+,d0
		lsr.b   #2,d0
		move.b	d0,(a1)+
		addq.w  #8,a0
		dbf	d1,loc_6134
		movem.l (sp)+,d0/a0
		moveq	#0,d1
		move.b  byte_6164(pc,d0.w),d1
		move.b  (a0,d1.w),d1
		lsr.b   #2,d1
		move.b	d1,(a1)+
		move.b  $30(a0,d0.w),d1
		lsr.b   #2,d1
		move.b	d1,(a1)+
		move.b  $38(a0,d0.w),d1
		lsr.b   #2,d1
		move.b	d1,(a1)
		rts
; End of function sub_6124

; ---------------------------------------------------------------------------
byte_6164:      dc.b $2D,$2E,$2F,  8,$11,$1A,$23,$2C

; =============== S U B R O U T I N E =======================================


sub_616C:		               ; CODE XREF: sub_6392+A2↓p
		movea.l 4(a5),a0
		lea	$20(a5),a1
		movem.l d0/a0,-(sp)
		adda.w  d0,a0
		moveq	#4,d1

loc_617C:		               ; CODE XREF: sub_616C+18↓j
		move.b  (a1)+,d0
		lsl.b   #2,d0
		move.b	d0,(a0)+
		addq.w  #8,a0
		dbf	d1,loc_617C
		movem.l (sp)+,d0/a0
		move.w	d0,-(sp)
		moveq	#0,d1
		move.b  byte_6164(pc,d0.w),d1
		move.b  (a1)+,d0
		lsl.b   #2,d0
		move.b	d0,(a0,d1.w)
		move.w  (sp)+,d0

loc_619E:		               ; CODE XREF: sub_6500+CE↓p
		movea.l 4(a5),a0
		move.b  $26(a5),d1
		lsl.b   #2,d1
		move.b	d1,$30(a0,d0.w)
		move.b  $27(a5),d1
		lsl.b   #2,d1
		move.b	d1,$38(a0,d0.w)
		rts
; End of function sub_616C


; =============== S U B R O U T I N E =======================================


sub_61B8:		               ; CODE XREF: sub_6392+C6↓p
				        ; sub_6500+9C↓p
		movem.l d7/a2,-(sp)
		movea.l 0(a5),a2
		moveq	#0,d1
		moveq	#$1F,d7

loc_61C4:		               ; CODE XREF: sub_61B8+10↓j
		move.b  (a0)+,d0
		bsr.s   sub_61D6
		dbf	d7,loc_61C4
		move.w	d1,d2
		not.w   d2
		movem.l (sp)+,d7/a2
		rts
; End of function sub_61B8


; =============== S U B R O U T I N E =======================================


sub_61D6:		               ; CODE XREF: sub_61B8+E↑p
		rol.w   #8,d1
		clr.w   d2
		move.b	d0,d2
		eor.b   d1,d2
		add.w   d2,d2
		clr.b   d1
		move.w  (a2,d2.w),d2
		eor.w   d2,d1
		rts
; End of function sub_61D6


; =============== S U B R O U T I N E =======================================


sub_61EA:		               ; CODE XREF: ROM:000059AA↑p
		movem.l d7,-(sp)
		moveq	#0,d7

loc_61F0:		               ; CODE XREF: sub_61EA+20↓j
		move.w	d7,d0
		lsl.w   #8,d0
		moveq	#7,d1

loc_61F6:		               ; CODE XREF: sub_61EA:loc_61FE↓j
		lsl.w   #1,d0
		bcc.s	loc_61FE
		eori.w  #$1021,d0

loc_61FE:		               ; CODE XREF: sub_61EA+E↑j
		dbf	d1,loc_61F6
		move.w	d0,(a0)+
		addq.w  #1,d7
		cmpi.w  #$100,d7
		bcs.s	loc_61F0
		movem.l (sp)+,d7
		rts
; End of function sub_61EA


; =============== S U B R O U T I N E =======================================


sub_6212:		               ; CODE XREF: ROM:000059C4↑p
				        ; ROM:000059DE↑p
		movem.l d6-d7,-(sp)
		swap    d2
		moveq	#0,d7
		move.b	d7,(a3)
		move.b	d7,(a0)
		move.b	d7,(a4)
		moveq	#1,d0
		moveq	#1,d7

loc_6224:		               ; CODE XREF: sub_6212+24↓j
		move.b	d0,(a3,d7.w)
		move.b	d0,(a0,d7.w)
		lsl.b   #1,d0
		move.b	d7,(a4,d7.w)
		addq.w  #1,d7
		cmp.w   d7,d2
		bcc.s	loc_6224
		swap    d2

loc_623A:		               ; CODE XREF: sub_6212+5C↓j
		clr.b   (a3,d7.w)
		swap    d2
		moveq	#0,d6

loc_6242:		               ; CODE XREF: sub_6212+4A↓j
		moveq	#0,d0
		tst.b	(a1,d6.w)
		beq.s	loc_6258
		move.w	d7,d1
		sub.w   d6,d1
		subq.w  #1,d1
		move.b  (a3,d1.w),d0
		eor.b   d0,(a3,d7.w)

loc_6258:		               ; CODE XREF: sub_6212+36↑j
		addq.w  #1,d6
		cmp.w   d2,d6
		bcs.s	loc_6242
		swap    d2
		move.b  (a3,d7.w),(a0,d7.w)
		move.b	d7,(a4,d7.w)
		addq.w  #1,d7
		cmp.w   d2,d7
		bcs.s	loc_623A
		move.w	d2,d1
		subq.w  #1,d1
		moveq	#0,d7

loc_6276:		               ; CODE XREF: sub_6212+94↓j
		move.w	d7,d6
		addq.w  #1,d6

loc_627A:		               ; CODE XREF: sub_6212+8E↓j
		move.b  (a0,d7.w),d0
		cmp.b   (a0,d6.w),d0
		bcs.s	loc_629C
		move.b  (a0,d6.w),(a0,d7.w)
		move.b	d0,(a0,d6.w)
		move.b  (a4,d7.w),d0
		move.b  (a4,d6.w),(a4,d7.w)
		move.b	d0,(a4,d6.w)

loc_629C:		               ; CODE XREF: sub_6212+70↑j
		addq.w  #1,d6
		cmp.w   d2,d6
		bcs.s	loc_627A
		addq.w  #1,d7
		cmp.w   d1,d7
		bcs.s	loc_6276
		movem.l (sp)+,d6-d7
		rts
; End of function sub_6212


; =============== S U B R O U T I N E =======================================


sub_62AE:		               ; CODE XREF: sub_6500+C8↓p
				        ; sub_6500+F6↓p
		movem.l d2/d7,-(sp)
		lea	$20(a5),a0
		clr.w   $26(a5)
		subq.w  #1,d2
		moveq	#0,d7

loc_62BE:		               ; CODE XREF: sub_62AE+38↓j
		moveq	#0,d0
		moveq	#0,d1
		move.b  (a0,d7.w),d0
		tst.w	d0
		beq.s	loc_62E0
		move.b  (a4,d0.w),d1
		subq.w  #1,d1
		bsr.s   sub_62EE
		eor.b   d0,$26(a5)
		exg     a2,a1
		bsr.s   sub_62EE
		eor.b   d0,$27(a5)
		exg     a2,a1

loc_62E0:		               ; CODE XREF: sub_62AE+1A↑j
		addq.w  #1,d7
		cmpi.w  #6,d7
		bcs.s	loc_62BE
		movem.l (sp)+,d2/d7
		rts
; End of function sub_62AE


; =============== S U B R O U T I N E =======================================


sub_62EE:		               ; CODE XREF: sub_62AE+22↑p
				        ; sub_62AE+2A↑p
		move.b  (a1,d7.w),d0
		add.w   d1,d0
		bra.s	loc_62F8
; ---------------------------------------------------------------------------

loc_62F6:		               ; CODE XREF: sub_62EE+C↓j
		sub.w   d2,d0

loc_62F8:		               ; CODE XREF: sub_62EE+6↑j
		cmp.w   d2,d0
		bcc.s	loc_62F6
		addq.w  #1,d0
		move.b  (a3,d0.w),d0
		rts
; End of function sub_62EE


; =============== S U B R O U T I N E =======================================


sub_6304:		               ; CODE XREF: sub_6392+66↓p
				        ; sub_6392+9C↓p
		movem.l d2/d7,-(sp)
		lea	$20(a5),a0
		subq.w  #1,d2
		clr.w   $28(a5)
		moveq	#0,d7

loc_6314:		               ; CODE XREF: sub_6304+3E↓j
		moveq	#0,d0
		move.b  (a0,d7.w),d0
		eor.b   d0,$28(a5)
		tst.b	d0
		beq.s	loc_633C
		move.b  (a4,d0.w),d0
		addq.w  #6,d0
		sub.w   d7,d0
		bra.s	loc_632E
; ---------------------------------------------------------------------------

loc_632C:		               ; CODE XREF: sub_6304+2C↓j
		sub.w   d2,d0

loc_632E:		               ; CODE XREF: sub_6304+26↑j
		cmp.w   d2,d0
		bcc.s	loc_632C
		addq.w  #1,d0
		move.b  (a3,d0.w),d0
		eor.b   d0,$29(a5)

loc_633C:		               ; CODE XREF: sub_6304+1C↑j
		addq.w  #1,d7
		cmpi.w  #8,d7
		bcs.s	loc_6314
		tst.w	$28(a5)
		beq.s	loc_638C
		moveq	#0,d1
		move.w	d2,d0
		move.b  $29(a5),d1
		move.b  (a4,d1.w),d1
		add.w   d1,d0
		move.b  $28(a5),d1
		move.b  (a4,d1.w),d1
		sub.w   d1,d0
		bra.s	loc_6366
; ---------------------------------------------------------------------------

loc_6364:		               ; CODE XREF: sub_6304+64↓j
		sub.w   d2,d0

loc_6366:		               ; CODE XREF: sub_6304+5E↑j
		cmp.w   d2,d0
		bcc.s	loc_6364
		cmpi.w  #8,d0
		bcc.s	loc_6388
		moveq	#7,d1
		sub.w   d0,d1
		move.b  $28(a5),d0
		eor.b   d0,(a0,d1.w)
		bset    #3,0(a6)
		addq.b  #1,$6F(a5)
		bra.s	loc_638C
; ---------------------------------------------------------------------------

loc_6388:		               ; CODE XREF: sub_6304+6A↑j
		bset    #4,(a6)

loc_638C:		               ; CODE XREF: sub_6304+44↑j
				        ; sub_6304+82↑j
		movem.l (sp)+,d2/d7
		rts
; End of function sub_6304


; =============== S U B R O U T I N E =======================================


sub_6392:		               ; CODE XREF: sub_5B1A+34↑p
				        ; ROM:00005BBC↑p ...
		movem.l d0-d3/d7/a2-a4,-(sp)
		movem.l d1/a0-a1,-(sp)
		moveq	#0,d0
		move.w	a0,d0
		move.l	a0,d2
		move.w	#0,d2
		divu.w  #$80,d0
		mulu.w  #$80,d0
		add.w   d0,d2
		movea.l d2,a0
		cmpa.l  $66(a5),a0
		beq.w	loc_64A2
		move.l	a0,$66(a5)
		movea.l a0,a1
		movea.l $6A(a5),a0
		clr.b   $6E(a5)
		move.l	a0,-(sp)
		movea.l 4(a5),a0
		move.w	#$40,d1 ; '@'
		exg     a0,a1
		bsr.w	sub_64DA
		exg     a0,a1
		movea.l (sp)+,a0
		move.l	a1,-(sp)
		move.l	a0,-(sp)
		move.w	#$100,d2
		movea.l 8(a5),a3
		movea.l $C(a5),a4
		clr.b   $6F(a5)
		moveq	#7,d7
		moveq	#0,d3

loc_63F2:		               ; CODE XREF: sub_6392+72↓j
		move.w	d3,d0
		bsr.w	sub_60BC
		bsr.w	sub_6304
		move.w	d3,d0
		bsr.w	sub_60F0
		addq.w  #1,d3
		dbf	d7,loc_63F2
		tst.b	$6F(a5)
		beq.s	loc_6414
		move.b  $6F(a5),1(a6)

loc_6414:		               ; CODE XREF: sub_6392+7A↑j
		move.w	#$40,d2 ; '@'
		movea.l $10(a5),a3
		movea.l $14(a5),a4
		clr.b   $6F(a5)
		moveq	#7,d7
		moveq	#0,d3

loc_6428:		               ; CODE XREF: sub_6392+A8↓j
		move.w	d3,d0
		bsr.w	sub_6124
		bsr.w	sub_6304
		move.w	d3,d0
		bsr.w	sub_616C
		addq.w  #1,d3
		dbf	d7,loc_6428
		tst.b	$6F(a5)
		beq.s	loc_644A
		move.b  $6F(a5),1(a6)

loc_644A:		               ; CODE XREF: sub_6392+B0↑j
		movea.l (sp)+,a0
		move.l	a0,-(sp)
		movea.l 4(a5),a1
		bsr.w	sub_6054
		movea.l (sp)+,a0
		bsr.w	sub_61B8
		cmp.w   $2A(a5),d1
		beq.s	loc_646E
		bset    #5,0(a6)
		bset    #5,$6E(a5)

loc_646E:		               ; CODE XREF: sub_6392+CE↑j
		cmp.w   $2C(a5),d2
		beq.s	loc_6480
		bset    #6,0(a6)
		bset    #6,$6E(a5)

loc_6480:		               ; CODE XREF: sub_6392+E0↑j
		movea.l (sp)+,a1
		btst	#5,$6E(a5)
		beq.s	loc_64A2
		btst	#6,$6E(a5)
		beq.s	loc_64A2
		bset    #7,0(a6)
		bset    #7,$6E(a5)
		addq.w  #1,2(a6)

loc_64A2:		               ; CODE XREF: sub_6392+22↑j
				        ; sub_6392+F6↑j ...
		movem.l (sp)+,d1/a0-a1
		movea.l a1,a2
		move.w  $68(a5),d3
		move.w	a0,d2
		sub.w   d3,d2
		asr.w   #2,d2
		movea.l $6A(a5),a1
		adda.w  d2,a1
		asr.w   #1,d1
		bsr.w	sub_6694
		movea.l a2,a1
		adda.w  d1,a1
		add.w   d1,d1
		adda.w  d1,a0
		adda.w  d1,a0
		btst	#7,$6E(a5)
		beq.s	loc_64D4
		move	#1,ccr

loc_64D4:		               ; CODE XREF: sub_6392+13C↑j
		movem.l (sp)+,d0-d3/d7/a2-a4
		rts
; End of function sub_6392


; =============== S U B R O U T I N E =======================================


sub_64DA:		               ; CODE XREF: ROM:00005924↑p
				        ; ROM:00005A0C↑p ...
		movem.l d2,-(sp)

loc_64DE:		               ; CODE XREF: sub_64DA+10↓j
		subq.w  #4,d1
		blt.s   loc_64EC
		movep.l 1(a0),d2
		move.l	d2,(a1)+
		addq.l  #8,a0
		bra.s	loc_64DE
; ---------------------------------------------------------------------------

loc_64EC:		               ; CODE XREF: sub_64DA+6↑j
		addq.w  #4,d1

loc_64EE:		               ; CODE XREF: sub_64DA+1E↓j
		subq.w  #1,d1
		blt.s   loc_64FA
		move.b  1(a0),(a1)+
		addq.l  #2,a0
		bra.s	loc_64EE
; ---------------------------------------------------------------------------

loc_64FA:		               ; CODE XREF: sub_64DA+16↑j
		movem.l (sp)+,d2
		rts
; End of function sub_64DA


; =============== S U B R O U T I N E =======================================


sub_6500:		               ; CODE XREF: ROM:loc_5D2E↑p
				        ; ROM:00005D9A↑p ...
		movem.l d0-d3/d7/a2-a4,-(sp)
		movem.l d1/a0-a1,-(sp)
		cmpi.w  #$40,d1 ; '@'
		bge.w   loc_6596
		movem.l d1/a1,-(sp)
		move.l	a0,d2
		move.l	a0,d3
		moveq	#0,d0
		move.w	a0,d0
		move.w	#0,d3
		divu.w  #$80,d0
		mulu.w  #$80,d0
		add.w   d0,d3
		movea.l d3,a0
		sub.l   a0,d2
		asr.l   #2,d2
		move.w	#$40,d1 ; '@'
		movea.l $6A(a5),a1
		movea.l a1,a2
		movea.l a0,a3
		lea	$1C(a5),a6
		move.l  (a6),d3
		clr.l   (a6)
		moveq	#0,d0
		bsr.w	sub_6838
		tst.w	d0
		ble.s	loc_656E
		divu.w  #2,d0
		move.w	d0,d1
		swap    d0
		tst.w	d0
		beq.s	loc_655C
		addq.w  #1,d1

loc_655C:		               ; CODE XREF: sub_6500+58↑j
		mulu.w  #$80,d1
		move.l  $38(a5),d0
		sub.l   d1,d0
		cmp.l   a0,d0
		bgt.s   loc_656E
		bsr.w	sub_6392

loc_656E:		               ; CODE XREF: sub_6500+4C↑j
				        ; sub_6500+68↑j
		move.b  0(a6),d0
		move.l	d3,(a6)
		clr.l   $66(a5)
		movem.l (sp)+,d1/a1
		btst	#7,d0
		bne.w	loc_6632
		adda.w  d2,a2
		add.w   d2,d2
		asr.l   #1,d1
		bsr.w	sub_6694
		add.w   d1,d1
		movea.l $6A(a5),a1
		movea.l a3,a0

loc_6596:		               ; CODE XREF: sub_6500+C↑j
		exg     a0,a1
		move.l	a1,-(sp)
		move.l	a0,-(sp)
		bsr.w	sub_61B8
		movea.l (sp)+,a0
		movea.l 4(a5),a1
		bsr.w	sub_6000
		move.w	#$40,d2 ; '@'
		lea	unk_587E(pc),a2
		movea.l $10(a5),a3
		movea.l $14(a5),a4
		moveq	#7,d7
		moveq	#0,d3

loc_65BE:		               ; CODE XREF: sub_6500+D4↓j
		move.w	d3,d0
		bsr.w	sub_6124
		lea	unk_5878(pc),a1
		bsr.w	sub_62AE
		move.w	d3,d0
		bsr.w	loc_619E
		addq.w  #1,d3
		dbf	d7,loc_65BE
		move.w	#$100,d2
		lea	unk_586C(pc),a2
		movea.l 8(a5),a3
		movea.l $C(a5),a4
		moveq	#7,d7
		moveq	#0,d3

loc_65EC:		               ; CODE XREF: sub_6500+102↓j
		move.w	d3,d0
		bsr.w	sub_60BC
		lea	unk_5866(pc),a1
		bsr.w	sub_62AE
		move.w	d3,d0
		bsr.w	sub_60F0
		addq.w  #1,d3
		dbf	d7,loc_65EC
		movea.l (sp)+,a1
		movea.l 4(a5),a0
		move.w	#$40,d1 ; '@'
		exg     a0,a1
		bsr.w	sub_6638
		exg     a0,a1
		move	#0,ccr

loc_661C:		               ; CODE XREF: sub_6500+136↓j
		movem.l (sp)+,d1/a0-a1
		move    sr,-(sp)
		adda.w  d1,a0
		adda.w  d1,a0
		asr.w   #1,d1
		adda.w  d1,a1
		move    (sp)+,sr
		movem.l (sp)+,d0-d3/d7/a2-a4
		rts
; ---------------------------------------------------------------------------

loc_6632:		               ; CODE XREF: sub_6500+80↑j
		move	#1,ccr
		bra.s	loc_661C
; End of function sub_6500


; =============== S U B R O U T I N E =======================================


sub_6638:		               ; CODE XREF: ROM:00005944↑p
				        ; ROM:00005D42↑p ...
		movem.l d2,-(sp)

loc_663C:		               ; CODE XREF: sub_6638+10↓j
		subq.w  #4,d1
		blt.s   loc_664A
		move.l  (a1)+,d2
		movep.l d2,1(a0)
		addq.l  #8,a0
		bra.s	loc_663C
; ---------------------------------------------------------------------------

loc_664A:		               ; CODE XREF: sub_6638+6↑j
		addq.w  #4,d1

loc_664C:		               ; CODE XREF: sub_6638+1E↓j
		subq.w  #1,d1
		blt.s   loc_6658
		move.b  (a1)+,1(a0)
		addq.l  #2,a0
		bra.s	loc_664C
; ---------------------------------------------------------------------------

loc_6658:		               ; CODE XREF: sub_6638+16↑j
		movem.l (sp)+,d2
		rts
; End of function sub_6638


; =============== S U B R O U T I N E =======================================


sub_665E:		               ; CODE XREF: ROM:00005A44↑p
				        ; sub_5B1A+40↑p ...
		movem.l d1/a1-a2,-(sp)

loc_6662:		               ; CODE XREF: sub_665E+C↓j
		subq.w  #4,d1
		blt.s   loc_666C
		cmpm.l  (a1)+,(a2)+
		bne.s	loc_667C
		bra.s	loc_6662
; ---------------------------------------------------------------------------

loc_666C:		               ; CODE XREF: sub_665E+6↑j
		addq.w  #4,d1

loc_666E:		               ; CODE XREF: sub_665E+18↓j
		subq.w  #1,d1
		blt.s   loc_6678
		cmpm.b  (a1)+,(a2)+
		bne.s	loc_667C
		bra.s	loc_666E
; ---------------------------------------------------------------------------

loc_6678:		               ; CODE XREF: sub_665E+12↑j
		move	#4,ccr

loc_667C:		               ; CODE XREF: sub_665E+A↑j
				        ; sub_665E+16↑j
		movem.l (sp)+,d1/a1-a2
		rts
; End of function sub_665E

; ---------------------------------------------------------------------------
		movem.l d1/a1-a2,-(sp)
		subq.w  #1,d1

loc_6688:		               ; CODE XREF: ROM:0000668A↓j
		move.b  (a1)+,(a2)+
		dbf	d1,loc_6688
		movem.l (sp)+,d1/a1-a2
		rts

; =============== S U B R O U T I N E =======================================


sub_6694:		               ; CODE XREF: ROM:00005A74↑p
				        ; ROM:00005AFE↑p ...
		movem.l d1/a1-a2,-(sp)

loc_6698:		               ; CODE XREF: sub_6694+A↓j
		subq.w  #4,d1
		blt.s   loc_66A0
		move.l  (a1)+,(a2)+
		bra.s	loc_6698
; ---------------------------------------------------------------------------

loc_66A0:		               ; CODE XREF: sub_6694+6↑j
		addq.w  #4,d1

loc_66A2:		               ; CODE XREF: sub_6694+14↓j
		subq.w  #1,d1
		blt.s   loc_66AA
		move.b  (a1)+,(a2)+
		bra.s	loc_66A2
; ---------------------------------------------------------------------------

loc_66AA:		               ; CODE XREF: sub_6694+10↑j
		movem.l (sp)+,d1/a1-a2
		rts
; End of function sub_6694


; =============== S U B R O U T I N E =======================================


sub_66B0:		               ; CODE XREF: sub_5DB6+FC↑p
		movem.l d1/a1-a2,-(sp)
		adda.l  #1,a1
		adda.l  #1,a2

loc_66C0:		               ; CODE XREF: sub_66B0+18↓j
		move.b  (a1),(a2)
		addq.w  #2,a1
		addq.w  #2,a2
		subq.w  #2,d1
		bgt.s   loc_66C0
		movem.l (sp)+,d1/a1-a2
		rts
; End of function sub_66B0


; =============== S U B R O U T I N E =======================================


sub_66D0:		               ; CODE XREF: ROM:00005DA6↑p
				        ; sub_5DB6+114↑p
		movem.l d0-d4/a0-a2,-(sp)
		tst.b	d0
		beq.w	loc_674E
		moveq	#0,d3
		bsr.w	sub_6838
		bcs.w   loc_67CA
		move.w	d0,d3
		subq.w  #1,d0
		movea.l $38(a5),a0
		lea	$30(a0),a2
		move.w	d0,d4
		bsr.w	sub_6864
		bcs.w   loc_67CA
		divu.w  #2,d3
		swap    d3
		tst.w	d3
		bne.s	loc_6706
		addq.w  #1,d0

loc_6706:		               ; CODE XREF: sub_66D0+32↑j
		add.w   $E(a1),d0
		movea.l $38(a5),a0
		lea	$20(a0),a0
		move    sr,-(sp)
		move	#$2700,sr
		move.w	d0,d0
		move.w	d0,-(sp)
		swap    d0
		move.w  (sp)+,d0
		movea.l a0,a0
		movep.l d0,1(a0)
		adda.l  #8,a0
		movep.l d0,1(a0)
		move.w	d4,d0
		move.w	d4,-(sp)
		swap    d0
		move.w  (sp)+,d0
		movea.l a2,a0
		movep.l d0,1(a0)
		adda.l  #8,a0
		movep.l d0,1(a0)
		move    (sp)+,sr
		bra.w	loc_67C0
; ---------------------------------------------------------------------------

loc_674E:		               ; CODE XREF: sub_66D0+6↑j
		moveq	#0,d3
		bsr.w	sub_6838
		bcs.w   loc_67CA
		move.w	d0,d3
		addq.w  #1,d0
		addq.w  #1,d3
		movea.l $38(a5),a0
		lea	$30(a0),a2
		move.w	d0,d4
		bsr.w	sub_6864
		bcs.w   loc_67CA
		divu.w  #2,d3
		swap    d3
		tst.w	d3
		bne.s	loc_677C
		subq.w  #1,d0

loc_677C:		               ; CODE XREF: sub_66D0+A8↑j
		sub.w   $E(a1),d0
		movea.l $38(a5),a0
		lea	$20(a0),a0
		move    sr,-(sp)
		move	#$2700,sr
		move.w	d0,d0
		move.w	d0,-(sp)
		swap    d0
		move.w  (sp)+,d0
		movea.l a0,a0
		movep.l d0,1(a0)
		adda.l  #8,a0
		movep.l d0,1(a0)
		move.w	d4,d0
		move.w	d4,-(sp)
		swap    d0
		move.w  (sp)+,d0
		movea.l a2,a0
		movep.l d0,1(a0)
		adda.l  #8,a0
		movep.l d0,1(a0)
		move    (sp)+,sr

loc_67C0:		               ; CODE XREF: sub_66D0+7A↑j
		move	#0,ccr

loc_67C4:		               ; CODE XREF: sub_66D0+FE↓j
		movem.l (sp)+,d0-d4/a0-a2
		rts
; ---------------------------------------------------------------------------

loc_67CA:		               ; CODE XREF: sub_66D0+10↑j
				        ; sub_66D0+26↑j ...
		move	#1,ccr
		bra.s	loc_67C4
; End of function sub_66D0


; =============== S U B R O U T I N E =======================================


sub_67D0:		               ; CODE XREF: sub_6838+22↓p
				        ; sub_6864+22↓p
		movem.l d1-d5/a1-a4,-(sp)
		moveq	#0,d2
		moveq	#1,d3
		moveq	#2,d4
		movea.l a1,a2

loc_67DC:		               ; CODE XREF: sub_67D0+4E↓j
		movea.l a2,a3

loc_67DE:		               ; CODE XREF: sub_67D0+3C↓j
		adda.l  #2,a3
		movea.l a3,a4

loc_67E6:		               ; CODE XREF: sub_67D0+30↓j
		adda.l  #2,a4
		move.w  (a3),d0
		cmp.w   (a2),d0
		bne.s	loc_67FC
		move.w  (a4),d0
		cmp.w   (a2),d0
		bne.s	loc_67FC
		move.w  (a2),d0
		bra.s	loc_6824
; ---------------------------------------------------------------------------

loc_67FC:		               ; CODE XREF: sub_67D0+20↑j
				        ; sub_67D0+26↑j
		addq.w  #1,d4
		cmp.w   d4,d1
		bgt.w   loc_67E6
		addq.w  #1,d3
		move.w	d3,d5
		addq.w  #1,d5
		cmp.w   d5,d1
		bgt.w   loc_67DE
		adda.l  #2,a2
		addq.w  #1,d2
		move.w	d2,d5
		addq.w  #2,d5
		cmp.w   d5,d1
		bgt.w   loc_67DC
		bra.s	loc_682E
; ---------------------------------------------------------------------------

loc_6824:		               ; CODE XREF: sub_67D0+2A↑j
		move	#0,ccr

loc_6828:		               ; CODE XREF: sub_67D0+66↓j
		movem.l (sp)+,d1-d5/a1-a4
		rts
; ---------------------------------------------------------------------------

loc_682E:		               ; CODE XREF: sub_67D0+52↑j
		move.w	#$FFFF,d0
		move	#1,ccr
		bra.s	loc_6828
; End of function sub_67D0


; =============== S U B R O U T I N E =======================================


sub_6838:		               ; CODE XREF: ROM:00005AE0↑p
				        ; sub_5B1A+6↑p ...
		movem.l d1-d2/a0-a2,-(sp)
		move.w	#8,d1
		move.w	d1,d2
		movea.l $38(a5),a0
		lea	$30(a0),a0
		lea	$5E(a5),a1
		movea.l a1,a2
		bsr.w	sub_64DA
		move.w	d2,d1
		asr.w   #1,d1
		movea.l a2,a1
		bsr.w	sub_67D0
		movem.l (sp)+,d1-d2/a0-a2
		rts
; End of function sub_6838


; =============== S U B R O U T I N E =======================================


sub_6864:		               ; CODE XREF: ROM:00005AE8↑p
				        ; ROM:00005C8C↑p ...
		movem.l d2/a0-a2,-(sp)
		move.w	#8,d1
		move.w	d1,d2
		movea.l $38(a5),a0
		lea	$20(a0),a0
		lea	$5E(a5),a1
		movea.l a1,a2
		bsr.w	sub_64DA
		move.w	d2,d1
		asr.w   #1,d1
		movea.l a2,a1
		bsr.w	sub_67D0
		movem.l (sp)+,d2/a0-a2
		rts
; End of function sub_6864


; =============== S U B R O U T I N E =======================================


sub_6890:		               ; CODE XREF: ROM:000059F2↑p
				        ; ROM:00005EDE↑p
		movem.l d0-d1,-(sp)
		moveq	#0,d0
		move.b  ($400001).l,d0
		btst	#7,d0
		bne.w	loc_68FA
		move.l	#$2000,d1
		andi.b  #7,d0

loc_68AE:		               ; CODE XREF: sub_6890+20↓j
		asl.l   #1,d1
		dbf	d0,loc_68AE
		cmp.l   $30(a5),d1
		bne.s	loc_68C0
		cmp.l   $34(a5),d1
		beq.s	loc_68F4

loc_68C0:		               ; CODE XREF: sub_6890+28↑j
		move.l	d1,$30(a5)
		move.l	d1,$34(a5)
		move.l	dword_58B4(pc),$3C(a5)
		add.l   d1,$3C(a5)
		move.l  $3C(a5),$38(a5)
		subi.l  #$80,$38(a5)
		move.w	#$FFFD,$2E(a5)
		asr.l   #1,d1

loc_68E8:		               ; CODE XREF: sub_6890+62↓j
		addq.w  #1,$2E(a5)
		subi.l  #$40,d1 ; '@'
		bgt.s   loc_68E8

loc_68F4:		               ; CODE XREF: sub_6890+2E↑j
				        ; sub_6890+6E↓j
		movem.l (sp)+,d0-d1
		rts
; ---------------------------------------------------------------------------

loc_68FA:		               ; CODE XREF: sub_6890+10↑j
		move	#1,ccr
		bra.s	loc_68F4
; End of function sub_6890


; =============== S U B R O U T I N E =======================================


sub_6900:		               ; CODE XREF: ROM:loc_5A82↑p
				        ; ROM:00005EE6↑p
		movem.l d0/a1-a2,-(sp)
		movea.l dword_58B8(pc),a2
		bset    #0,(a2)
		movea.l dword_58B4(pc),a1
		adda.l  #1,a1
		move.b  (a1),d0
		move.b  #$5A,(a1) ; 'Z'
		cmpi.b  #$5A,(a1) ; 'Z'
		bne.s	loc_6940
		move.b  #$A5,(a1)
		cmpi.b  #$A5,(a1)
		bne.s	loc_6940
		move.b	d0,(a1)
		move	#0,ccr

loc_6932:		               ; CODE XREF: sub_6900+44↓j
		move    sr,-(sp)
		bclr    #0,(a2)
		move    (sp)+,sr
		movem.l (sp)+,d0/a1-a2
		rts
; ---------------------------------------------------------------------------

loc_6940:		               ; CODE XREF: sub_6900+20↑j
				        ; sub_6900+2A↑j
		move	#1,ccr
		bra.s	loc_6932
; End of function sub_6900


; =============== S U B R O U T I N E =======================================


sub_6946:		               ; CODE XREF: ROM:00005AA6↑p
		movem.l d0-d2/a0-a1,-(sp)
		subq.w  #1,d1

loc_694C:		               ; CODE XREF: sub_6946:loc_6962↓j
		move.b  (a1)+,d2
		lea	word_6976(pc),a0
		move.w  (a0)+,d0

loc_6954:		               ; CODE XREF: sub_6946+16↓j
		cmp.b   (a0)+,d2
		bcs.s	loc_6970
		cmp.b   (a0)+,d2
		bls.s   loc_6962
		dbf	d0,loc_6954
		bra.s	loc_6970
; ---------------------------------------------------------------------------

loc_6962:		               ; CODE XREF: sub_6946+14↑j
		dbf	d1,loc_694C
		move	#0,ccr

loc_696A:		               ; CODE XREF: sub_6946+2E↓j
		movem.l (sp)+,d0-d2/a0-a1
		rts
; ---------------------------------------------------------------------------

loc_6970:		               ; CODE XREF: sub_6946+10↑j
				        ; sub_6946+1A↑j
		move	#1,ccr
		bra.s	loc_696A
; End of function sub_6946

; ---------------------------------------------------------------------------
word_6976:      dc.w 2		  ; DATA XREF: sub_6946+8↑o
		dc.b $30
		dc.b $39
		dc.b $41 ; A
		dc.b $5A ; Z
		dc.b $5F ; _
		dc.b $5F ; _
		dcb.b $2682,$FF
		dc.b $80
		dc.b $30 ; 0
		dc.b $80
		dc.b   3
		dc.b   2
		dc.b $13
		dc.b   4
		dc.b $24 ; $
		dc.b  $A
		dc.b $35 ; 5
		dc.b $1A
		dc.b $45 ; E
		dc.b $1C
		dc.b $55 ; U
		dc.b $1D
		dc.b $66 ; f
		dc.b $3C ; <
		dc.b $74 ; t
		dc.b  $B
		dc.b $88
		dc.b   6
		dc.b $3D ; =
		dc.b $8F
		dc.b   2
		dc.b   0
		dc.b $13
		dc.b   3
		dc.b $24 ; $
		dc.b  $C
		dc.b $35 ; 5
		dc.b $1B
		dc.b $48 ; H
		dc.b $F8
		dc.b $FF
		dc.b $42 ; B
		dc.b $C4
		dc.b $41 ; A
		dc.b $34 ; 4
		dc.b $E9
		dc.b $CD
		dc.b $A1
		dc.b   8
		dc.b $AD
		dc.b $A7
		dc.b $A3
		dc.b $A4
		dc.b $28 ; (
		dc.b $42 ; B
		dc.b $23 ; #
		dc.b $42 ; B
		dc.b $C5
		dc.b $BE
		dc.b $9C
		dc.b $34 ; 4
		dc.b $D1
		dc.b $A6
		dc.b $88
		dc.b $68 ; h
		dc.b $A3
		dc.b $84
		dc.b $35 ; 5
		dc.b $B4
		dc.b $74 ; t
		dc.b $D1
		dc.b $1E
		dc.b $88
		dc.b $D3
		dc.b $AD
		dc.b $A6
		dc.b $9E
		dc.b $88
		dc.b $68 ; h
		dc.b $A2
		dc.b $9E
		dc.b $88
		dc.b $21 ; !
		dc.b $34 ; 4
		dc.b $D1
		dc.b $E3
		dc.b $A7
		dc.b $45 ; E
		dc.b $9A
		dc.b $21 ; !
		dc.b   8
		dc.b $E0
		dc.b $88
		dc.b $E1
		dc.b $C6
		dc.b $B2
		dc.b $9D
		dc.b $10
		dc.b $8D
		dc.b $62 ; b
		dc.b $3A ; :
		dc.b $73 ; s
		dc.b $16
		dc.b $D1
		dc.b   8
		dc.b $22 ; "
		dc.b $62 ; b
		dc.b $69 ; i
		dc.b $F5
		dc.b $A1
		dc.b   8
		dc.b $82
		dc.b $39 ; 9
		dc.b $BA
		dc.b $28 ; (
		dc.b $85
		dc.b $3A ; :
		dc.b $16
		dc.b $46 ; F
		dc.b $B6
		dc.b $88
		dc.b $E0
		dc.b $8A
		dc.b $6B ; k
		dc.b $13
		dc.b $E1
		dc.b $44 ; D
		dc.b $DA
		dc.b $3A ; :
		dc.b $22 ; "
		dc.b $F1
		dc.b   8
		dc.b $8F
		dc.b $42 ; B
		dc.b $CA
		dc.b $11
		dc.b $1E
		dc.b $B1
		dc.b   8
		dc.b $98
		dc.b $B7
		dc.b $68 ; h
		dc.b $84
		dc.b $26 ; &
		dc.b $41 ; A
		dc.b $14
		dc.b $46 ; F
		dc.b $84
		dc.b $D0
		dc.b $84
		dc.b $41 ; A
		dc.b   8
		dc.b $47 ; G
		dc.b  $A
		dc.b $27 ; '
		dc.b $C7
		dc.b   8
		dc.b $E1
		dc.b $5B ; [
		dc.b $A6
		dc.b $9A
		dc.b $23 ; #
		dc.b $4E ; N
		dc.b $34 ; 4
		dc.b $51 ; Q
		dc.b $37 ; 7
		dc.b   9
		dc.b $8B
		dc.b $16
		dc.b $FC
		dc.b $16
		dc.b $42 ; B
		dc.b   8
		dc.b $E9
		dc.b $59 ; Y
		dc.b $A2
		dc.b $64 ; d
		dc.b $34 ; 4
		dc.b $69 ; i
		dc.b $A6
		dc.b $9A
		dc.b $70 ; p
		dc.b $A3
		dc.b $C2
		dc.b $88
		dc.b $22 ; "
		dc.b   8
		dc.b $AD
		dc.b $A7
		dc.b $36 ; 6
		dc.b $84
		dc.b $71 ; q
		dc.b $A1
		dc.b $38 ; 8
		dc.b $27 ; '
		dc.b $33 ; 3
		dc.b $4D ; M
		dc.b $11
		dc.b $D8
		dc.b $84
		dc.b $56 ; V
		dc.b $22 ; "
		dc.b $3D ; =
		dc.b $3D ; =
		dc.b  $B
		dc.b $FB
		dc.b $F0
		dc.b $42 ; B
		dc.b $71 ; q
		dc.b $C7
		dc.b $A7
		dc.b   4
		dc.b $71 ; q
		dc.b $C7
		dc.b   4
		dc.b $46 ; F
		dc.b $84
		dc.b $68 ; h
		dc.b $F1
		dc.b $A7
		dc.b $A3
		dc.b $86
		dc.b $8D
		dc.b $67 ; g
		dc.b $48 ; H
		dc.b $F8
		dc.b $FC
		dc.b $16
		dc.b $D6
		dc.b $27 ; '
		dc.b $4D ; M
		dc.b $34 ; 4
		dc.b $71 ; q
		dc.b $C2
		dc.b  $B
		dc.b $10
		dc.b $8D
		dc.b $38 ; 8
		dc.b $EB
		dc.b $FB
		dc.b $F4
		dc.b $78 ; x
		dc.b $43 ; C
		dc.b $A2
		dc.b $11
		dc.b $A3
		dc.b $A5
		dc.b   8
		dc.b $4F ; O
		dc.b $84
		dc.b $11
		dc.b $C7
		dc.b $36 ; 6
		dc.b $88
		dc.b $47 ; G
		dc.b $44 ; D
		dc.b $C8
		dc.b $E6
		dc.b $D3
		dc.b $47 ; G
		dc.b $37 ; 7
		dc.b $E1
		dc.b $D6
		dc.b $9C
		dc.b $21 ; !
		dc.b $1E
		dc.b $89
		dc.b $B4
		dc.b $D6
		dc.b $D6
		dc.b $23 ; #
		dc.b $A7
		dc.b $1A
		dc.b $3B ; ;
		dc.b $B4
		dc.b $68 ; h
		dc.b $E6
		dc.b $78 ; x
		dc.b $E9
		dc.b $A7
		dc.b $D7
		dc.b $44 ; D
		dc.b $F8
		dc.b $84
		dc.b $69 ; i
		dc.b $A7
		dc.b $42 ; B
		dc.b $34 ; 4
		dc.b $2D ; -
		dc.b $A2
		dc.b $DF
		dc.b   9
		dc.b $90
		dc.b $85
		dc.b $11
		dc.b $CD
		dc.b $A7
		dc.b  $A
		dc.b $F8
		dc.b $45 ; E
		dc.b   8
		dc.b $85
		dc.b $35 ; 5
		dc.b $89
		dc.b $A2
		dc.b $88
		dc.b $50 ; P
		dc.b $9C
		dc.b $74 ; t
		dc.b $2F ; /
		dc.b $F7
		dc.b $A1
		dc.b $10
		dc.b $42 ; B
		dc.b $70 ; p
		dc.b $4D ; M
		dc.b $3A ; :
		dc.b $CE
		dc.b $38 ; 8
		dc.b $21 ; !
		dc.b $10
		dc.b $42 ; B
		dc.b $16
		dc.b $E0
		dc.b $9A
		dc.b $70 ; p
		dc.b $A7
		dc.b  $A
		dc.b $C4
		dc.b $D3
		dc.b $84
		dc.b $10
		dc.b $8A
		dc.b $35 ; 5
		dc.b $9C
		dc.b $7A ; z
		dc.b $13
		dc.b $86
		dc.b $9C
		dc.b $FE
		dc.b $FA
		dc.b $74 ; t
		dc.b $D1
		dc.b $A1
		dc.b $34 ; 4
		dc.b $53 ; S
		dc.b $A7
		dc.b $1A
		dc.b $74 ; t
		dc.b $E6
		dc.b $21 ; !
		dc.b $35 ; 5
		dc.b $BA
		dc.b $73 ; s
		dc.b $26 ; &
		dc.b $26 ; &
		dc.b $9D
		dc.b $10
		dc.b $44 ; D
		dc.b $69 ; i
		dc.b $D6
		dc.b $26 ; &
		dc.b $B6
		dc.b $84
		dc.b $50 ; P
		dc.b $8A
		dc.b $35 ; 5
		dc.b $9A
		dc.b $2E ; .
		dc.b $1A
		dc.b $3A ; :
		dc.b $27 ; '
		dc.b $E1
		dc.b $5B ; [
		dc.b $A7
		dc.b $A2
		dc.b $9F
		dc.b $45 ; E
		dc.b $F1
		dc.b $78 ; x
		dc.b $84
		dc.b $43 ; C
		dc.b $45 ; E
		dc.b $65 ; e
		dc.b $B8
		dc.b $27 ; '
		dc.b $E1
		dc.b $1F
		dc.b $82
		dc.b $3C ; <
		dc.b $DA
		dc.b $3A ; :
		dc.b $4C ; L
		dc.b $44 ; D
		dc.b $DC
		dc.b $34 ; 4
		dc.b $D6
		dc.b $2C ; ,
		dc.b $4F ; O
		dc.b $42 ; B
		dc.b $71 ; q
		dc.b $D0
		dc.b $85
		dc.b $BA
		dc.b $DF
		dc.b $5D ; ]
		dc.b $6D ; m
		dc.b   8
		dc.b $42 ; B
		dc.b $28 ; (
		dc.b $42 ; B
		dc.b $F8
		dc.b $85
		dc.b $AC
		dc.b $4F ; O
		dc.b $45 ; E
		dc.b $39 ; 9
		dc.b $FD
		dc.b $F4
		dc.b $22 ; "
		dc.b $38 ; 8
		dc.b $D1
		dc.b $4E ; N
		dc.b $9D
		dc.b $6F ; o
		dc.b $45 ; E
		dc.b   8
		dc.b $59 ; Y
		dc.b   4
		dc.b $22 ; "
		dc.b $1D
		dc.b $10
		dc.b $85
		dc.b $F0
		dc.b $8A
		dc.b $35 ; 5
		dc.b $93
		dc.b $20
		dc.b $84
		dc.b $74 ; t
		dc.b $A2
		dc.b $E1
		dc.b   4
		dc.b $42 ; B
		dc.b $BF
		dc.b $DE
		dc.b $B3
		dc.b $42 ; B
		dc.b $17
		dc.b $C7
		dc.b $48 ; H
		dc.b $50 ; P
		dc.b $84
		dc.b $70 ; p
		dc.b $F0
		dc.b $F0
		dc.b $4E ; N
		dc.b   9
		dc.b $C1
		dc.b  $B
		dc.b $21 ; !
		dc.b $32 ; 2
		dc.b $6D ; m
		dc.b $3B ; ;
		dc.b $44 ; D
		dc.b $DA
		dc.b $6B ; k
		dc.b $20
		dc.b $BE
		dc.b $2B ; +
		dc.b $28 ; (
		dc.b $A2
		dc.b $34 ; 4
		dc.b $E1
		dc.b $CC
		dc.b $D3
		dc.b $84
		dc.b $75 ; u
		dc.b $F1
		dc.b $7F ; 
		dc.b $86
		dc.b $FE
		dc.b $4F ; O
		dc.b $E1
		dc.b $BF
		dc.b $13
		dc.b $77 ; w
		dc.b $77 ; w
		dc.b $77 ; w
		dc.b $76 ; v
		dc.b $BF
		dc.b   3
		dc.b $77 ; w
		dc.b $77 ; w
		dc.b $FA
		dc.b $1D
		dc.b $7E ; ~
		dc.b $C6
		dc.b $BF
		dc.b $FB
		dc.b $FF
		dc.b $DB
		dc.b $BB
		dc.b $BB
		dc.b $BF
		dc.b $FE
		dc.b $FF
		dc.b $F5
		dc.b $7F ; 
		dc.b $9D
		dc.b $7F ; 
		dc.b $8D
		dc.b $7F ; 
		dc.b $86
		dc.b $D7
		dc.b $F9
		dc.b $6F ; o
		dc.b $FF
		dc.b $BF
		dc.b $F5
		dc.b $F7
		dc.b $F5
		dc.b $3F ; ?
		dc.b $B8
		dc.b $9F
		dc.b $A1
		dc.b $BE
		dc.b $7E ; ~
		dc.b $87
		dc.b $9F
		dc.b $A1
		dc.b $BD
		dc.b $7E ; ~
		dc.b   6
		dc.b $7E ; ~
		dc.b   6
		dc.b $BF
		dc.b $F1
		dc.b $FF
		dc.b $8B
		dc.b $BB
		dc.b $BB
		dc.b $BF
		dc.b $FC
		dc.b $7F ; 
		dc.b $E2
		dc.b $D7
		dc.b $F9
		dc.b $6D ; m
		dc.b $7F ; 
		dc.b $85
		dc.b $7F ; 
		dc.b $8D
		dc.b $7F ; 
		dc.b $9E
		dc.b $FC
		dc.b $F6
		dc.b $EE
		dc.b $EE
		dc.b $EF
		dc.b $CF
		dc.b $CC
		dc.b $77 ; w
		dc.b $DB
		dc.b $BB
		dc.b $BB
		dc.b $BF
		dc.b $7C ; |
		dc.b $F7
		dc.b $9F
		dc.b $98
		dc.b $BB
		dc.b $BB
		dc.b $BB
		dc.b $EF
		dc.b $AB
		dc.b $F3
		dc.b $17
		dc.b $77 ; w
		dc.b $77 ; w
		dc.b $7E ; ~
		dc.b $7B ; {
		dc.b $AF
		dc.b $57 ; W
		dc.b $B7
		dc.b $77 ; w
		dc.b $77 ; w
		dc.b $7C ; |
		dc.b $FC
		dc.b $C0
		dc.b   0
		dc.b $80
		dc.b  $D
		dc.b $80
		dc.b   4
		dc.b  $A
		dc.b $14
		dc.b   8
		dc.b $23 ; #
		dc.b   3
		dc.b $37 ; 7
		dc.b $7C ; |
		dc.b $81
		dc.b   2
		dc.b   0
		dc.b $88
		dc.b   3
		dc.b   2
		dc.b $89
		dc.b   4
		dc.b  $C
		dc.b $14
		dc.b  $B
		dc.b $25 ; %
		dc.b $1E
		dc.b $34 ; 4
		dc.b  $D
		dc.b $44 ; D
		dc.b   9
		dc.b $54 ; T
		dc.b  $E
		dc.b $68 ; h
		dc.b $FA
		dc.b $78 ; x
		dc.b $FB
		dc.b $FF
		dc.b $CA
		dc.b $C5
		dc.b $95
		dc.b $95
		dc.b $65 ; e
		dc.b $1A
		dc.b $32 ; 2
		dc.b $CF
		dc.b $E0
		dc.b $18
		dc.b $21 ; !
		dc.b   8
		dc.b $C1
		dc.b   8
		dc.b $46 ; F
		dc.b $7F ; 
		dc.b $83
		dc.b $10
		dc.b $84
		dc.b $29 ; )
		dc.b $42 ; B
		dc.b $37 ; 7
		dc.b $E6
		dc.b $FC
		dc.b $DF
		dc.b $9B
		dc.b $F3
		dc.b $7E ; ~
		dc.b $6F ; o
		dc.b $CD
		dc.b $42 ; B
		dc.b $10
		dc.b $A5
		dc.b $CB
		dc.b $97
		dc.b $2E ; .
		dc.b $5C ; \
		dc.b $B9
		dc.b $42 ; B
		dc.b $FB
		dc.b $C4
		dc.b $29 ; )
		dc.b $72 ; r
		dc.b $E5
		dc.b $CB
		dc.b $97
		dc.b $2E ; .
		dc.b $50 ; P
		dc.b $AC
		dc.b $44 ; D
		dc.b $B9
		dc.b $72 ; r
		dc.b $E5
		dc.b $CB
		dc.b $97
		dc.b $22 ; "
		dc.b $35 ; 5
		dc.b $1D
		dc.b   2
		dc.b $DF
		dc.b $88
		dc.b $BF
		dc.b $E8
		dc.b  $B
		dc.b $FA
		dc.b   2
		dc.b $F8
		dc.b $8B
		dc.b $81
		dc.b $6A ; j
		dc.b $39 ; 9
		dc.b $1E
		dc.b $2E ; .
		dc.b $2C ; ,
		dc.b $AB
		dc.b $8C
		dc.b $23 ; #
		dc.b   8
		dc.b $18
		dc.b $C6
		dc.b $3C ; <
		dc.b $23 ; #
		dc.b   8
		dc.b $B2
		dc.b $AD
		dc.b $1E
		dc.b $3C ; <
		dc.b $71 ; q
		dc.b $5D ; ]
		dc.b $1D
		dc.b $1D
		dc.b $1D
		dc.b $1C
		dc.b $57 ; W
		dc.b $D1
		dc.b $F6
		dc.b $BC
		dc.b $BD
		dc.b $4A ; J
		dc.b $E9
		dc.b $5C ; \
		dc.b $2C ; ,
		dc.b $8B
		dc.b $6A ; j
		dc.b $2D ; -
		dc.b $A8
		dc.b $B8
		dc.b $59 ; Y
		dc.b $17
		dc.b $4A ; J
		dc.b $E9
		dc.b $5A ; Z
		dc.b $F2
		dc.b $F2
		dc.b $3A ; :
		dc.b $35 ; 5
		dc.b $64 ; d
		dc.b $6D ; m
		dc.b $28 ; (
		dc.b $DA
		dc.b $51 ; Q
		dc.b $AB
		dc.b $23 ; #
		dc.b $A3
		dc.b $91
		dc.b $F7
		dc.b $E3
		dc.b $8A
		dc.b $92
		dc.b $34 ; 4
		dc.b $7A ; z
		dc.b $39 ; 9
		dc.b $23 ; #
		dc.b $8A
		dc.b $FA
		dc.b $3C ; <
		dc.b $71 ; q
		dc.b $52 ; R
		dc.b $46 ; F
		dc.b $8F
		dc.b $47 ; G
		dc.b $24 ; $
		dc.b $71 ; q
		dc.b $5F ; _
		dc.b $46 ; F
		dc.b $AF
		dc.b $2F ; /
		dc.b $52 ; R
		dc.b $BA
		dc.b $57 ; W
		dc.b  $B
		dc.b $21 ; !
		dc.b $63 ; c
		dc.b $4D ; M
		dc.b $34 ; 4
		dc.b $D4
		dc.b $2C ; ,
		dc.b $85
		dc.b $94
		dc.b $AE
		dc.b $95
		dc.b $AF
		dc.b $2F ; /
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $34 ; 4
		dc.b $80
		dc.b   3
		dc.b   1
		dc.b $16
		dc.b $3A ; :
		dc.b $74 ; t
		dc.b   6
		dc.b $81
		dc.b $67 ; g
		dc.b $77 ; w
		dc.b $76 ; v
		dc.b $36 ; 6
		dc.b $82
		dc.b   4
		dc.b   5
		dc.b $16
		dc.b $39 ; 9
		dc.b $25 ; %
		dc.b $15
		dc.b $36 ; 6
		dc.b $38 ; 8
		dc.b $47 ; G
		dc.b $7B ; {
		dc.b $56 ; V
		dc.b $3C ; <
		dc.b $66 ; f
		dc.b $33 ; 3
		dc.b $75 ; u
		dc.b $18
		dc.b $83
		dc.b   3
		dc.b   0
		dc.b $15
		dc.b $13
		dc.b $26 ; &
		dc.b $37 ; 7
		dc.b $35 ; 5
		dc.b $1A
		dc.b $48 ; H
		dc.b $F9
		dc.b $55 ; U
		dc.b $16
		dc.b $66 ; f
		dc.b $32 ; 2
		dc.b $74 ; t
		dc.b   8
		dc.b $84
		dc.b   5
		dc.b $12
		dc.b $68 ; h
		dc.b $F8
		dc.b $75 ; u
		dc.b $17
		dc.b $8E
		dc.b   4
		dc.b   7
		dc.b $14
		dc.b   4
		dc.b $27 ; '
		dc.b $7A ; z
		dc.b $35 ; 5
		dc.b $14
		dc.b $47 ; G
		dc.b $76 ; v
		dc.b $58 ; X
		dc.b $FA
		dc.b $FF
		dc.b $66 ; f
		dc.b $63 ; c
		dc.b $F0
		dc.b $65 ; e
		dc.b $63 ; c
		dc.b $91
		dc.b $C8
		dc.b $E4
		dc.b $CC
		dc.b $D7
		dc.b $88
		dc.b $88
		dc.b $39 ; 9
		dc.b $9C
		dc.b $CE
		dc.b $67 ; g
		dc.b $33 ; 3
		dc.b $99
		dc.b $EE
		dc.b $C7
		dc.b $E3
		dc.b $18
		dc.b $C6
		dc.b $31 ; 1
		dc.b $B3
		dc.b $5C ; \
		dc.b $CA
		dc.b $C7
		dc.b $23 ; #
		dc.b $91
		dc.b $C8
		dc.b $E6
		dc.b $73 ; s
		dc.b $39 ; 9
		dc.b $9C
		dc.b $E2
		dc.b $22 ; "
		dc.b $31 ; 1
		dc.b $8C
		dc.b $60 ; `
		dc.b $E6
		dc.b $7B ; {
		dc.b $B1
		dc.b $F8
		dc.b $32 ; 2
		dc.b $B1
		dc.b $C8
		dc.b $E4
		dc.b $72 ; r
		dc.b $C6
		dc.b $CD
		dc.b $78 ; x
		dc.b $88
		dc.b $8C
		dc.b $CF
		dc.b $76 ; v
		dc.b $37 ; 7
		dc.b $88
		dc.b $88
		dc.b $C6
		dc.b $CD
		dc.b $F0
		dc.b $6D ; m
		dc.b $23 ; #
		dc.b $91
		dc.b $C8
		dc.b $E4
		dc.b $71 ; q
		dc.b $8C
		dc.b $63 ; c
		dc.b $1B
		dc.b $37 ; 7
		dc.b $E9
		dc.b $3A ; :
		dc.b $FD
		dc.b $24 ; $
		dc.b $E5
		dc.b $D4
		dc.b $BE
		dc.b $7A ; z
		dc.b $B7
		dc.b $56 ; V
		dc.b $EB
		dc.b $7A ; z
		dc.b $F5
		dc.b $E7
		dc.b $5E ; ^
		dc.b $75 ; u
		dc.b $E7
		dc.b $55 ; U
		dc.b $39 ; 9
		dc.b $9E
		dc.b $EC
		dc.b $CC
		dc.b $CC
		dc.b $D8
		dc.b $D9
		dc.b $99
		dc.b $99
		dc.b $9A
		dc.b $BD
		dc.b $57 ; W
		dc.b $F4
		dc.b $3D ; =
		dc.b $7E ; ~
		dc.b $85
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $AF
		dc.b $1B
		dc.b $A7
		dc.b $CD
		dc.b $37 ; 7
		dc.b $FA
		dc.b $1F
		dc.b $FE
		dc.b $5C ; \
		dc.b $BF
		dc.b $FD
		dc.b $FF
		dc.b $E5
		dc.b $CB
		dc.b $66 ; f
		dc.b $BB
		dc.b $33 ; 3
		dc.b $5E ; ^
		dc.b $35 ; 5
		dc.b $4D ; M
		dc.b $53 ; S
		dc.b $54 ; T
		dc.b $E2
		dc.b $9C
		dc.b $53 ; S
		dc.b $8A
		dc.b $71 ; q
		dc.b $4F ; O
		dc.b $7B ; {
		dc.b $EC
		dc.b $D7
		dc.b $A0
		dc.b $AD
		dc.b   5
		dc.b $68 ; h
		dc.b $2B ; +
		dc.b $41 ; A
		dc.b $5D ; ]
		dc.b $4A ; J
		dc.b $BB
		dc.b $35 ; 5
		dc.b $D9
		dc.b $9A
		dc.b $F0
		dc.b $12
		dc.b $69 ; i
		dc.b $34 ; 4
		dc.b $9A
		dc.b $4D ; M
		dc.b $26 ; &
		dc.b $81
		dc.b $50 ; P
		dc.b $2A ; *
		dc.b   5
		dc.b $40 ; @
		dc.b $A8
		dc.b $15
		dc.b   2
		dc.b $A0
		dc.b $54 ; T
		dc.b  $A
		dc.b $83
		dc.b $91
		dc.b $2E ; .
		dc.b $44 ; D
		dc.b $B6
		dc.b $6B ; k
		dc.b $99
		dc.b $58 ; X
		dc.b $D9
		dc.b $CD
		dc.b $9C
		dc.b $D9
		dc.b $CF
		dc.b $8E
		dc.b $7C ; |
		dc.b $73 ; s
		dc.b $E3
		dc.b $9F
		dc.b $1E
		dc.b $1F
		dc.b $77 ; w
		dc.b $DD
		dc.b $E6
		dc.b $93
		dc.b $41 ; A
		dc.b $E8
		dc.b $7F ; 
		dc.b $FB
		dc.b $D0
		dc.b $F4
		dc.b $3D ; =
		dc.b   5
		dc.b $40 ; @
		dc.b $A8
		dc.b $39 ; 9
		dc.b $71 ; q
		dc.b $CD
		dc.b $A4
		dc.b $5E ; ^
		dc.b $C5
		dc.b $EC
		dc.b $5E ; ^
		dc.b $C5
		dc.b $C7
		dc.b $B2
		dc.b $E3
		dc.b $D9
		dc.b $71 ; q
		dc.b $EC
		dc.b $B8
		dc.b $F6
		dc.b $63 ; c
		dc.b $49 ; I
		dc.b $6A ; j
		dc.b $6A ; j
		dc.b $9C
		dc.b $53 ; S
		dc.b $8A
		dc.b $71 ; q
		dc.b $4E ; N
		dc.b $12
		dc.b $22 ; "
		dc.b $26 ; &
		dc.b $96
		dc.b $A0
		dc.b $AA
		dc.b $4F ; O
		dc.b $89
		dc.b $E3
		dc.b $C8
		dc.b $DD
		dc.b $F7
		dc.b $49 ; I
		dc.b $A4
		dc.b $FD
		dc.b  $F
		dc.b $43 ; C
		dc.b $FF
		dc.b $DE
		dc.b $87
		dc.b $A0
		dc.b $81
		dc.b $50 ; P
		dc.b $2B ; +
		dc.b $8E
		dc.b $5C ; \
		dc.b $72 ; r
		dc.b $E7
		dc.b $33 ; 3
		dc.b $DD
		dc.b $8F
		dc.b $C1
		dc.b $95
		dc.b $8D
		dc.b $9C
		dc.b $E4
		dc.b $62 ; b
		dc.b $55 ; U
		dc.b $97
		dc.b $3B ; ;
		dc.b $35 ; 5
		dc.b $E3
		dc.b $B4
		dc.b $DC
		dc.b $26 ; &
		dc.b $9C
		dc.b $26 ; &
		dc.b $9D
		dc.b $65 ; e
		dc.b $EC
		dc.b $F7
		dc.b $63 ; c
		dc.b $78 ; x
		dc.b $79 ; y
		dc.b $BE
		dc.b $9E
		dc.b $69 ; i
		dc.b $34 ; 4
		dc.b $9F
		dc.b $63 ; c
		dc.b $99
		dc.b $EE
		dc.b $D7
		dc.b $87
		dc.b $1D
		dc.b $83
		dc.b $84
		dc.b $D3
		dc.b $84
		dc.b $D2
		dc.b $A0
		dc.b $AB
		dc.b $AA
		dc.b  $A
		dc.b $BA
		dc.b $A0
		dc.b $AB
		dc.b $AA
		dc.b  $A
		dc.b $BF
		dc.b $22 ; "
		dc.b $5C ; \
		dc.b $6C ; l
		dc.b $D7
		dc.b $70 ; p
		dc.b $A8
		dc.b $15
		dc.b   2
		dc.b $A0
		dc.b $54 ; T
		dc.b  $A
		dc.b $81
		dc.b $50 ; P
		dc.b $2A ; *
		dc.b   5
		dc.b $71 ; q
		dc.b $2E ; .
		dc.b $44 ; D
		dc.b $B9
		dc.b $D9
		dc.b $AE
		dc.b $E2
		dc.b $81
		dc.b $5C ; \
		dc.b $26 ; &
		dc.b $EA
		dc.b $E1
		dc.b   5
		dc.b $5C ; \
		dc.b $76 ; v
		dc.b $9C
		dc.b $97
		dc.b $52 ; R
		dc.b $D9
		dc.b $AF
		dc.b $8D
		dc.b $98
		dc.b $FC
		dc.b $19
		dc.b $58 ; X
		dc.b $8A
		dc.b $4C ; L
		dc.b $84
		dc.b   8
		dc.b   8
		dc.b $40 ; @
		dc.b $83
		dc.b $33 ; 3
		dc.b $DD
		dc.b $8D
		dc.b $E3
		dc.b $B0
		dc.b $A6
		dc.b $A9
		dc.b $A4
		dc.b $3E ; >
		dc.b   3
		dc.b $DD
		dc.b $AF
		dc.b   9
		dc.b $3A ; :
		dc.b   4
		dc.b   9
		dc.b $BA
		dc.b   4
		dc.b $9D
		dc.b $47 ; G
		dc.b $1B
		dc.b $35 ; 5
		dc.b $E1
		dc.b $E7
		dc.b $E8
		dc.b $3C ; <
		dc.b $D0
		dc.b $26 ; &
		dc.b $E8
		dc.b $12
		dc.b $72 ; r
		dc.b $F6
		dc.b $7B ; {
		dc.b $B1
		dc.b $F8
		dc.b $36 ; 6
		dc.b $91
		dc.b $ED
		dc.b $32 ; 2
		dc.b $13
		dc.b $44 ; D
		dc.b $26 ; &
		dc.b $BA
		dc.b $5A ; Z
		dc.b   5
		dc.b $2A ; *
		dc.b $81
		dc.b $C2
		dc.b $95
		dc.b $40 ; @
		dc.b $80
		dc.b $AA
		dc.b   4
		dc.b   7
		dc.b $91
		dc.b $25 ; %
		dc.b $12
		dc.b $3D ; =
		dc.b $D8
		dc.b $FC
		dc.b $50 ; P
		dc.b $2D ; -
		dc.b $27 ; '
		dc.b $25 ; %
		dc.b $A0
		dc.b $AF
		dc.b $FB
		dc.b $82
		dc.b $2E ; .
		dc.b $A4
		dc.b $A3
		dc.b $66 ; f
		dc.b $BA
		dc.b   5
		dc.b $A4
		dc.b $F9
		dc.b $4D ; M
		dc.b $EA
		dc.b $81
		dc.b $45 ; E
		dc.b $69 ; i
		dc.b $2E ; .
		dc.b $37 ; 7
		dc.b $D9
		dc.b $BF
		dc.b $49 ; I
		dc.b $D7
		dc.b $E9
		dc.b   2
		dc.b $F6
		dc.b $12
		dc.b $54 ; T
		dc.b   8
		dc.b $39 ; 9
		dc.b $40 ; @
		dc.b $81
		dc.b $C2
		dc.b   4
		dc.b $9C
		dc.b $94
		dc.b $49 ; I
		dc.b $44 ; D
		dc.b $B6
		dc.b $6B ; k
		dc.b $AA
		dc.b  $A
		dc.b $95
		dc.b $41 ; A
		dc.b $52 ; R
		dc.b $A8
		dc.b $2A ; *
		dc.b $55 ; U
		dc.b   5
		dc.b $4F ; O
		dc.b $22 ; "
		dc.b $55 ; U
		dc.b $3D ; =
		dc.b $D8
		dc.b $FC
		dc.b $18
		dc.b $A4
		dc.b $DC
		dc.b $3F ; ?
		dc.b $CF
		dc.b $AB
		dc.b $50 ; P
		dc.b $70 ; p
		dc.b $F3
		dc.b $95
		dc.b $50 ; P
		dc.b $71 ; q
		dc.b $F4
		dc.b $15
		dc.b $E3
		dc.b $4F ; O
		dc.b $34 ; 4
		dc.b $9A
		dc.b $4F ; O
		dc.b $B6
		dc.b $F4
		dc.b $E3
		dc.b $B5
		dc.b $50 ; P
		dc.b $2A ; *
		dc.b   5
		dc.b $4A ; J
		dc.b $B8
		dc.b $54 ; T
		dc.b $89
		dc.b $FD
		dc.b $69 ; i
		dc.b $2C ; ,
		dc.b $9B
		dc.b $D5
		dc.b   2
		dc.b $8A
		dc.b $A0
		dc.b $51 ; Q
		dc.b $54 ; T
		dc.b  $A
		dc.b $2A ; *
		dc.b $81
		dc.b $4C ; L
		dc.b $AC
		dc.b $72 ; r
		dc.b $39 ; 9
		dc.b $1C
		dc.b $8F
		dc.b $8E
		dc.b $7D ; }
		dc.b $A1
		dc.b $F0
		dc.b $1C
		dc.b $E2
		dc.b   2
		dc.b $7C ; |
		dc.b $D3
		dc.b $5D ; ]
		dc.b $AB
		dc.b $F5
		dc.b $CD
		dc.b $A5
		dc.b $85
		dc.b $88
		dc.b $9F
		dc.b $D6
		dc.b $FD
		dc.b $B8
		dc.b $A7
		dc.b $B4
		dc.b $1E
		dc.b  $C
		dc.b $2D ; -
		dc.b $A4
		dc.b $72 ; r
		dc.b $29 ; )
		dc.b $F2
		dc.b $5E ; ^
		dc.b $C4
		dc.b $78 ; x
		dc.b $73 ; s
		dc.b $39 ; 9
		dc.b $9C
		dc.b $C8
		dc.b   0
		dc.b $80
		dc.b   4
		dc.b $80
		dc.b   4
		dc.b   8
		dc.b $34 ; 4
		dc.b  $D
		dc.b $46 ; F
		dc.b $3E ; >
		dc.b $54 ; T
		dc.b  $B
		dc.b $64 ; d
		dc.b  $E
		dc.b $73 ; s
		dc.b   3
		dc.b $81
		dc.b   4
		dc.b   9
		dc.b $82
		dc.b   5
		dc.b $1E
		dc.b $14
		dc.b  $A
		dc.b $83
		dc.b   4
		dc.b  $C
		dc.b $85
		dc.b   3
		dc.b   0
		dc.b $86
		dc.b   3
		dc.b   1
		dc.b $13
		dc.b   2
		dc.b $FF
		dc.b $5D ; ]
		dc.b $E5
		dc.b $A7
		dc.b $F4
		dc.b $4B ; K
		dc.b $4C ; L
		dc.b $52 ; R
		dc.b $83
		dc.b $F8
		dc.b $43 ; C
		dc.b $F9
		dc.b  $A
		dc.b $FD
		dc.b   4
		dc.b $8F
		dc.b $88
		dc.b $C1
		dc.b $73 ; s
		dc.b $83
		dc.b $48 ; H
		dc.b $9C
		dc.b $17
		dc.b $39 ; 9
		dc.b $A4
		dc.b $38 ; 8
		dc.b $9F
		dc.b $88
		dc.b $7C ; |
		dc.b $43 ; C
		dc.b $E2
		dc.b $DB
		dc.b $57 ; W
		dc.b $4A ; J
		dc.b $E9
		dc.b $5D ; ]
		dc.b $2B ; +
		dc.b $F4
		dc.b  $D
		dc.b $A8
		dc.b $C1
		dc.b $FA
		dc.b $2F ; /
		dc.b $D3
		dc.b $47 ; G
		dc.b $A1
		dc.b $3F ; ?
		dc.b $D0
		dc.b $48 ; H
		dc.b $2F ; /
		dc.b $E1
		dc.b $C0
		dc.b $80
		dc.b $3B ; ;
		dc.b $80
		dc.b   5
		dc.b $1D
		dc.b $14
		dc.b  $C
		dc.b $23 ; #
		dc.b   4
		dc.b $34 ; 4
		dc.b   6
		dc.b $45 ; E
		dc.b $1A
		dc.b $55 ; U
		dc.b $1E
		dc.b $65 ; e
		dc.b $1C
		dc.b $72 ; r
		dc.b   0
		dc.b $89
		dc.b   7
		dc.b $7D ; }
		dc.b $8C
		dc.b   3
		dc.b   2
		dc.b $14
		dc.b  $B
		dc.b $24 ; $
		dc.b   7
		dc.b $34 ; 4
		dc.b  $A
		dc.b $45 ; E
		dc.b $1B
		dc.b $57 ; W
		dc.b $7C ; |
		dc.b $FF
		dc.b $EF
		dc.b $FA
		dc.b $40 ; @
		dc.b   0
		dc.b $FA
		dc.b $6A ; j
		dc.b $F8
		dc.b $8E
		dc.b $2E ; .
		dc.b $20
		dc.b $F2
		dc.b $ED
		dc.b $CF
		dc.b $92
		dc.b $C7
		dc.b $8F
		dc.b $AB
		dc.b $ED
		dc.b $92
		dc.b $F1
		dc.b $66 ; f
		dc.b $F3
		dc.b $E4
		dc.b $71 ; q
		dc.b $35 ; 5
		dc.b $33 ; 3
		dc.b $97
		dc.b $EB
		dc.b $C5
		dc.b $EF
		dc.b $92
		dc.b $85
		dc.b $1F
		dc.b $4E ; N
		dc.b $6A ; j
		dc.b $A6
		dc.b $E3
		dc.b $B6
		dc.b $C6
		dc.b $7D ; }
		dc.b $38 ; 8
		dc.b $32 ; 2
		dc.b $8B
		dc.b $37 ; 7
		dc.b $2F ; /
		dc.b $B6
		dc.b   0
		dc.b $69 ; i
		dc.b   0
		dc.b   0
		dc.b $DF
		dc.b $46 ; F
		dc.b $76 ; v
		dc.b $A3
		dc.b $4F ; O
		dc.b $A7
		dc.b  $F
		dc.b $B1
		dc.b $11
		dc.b   6
		dc.b $3E ; >
		dc.b $9C
		dc.b $31 ; 1
		dc.b $72 ; r
		dc.b $B5
		dc.b $43 ; C
		dc.b $53 ; S
		dc.b $50 ; P
		dc.b $D5
		dc.b $29 ; )
		dc.b $AA
		dc.b $2E ; .
		dc.b $D0
		dc.b $D4
		dc.b $D6
		dc.b $59 ; Y
		dc.b $14
		dc.b $59 ; Y
		dc.b $BC
		dc.b $F9
		dc.b $10
		dc.b $ED
		dc.b $4C ; L
		dc.b $8A
		dc.b $6A ; j
		dc.b $C5
		dc.b $DB
		dc.b $9F
		dc.b $25 ; %
		dc.b $8F
		dc.b $29 ; )
		dc.b $AC
		dc.b $F5
		dc.b $EB
		dc.b $73 ; s
		dc.b $79 ; y
		dc.b $42 ; B
		dc.b $6A ; j
		dc.b $67 ; g
		dc.b $2F ; /
		dc.b $D7
		dc.b $8B
		dc.b $DF
		dc.b $32 ; 2
		dc.b $FB
		dc.b $60 ; `
		dc.b   2
		dc.b $64 ; d
		dc.b $D5
		dc.b $AA
		dc.b $1A
		dc.b $9A
		dc.b $CB
		dc.b $22 ; "
		dc.b $8B
		dc.b $36 ; 6
		dc.b $D4
		dc.b $33 ; 3
		dc.b $E9
		dc.b $CD
		dc.b $54 ; T
		dc.b $DC
		dc.b $AC
		dc.b $F8
		dc.b $4A ; J
		dc.b $D5
		dc.b $13
		dc.b $72 ; r
		dc.b $A6
		dc.b $F3
		dc.b $E6
		dc.b $58 ; X
		dc.b $FA
		dc.b $73 ; s
		dc.b $54 ; T
		dc.b $D4
		dc.b $CF
		dc.b $EB
		dc.b   0
		dc.b $34 ; 4
		dc.b $89
		dc.b $5A ; Z
		dc.b $73 ; s
		dc.b $4F ; O
		dc.b $AB
		dc.b $10
		dc.b $CB
		dc.b $8F
		dc.b $D5
		dc.b $9B
		dc.b $14
		dc.b $7D ; }
		dc.b $3F ; ?
		dc.b $51 ; Q
		dc.b $C5
		dc.b $8A
		dc.b $2C ; ,
		dc.b $51 ; Q
		dc.b  $C
		dc.b $B9
		dc.b $7C ; |
		dc.b $BE
		dc.b $21 ; !
		dc.b $94
		dc.b $58 ; X
		dc.b $FE
		dc.b $7E ; ~
		dc.b $58 ; X
		dc.b $7A ; z
		dc.b $D9
		dc.b $D9
		dc.b $F4
		dc.b $F3
		dc.b $E0
		dc.b   4
		dc.b $DB
		dc.b $3C ; <
		dc.b $51 ; Q
		dc.b $32 ; 2
		dc.b $EA
		dc.b $D3
		dc.b $92
		dc.b $FA
		dc.b $9A
		dc.b $C2
		dc.b $21 ; !
		dc.b $DB
		dc.b $62 ; b
		dc.b $8F
		dc.b $D5
		dc.b $1C
		dc.b $19
		dc.b $45 ; E
		dc.b $2B ; +
		dc.b $54 ; T
		dc.b $29 ; )
		dc.b $B9
		dc.b $43 ; C
		dc.b $54 ; T
		dc.b $A1
		dc.b $7A ; z
		dc.b $CF
		dc.b $5F ; _
		dc.b $11
		dc.b $EB
		dc.b $F6
		dc.b $F3
		dc.b $E4
		dc.b $B2
		dc.b $DB
		dc.b $72 ; r
		dc.b $C7
		dc.b $D5
		dc.b $C5
		dc.b $89
		dc.b $B7
		dc.b $94
		dc.b $5C ; \
		dc.b $A6
		dc.b $70 ; p
		dc.b $65 ; e
		dc.b $C7
		dc.b $EA
		dc.b $CD
		dc.b $F1
		dc.b   7
		dc.b $14
		dc.b $F9
		dc.b $1E
		dc.b $6D ; m
		dc.b $A8
		dc.b $67 ; g
		dc.b $D3
		dc.b $9A
		dc.b $A9
		dc.b $B6
		dc.b $AD
		dc.b $50 ; P
		dc.b $D4
		dc.b $CE
		dc.b  $C
		dc.b $BC
		dc.b $ED
		dc.b $B0
		dc.b   9
		dc.b $B6
		dc.b $76 ; v
		dc.b $79 ; y
		dc.b $F3
		dc.b $8B
		dc.b $4F ; O
		dc.b $AB
		dc.b $1A
		dc.b $B5
		dc.b $59 ; Y
		dc.b $4D ; M
		dc.b $BC
		dc.b $B2
		dc.b $A3
		dc.b $E9
		dc.b $65 ; e
		dc.b $9C
		dc.b $58 ; X
		dc.b $BB
		dc.b $71 ; q
		dc.b $63 ; c
		dc.b $C5
		dc.b $CA
		dc.b $F5
		dc.b $E9
		dc.b   6
		dc.b $2C ; ,
		dc.b $51 ; Q
		dc.b $79 ; y
		dc.b $71 ; q
		dc.b   0
		dc.b   8
		dc.b $A9
		dc.b $B2
		dc.b $56 ; V
		dc.b $A8
		dc.b $9B
		dc.b $95
		dc.b $37 ; 7
		dc.b $8B
		dc.b $B5
		dc.b $88
		dc.b $EB
		dc.b $E9
		dc.b $CD
		dc.b $54 ; T
		dc.b $DC
		dc.b $A6
		dc.b $5D ; ]
		dc.b $B0
		dc.b   3
		dc.b $48 ; H
		dc.b $EB
		dc.b $B6
		dc.b $F8
		dc.b $83
		dc.b $8A
		dc.b $6D ; m
		dc.b $9E
		dc.b $20
		dc.b   0
		dc.b $A9
		dc.b $BC
		dc.b $DB
		dc.b $56 ; V
		dc.b $23 ; #
		dc.b $B7
		dc.b $EB
		dc.b $3D ; =
		dc.b $53 ; S
		dc.b $79 ; y
		dc.b $53 ; S
		dc.b $E4
		dc.b $43 ; C
		dc.b $B5
		dc.b $32 ; 2
		dc.b   8
		dc.b $B1
		dc.b $76 ; v
		dc.b $FC
		dc.b $E6
		dc.b $9F
		dc.b $48 ; H
		dc.b $B3
		dc.b $88
		dc.b $65 ; e
		dc.b $C4
		dc.b   1
		dc.b $C5
		dc.b $C7
		dc.b $C4
		dc.b $C8
		dc.b $8B
		dc.b $97
		dc.b $CB
		dc.b $E2
		dc.b $EA
		dc.b $F5
		dc.b $E2
		dc.b $8B
		dc.b $37 ; 7
		dc.b $2F ; /
		dc.b $B6
		dc.b   0
		dc.b $26 ; &
		dc.b $51 ; Q
		dc.b $F1
		dc.b $62 ; b
		dc.b $EA
		dc.b $8B
		dc.b $88
		dc.b  $E
		dc.b $AE
		dc.b $AD
		dc.b $3E ; >
		dc.b $28 ; (
		dc.b $B1
		dc.b $FA
		dc.b $9A
		dc.b $BC
		dc.b $B5
		dc.b $7E ; ~
		dc.b $B3
		dc.b $D7
		dc.b $8B
		dc.b $37 ; 7
		dc.b $EB
		dc.b $3C ; <
		dc.b $B8
		dc.b $8E
		dc.b $5F ; _
		dc.b $AC
		dc.b $C7
		dc.b $6D ; m
		dc.b $80
		dc.b $4D ; M
		dc.b $B3
		dc.b $CA
		dc.b $D5
		dc.b  $D
		dc.b $4C ; L
		dc.b $E0
		dc.b $CB
		dc.b $4F ; O
		dc.b $1F
		dc.b $AB
		dc.b $1C
		dc.b   1
		dc.b $75 ; u
		dc.b $67 ; g
		dc.b $C8
		dc.b $F1
		dc.b $4B ; K
		dc.b $22 ; "
		dc.b $E5
		dc.b $F2
		dc.b $F8
		dc.b $FE
		dc.b $51 ; Q
		dc.b $44 ; D
		dc.b   0
		dc.b $1C
		dc.b   0
		dc.b   0
		dc.b $31 ; 1
		dc.b $80
		dc.b   2
		dc.b   1
		dc.b $14
		dc.b  $A
		dc.b $81
		dc.b   6
		dc.b $36 ; 6
		dc.b $76 ; v
		dc.b $38 ; 8
		dc.b $82
		dc.b   7
		dc.b $76 ; v
		dc.b $83
		dc.b   7
		dc.b $77 ; w
		dc.b $67 ; g
		dc.b $7A ; z
		dc.b $78 ; x
		dc.b $F6
		dc.b $86
		dc.b   4
		dc.b  $B
		dc.b $17
		dc.b $78 ; x
		dc.b $87
		dc.b   5
		dc.b $1A
		dc.b $18
		dc.b $F7
		dc.b $27 ; '
		dc.b $79 ; y
		dc.b $89
		dc.b   2
		dc.b   0
		dc.b $13
		dc.b   4
		dc.b $26 ; &
		dc.b $37 ; 7
		dc.b $36 ; 6
		dc.b $3A ; :
		dc.b $66 ; f
		dc.b $39 ; 9
		dc.b $74 ; t
		dc.b  $C
		dc.b $FF
		dc.b $62 ; b
		dc.b $25 ; %
		dc.b   8
		dc.b $88
		dc.b $C4
		dc.b $4A ; J
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $94
		dc.b $22 ; "
		dc.b $23 ; #
		dc.b $11
		dc.b $28 ; (
		dc.b $44 ; D
		dc.b $62 ; b
		dc.b $22 ; "
		dc.b $50 ; P
		dc.b $88
		dc.b $C4
		dc.b $44 ; D
		dc.b $A1
		dc.b $11
		dc.b $88
		dc.b $89
		dc.b $42 ; B
		dc.b $23 ; #
		dc.b $11
		dc.b $12
		dc.b $84
		dc.b $46 ; F
		dc.b $25 ; %
		dc.b $4A ; J
		dc.b $94
		dc.b $31 ; 1
		dc.b $2A ; *
		dc.b $54 ; T
		dc.b $A1
		dc.b $89
		dc.b $52 ; R
		dc.b $A5
		dc.b  $C
		dc.b $4A ; J
		dc.b $95
		dc.b $28 ; (
		dc.b $70 ; p
		dc.b $FF
		dc.b $A7
		dc.b $B7
		dc.b $B0
		dc.b $88
		dc.b $94
		dc.b $22 ; "
		dc.b $31 ; 1
		dc.b $11
		dc.b $28 ; (
		dc.b $44 ; D
		dc.b $70 ; p
		dc.b $FF
		dc.b $21 ; !
		dc.b $E8
		dc.b $F5
		dc.b $11
		dc.b $12
		dc.b $84
		dc.b $46 ; F
		dc.b $22 ; "
		dc.b $25 ; %
		dc.b   8
		dc.b $8E
		dc.b $4F ; O
		dc.b $F2
		dc.b $1E
		dc.b $8F
		dc.b $42 ; B
		dc.b $22 ; "
		dc.b $50 ; P
		dc.b $88
		dc.b $C4
		dc.b $44 ; D
		dc.b $A1
		dc.b $11
		dc.b $C3
		dc.b $FE
		dc.b $9E
		dc.b $DE
		dc.b $C2
		dc.b $22 ; "
		dc.b $50 ; P
		dc.b $88
		dc.b $EF
		dc.b $FD
		dc.b $17
		dc.b $68 ; h
		dc.b $8E
		dc.b $1F
		dc.b $F4
		dc.b $F6
		dc.b $F6
		dc.b $11
		dc.b $12
		dc.b $84
		dc.b $44 ; D
		dc.b $E1
		dc.b $11
		dc.b $1C
		dc.b $3F ; ?
		dc.b $49 ; I
		dc.b $3F ; ?
		dc.b $49 ; I
		dc.b $FA
		dc.b $39 ; 9
		dc.b $FD
		dc.b $39 ; 9
		dc.b $FA
		dc.b $31 ; 1
		dc.b $11
		dc.b $28 ; (
		dc.b $44 ; D
		dc.b $4E ; N
		dc.b $11
		dc.b $11
		dc.b $C3
		dc.b $FC
		dc.b $87
		dc.b $A3
		dc.b $D4
		dc.b $44 ; D
		dc.b $4A ; J
		dc.b $11
		dc.b $13
		dc.b $84
		dc.b $44 ; D
		dc.b $72 ; r
		dc.b $7F ; 
		dc.b $90
		dc.b $F4
		dc.b $7A ; z
		dc.b $11
		dc.b $12
		dc.b $84
		dc.b $44 ; D
		dc.b $E1
		dc.b $11
		dc.b $1C
		dc.b $3F ; ?
		dc.b $E9
		dc.b $ED
		dc.b $EC
		dc.b $22 ; "
		dc.b $25 ; %
		dc.b   8
		dc.b $89
		dc.b $FD
		dc.b $18
		dc.b $88
		dc.b $9B
		dc.b $4D ; M
		dc.b $84
		dc.b $4A ; J
		dc.b $D9
		dc.b $11
		dc.b $9B
		dc.b   8
		dc.b $95
		dc.b $B2
		dc.b $23 ; #
		dc.b $36 ; 6
		dc.b $11
		dc.b $2B ; +
		dc.b $64 ; d
		dc.b $46 ; F
		dc.b $6C ; l
		dc.b $22 ; "
		dc.b $56 ; V
		dc.b $C8
		dc.b $8C
		dc.b $44 ; D
		dc.b $4A ; J
		dc.b $11
		dc.b $18
		dc.b $88
		dc.b $94
		dc.b $3E ; >
		dc.b   6
		dc.b $27 ; '
		dc.b $89
		dc.b $43 ; C
		dc.b $BB
		dc.b $11
		dc.b $12
		dc.b $84
		dc.b $46 ; F
		dc.b $22 ; "
		dc.b $3B ; ;
		dc.b   8
		dc.b $89
		dc.b $B4
		dc.b $44 ; D
		dc.b $76 ; v
		dc.b $11
		dc.b $13
		dc.b $68 ; h
		dc.b $88
		dc.b $EC
		dc.b $22 ; "
		dc.b $26 ; &
		dc.b $D1
		dc.b $11
		dc.b $D8
		dc.b $44 ; D
		dc.b $4D ; M
		dc.b $8F
		dc.b $F3
		dc.b $75 ; u
		dc.b $7F ; 
		dc.b $C9
		dc.b $4B ; K
		dc.b $12
		dc.b $86
		dc.b $E3
		dc.b $12
		dc.b $C4
		dc.b $A1
		dc.b $B8
		dc.b $C4
		dc.b $B1
		dc.b $28 ; (
		dc.b $77 ; w
		dc.b $67 ; g
		dc.b $F1
		dc.b $8A
		dc.b $BE
		dc.b $AE
		dc.b $58 ; X
		dc.b $8D
		dc.b $8D
		dc.b $9F
		dc.b $A6
		dc.b $DE
		dc.b $F7
		dc.b $B2
		dc.b $AE
		dc.b $25 ; %
		dc.b $CB
		dc.b $11
		dc.b $B1
		dc.b $DD
		dc.b $18
		dc.b $FE
		dc.b $D8
		dc.b $AB
		dc.b $EA
		dc.b $E5
		dc.b $88
		dc.b $D8
		dc.b $D9
		dc.b $E0
		dc.b $B9
		dc.b $7D ; }
		dc.b $58 ; X
		dc.b $DC
		dc.b $4B ; K
		dc.b $96
		dc.b $23 ; #
		dc.b $63 ; c
		dc.b $BB
		dc.b $D3
		dc.b $FB
		dc.b $62 ; b
		dc.b $AF
		dc.b $AB
		dc.b $96
		dc.b $23 ; #
		dc.b $1B
		dc.b $88
		dc.b $CB
		dc.b $11
		dc.b $2A ; *
		dc.b $E2
		dc.b $5E ; ^
		dc.b $FF
		dc.b $B6
		dc.b $2B ; +
		dc.b $F9
		dc.b $2C ; ,
		dc.b $B1
		dc.b $3C ; <
		dc.b  $D
		dc.b $CB
		dc.b $EA
		dc.b $CB
		dc.b $12
		dc.b $BC
		dc.b   8
		dc.b $CB
		dc.b $2C ; ,
		dc.b $4A ; J
		dc.b $B9
		dc.b $63 ; c
		dc.b $2C ; ,
		dc.b $4F ; O
		dc.b   3
		dc.b $BB
		dc.b $D2
		dc.b $58 ; X
		dc.b $94
		dc.b $37 ; 7
		dc.b $18
		dc.b $96
		dc.b $25 ; %
		dc.b  $D
		dc.b $C6
		dc.b $25 ; %
		dc.b $89
		dc.b $43 ; C
		dc.b $71 ; q
		dc.b $89
		dc.b $62 ; b
		dc.b $50 ; P
		dc.b $EE
		dc.b $96
		dc.b $88
		dc.b $D9
		dc.b $E1
		dc.b $1F
		dc.b   5
		dc.b $96
		dc.b $D9
		dc.b $65 ; e
		dc.b $CB
		dc.b $96
		dc.b $5F ; _
		dc.b $4D ; M
		dc.b $96
		dc.b $22 ; "
		dc.b $59 ; Y
		dc.b $71 ; q
		dc.b $1B
		dc.b $DD
		dc.b $1E
		dc.b $BF
		dc.b $AC
		dc.b $37 ; 7
		dc.b $CD
		dc.b $88
		dc.b $95
		dc.b $FC
		dc.b $6D ; m
		dc.b $EF
		dc.b $F9
		dc.b $35 ; 5
		dc.b $71 ; q
		dc.b $19
		dc.b $FD
		dc.b $61 ; a
		dc.b $CD
		dc.b $84
		dc.b $4A ; J
		dc.b $3F ; ?
		dc.b $A2
		dc.b $22 ; "
		dc.b $25 ; %
		dc.b   8
		dc.b $8C
		dc.b $44 ; D
		dc.b $4A ; J
		dc.b $11
		dc.b $18
		dc.b $88
		dc.b $94
		dc.b $22 ; "
		dc.b $31 ; 1
		dc.b $11
		dc.b $1E
		dc.b   4
		dc.b $44 ; D
		dc.b $A1
		dc.b $11
		dc.b $88
		dc.b $89
		dc.b $42 ; B
		dc.b $23 ; #
		dc.b $11
		dc.b $12
		dc.b $84
		dc.b $46 ; F
		dc.b $22 ; "
		dc.b $23 ; #
		dc.b $C0
		dc.b $88
		dc.b $94
		dc.b $22 ; "
		dc.b $31 ; 1
		dc.b $11
		dc.b $28 ; (
		dc.b $44 ; D
		dc.b $76 ; v
		dc.b $11
		dc.b $13
		dc.b $64 ; d
		dc.b $44 ; D
		dc.b $76 ; v
		dc.b $11
		dc.b $11
		dc.b $E0
		dc.b $44 ; D
		dc.b $4A ; J
		dc.b $11
		dc.b $13
		dc.b $8C
		dc.b $3B ; ;
		dc.b $4E ; N
		dc.b $D3
		dc.b $B1
		dc.b $DE
		dc.b $77 ; w
		dc.b $9D
		dc.b $C4
		dc.b $44 ; D
		dc.b $78 ; x
		dc.b $11
		dc.b $12
		dc.b $84
		dc.b $44 ; D
		dc.b $E3
		dc.b $33 ; 3
		dc.b $7F ; 
		dc.b $E3
		dc.b $88
		dc.b $88
		dc.b $F0
		dc.b $22 ; "
		dc.b $25 ; %
		dc.b   8
		dc.b $89
		dc.b $C6
		dc.b $67 ; g
		dc.b $F6
		dc.b $7D ; }
		dc.b $C4
		dc.b $44 ; D
		dc.b $78 ; x
		dc.b $11
		dc.b $12
		dc.b $84
		dc.b $44 ; D
		dc.b $E3
		dc.b $33 ; 3
		dc.b $CC
		dc.b $D6
		dc.b $E8
		dc.b $88
		dc.b $F0
		dc.b $22 ; "
		dc.b $25 ; %
		dc.b   8
		dc.b $89
		dc.b $C6
		dc.b $67 ; g
		dc.b $F2
		dc.b $7C ; |
		dc.b $88
		dc.b $88
		dc.b $F0
		dc.b $22 ; "
		dc.b $25 ; %
		dc.b   8
		dc.b $89
		dc.b $C6
		dc.b $66 ; f
		dc.b $FF
		dc.b $B7
		dc.b $88
		dc.b $88
		dc.b $F0
		dc.b $22 ; "
		dc.b $25 ; %
		dc.b   8
		dc.b $89
		dc.b $C6
		dc.b $61 ; a
		dc.b $FC
		dc.b $7D ; }
		dc.b $D1
		dc.b $11
		dc.b $E0
		dc.b $44 ; D
		dc.b $4A ; J
		dc.b $11
		dc.b $13
		dc.b $8C
		dc.b $CF
		dc.b $3F ; ?
		dc.b $D9
		dc.b $44 ; D
		dc.b $47 ; G
		dc.b $81
		dc.b $11
		dc.b $28 ; (
		dc.b $44 ; D
		dc.b $4E ; N
		dc.b $33 ; 3
		dc.b $B4
		dc.b $ED
		dc.b $3B ; ;
		dc.b $1D
		dc.b $E7
		dc.b $79 ; y
		dc.b $DE
		dc.b $22 ; "
		dc.b $23 ; #
		dc.b $C0
		dc.b $88
		dc.b $94
		dc.b $22 ; "
		dc.b $31 ; 1
		dc.b $11
		dc.b $1D
		dc.b $84
		dc.b $44 ; D
		dc.b $D9
		dc.b $11
		dc.b $1D
		dc.b $84
		dc.b $46 ; F
		dc.b $22 ; "
		dc.b $3B ; ;
		dc.b $1F
		dc.b $D1
		dc.b $DD
		dc.b $11
		dc.b $28 ; (
		dc.b $44 ; D
		dc.b $62 ; b
		dc.b $22 ; "
		dc.b $50 ; P
		dc.b $88
		dc.b $C4
		dc.b $44 ; D
		dc.b $A1
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $F1
		dc.b $99
		dc.b $99
		dc.b $98
		dc.b $22 ; "
		dc.b $27 ; '
		dc.b $19
		dc.b $99
		dc.b $99
		dc.b $93
		dc.b $F0
		dc.b $93
		dc.b $F0
		dc.b $93
		dc.b $F0
		dc.b $87
		dc.b $E1
		dc.b $27 ; '
		dc.b $E1
		dc.b $27 ; '
		dc.b $E1
		dc.b  $E
		dc.b $F3
		dc.b $BC
		dc.b $EE
		dc.b $76 ; v
		dc.b $9D
		dc.b $A7
		dc.b $63 ; c
		dc.b $69 ; i
		dc.b $B4
		dc.b $D8
		dc.b $ED
		dc.b $3B ; ;
		dc.b $4E ; N
		dc.b $D9
		dc.b $9F
		dc.b $C9
		dc.b $D7
		dc.b $3A ; :
		dc.b $E7
		dc.b $5C ; \
		dc.b $EB
		dc.b $9D
		dc.b $73 ; s
		dc.b $AC
		dc.b $CC
		dc.b $D7
		dc.b $3A ; :
		dc.b $9E
		dc.b $67 ; g
		dc.b $BF
		dc.b $F6
		dc.b $75 ; u
		dc.b $CE
		dc.b $B9
		dc.b $F7
		dc.b $CC
		dc.b $FE
		dc.b $4E ; N
		dc.b $B9
		dc.b $D4
		dc.b $F7
		dc.b $DF
		dc.b $5C ; \
		dc.b $EB
		dc.b $9D
		dc.b $4F ; O
		dc.b $33 ; 3
		dc.b $CE
		dc.b $67 ; g
		dc.b $5A ; Z
		dc.b $E7
		dc.b $5C ; \
		dc.b $FE
		dc.b $DF
		dc.b $AD
		dc.b $73 ; s
		dc.b $AD
		dc.b $FD
		dc.b $E6
		dc.b $B3
		dc.b $37 ; 7
		dc.b $D4
		dc.b $D6
		dc.b $FE
		dc.b $F3
		dc.b $5B ; [
		dc.b $FB
		dc.b $CF
		dc.b $DB
		dc.b $9A
		dc.b $9A
		dc.b $EB
		dc.b $53 ; S
		dc.b $5D ; ]
		dc.b $6A ; j
		dc.b $6B ; k
		dc.b $33 ; 3
		dc.b $FB
		dc.b $3A ; :
		dc.b $E7
		dc.b $59 ; Y
		dc.b $E7
		dc.b $35 ; 5
		dc.b $CE
		dc.b $B7
		dc.b $FD
		dc.b $BE
		dc.b $66 ; f
		dc.b $FA
		dc.b $E7
		dc.b $5C ; \
		dc.b $FE
		dc.b $DF
		dc.b $AD
		dc.b $73 ; s
		dc.b $AE
		dc.b $7F ; 
		dc.b $8F
		dc.b $99
		dc.b $35 ; 5
		dc.b $35 ; 5
		dc.b $D6
		dc.b $B7
		dc.b $D6
		dc.b $FA
		dc.b $DF
		dc.b $5B ; [
		dc.b $EB
		dc.b $7D ; }
		dc.b $6F ; o
		dc.b $A9
		dc.b $AE
		dc.b $BC
		dc.b $E6
		dc.b $7F ; 
		dc.b $27 ; '
		dc.b $64 ; d
		dc.b $44 ; D
		dc.b $4F ; O
		dc.b $F0
		dc.b $E6
		dc.b $66 ; f
		dc.b $66 ; f
		dc.b   0
		dc.b   0
		dc.b $16
		dc.b $80
		dc.b   2
		dc.b   1
		dc.b $13
		dc.b   5
		dc.b $28 ; (
		dc.b $FA
		dc.b $68 ; h
		dc.b $FB
		dc.b $73 ; s
		dc.b   4
		dc.b $81
		dc.b $26 ; &
		dc.b $3C ; <
		dc.b $66 ; f
		dc.b $39 ; 9
		dc.b $76 ; v
		dc.b $38 ; 8
		dc.b $84
		dc.b $26 ; &
		dc.b $3D ; =
		dc.b $68 ; h
		dc.b $F8
		dc.b $78 ; x
		dc.b $F9
		dc.b $89
		dc.b   2
		dc.b   0
		dc.b $14
		dc.b  $C
		dc.b $26 ; &
		dc.b $3A ; :
		dc.b $56 ; V
		dc.b $3B ; ;
		dc.b $65 ; e
		dc.b $1B
		dc.b $75 ; u
		dc.b $1A
		dc.b $FF
		dc.b $92
		dc.b $4F ; O
		dc.b $9F
		dc.b $F9
		dc.b $FF
		dc.b $CF
		dc.b $FE
		dc.b $52 ; R
		dc.b $49 ; I
		dc.b $F0
		dc.b $7F ; 
		dc.b $8C
		dc.b $FF
		dc.b $19
		dc.b $FE
		dc.b $22 ; "
		dc.b $49 ; I
		dc.b $3D ; =
		dc.b $CF
		dc.b $7F ; 
		dc.b $47 ; G
		dc.b $9F
		dc.b $D3
		dc.b $CF
		dc.b $D1
		dc.b $FE
		dc.b $8B
		dc.b $3F ; ?
		dc.b $45 ; E
		dc.b $C7
		dc.b $12
		dc.b $49 ; I
		dc.b $27 ; '
		dc.b $27 ; '
		dc.b $24 ; $
		dc.b $92
		dc.b $48 ; H
		dc.b $72 ; r
		dc.b $72 ; r
		dc.b $9F
		dc.b $62 ; b
		dc.b $22 ; "
		dc.b $38 ; 8
		dc.b $89
		dc.b $44 ; D
		dc.b $4F ; O
		dc.b $AF
		dc.b $87
		dc.b $7C ; |
		dc.b $71 ; q
		dc.b $11
		dc.b $11
		dc.b $C4
		dc.b $44 ; D
		dc.b $A2
		dc.b $7D ; }
		dc.b $1F
		dc.b $3A ; :
		dc.b $E3
		dc.b $88
		dc.b $88
		dc.b $8E
		dc.b $22 ; "
		dc.b $25 ; %
		dc.b $3E ; >
		dc.b $84
		dc.b $F9
		dc.b $D7
		dc.b $1C
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $71 ; q
		dc.b $11
		dc.b $3F ; ?
		dc.b $60 ; `
		dc.b $25 ; %
		dc.b $F9
		dc.b $D7
		dc.b $99
		dc.b $FD
		dc.b $1C
		dc.b $F2
		dc.b $94
		dc.b $FA
		dc.b $CA
		dc.b $38 ; 8
		dc.b $97
		dc.b $2E ; .
		dc.b $51 ; Q
		dc.b $3D ; =
		dc.b $BE
		dc.b $F5
		dc.b $7A ; z
		dc.b $E4
		dc.b $E4
		dc.b $FE
		dc.b $81
		dc.b $44 ; D
		dc.b $71 ; q
		dc.b $11
		dc.b $13
		dc.b $F6
		dc.b   3
		dc.b $8F
		dc.b $C3
		dc.b $B9
		dc.b $24 ; $
		dc.b $92
		dc.b $4B ; K
		dc.b $B7
		dc.b $6E ; n
		dc.b $DD
		dc.b $BB
		dc.b $76 ; v
		dc.b $ED
		dc.b $D6
		dc.b $B5
		dc.b $AD
		dc.b $6B ; k
		dc.b $5A ; Z
		dc.b $D6
		dc.b $5E ; ^
		dc.b $EF
		dc.b $77 ; w
		dc.b $BB
		dc.b $DD
		dc.b $EE
		dc.b $F7
		dc.b $7B ; {
		dc.b $BD
		dc.b $3B ; ;
		dc.b $79 ; y
		dc.b $4F ; O
		dc.b $BC
		dc.b $44 ; D
		dc.b $A2
		dc.b $22 ; "
		dc.b $38 ; 8
		dc.b $89
		dc.b $7E ; ~
		dc.b $1D
		dc.b $6F ; o
		dc.b $88
		dc.b $22 ; "
		dc.b $25 ; %
		dc.b $11
		dc.b $1C
		dc.b $44 ; D
		dc.b $47 ; G
		dc.b $E7
		dc.b $5D ; ]
		dc.b $5E ; ^
		dc.b $BC
		dc.b $BE
		dc.b $52 ; R
		dc.b $94
		dc.b $4B ; K
		dc.b $97
		dc.b $28 ; (
		dc.b $E2
		dc.b $5C ; \
		dc.b $7D ; }
		dc.b $BE
		dc.b $F5
		dc.b $75 ; u
		dc.b $8F
		dc.b $3F ; ?
		dc.b $62 ; b
		dc.b $22 ; "
		dc.b $25 ; %
		dc.b $11
		dc.b $C4
		dc.b $44 ; D
		dc.b $47 ; G
		dc.b $E1
		dc.b $DD
		dc.b $DB
		dc.b $CC
		dc.b $92
		dc.b $49 ; I
		dc.b $AE
		dc.b $24 ; $
		dc.b $92
		dc.b $4E ; N
		dc.b $AF
		dc.b $5E ; ^
		dc.b $5F ; _
		dc.b $24 ; $
		dc.b $92
		dc.b $40 ; @
		dc.b   0
		dc.b   0
		dc.b $61 ; a
		dc.b $80
		dc.b   3
		dc.b   1
		dc.b $15
		dc.b $15
		dc.b $47 ; G
		dc.b $72 ; r
		dc.b $68 ; h
		dc.b $F8
		dc.b $75 ; u
		dc.b $16
		dc.b $81
		dc.b   4
		dc.b   9
		dc.b $15
		dc.b $14
		dc.b $26 ; &
		dc.b $35 ; 5
		dc.b $37 ; 7
		dc.b $73 ; s
		dc.b $47 ; G
		dc.b $77 ; w
		dc.b $57 ; W
		dc.b $79 ; y
		dc.b $68 ; h
		dc.b $F6
		dc.b $75 ; u
		dc.b $17
		dc.b $82
		dc.b   5
		dc.b $19
		dc.b $17
		dc.b $75 ; u
		dc.b $76 ; v
		dc.b $38 ; 8
		dc.b $83
		dc.b   3
		dc.b   3
		dc.b $15
		dc.b $18
		dc.b $26 ; &
		dc.b $34 ; 4
		dc.b $38 ; 8
		dc.b $E8
		dc.b $58 ; X
		dc.b $E9
		dc.b $67 ; g
		dc.b $7A ; z
		dc.b $84
		dc.b   4
		dc.b   8
		dc.b $18
		dc.b $F7
		dc.b $27 ; '
		dc.b $76 ; v
		dc.b $89
		dc.b   3
		dc.b   0
		dc.b $13
		dc.b   2
		dc.b $26 ; &
		dc.b $37 ; 7
		dc.b $36 ; 6
		dc.b $36 ; 6
		dc.b $47 ; G
		dc.b $78 ; x
		dc.b $FF
		dc.b $B5
		dc.b $AD
		dc.b $6E ; n
		dc.b $5D ; ]
		dc.b $B9
		dc.b $69 ; i
		dc.b $CB
		dc.b $4E ; N
		dc.b $5A ; Z
		dc.b $5A ; Z
		dc.b $D6
		dc.b $B7
		dc.b $FD
		dc.b $3F ; ?
		dc.b $E7
		dc.b $FF
		dc.b $3F ; ?
		dc.b $F9
		dc.b $DA
		dc.b $D6
		dc.b $B7
		dc.b $F9
		dc.b  $F
		dc.b $A3
		dc.b $E8
		dc.b $FA
		dc.b $FE
		dc.b $86
		dc.b $9C
		dc.b $B4
		dc.b $E5
		dc.b $A7
		dc.b $2D ; -
		dc.b $39 ; 9
		dc.b $3E ; >
		dc.b $BC
		dc.b $B3
		dc.b $4E ; N
		dc.b $59 ; Y
		dc.b $A7
		dc.b $2C ; ,
		dc.b $D3
		dc.b $FE
		dc.b $7F ; 
		dc.b $F3
		dc.b $FF
		dc.b $9F
		dc.b $FC
		dc.b $F8
		dc.b $BD
		dc.b $EF
		dc.b $E8
		dc.b $FA
		dc.b $3E ; >
		dc.b $8F
		dc.b $A3
		dc.b $FD
		dc.b $26 ; &
		dc.b $7C ; |
		dc.b $E4
		dc.b $F9
		dc.b $C9
		dc.b $F3
		dc.b $9F
		dc.b $E8
		dc.b $6B ; k
		dc.b $CB
		dc.b $5E ; ^
		dc.b $59 ; Y
		dc.b $A7
		dc.b $2F ; /
		dc.b $D1
		dc.b $72 ; r
		dc.b $1F
		dc.b   3
		dc.b $E1
		dc.b $7F ; 
		dc.b $40 ; @
		dc.b $11
		dc.b $7B ; {
		dc.b $DF
		dc.b $8B
		dc.b $58 ; X
		dc.b $10
		dc.b $41 ; A
		dc.b $15
		dc.b   4
		dc.b $10
		dc.b $47 ; G
		dc.b $B1
		dc.b $F6
		dc.b $3E ; >
		dc.b $72 ; r
		dc.b $7F ; 
		dc.b $C5
		dc.b $F0
		dc.b $3E ; >
		dc.b   1
		dc.b   4
		dc.b $10
		dc.b $45 ; E
		dc.b $41 ; A
		dc.b   5
		dc.b $1F
		dc.b $53 ; S
		dc.b $D3
		dc.b $23 ; #
		dc.b $A5
		dc.b $74 ; t
		dc.b $AF
		dc.b $E1
		dc.b $35 ; 5
		dc.b $E5
		dc.b $79 ; y
		dc.b $5E ; ^
		dc.b $C3
		dc.b $9E
		dc.b $29 ; )
		dc.b $B4
		dc.b $35 ; 5
		dc.b $D9
		dc.b $42 ; B
		dc.b $8C
		dc.b $76 ; v
		dc.b $51 ; Q
		dc.b $FC
		dc.b $24 ; $
		dc.b $FB
		dc.b $A7
		dc.b $44 ; D
		dc.b $FF
		dc.b $B2
		dc.b $E5
		dc.b $6B ; k
		dc.b $FC
		dc.b $3D ; =
		dc.b $E3
		dc.b $A3
		dc.b $DD
		dc.b $46 ; F
		dc.b $90
		dc.b $E1
		dc.b $46 ; F
		dc.b $23 ; #
		dc.b $AA
		dc.b $8C
		dc.b $87
		dc.b $44 ; D
		dc.b $E7
		dc.b $12
		dc.b $9E
		dc.b $BB
		dc.b $BE
		dc.b $7D ; }
		dc.b $34 ; 4
		dc.b $E9
		dc.b $5D ; ]
		dc.b $2B ; +
		dc.b $A7
		dc.b $FB
		dc.b $31 ; 1
		dc.b $95
		dc.b $FC
		dc.b $39 ; 9
		dc.b $5E ; ^
		dc.b $57 ; W
		dc.b $95
		dc.b $CF
		dc.b $49 ; I
		dc.b $DA
		dc.b $1C
		dc.b $8E
		dc.b $CA
		dc.b $14
		dc.b $61 ; a
		dc.b $47 ; G
		dc.b $F6
		dc.b $61 ; a
		dc.b $AC
		dc.b $27 ; '
		dc.b $29 ; )
		dc.b $CB
		dc.b $4D ; M
		dc.b $3A ; :
		dc.b $27 ; '
		dc.b $23 ; #
		dc.b $9E
		dc.b $29 ; )
		dc.b $B4
		dc.b $35 ; 5
		dc.b $D9
		dc.b $42 ; B
		dc.b $8C
		dc.b $28 ; (
		dc.b $51 ; Q
		dc.b $D5
		dc.b $42 ; B
		dc.b $74 ; t
		dc.b $4D ; M
		dc.b $3A ; :
		dc.b $27 ; '
		dc.b $FD
		dc.b $97
		dc.b $2B ; +
		dc.b $4A ; J
		dc.b $74 ; t
		dc.b $A8
		dc.b $C4
		dc.b $61 ; a
		dc.b $46 ; F
		dc.b   4
		dc.b $6F ; o
		dc.b $18
		dc.b $F1
		dc.b $1D
		dc.b $58 ; X
		dc.b $69 ; i
		dc.b $D3
		dc.b $12
		dc.b $9D
		dc.b $1D
		dc.b $13
		dc.b $A6
		dc.b $91
		dc.b $AB
		dc.b $BD
		dc.b $F8
		dc.b $B5
		dc.b $81
		dc.b   4
		dc.b $11
		dc.b $50 ; P
		dc.b $41 ; A
		dc.b   4
		dc.b $62 ; b
		dc.b $2F ; /
		dc.b $7E ; ~
		dc.b $FC
		dc.b $5A ; Z
		dc.b $C0
		dc.b $82
		dc.b   8
		dc.b $A8
		dc.b $20
		dc.b $82
		dc.b $3D ; =
		dc.b $9D
		dc.b $EF
		dc.b $C5
		dc.b $AC
		dc.b   8
		dc.b $20
		dc.b $8A
		dc.b $82
		dc.b   8
		dc.b $22 ; "
		dc.b $35 ; 5
		dc.b $71 ; q
		dc.b $7B ; {
		dc.b $D3
		dc.b $8B
		dc.b $58 ; X
		dc.b $10
		dc.b $41 ; A
		dc.b $15
		dc.b   4
		dc.b $10
		dc.b $47 ; G
		dc.b $FC
		dc.b $FD
		dc.b $4F ; O
		dc.b $A1
		dc.b $E8
		dc.b $7F ; 
		dc.b $88
		dc.b $7B ; {
		dc.b  $F
		dc.b $61 ; a
		dc.b $7E ; ~
		dc.b $F8
		dc.b $9F
		dc.b $10
		dc.b $D7
		dc.b $65 ; e
		dc.b  $A
		dc.b $31 ; 1
		dc.b $D9
		dc.b $47 ; G
		dc.b $F0
		dc.b $93
		dc.b $EE
		dc.b $9D
		dc.b $13
		dc.b $FE
		dc.b $CB
		dc.b $91
		dc.b $CF
		dc.b $A3
		dc.b $68 ; h
		dc.b $C4
		dc.b $8F
		dc.b $75 ; u
		dc.b  $D
		dc.b $43 ; C
		dc.b $85
		dc.b  $A
		dc.b $3A ; :
		dc.b $A8
		dc.b $4E ; N
		dc.b $89
		dc.b $A7
		dc.b $29 ; )
		dc.b $CF
		dc.b $87
		dc.b $ED
		dc.b $D1
		dc.b $B4
		dc.b $68 ; h
		dc.b $3D ; =
		dc.b $D4
		dc.b $60 ; `
		dc.b $43 ; C
		dc.b $ED
		dc.b $81
		dc.b $1B
		dc.b $C7
		dc.b $51 ; Q
		dc.b $84
		dc.b $E8
		dc.b $1C
		dc.b $A7
		dc.b $4F ; O
		dc.b  $E
		dc.b $87
		dc.b $D8
		dc.b $FB
		dc.b $1C
		dc.b $F9
		dc.b $3F ; ?
		dc.b $E2
		dc.b $23 ; #
		dc.b $E0
		dc.b $7C ; |
		dc.b $22 ; "
		dc.b   8
		dc.b $A8
		dc.b $20
		dc.b $82
		dc.b $27 ; '
		dc.b $48 ; H
		dc.b $BD
		dc.b $F5
		dc.b $E2
		dc.b $D6
		dc.b   4
		dc.b $10
		dc.b $45 ; E
		dc.b $41 ; A
		dc.b   4
		dc.b $11
		dc.b $A4
		dc.b $5E ; ^
		dc.b $FC
		dc.b $F8
		dc.b $B5
		dc.b $81
		dc.b   4
		dc.b $11
		dc.b $50 ; P
		dc.b $41 ; A
		dc.b   4
		dc.b $4F ; O
		dc.b $44 ; D
		dc.b $5E ; ^
		dc.b $F4
		dc.b $E2
		dc.b $D6
		dc.b   4
		dc.b $10
		dc.b $45 ; E
		dc.b $41 ; A
		dc.b   4
		dc.b $11
		dc.b $AF
		dc.b $2D ; -
		dc.b $79 ; y
		dc.b $53 ; S
		dc.b $3C ; <
		dc.b $BF
		dc.b $45 ; E
		dc.b $F0
		dc.b $3E ; >
		dc.b   7
		dc.b $20
		dc.b $47 ; G
		dc.b $F4
		dc.b $17
		dc.b $F4
		dc.b $3A ; :
		dc.b $35 ; 5
		dc.b $3A ; :
		dc.b $4E ; N
		dc.b $E7
		dc.b $45 ; E
		dc.b   0
		dc.b $E8
		dc.b $A0
		dc.b $17
		dc.b $D5
		dc.b $40 ; @
		dc.b $39 ; 9
		dc.b $A2
		dc.b $60 ; `
		dc.b $E6
		dc.b $89
		dc.b $83
		dc.b $9D
		dc.b $77 ; w
		dc.b $C7
		dc.b $3C ; <
		dc.b $43 ; C
		dc.b $DA
		dc.b $18
		dc.b $85
		dc.b  $A
		dc.b   4
		dc.b $28 ; (
		dc.b $50 ; P
		dc.b $23 ; #
		dc.b $68 ; h
		dc.b $C8
		dc.b $6B ; k
		dc.b $14
		dc.b  $D
		dc.b $3D ; =
		dc.b $5C ; \
		dc.b $A7
		dc.b $77 ; w
		dc.b $2F ; /
		dc.b $C3
		dc.b $12
		dc.b $BF
		dc.b $69 ; i
		dc.b $B4
		dc.b $69 ; i
		dc.b $FD
		dc.b $98
		dc.b $CE
		dc.b $DA
		dc.b $4E ; N
		dc.b $CF
		dc.b $5F ; _
		dc.b $F4
		dc.b $B5
		dc.b $8A
		dc.b $74 ; t
		dc.b $A8
		dc.b $D2
		dc.b $1A
		dc.b $8D
		dc.b   4
		dc.b $28 ; (
		dc.b $D3
		dc.b $68 ; h
		dc.b $FD
		dc.b $13
		dc.b $DD
		dc.b $EA
		dc.b $E5
		dc.b $3D ; =
		dc.b $5D ; ]
		dc.b   3
		dc.b $D4
		dc.b $F7
		dc.b $70 ; p
		dc.b $7D ; }
		dc.b $8E
		dc.b $7C ; |
		dc.b $9F
		dc.b $F1
		dc.b $11
		dc.b $F0
		dc.b $3E ; >
		dc.b $11
		dc.b   4
		dc.b $54 ; T
		dc.b $10
		dc.b $41 ; A
		dc.b $1A
		dc.b $B8
		dc.b $BD
		dc.b $F5
		dc.b $E2
		dc.b $D6
		dc.b   4
		dc.b $10
		dc.b $45 ; E
		dc.b $41 ; A
		dc.b   4
		dc.b $11
		dc.b $3D ; =
		dc.b $11
		dc.b $2E ; .
		dc.b $F7
		dc.b $E2
		dc.b $D6
		dc.b   4
		dc.b $10
		dc.b $45 ; E
		dc.b $41 ; A
		dc.b   4
		dc.b $11
		dc.b $1A
		dc.b $C5
		dc.b $EF
		dc.b $AF
		dc.b $16
		dc.b $B0
		dc.b $20
		dc.b $82
		dc.b $2A ; *
		dc.b   8
		dc.b $20
		dc.b $83
		dc.b $D1
		dc.b $A9
		dc.b $D2
		dc.b $77 ; w
		dc.b $3A ; :
		dc.b $28 ; (
		dc.b   7
		dc.b $45 ; E
		dc.b $EE
		dc.b $5F ; _
		dc.b $55 ; U
		dc.b $19
		dc.b $39 ; 9
		dc.b $A2
		dc.b $72 ; r
		dc.b $73 ; s
		dc.b $44 ; D
		dc.b $C1
		dc.b $CE
		dc.b $BB
		dc.b $E2
		dc.b $9D
		dc.b $10
		dc.b $D4
		dc.b $68 ; h
		dc.b $21 ; !
		dc.b $46 ; F
		dc.b $9E
		dc.b $EA
		dc.b $34 ; 4
		dc.b $EA
		dc.b $A3
		dc.b $F4
		dc.b $54 ; T
		dc.b $4F ; O
		dc.b $50 ; P
		dc.b $D3
		dc.b $D5
		dc.b $CF
		dc.b $8C
		dc.b $6B ; k
		dc.b $A5
		dc.b $37 ; 7
		dc.b $87
		dc.b $3B ; ;
		dc.b $C2
		dc.b $8D
		dc.b $A1
		dc.b $46 ; F
		dc.b $D0
		dc.b $A1
		dc.b $EE
		dc.b $D3
		dc.b $A2
		dc.b $69 ; i
		dc.b $EB
		dc.b $BB
		dc.b $95
		dc.b $AB
		dc.b $E7
		dc.b $BC
		dc.b $6D ; m
		dc.b $FB
		dc.b $45 ; E
		dc.b $DB
		dc.b $45 ; E
		dc.b  $D
		dc.b $46 ; F
		dc.b $76 ; v
		dc.b $94
		dc.b $D6
		dc.b $25 ; %
		dc.b $34 ; 4
		dc.b $E5
		dc.b $39 ; 9
		dc.b $DA
		dc.b $7D ; }
		dc.b   8
		dc.b $E9
		dc.b $F7
		dc.b $FF
		dc.b $9F
		dc.b $4C ; L
		dc.b $7F ; 
		dc.b $8A
		dc.b $2F ; /
		dc.b $EC
		dc.b $1D
		dc.b $E7
		dc.b $A2
		dc.b $2F ; /
		dc.b $7E ; ~
		dc.b $2D ; -
		dc.b $60 ; `
		dc.b $41 ; A
		dc.b   4
		dc.b $54 ; T
		dc.b $10
		dc.b $41 ; A
		dc.b $14
		dc.b $C6
		dc.b $AE
		dc.b $F7
		dc.b $E2
		dc.b $D6
		dc.b   4
		dc.b $10
		dc.b $45 ; E
		dc.b $41 ; A
		dc.b   4
		dc.b $10
		dc.b $E3
		dc.b $5D ; ]
		dc.b $2F ; /
		dc.b $7E ; ~
		dc.b $2D ; -
		dc.b $60 ; `
		dc.b $41 ; A
		dc.b   4
		dc.b $54 ; T
		dc.b $10
		dc.b $41 ; A
		dc.b  $E
		dc.b $2F ; /
		dc.b $7F ; 
		dc.b $3C ; <
		dc.b $5A ; Z
		dc.b $C0
		dc.b $82
		dc.b   8
		dc.b $A8
		dc.b $20
		dc.b $82
		dc.b $39 ; 9
		dc.b $2F ; /
		dc.b $E8
		dc.b   2
		dc.b $39 ; 9
		dc.b $2F ; /
		dc.b $E8
		dc.b   2
		dc.b $3B ; ;
		dc.b $57 ; W
		dc.b $B6
		dc.b $95
		dc.b $E9
		dc.b $AF
		dc.b $4D ; M
		dc.b $74 ; t
		dc.b   4
		dc.b $10
		dc.b $45 ; E
		dc.b $41 ; A
		dc.b   4
		dc.b $14
		dc.b $41 ; A
		dc.b   4
		dc.b $54 ; T
		dc.b $10
		dc.b $41 ; A
		dc.b $1F
		dc.b $F4
		dc.b $FF
		dc.b $9F
		dc.b $FC
		dc.b $FF
		dc.b $E6
		dc.b   8
		dc.b $20
		dc.b $8A
		dc.b $82
		dc.b  $A
		dc.b $20
		dc.b $82
		dc.b   8
		dc.b $A8
		dc.b $20
		dc.b $A3
		dc.b $FE
		dc.b $43 ; C
		dc.b $E8
		dc.b $FA
		dc.b $3E ; >
		dc.b $AA
		dc.b $88
		dc.b $22 ; "
		dc.b $A0
		dc.b $82
		dc.b   8
		dc.b $28 ; (
		dc.b $82
		dc.b $2A ; *
		dc.b   8
		dc.b $20
		dc.b $83
		dc.b $FE
		dc.b $43 ; C
		dc.b $E8
		dc.b $FA
		dc.b $3E ; >
		dc.b $81
		dc.b $1F
		dc.b $D0
		dc.b $5C ; \
		dc.b $81
		dc.b $1F
		dc.b $D0
		dc.b $5C ; \
		dc.b $BB
		dc.b $57 ; W
		dc.b $B6
		dc.b $95
		dc.b $E9
		dc.b $AF
		dc.b $4D ; M
		dc.b $7F ; 
		dc.b $87
		dc.b $CD
		dc.b $CB
		dc.b $9D
		dc.b $A0
		dc.b $35 ; 5
		dc.b $FC
		dc.b $46 ; F
		dc.b $A3
		dc.b $A3
		dc.b $31 ; 1
		dc.b $BC
		dc.b $75 ; u
		dc.b $A6
		dc.b $13
		dc.b $EE
		dc.b $9D
		dc.b $36 ; 6
		dc.b $7E ; ~
		dc.b $CE
		dc.b $9E
		dc.b $21 ; !
		dc.b $42 ; B
		dc.b $F7
		dc.b $50 ; P
		dc.b $D4
		dc.b $35 ; 5
		dc.b $19
		dc.b $51 ; Q
		dc.b $95
		dc.b $12
		dc.b $9C
		dc.b $A7
		dc.b $29 ; )
		dc.b $CA
		dc.b $72 ; r
		dc.b $9D
		dc.b $14
		dc.b $E3
		dc.b $9B
		dc.b $10
		dc.b $F6
		dc.b $85
		dc.b  $A
		dc.b $36 ; 6
		dc.b $85
		dc.b $1B
		dc.b $46 ; F
		dc.b $D0
		dc.b $9A
		dc.b $C4
		dc.b $A6
		dc.b $9D
		dc.b   3
		dc.b $94
		dc.b $E9
		dc.b $A5
		dc.b $7A ; z
		dc.b $6B ; k
		dc.b $A4
		dc.b $62 ; b
		dc.b $BA
		dc.b $46 ; F
		dc.b $2B ; +
		dc.b $A7
		dc.b $57 ; W
		dc.b $57 ; W
		dc.b $D6
		dc.b $99
		dc.b $AE
		dc.b $79 ; y
		dc.b $E6
		dc.b $B9
		dc.b $E7
		dc.b $9A
		dc.b $E7
		dc.b $CE
		dc.b $93
		dc.b $B4
		dc.b $3C ; <
		dc.b $EF
		dc.b  $A
		dc.b $36 ; 6
		dc.b $85
		dc.b $1F
		dc.b $D9
		dc.b $8C
		dc.b $ED
		dc.b $8A
		dc.b $6C ; l
		dc.b $F5
		dc.b $D9
		dc.b $EA
		dc.b $A9
		dc.b $8A
		dc.b $39 ; 9
		dc.b $50 ; P
		dc.b $D4
		dc.b   8
		dc.b $50 ; P
		dc.b $A0
		dc.b $42 ; B
		dc.b $85
		dc.b $1B
		dc.b $42 ; B
		dc.b $80
		dc.b $D3
		dc.b $4C ; L
		dc.b $34 ; 4
		dc.b $D3
		dc.b  $D
		dc.b $39 ; 9
		dc.b $DE
		dc.b $71 ; q
		dc.b $CD
		dc.b $88
		dc.b $9D
		dc.b $A0
		dc.b $42 ; B
		dc.b $FD
		dc.b $A0
		dc.b $85
		dc.b $1A
		dc.b  $F
		dc.b $7D ; }
		dc.b $E3
		dc.b $21 ; !
		dc.b $CE
		dc.b $13
		dc.b  $F
		dc.b $55 ; U
		dc.b $89
		dc.b $D9
		dc.b $F9
		dc.b $D3
		dc.b $C4
		dc.b $61 ; a
		dc.b $7E ; ~
		dc.b $D3
		dc.b  $A
		dc.b $3F ; ?
		dc.b $87
		dc.b $B4
		dc.b $7E ; ~
		dc.b $89
		dc.b $69 ; i
		dc.b $AA
		dc.b $7D ; }
		dc.b $FC
		dc.b $3A ; :
		dc.b $7F ; 
		dc.b  $F
		dc.b $5F ; _
		dc.b $E1
		dc.b $EF
		dc.b $FC
		dc.b $35 ; 5
		dc.b $1F
		dc.b $C3
		dc.b $51 ; Q
		dc.b $FC
		dc.b $2D ; -
		dc.b $FB
		dc.b $A7
		dc.b $DD
		dc.b $3E ; >
		dc.b $E9
		dc.b $CE
		dc.b $29 ; )
		dc.b $A0
		dc.b $86
		dc.b $A3
		dc.b  $A
		dc.b $14
		dc.b $61 ; a
		dc.b $42 ; B
		dc.b $8C
		dc.b   8
		dc.b $CA
		dc.b $8E
		dc.b $AE
		dc.b $89
		dc.b $F7
		dc.b $4F ; O
		dc.b $BF
		dc.b $8C
		dc.b $6B ; k
		dc.b $89
		dc.b $73 ; s
		dc.b $BC
		dc.b $30 ; 0
		dc.b $D4
		dc.b $2F ; /
		dc.b $76 ; v
		dc.b $A1
		dc.b $43 ; C
		dc.b $CF
		dc.b $88
		dc.b $CC
		dc.b $A6
		dc.b $9D
		dc.b $13
		dc.b $4E ; N
		dc.b $5A ; Z
		dc.b $69 ; i
		dc.b $D3
		dc.b $14
		dc.b $C1
		dc.b  $E
		dc.b $54 ; T
		dc.b $33 ; 3
		dc.b $B4
		dc.b $60 ; `
		dc.b $C2
		dc.b $8D
		dc.b  $E
		dc.b $54 ; T
		dc.b $75 ; u
		dc.b $66 ; f
		dc.b $53 ; S
		dc.b $A6
		dc.b $4C ; L
		dc.b $A7
		dc.b $4C ; L
		dc.b $99
		dc.b $4E ; N
		dc.b $99
		dc.b $AF
		dc.b $46 ; F
		dc.b $A7
		dc.b $49 ; I
		dc.b $DC
		dc.b $E8
		dc.b $A0
		dc.b $1D
		dc.b $14
		dc.b   2
		dc.b $FA
		dc.b $EC
		dc.b $73 ; s
		dc.b $44 ; D
		dc.b $C1
		dc.b $CD
		dc.b $13
		dc.b   7
		dc.b $34 ; 4
		dc.b $4C ; L
		dc.b $62 ; b
		dc.b $8E
		dc.b $8E
		dc.b $1A
		dc.b $85
		dc.b   2
		dc.b $14
		dc.b $28 ; (
		dc.b $10
		dc.b $A1
		dc.b $40 ; @
		dc.b $85
		dc.b  $A
		dc.b   3
		dc.b $4D ; M
		dc.b $30 ; 0
		dc.b $D3
		dc.b $4C ; L
		dc.b $39 ; 9
		dc.b $DD
		dc.b $FB
		dc.b $39 ; 9
		dc.b $FE
		dc.b $CC
		dc.b  $F
		dc.b $75 ; u
		dc.b $EE
		dc.b $B0
		dc.b $A1
		dc.b $AE
		dc.b $AA
		dc.b $32 ; 2
		dc.b $A8
		dc.b $9C
		dc.b $AA
		dc.b $27 ; '
		dc.b $2A ; *
		dc.b $89
		dc.b $D0
		dc.b $53 ; S
		dc.b $A2
		dc.b $8A
		dc.b $31 ; 1
		dc.b $2A ; *
		dc.b $14
		dc.b $35 ; 5
		dc.b $EE
		dc.b $A1
		dc.b $AF
		dc.b $75 ; u
		dc.b $19
		dc.b $84
		dc.b $D3
		dc.b $A6
		dc.b $89
		dc.b $F3
		dc.b $4E ; N
		dc.b $9B
		dc.b $D1
		dc.b $F7
		dc.b $51 ; Q
		dc.b $E3
		dc.b $B2
		dc.b $ED
		dc.b $A2
		dc.b $8C
		dc.b   8
		dc.b $CE
		dc.b $D0
		dc.b $9A
		dc.b $D1
		dc.b $34 ; 4
		dc.b $E8
		dc.b $1C
		dc.b $F8
		dc.b $C6
		dc.b $B8
		dc.b $98
		dc.b $9D
		dc.b $E1
		dc.b $88
		dc.b $50 ; P
		dc.b $A0
		dc.b $35 ; 5
		dc.b  $A
		dc.b   6
		dc.b $7C ; |
		dc.b $40 ; @
		dc.b $94
		dc.b $D3
		dc.b $12
		dc.b $9A
		dc.b $61 ; a
		dc.b $A6
		dc.b $98
		dc.b $D7
		dc.b $4A ; J
		dc.b $6F ; o
		dc.b  $E
		dc.b $77 ; w
		dc.b $85
		dc.b  $A
		dc.b   4
		dc.b $28 ; (
		dc.b $51 ; Q
		dc.b $BC
		dc.b $65 ; e
		dc.b $40 ; @
		dc.b $61 ; a
		dc.b $CA
		dc.b $61 ; a
		dc.b $A6
		dc.b $98
		dc.b $69 ; i
		dc.b $CA
		dc.b $9C
		dc.b $51 ; Q
		dc.b $D0
		dc.b $43 ; C
		dc.b $51 ; Q
		dc.b $B4
		dc.b $28 ; (
		dc.b $5D ; ]
		dc.b $94
		dc.b $2F ; /
		dc.b $D1
		dc.b $78 ; x
		dc.b $D5
		dc.b $3D ; =
		dc.b $9A
		dc.b $7B ; {
		dc.b $B9
		dc.b $4D ; M
		dc.b $69 ; i
		dc.b $5D ; ]
		dc.b $23 ; #
		dc.b $15
		dc.b $D2
		dc.b $31 ; 1
		dc.b $5D ; ]
		dc.b $23 ; #
		dc.b $15
		dc.b $D2
		dc.b $32 ; 2
		dc.b $EA
		dc.b $FA
		dc.b $B9
		dc.b $CD
		dc.b $73 ; s
		dc.b $47 ; G
		dc.b $39 ; 9
		dc.b $AE
		dc.b $68 ; h
		dc.b $E7
		dc.b $35 ; 5
		dc.b $CD
		dc.b $3F ; ?
		dc.b $87
		dc.b $AF
		dc.b $44 ; D
		dc.b $EF
		dc.b $D0
		dc.b $BD
		dc.b $FA
		dc.b $14
		dc.b $3F ; ?
		dc.b $D9
		dc.b $46 ; F
		dc.b $FD
		dc.b $F0
		dc.b $3D ; =
		dc.b $87
		dc.b $3D ; =
		dc.b $A5
		dc.b $F7
		dc.b $62 ; b
		dc.b $3C ; <
		dc.b $76 ; v
		dc.b $5F ; _
		dc.b $B4
		dc.b $C2
		dc.b $8D
		dc.b $23 ; #
		dc.b $3B ; ;
		dc.b $46 ; F
		dc.b $43 ; C
		dc.b $5A ; Z
		dc.b $48 ; H
		dc.b $69 ; i
		dc.b $EA
		dc.b $E7
		dc.b $C6
		dc.b $35 ; 5
		dc.b $C6
		dc.b $BB
		dc.b $C3
		dc.b $DA
		dc.b $14
		dc.b $6D ; m
		dc.b  $A
		dc.b $3F ; ?
		dc.b $D3
		dc.b $1B
		dc.b $34 ; 4
		dc.b $F6
		dc.b $69 ; i
		dc.b $EC
		dc.b $D3
		dc.b $54 ; T
		dc.b $D3
		dc.b $55 ; U
		dc.b  $E
		dc.b $77 ; w
		dc.b $85
		dc.b  $A
		dc.b   4
		dc.b $28 ; (
		dc.b $5E ; ^
		dc.b $EA
		dc.b $32 ; 2
		dc.b $A3
		dc.b $2C ; ,
		dc.b $39 ; 9
		dc.b $4E ; N
		dc.b $5A ; Z
		dc.b $69 ; i
		dc.b $86
		dc.b $9C
		dc.b $EF
		dc.b $8A
		dc.b $3A ; :
		dc.b $38 ; 8
		dc.b $6A ; j
		dc.b $14
		dc.b   8
		dc.b $50 ; P
		dc.b $BB
		dc.b $28 ; (
		dc.b $51 ; Q
		dc.b $D7
		dc.b $C4
		dc.b $51 ; Q
		dc.b $34 ; 4
		dc.b $C3
		dc.b $4D ; M
		dc.b $62 ; b
		dc.b $53 ; S
		dc.b $4E ; N
		dc.b $98
		dc.b $8B
		dc.b $DF
		dc.b $5E ; ^
		dc.b $2D ; -
		dc.b $60 ; `
		dc.b $41 ; A
		dc.b   4
		dc.b $54 ; T
		dc.b $10
		dc.b $41 ; A
		dc.b $14
		dc.b $71 ; q
		dc.b $AB
		dc.b $BD
		dc.b $F8
		dc.b $B5
		dc.b $81
		dc.b   4
		dc.b $11
		dc.b $50 ; P
		dc.b $41 ; A
		dc.b   4
		dc.b $6B ; k
		dc.b $5F ; _
		dc.b $35 ; 5
		dc.b $EF
		dc.b $9A
		dc.b $E6
		dc.b $9F
		dc.b $A2
		dc.b $AF
		dc.b $E8
		dc.b $AA
		dc.b $2A ; *
		dc.b $3F ; ?
		dc.b $60 ; `
		dc.b $2A ; *
		dc.b $2A ; *
		dc.b   8
		dc.b $AA
		dc.b $AA
		dc.b $A8
		dc.b $22 ; "
		dc.b $5C ; \
		dc.b $73 ; s
		dc.b $77 ; w
		dc.b $BF
		dc.b $16
		dc.b $B0
		dc.b $20
		dc.b $82
		dc.b $2A ; *
		dc.b   8
		dc.b $20
		dc.b $88
		dc.b $97
		dc.b $14
		dc.b $71 ; q
		dc.b $7B ; {
		dc.b $F1
		dc.b $6B ; k
		dc.b   2
		dc.b   8
		dc.b $22 ; "
		dc.b $A0
		dc.b $82
		dc.b   8
		dc.b $D7
		dc.b $11
		dc.b $7B ; {
		dc.b $D3
		dc.b $8B
		dc.b $58 ; X
		dc.b $10
		dc.b $41 ; A
		dc.b $15
		dc.b   4
		dc.b $10
		dc.b $47 ; G
		dc.b $97
		dc.b $17
		dc.b $BF
		dc.b $16
		dc.b $B0
		dc.b $20
		dc.b $82
		dc.b $2A ; *
		dc.b   8
		dc.b $20
		dc.b $8E
		dc.b $7D ; }
		dc.b $17
		dc.b $BF
		dc.b $16
		dc.b $B0
		dc.b $20
		dc.b $82
		dc.b $2A ; *
		dc.b   8
		dc.b $20
		dc.b $88
		dc.b $97
		dc.b $12
		dc.b $E2
		dc.b $F7
		dc.b $9E
		dc.b $2D ; -
		dc.b $60 ; `
		dc.b $41 ; A
		dc.b   4
		dc.b $54 ; T
		dc.b $10
		dc.b $41 ; A
		dc.b $14
		dc.b $71 ; q
		dc.b $A9
		dc.b $F6
		dc.b $3E ; >
		dc.b $72 ; r
		dc.b $7F ; 
		dc.b $C5
		dc.b $F0
		dc.b $3E ; >
		dc.b   1
		dc.b   4
		dc.b $10
		dc.b $45 ; E
		dc.b $41 ; A
		dc.b   5
		dc.b $57 ; W
		dc.b $9B
		dc.b $89
		dc.b $3E ; >
		dc.b $C7
		dc.b $3E ; >
		dc.b $4F ; O
		dc.b $F8
		dc.b $88
		dc.b $F8
		dc.b $1F
		dc.b   8
		dc.b $82
		dc.b $2A ; *
		dc.b   8
		dc.b $20
		dc.b $87
		dc.b $14
		dc.b $71 ; q
		dc.b $7B ; {
		dc.b $D3
		dc.b $8B
		dc.b $58 ; X
		dc.b $10
		dc.b $41 ; A
		dc.b $15
		dc.b   4
		dc.b $10
		dc.b $43 ; C
		dc.b $8E
		dc.b $78 ; x
		dc.b $BD
		dc.b $F8
		dc.b $B5
		dc.b $81
		dc.b   4
		dc.b $11
		dc.b $50 ; P
		dc.b $41 ; A
		dc.b   4
		dc.b $46 ; F
		dc.b $BD
		dc.b $17
		dc.b $BF
		dc.b $16
		dc.b $B0
		dc.b $20
		dc.b $82
		dc.b $2A ; *
		dc.b   8
		dc.b $20
		dc.b $87
		dc.b $12
		dc.b $E2
		dc.b $8E
		dc.b $F7
		dc.b $E2
		dc.b $D6
		dc.b   4
		dc.b $10
		dc.b $45 ; E
		dc.b $41 ; A
		dc.b   4
		dc.b $11
		dc.b $1A
		dc.b $B8
		dc.b $97
		dc.b $7B ; {
		dc.b $F1
		dc.b $6B ; k
		dc.b   2
		dc.b   8
		dc.b $22 ; "
		dc.b $A0
		dc.b $82
		dc.b   8
		dc.b $8A
		dc.b $57 ; W
		dc.b $CD
		dc.b $7B ; {
		dc.b $E6
		dc.b $B9
		dc.b $A7
		dc.b $E8
		dc.b $AB
		dc.b $FA
		dc.b $2A ; *
		dc.b $8A
		dc.b $8F
		dc.b $D8
		dc.b  $A
		dc.b $8A
		dc.b $82
		dc.b $2A ; *
		dc.b $AA
		dc.b $AA
		dc.b   8
		dc.b $EF
		dc.b $88
		dc.b $BD
		dc.b $F8
		dc.b $B5
		dc.b $81
		dc.b   4
		dc.b $11
		dc.b $50 ; P
		dc.b $41 ; A
		dc.b   4
		dc.b $4B ; K
		dc.b $89
		dc.b $71 ; q
		dc.b $2E ; .
		dc.b $F7
		dc.b $E2
		dc.b $D6
		dc.b   4
		dc.b $10
		dc.b $45 ; E
		dc.b $41 ; A
		dc.b   4
		dc.b $11
		dc.b $AB
		dc.b $89
		dc.b $71 ; q
		dc.b $7B ; {
		dc.b $F1
		dc.b $6B ; k
		dc.b   2
		dc.b   8
		dc.b $22 ; "
		dc.b $A0
		dc.b $82
		dc.b   8
		dc.b   0
		dc.b   0
		dc.b  $B
		dc.b $81
		dc.b $74 ; t
		dc.b  $C
		dc.b $8A
		dc.b   5
		dc.b $1E
		dc.b $14
		dc.b  $D
		dc.b $23 ; #
		dc.b   2
		dc.b $33 ; 3
		dc.b   3
		dc.b $55 ; U
		dc.b $1D
		dc.b $64 ; d
		dc.b  $A
		dc.b $73 ; s
		dc.b   4
		dc.b $8B
		dc.b   2
		dc.b   0
		dc.b $24 ; $
		dc.b  $B
		dc.b $35 ; 5
		dc.b $1C
		dc.b $46 ; F
		dc.b $3E ; >
		dc.b $FF
		dc.b $CD
		dc.b $B6
		dc.b $21 ; !
		dc.b   8
		dc.b $42 ; B
		dc.b $10
		dc.b $87
		dc.b $71 ; q
		dc.b $63 ; c
		dc.b $3B ; ;
		dc.b $F9
		dc.b $BA
		dc.b $28 ; (
		dc.b $A3
		dc.b $B7
		dc.b $37 ; 7
		dc.b $36 ; 6
		dc.b $D8
		dc.b $8A
		dc.b $3F ; ?
		dc.b $95
		dc.b $F9
		dc.b $BF
		dc.b $E5
		dc.b $1D
		dc.b $FA
		dc.b $6E ; n
		dc.b $7B ; {
		dc.b $90
		dc.b $77 ; w
		dc.b  $A
		dc.b $17
		dc.b $22 ; "
		dc.b $CF
		dc.b $1A
		dc.b $33 ; 3
		dc.b $46 ; F
		dc.b $68 ; h
		dc.b $FE
		dc.b $E9
		dc.b $44 ; D
		dc.b $59 ; Y
		dc.b $EF
		dc.b $91
		dc.b $5C ; \
		dc.b $62 ; b
		dc.b $28 ; (
		dc.b $5C ; \
		dc.b $8B
		dc.b $36 ; 6
		dc.b $D9
		dc.b $5C ; \
		dc.b $62 ; b
		dc.b $10
		dc.b $87
		dc.b $71 ; q
		dc.b $67 ; g
		dc.b $BE
		dc.b $A3
		dc.b $A5
		dc.b $1D
		dc.b $28 ; (
		dc.b $8F
		dc.b $36 ; 6
		dc.b $D8
		dc.b $87
		dc.b $6C ; l
		dc.b $42 ; B
		dc.b $10
		dc.b $EE
		dc.b $2C ; ,
		dc.b $DB
		dc.b $62 ; b
		dc.b $10
		dc.b $87
		dc.b $CA
		dc.b $1D
		dc.b $C5
		dc.b $92
		dc.b $49 ; I
		dc.b $24 ; $
		dc.b   0
		dc.b $80
		dc.b $25 ; %
		dc.b $80
		dc.b   2
		dc.b   0
		dc.b $14
		dc.b   9
		dc.b $28 ; (
		dc.b $FA
		dc.b $83
		dc.b   4
		dc.b  $A
		dc.b $86
		dc.b   4
		dc.b   6
		dc.b $89
		dc.b   4
		dc.b   7
		dc.b $15
		dc.b $17
		dc.b $25 ; %
		dc.b $16
		dc.b $35 ; 5
		dc.b $1B
		dc.b $45 ; E
		dc.b $1A
		dc.b $54 ; T
		dc.b   8
		dc.b $66 ; f
		dc.b $3C ; <
		dc.b $75 ; u
		dc.b $1C
		dc.b $8A
		dc.b   7
		dc.b $7C ; |
		dc.b $8C
		dc.b   4
		dc.b  $C
		dc.b $8F
		dc.b   3
		dc.b   2
		dc.b $16
		dc.b $3D ; =
		dc.b $25 ; %
		dc.b $1D
		dc.b $FF
		dc.b $71 ; q
		dc.b $C7
		dc.b $1C
		dc.b $DD
		dc.b $32 ; 2
		dc.b $6B ; k
		dc.b $2C ; ,
		dc.b $ED
		dc.b $E8
		dc.b $43 ; C
		dc.b $97
		dc.b $C4
		dc.b $6A ; j
		dc.b $62 ; b
		dc.b $62 ; b
		dc.b $61 ; a
		dc.b $69 ; i
		dc.b $32 ; 2
		dc.b $F8
		dc.b $5B ; [
		dc.b $B8
		dc.b $8B
		dc.b  $E
		dc.b $8A
		dc.b $34 ; 4
		dc.b $B0
		dc.b $89
		dc.b $89
		dc.b $89
		dc.b $B3
		dc.b  $E
		dc.b $C5
		dc.b $A6
		dc.b $26 ; &
		dc.b $26 ; &
		dc.b $31 ; 1
		dc.b $45 ; E
		dc.b  $B
		dc.b $42 ; B
		dc.b $C4
		dc.b $CA
		dc.b $C5
		dc.b $77 ; w
		dc.b $62 ; b
		dc.b $22 ; "
		dc.b $62 ; b
		dc.b $62 ; b
		dc.b $74 ; t
		dc.b $D8
		dc.b $6D ; m
		dc.b $8A
		dc.b $BB
		dc.b $26 ; &
		dc.b $C5
		dc.b $6E ; n
		dc.b $D6
		dc.b $C7
		dc.b $39 ; 9
		dc.b $CD
		dc.b $D4
		dc.b $2C ; ,
		dc.b $8F
		dc.b $7C ; |
		dc.b $39 ; 9
		dc.b $CE
		dc.b $2F ; /
		dc.b $26 ; &
		dc.b $26 ; &
		dc.b $26 ; &
		dc.b $26 ; &
		dc.b $26 ; &
		dc.b $26 ; &
		dc.b $17
		dc.b $39 ; 9
		dc.b $CE
		dc.b $73 ; s
		dc.b $9C
		dc.b $F1
		dc.b $88
		dc.b $98
		dc.b $98
		dc.b $98
		dc.b $98
		dc.b $98
		dc.b $98
		dc.b $44 ; D
		dc.b $1C
		dc.b $B5
		dc.b $32 ; 2
		dc.b $6B ; k
		dc.b $2C ; ,
		dc.b $ED
		dc.b $E8
		dc.b $43 ; C
		dc.b $97
		dc.b $C4
		dc.b $6A ; j
		dc.b $61 ; a
		dc.b $1E
		dc.b $1C
		dc.b $DA
		dc.b $65 ; e
		dc.b $F0
		dc.b $B7
		dc.b $71 ; q
		dc.b $16
		dc.b $1D
		dc.b $14
		dc.b $69 ; i
		dc.b $61 ; a
		dc.b $13
		dc.b $13
		dc.b $A5
		dc.b $86
		dc.b $97
		dc.b $C3
		dc.b $CA
		dc.b $6D ; m
		dc.b $FC
		dc.b $5F ; _
		dc.b $9C
		dc.b $B3
		dc.b $67 ; g
		dc.b $B5
		dc.b $7F ; 
		dc.b $82
		dc.b $72 ; r
		dc.b $D8
		dc.b $A0
		dc.b $4C ; L
		dc.b $99
		dc.b $5F ; _
		dc.b $FB
		dc.b $F7
		dc.b $3D ; =
		dc.b $97
		dc.b $4C ; L
		dc.b $B1
		dc.b $17
		dc.b $ED
		dc.b $1B
		dc.b $1C
		dc.b $E7
		dc.b $36 ; 6
		dc.b $C9
		dc.b $93
		dc.b $2B ; +
		dc.b $FF
		dc.b $7C ; |
		dc.b $71 ; q
		dc.b $C7
		dc.b $1C
		dc.b $D5
		dc.b $32 ; 2
		dc.b $6B ; k
		dc.b $2C ; ,
		dc.b $ED
		dc.b $84
		dc.b $39 ; 9
		dc.b $64 ; d
		dc.b $41 ; A
		dc.b $CE
		dc.b $5D ; ]
		dc.b $34 ; 4
		dc.b $26 ; &
		dc.b $4C ; L
		dc.b $BE
		dc.b $16
		dc.b $EE
		dc.b $22 ; "
		dc.b $C3
		dc.b $A2
		dc.b $8D
		dc.b $7D ; }
		dc.b $6B ; k
		dc.b $EB
		dc.b $74 ; t
		dc.b $50 ; P
		dc.b $E9
		dc.b $96
		dc.b $22 ; "
		dc.b $E9
		dc.b $93
		dc.b $17
		dc.b $3C ; <
		dc.b $39 ; 9
		dc.b $75 ; u
		dc.b $E6
		dc.b $28 ; (
		dc.b $A1
		dc.b $7C ; |
		dc.b $2C ; ,
		dc.b $2F ; /
		dc.b $CE
		dc.b $7B ; {
		dc.b $62 ; b
		dc.b $BA
		dc.b $E3
		dc.b $D2
		dc.b $A2
		dc.b $E3
		dc.b $D7
		dc.b $E7
		dc.b  $D
		dc.b $54 ; T
		dc.b $C4
		dc.b $E9
		dc.b $B0
		dc.b $DB
		dc.b $15
		dc.b $76 ; v
		dc.b $4D ; M
		dc.b $8A
		dc.b $DD
		dc.b $AD
		dc.b $8E
		dc.b $73 ; s
		dc.b $9C
		dc.b $DB
		dc.b $43 ; C
		dc.b $2D ; -
		dc.b $32 ; 2
		dc.b $36 ; 6
		dc.b $C8
		dc.b $DB
		dc.b $23 ; #
		dc.b $4C ; L
		dc.b $6D ; m
		dc.b $96
		dc.b $99
		dc.b $4E ; N
		dc.b $D7
		dc.b $D6
		dc.b $C7
		dc.b $98
		dc.b $98
		dc.b $98
		dc.b $98
		dc.b $98
		dc.b $98
		dc.b $98
		dc.b $3D ; =
		dc.b $64 ; d
		dc.b $D7
		dc.b $FE
		dc.b $FD
		dc.b $87
		dc.b $1C
		dc.b $E7
		dc.b $2E ; .
		dc.b $C4
		dc.b $4C ; L
		dc.b $4E ; N
		dc.b $D3
		dc.b $1E
		dc.b $B0
		dc.b $FE
		dc.b $9D
		dc.b $2F ; /
		dc.b $F4
		dc.b $E6
		dc.b $E6
		dc.b $11
		dc.b   7
		dc.b $89
		dc.b $93
		dc.b $26 ; &
		dc.b $B9
		dc.b $FC
		dc.b $FB
		dc.b $CB
		dc.b $8E
		dc.b $5E ; ^
		dc.b $62 ; b
		dc.b $69 ; i
		dc.b $93
		dc.b $5C ; \
		dc.b $59 ; Y
		dc.b $DB
		dc.b $9E
		dc.b $8E
		dc.b $5D ; ]
		dc.b $39 ; 9
		dc.b $64 ; d
		dc.b $C9
		dc.b $93
		dc.b  $F
		dc.b $FD
		dc.b $F2
		dc.b $E3
		dc.b $8E
		dc.b $72 ; r
		dc.b $E9
		dc.b $97
		dc.b $C2
		dc.b $DD
		dc.b $C4
		dc.b $58 ; X
		dc.b $74 ; t
		dc.b $51 ; Q
		dc.b $A5
		dc.b $F0
		dc.b $E7
		dc.b $2C ; ,
		dc.b $BC
		dc.b $C5
		dc.b $14
		dc.b $2D ; -
		dc.b  $B
		dc.b $13
		dc.b $2B ; +
		dc.b $15
		dc.b $DD
		dc.b $8E
		dc.b $6A ; j
		dc.b $99
		dc.b $35 ; 5
		dc.b $96
		dc.b $76 ; v
		dc.b $F4
		dc.b $21 ; !
		dc.b $CB
		dc.b $E2
		dc.b $35 ; 5
		dc.b $31 ; 1
		dc.b $3F ; ?
		dc.b $13
		dc.b $2B ; +
		dc.b $8B
		dc.b $3B ; ;
		dc.b $74 ; t
		dc.b $C9
		dc.b $C7
		dc.b $4C ; L
		dc.b $BE
		dc.b $16
		dc.b $EE
		dc.b $22 ; "
		dc.b $C3
		dc.b $A9
		dc.b $84
		dc.b $78 ; x
		dc.b $5D ; ]
		dc.b $93
		dc.b $56 ; V
		dc.b $FB
		dc.b $8A
		dc.b $C3
		dc.b $88
		dc.b $AD
		dc.b  $B
		dc.b  $D
		dc.b $7D ; }
		dc.b $44 ; D
		dc.b $E9
		dc.b $B0
		dc.b $DB
		dc.b $15
		dc.b $76 ; v
		dc.b $4D ; M
		dc.b $8A
		dc.b $DD
		dc.b $AD
		dc.b $8E
		dc.b $78 ; x
		dc.b $99
		dc.b $32 ; 2
		dc.b $6B ; k
		dc.b $9F
		dc.b $CF
		dc.b $BC
		dc.b $B8
		dc.b $E5
		dc.b $D1
		dc.b $E1
		dc.b $CE
		dc.b $73 ; s
		dc.b $69 ; i
		dc.b $93
		dc.b $26 ; &
		dc.b $1F
		dc.b $F9
		dc.b $F3
		dc.b $71 ; q
		dc.b $C7
		dc.b $9D
		dc.b $32 ; 2
		dc.b $36 ; 6
		dc.b $C8
		dc.b $DB
		dc.b $23 ; #
		dc.b $6C ; l
		dc.b $8D
		dc.b $31 ; 1
		dc.b $CE
		dc.b $73 ; s
		dc.b $6D ; m
		dc.b $E1
		dc.b $E1
		dc.b $E1
		dc.b $E2
		dc.b $75 ; u
		dc.b $1E
		dc.b $C4
		dc.b $C2
		dc.b $20
		dc.b $F0
		dc.b $F0
		dc.b $F0
		dc.b $F0
		dc.b $E5
		dc.b $A9
		dc.b $93
		dc.b $59 ; Y
		dc.b $67 ; g
		dc.b $6F ; o
		dc.b $D1
		dc.b $CB
		dc.b $FD
		dc.b $6A ; j
		dc.b $63 ; c
		dc.b $DF
		dc.b $3D ; =
		dc.b $64 ; d
		dc.b $DB
		dc.b $4C ; L
		dc.b $99
		dc.b $35 ; 5
		dc.b $6B ; k
		dc.b $DC
		dc.b $5A ; Z
		dc.b $3B ; ;
		dc.b $A1
		dc.b $E6
		dc.b $27 ; '
		dc.b $5E ; ^
		dc.b $D9
		dc.b $37 ; 7
		dc.b $BB
		dc.b $4C ; L
		dc.b $27 ; '
		dc.b $1C
		dc.b $76 ; v
		dc.b $C4
		dc.b $E3
		dc.b $8E
		dc.b $54 ; T
		dc.b $4C ; L
		dc.b $4C ; L
		dc.b $7A ; z
		dc.b $C6
		dc.b $96
		dc.b $7A ; z
		dc.b $CA
		dc.b $D5
		dc.b $FB
		dc.b $F7
		dc.b $1F
		dc.b $D9
		dc.b $B8
		dc.b $EB
		dc.b $11
		dc.b $AA
		dc.b $98
		dc.b $98
		dc.b $9D
		dc.b $B7
		dc.b $B7
		dc.b $64 ; d
		dc.b $D8
		dc.b $AD
		dc.b $DA
		dc.b $D8
		dc.b $E7
		dc.b $1E
		dc.b $99
		dc.b $35 ; 5
		dc.b $96
		dc.b $76 ; v
		dc.b $F4
		dc.b $21 ; !
		dc.b $CB
		dc.b $E2
		dc.b $35 ; 5
		dc.b $31 ; 1
		dc.b $31 ; 1
		dc.b $88
		dc.b $D5
		dc.b   8
		dc.b $D2
		dc.b $CF
		dc.b $5B ; [
		dc.b $75 ; u
		dc.b $DB
		dc.b $AB
		dc.b $8E
		dc.b $5F ; _
		dc.b $14
		dc.b $50 ; P
		dc.b $B4
		dc.b $2C ; ,
		dc.b $4C ; L
		dc.b $AC
		dc.b $57 ; W
		dc.b $6D ; m
		dc.b $D1
		dc.b $D3
		dc.b $2C ; ,
		dc.b $52 ; R
		dc.b $FD
		dc.b $AF
		dc.b $AB
		dc.b $8E
		dc.b $3C ; <
		dc.b $E9
		dc.b $B0
		dc.b $DB
		dc.b $15
		dc.b $76 ; v
		dc.b $4D ; M
		dc.b $8A
		dc.b $DD
		dc.b $AD
		dc.b $80
unk_A42E:       dc.b   0		; DATA XREF: sub_3BDA+E↑o
		dc.b $38 ; 8
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $38 ; 8
		dc.b   0
		dc.b   0
		dc.b   8
		dc.b $18
		dc.b   8
		dc.b   8
		dc.b   8
		dc.b $1C
		dc.b   0
		dc.b   0
		dc.b $38 ; 8
		dc.b $44 ; D
		dc.b   4
		dc.b   8
		dc.b $30 ; 0
		dc.b $7C ; |
		dc.b   0
		dc.b   0
		dc.b $78 ; x
		dc.b   4
		dc.b $38 ; 8
		dc.b   4
		dc.b   4
		dc.b $78 ; x
		dc.b   0
		dc.b   0
		dc.b $48 ; H
		dc.b $48 ; H
		dc.b $48 ; H
		dc.b $7C ; |
		dc.b   8
		dc.b   8
		dc.b   0
		dc.b   0
		dc.b $7C ; |
		dc.b $40 ; @
		dc.b $78 ; x
		dc.b $44 ; D
		dc.b   4
		dc.b $78 ; x
		dc.b   0
		dc.b   0
		dc.b $38 ; 8
		dc.b $40 ; @
		dc.b $78 ; x
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $38 ; 8
		dc.b   0
		dc.b   0
		dc.b $7C ; |
		dc.b   4
		dc.b   8
		dc.b   8
		dc.b $10
		dc.b $10
		dc.b   0
		dc.b   0
		dc.b $38 ; 8
		dc.b $44 ; D
		dc.b $38 ; 8
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $38 ; 8
		dc.b   0
		dc.b   0
		dc.b $38 ; 8
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $3C ; <
		dc.b   4
		dc.b $38 ; 8
		dc.b   0
		dc.b   0
		dc.b $3E ; >
		dc.b   8
		dc.b   8
		dc.b   8
		dc.b   8
		dc.b   8
		dc.b   0
		dc.b   0
		dc.b $F0
		dc.b $88
		dc.b $88
		dc.b $F0
		dc.b $90
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $1C
		dc.b $22 ; "
		dc.b $20
		dc.b $20
		dc.b $22 ; "
		dc.b $1C
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b $F8
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $D8
		dc.b $A8
		dc.b $A8
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $18
		dc.b $18
		dc.b   0
		dc.b $18
		dc.b $18
		dc.b   0
		dc.b   0
		dc.b   4
		dc.b $89
		dc.b   3
		dc.b   4
		dc.b $23 ; #
		dc.b   5
		dc.b $63 ; c
		dc.b   6
		dc.b $72 ; r
		dc.b   1
		dc.b $8B
		dc.b   2
		dc.b   0
		dc.b $34 ; 4
		dc.b  $E
		dc.b $FF
		dc.b $C6
		dc.b $31 ; 1
		dc.b $8C
		dc.b $61 ; a
		dc.b $7A ; z
		dc.b   9
		dc.b $3F ; ?
		dc.b $57 ; W
		dc.b $FB
		dc.b $93
		dc.b $1F
		dc.b $D9
		dc.b $27 ; '
		dc.b $41 ; A
		dc.b $69 ; i
		dc.b   9
		dc.b $DF
		dc.b $99
		dc.b $29 ; )
		dc.b $4A ; J
		dc.b $52 ; R
		dc.b $FE
		dc.b $6F ; o
		dc.b $F3
		dc.b $25 ; %
		dc.b $21 ; !
		dc.b  $A
		dc.b $2F ; /
		dc.b $E6
		dc.b $D5
		dc.b $55 ; U
		dc.b $FE
		dc.b $C8
		dc.b $80
		dc.b $2D ; -
		dc.b $80
		dc.b   5
		dc.b $1D
		dc.b $14
		dc.b  $A
		dc.b $23 ; #
		dc.b   4
		dc.b $35 ; 5
		dc.b $1A
		dc.b $45 ; E
		dc.b $1B
		dc.b $57 ; W
		dc.b $7C ; |
		dc.b $65 ; e
		dc.b $1E
		dc.b $72 ; r
		dc.b   0
		dc.b $88
		dc.b $73 ; s
		dc.b   3
		dc.b $8E
		dc.b   3
		dc.b   2
		dc.b $14
		dc.b  $C
		dc.b $24 ; $
		dc.b  $B
		dc.b $35 ; 5
		dc.b $1C
		dc.b $47 ; G
		dc.b $7D ; }
		dc.b $FF
		dc.b $FF
		dc.b $CB
		dc.b $63 ; c
		dc.b $60 ; `
		dc.b $36 ; 6
		dc.b $36 ; 6
		dc.b $77 ; w
		dc.b $EC
		dc.b $FB
		dc.b $4D ; M
		dc.b $8D
		dc.b $8B
		dc.b $CB
		dc.b $CD
		dc.b $8D
		dc.b $97
		dc.b $3E ; >
		dc.b $CC
		dc.b $6C ; l
		dc.b $6C ; l
		dc.b $CD
		dc.b $73 ; s
		dc.b $58 ; X
		dc.b $D8
		dc.b $D9
		dc.b $95
		dc.b $FD
		dc.b $EA
		dc.b $E3
		dc.b $63 ; c
		dc.b $62 ; b
		dc.b $AB
		dc.b $A5
		dc.b $56 ; V
		dc.b   0
		dc.b   4
		dc.b $41 ; A
		dc.b $7B ; {
		dc.b $B3
		dc.b $7C ; |
		dc.b $9F
		dc.b $4A ; J
		dc.b $5F ; _
		dc.b $10
		dc.b   7
		dc.b $79 ; y
		dc.b $3E ; >
		dc.b $D2
		dc.b $22 ; "
		dc.b $A4
		dc.b $76 ; v
		dc.b $F5
		dc.b $CD
		dc.b $20
		dc.b $8A
		dc.b $91
		dc.b $15
		dc.b $22 ; "
		dc.b $AE
		dc.b $BE
		dc.b $EB
		dc.b  $D
		dc.b $DE
		dc.b $EC
		dc.b $D2
		dc.b $22 ; "
		dc.b $D7
		dc.b $D9
		dc.b $66 ; f
		dc.b $4E ; N
		dc.b $4E ; N
		dc.b $11
		dc.b $52 ; R
		dc.b $F6
		dc.b   7
		dc.b $CB
		dc.b $97
		dc.b $D5
		dc.b $56 ; V
		dc.b $14
		dc.b $D8
		dc.b $D9
		dc.b $3E ; >
		dc.b $CF
		dc.b $AD
		dc.b $8D
		dc.b $9F
		dc.b $33 ; 3
		dc.b $E6
		dc.b $36 ; 6
		dc.b $36 ; 6
		dc.b $5D ; ]
		dc.b $2A ; *
		dc.b $BA
		dc.b $54 ; T
		dc.b $D8
		dc.b $D9
		dc.b $BB
		dc.b $DD
		dc.b $B6
		dc.b $36 ; 6
		dc.b $4E ; N
		dc.b $6B ; k
		dc.b $3A ; :
		dc.b $80
		dc.b  $F
		dc.b $88
		dc.b $11
		dc.b $57 ; W
		dc.b $17
		dc.b $6E ; n
		dc.b $23 ; #
		dc.b $CB
		dc.b $E6
		dc.b $1B
		dc.b $45 ; E
		dc.b $67 ; g
		dc.b $CC
		dc.b $3E ; >
		dc.b $5C ; \
		dc.b $FB
		dc.b $56 ; V
		dc.b $69 ; i
		dc.b   5
		dc.b $EE
		dc.b $CC
		dc.b $F9
		dc.b $94
		dc.b $88
		dc.b $A9
		dc.b $44 ; D
		dc.b $6B ; k
		dc.b $9A
		dc.b $B0
		dc.b $EA
		dc.b $A4
		dc.b $7C ; |
		dc.b $47 ; G
		dc.b $B9
		dc.b $BE
		dc.b $13
		dc.b $EC
		dc.b $E1
		dc.b $4A ; J
		dc.b $97
		dc.b $B0
		dc.b $3E ; >
		dc.b $66 ; f
		dc.b $AF
		dc.b $56 ; V
		dc.b $1B
		dc.b $6C ; l
		dc.b $6C ; l
		dc.b $53 ; S
		dc.b $EC
		dc.b $E3
		dc.b $63 ; c
		dc.b $62 ; b
		dc.b $A5
		dc.b $32 ; 2
		dc.b $94
		dc.b $4D ; M
		dc.b $8D
		dc.b $92
		dc.b $F7
		dc.b $74 ; t
		dc.b $D8
		dc.b $D9
		dc.b $DB
		dc.b $A5
		dc.b $57 ; W
		dc.b $4B ; K
		dc.b $AD
		dc.b $8D
		dc.b $94
		dc.b $BC
		dc.b $A9
		dc.b   6
		dc.b $7C ; |
		dc.b $C0
		dc.b $DA
		dc.b $22 ; "
		dc.b $A4
		dc.b $4C ; L
		dc.b $97
		dc.b $BF
		dc.b $A4
		dc.b $BE
		dc.b $AA
		dc.b $E1
		dc.b $33 ; 3
		dc.b $B9
		dc.b $AB
		dc.b $3E ; >
		dc.b $22 ; "
		dc.b $97
		dc.b $95
		dc.b $28 ; (
		dc.b $8A
		dc.b $51 ; Q
		dc.b $1A
		dc.b $BD
		dc.b $D8
		dc.b $69 ; i
		dc.b $44 ; D
		dc.b $45 ; E
		dc.b $10
		dc.b $BC
		dc.b $83
		dc.b $AB
		dc.b $AB
		dc.b $77 ; w
		dc.b $48 ; H
		dc.b $88
		dc.b $DA
		dc.b $F6
		dc.b $79 ; y
		dc.b   2
		dc.b  $D
		dc.b $B6
		dc.b $36 ; 6
		dc.b $73 ; s
		dc.b $5C ; \
		dc.b $D3
		dc.b $63 ; c
		dc.b $65 ; e
		dc.b $73 ; s
		dc.b $5C ; \
		dc.b $A6
		dc.b $C6
		dc.b $C5
		dc.b $14
		dc.b $CA
		dc.b $41 ; A
		dc.b $7B ; {
		dc.b $B0
		dc.b $EA
		dc.b   5
		dc.b $11
		dc.b $AE
		dc.b $6B ; k
		dc.b  $C
		dc.b $22 ; "
		dc.b $88
		dc.b $EE
		dc.b $77 ; w
		dc.b $29 ; )
		dc.b $76 ; v
		dc.b $CF
		dc.b $88
		dc.b $36 ; 6
		dc.b $A2
		dc.b $A4
		dc.b $45 ; E
		dc.b $11
		dc.b $7B ; {
		dc.b $B0
		dc.b $8B
		dc.b $4A ; J
		dc.b $B0
		dc.b $8A
		dc.b $2D ; -
		dc.b $2F ; /
		dc.b $67 ; g
		dc.b $B3
		dc.b $CB
		dc.b $AB
		dc.b $CA
		dc.b $94
		dc.b $40 ; @
		dc.b   6
		dc.b   3
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $24 ; $
		dc.b $16
		dc.b $A8
		dc.b   5
		dc.b $50 ; P
		dc.b  $A
		dc.b $A0
		dc.b $15
		dc.b $40 ; @
		dc.b $2A ; *
		dc.b $80
		dc.b $53 ; S
		dc.b   0
		dc.b $16
		dc.b $A8
		dc.b $35 ; 5
		dc.b $50 ; P
		dc.b $6A ; j
		dc.b $A0
		dc.b $D5
		dc.b $41 ; A
		dc.b $AA
		dc.b $83
		dc.b $53 ; S
		dc.b   6
		dc.b $16
		dc.b $A8
		dc.b $65 ; e
		dc.b $50 ; P
		dc.b $CA
		dc.b $A1
		dc.b $95
		dc.b $43 ; C
		dc.b $2A ; *
		dc.b $86
		dc.b $53 ; S
		dc.b  $C
		dc.b $16
		dc.b $A8
		dc.b $95
		dc.b $51 ; Q
		dc.b $2A ; *
		dc.b $A2
		dc.b $55 ; U
		dc.b $44 ; D
		dc.b $AA
		dc.b $89
		dc.b $53 ; S
		dc.b $12
		dc.b $16
		dc.b $A8
		dc.b $C5
		dc.b $51 ; Q
		dc.b $8A
		dc.b $A3
		dc.b $15
		dc.b $46 ; F
		dc.b $2A ; *
		dc.b $8C
		dc.b $53 ; S
		dc.b $18
		dc.b $16
		dc.b $A8
		dc.b $F5
		dc.b $51 ; Q
		dc.b $EA
		dc.b $A3
		dc.b $D5
		dc.b $47 ; G
		dc.b $AA
		dc.b $8F
		dc.b $53 ; S
		dc.b $1E
		dc.b $AA
		dc.b   1
		dc.b $54 ; T
		dc.b   2
		dc.b $A8
		dc.b   5
		dc.b $50 ; P
		dc.b  $A
		dc.b $A0
		dc.b $15
		dc.b $40 ; @
		dc.b $29 ; )
		dc.b $80
		dc.b $55 ; U
		dc.b   6
		dc.b $AA
		dc.b  $D
		dc.b $54 ; T
		dc.b $1A
		dc.b $A8
		dc.b $35 ; 5
		dc.b $50 ; P
		dc.b $6A ; j
		dc.b $A0
		dc.b $D4
		dc.b $C1
		dc.b $AA
		dc.b $86
		dc.b $55 ; U
		dc.b  $C
		dc.b $AA
		dc.b $19
		dc.b $54 ; T
		dc.b $32 ; 2
		dc.b $A8
		dc.b $65 ; e
		dc.b $50 ; P
		dc.b $CA
		dc.b $61 ; a
		dc.b $95
		dc.b $44 ; D
		dc.b $AA
		dc.b $89
		dc.b $55 ; U
		dc.b $12
		dc.b $AA
		dc.b $25 ; %
		dc.b $54 ; T
		dc.b $4A ; J
		dc.b $A8
		dc.b $95
		dc.b $31 ; 1
		dc.b $2A ; *
		dc.b $A3
		dc.b $15
		dc.b $46 ; F
		dc.b $2A ; *
		dc.b $8C
		dc.b $55 ; U
		dc.b $18
		dc.b $AA
		dc.b $31 ; 1
		dc.b $54 ; T
		dc.b $62 ; b
		dc.b $98
		dc.b $C5
		dc.b $51 ; Q
		dc.b $EA
		dc.b $A3
		dc.b $D5
		dc.b $47 ; G
		dc.b $AA
		dc.b $8F
		dc.b $55 ; U
		dc.b $1E
		dc.b $AA
		dc.b $3D ; =
		dc.b $4C ; L
		dc.b $7A ; z
		dc.b $A8
		dc.b   5
		dc.b $50 ; P
		dc.b  $A
		dc.b $A0
		dc.b $15
		dc.b $40 ; @
		dc.b $2A ; *
		dc.b $80
		dc.b $55 ; U
		dc.b   0
		dc.b $A6
		dc.b   1
		dc.b $54 ; T
		dc.b $1A
		dc.b $A8
		dc.b $35 ; 5
		dc.b $50 ; P
		dc.b $6A ; j
		dc.b $A0
		dc.b $D5
		dc.b $41 ; A
		dc.b $AA
		dc.b $83
		dc.b $53 ; S
		dc.b   6
		dc.b   1
		dc.b $10
		dc.b $BF
		dc.b $33 ; 3
		dc.b $93
		dc.b $B3
		dc.b $93
		dc.b $B3
		dc.b $93
		dc.b $B3
		dc.b $93
		dc.b $B3
		dc.b $93
		dc.b $B3
		dc.b $93
		dc.b $B3
		dc.b $93
		dc.b $B3
		dc.b $FE
		dc.b $27 ; '
		dc.b $67 ; g
		dc.b $27 ; '
		dc.b $67 ; g
		dc.b $27 ; '
		dc.b $67 ; g
		dc.b $27 ; '
		dc.b $67 ; g
		dc.b $27 ; '
		dc.b $67 ; g
		dc.b $27 ; '
		dc.b $67 ; g
		dc.b $27 ; '
		dc.b $67 ; g
		dc.b $27 ; '
		dc.b $E0
		dc.b $CE
		dc.b $A8
		dc.b $5F ; _
		dc.b $9A
		dc.b $8A
		dc.b $9A
		dc.b $8A
		dc.b $9A
		dc.b $8A
		dc.b $9A
		dc.b $8A
		dc.b $9A
		dc.b $8A
		dc.b $9A
		dc.b $8A
		dc.b $9A
		dc.b $8A
		dc.b $9A
		dc.b $BF
		dc.b $15
		dc.b $35 ; 5
		dc.b $15
		dc.b $35 ; 5
		dc.b $15
		dc.b $35 ; 5
		dc.b $15
		dc.b $35 ; 5
		dc.b $15
		dc.b $35 ; 5
		dc.b $15
		dc.b $35 ; 5
		dc.b $15
		dc.b $35 ; 5
		dc.b $15
		dc.b $70 ; p
		dc.b $6A ; j
		dc.b $7D ; }
		dc.b $F7
		dc.b   0
		dc.b $82
		dc.b $52 ; R
		dc.b   4
		dc.b $12
		dc.b $9F
		dc.b $C5
		dc.b $85
		dc.b $25 ; %
		dc.b $25 ; %
		dc.b $85
		dc.b $25 ; %
		dc.b $25 ; %
		dc.b $85
		dc.b $25 ; %
		dc.b $25 ; %
		dc.b $85
		dc.b $25 ; %
		dc.b $25 ; %
		dc.b $85
		dc.b $25 ; %
		dc.b $3E ; >
		dc.b  $B
		dc.b  $A
		dc.b $4A ; J
		dc.b $4B ; K
		dc.b  $A
		dc.b $4A ; J
		dc.b $4B ; K
		dc.b  $A
		dc.b $4A ; J
		dc.b $40 ; @
		dc.b $4C ; L
		dc.b   4
		dc.b $FF
		dc.b $15
		dc.b $94
		dc.b $94
		dc.b $96
		dc.b $14
		dc.b $94
		dc.b $96
		dc.b $14
		dc.b $94
		dc.b $96
		dc.b $14
		dc.b $94
		dc.b $96
		dc.b $14
		dc.b $94
		dc.b $FE
		dc.b $2C ; ,
		dc.b $29 ; )
		dc.b $29 ; )
		dc.b $2C ; ,
		dc.b $29 ; )
		dc.b $29 ; )
		dc.b $2C ; ,
		dc.b $29 ; )
		dc.b $29 ; )
		dc.b $2C ; ,
		dc.b $29 ; )
		dc.b $29 ; )
		dc.b $2C ; ,
		dc.b $29 ; )
		dc.b $29 ; )
		dc.b   1
		dc.b $3E ; >
		dc.b $15
		dc.b $CA
		dc.b $41 ; A
		dc.b $29 ; )
		dc.b $42 ; B
		dc.b   9
		dc.b $4A ; J
		dc.b $10
		dc.b $4A ; J
		dc.b $50 ; P
		dc.b $82
		dc.b $52 ; R
		dc.b $84
		dc.b $12
		dc.b $94
		dc.b $20
		dc.b $94
		dc.b $A1
		dc.b   4
		dc.b $A5
		dc.b   8
		dc.b $25 ; %
		dc.b $28 ; (
		dc.b $41 ; A
		dc.b $29 ; )
		dc.b $42 ; B
		dc.b   9
		dc.b $4A ; J
		dc.b $F5
		dc.b $43 ; C
		dc.b $2A ; *
		dc.b $86
		dc.b $55 ; U
		dc.b  $C
		dc.b $AA
		dc.b $19
		dc.b $54 ; T
		dc.b $32 ; 2
		dc.b $A8
		dc.b $65 ; e
		dc.b $30 ; 0
		dc.b $CA
		dc.b $A2
		dc.b $55 ; U
		dc.b $44 ; D
		dc.b $AA
		dc.b $89
		dc.b $55 ; U
		dc.b $12
		dc.b $AA
		dc.b $25 ; %
		dc.b $54 ; T
		dc.b $4A ; J
		dc.b $98
		dc.b $95
		dc.b $51 ; Q
		dc.b $8A
		dc.b $A3
		dc.b $15
		dc.b $46 ; F
		dc.b $2A ; *
		dc.b $8C
		dc.b $55 ; U
		dc.b $18
		dc.b $AA
		dc.b $31 ; 1
		dc.b $4C ; L
		dc.b $62 ; b
		dc.b $A8
		dc.b $F5
		dc.b $51 ; Q
		dc.b $EA
		dc.b $A3
		dc.b $D5
		dc.b $47 ; G
		dc.b $AA
		dc.b $8F
		dc.b $55 ; U
		dc.b $1E
		dc.b $A6
		dc.b $3D ; =
		dc.b $54 ; T
		dc.b   2
		dc.b $A8
		dc.b   5
		dc.b $50 ; P
		dc.b  $A
		dc.b $A0
		dc.b $15
		dc.b $40 ; @
		dc.b $2A ; *
		dc.b $80
		dc.b $53 ; S
		dc.b   0
		dc.b $AA
		dc.b  $D
		dc.b $54 ; T
		dc.b $1A
		dc.b $A8
		dc.b $35 ; 5
		dc.b $50 ; P
		dc.b $6A ; j
		dc.b $A0
		dc.b $D5
		dc.b $41 ; A
		dc.b $A9
		dc.b $83
		dc.b $55 ; U
		dc.b  $C
		dc.b $AA
		dc.b $19
		dc.b $54 ; T
		dc.b $32 ; 2
		dc.b $A8
		dc.b $65 ; e
		dc.b $50 ; P
		dc.b $CA
		dc.b $A1
		dc.b $94
		dc.b $C3
		dc.b $2A ; *
		dc.b $89
		dc.b $55 ; U
		dc.b $12
		dc.b $AA
		dc.b $25 ; %
		dc.b $54 ; T
		dc.b $4A ; J
		dc.b $A8
		dc.b $95
		dc.b $51 ; Q
		dc.b $2A ; *
		dc.b $62 ; b
		dc.b $5F ; _
		dc.b $C0
		dc.b   0
		dc.b   4
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $33 ; 3
		dc.b $F8
		dc.b   6
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   3
		dc.b   7
		dc.b $BC
		dc.b   0
		dc.b   0
		dc.b $40 ; @
		dc.b $C0
		dc.b   0
		dc.b   6
		dc.b   0
		dc.b $3C ; <
		dc.b $61 ; a
		dc.b   2
		dc.b $47 ; G
		dc.b $9C
		dc.b $20
		dc.b $40 ; @
		dc.b $E1
		dc.b   3
		dc.b $DE
		dc.b $20
		dc.b $40 ; @
		dc.b $A1
		dc.b $62 ; b
		dc.b   4
		dc.b  $B
		dc.b $10
		dc.b $28 ; (
		dc.b $12
		dc.b   0
		dc.b $EB
		dc.b $24 ; $
		dc.b $44 ; D
		dc.b $80
		dc.b $F1
		dc.b $81
		dc.b $25 ; %
		dc.b $CA
		dc.b $10
		dc.b $20
		dc.b $60 ; `
		dc.b $21 ; !
		dc.b $C6
		dc.b $10
		dc.b $48 ; H
		dc.b $41 ; A
		dc.b $79 ; y
		dc.b $44 ; D
		dc.b   8
		dc.b $14
		dc.b  $E
		dc.b $21 ; !
		dc.b $62 ; b
		dc.b   3
		dc.b   4
		dc.b $6F ; o
		dc.b   9
		dc.b $94
		dc.b $46 ; F
		dc.b   1
		dc.b $C4
		dc.b $6C ; l
		dc.b $C0
		dc.b $A0
		dc.b $51 ; Q
		dc.b $22 ; "
		dc.b   1
		dc.b $60 ; `
		dc.b $20
		dc.b $18
		dc.b  $E
		dc.b   0
		dc.b $23 ; #
		dc.b $20
		dc.b $16
		dc.b $1B
		dc.b $F8
		dc.b   6
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   7
		dc.b $3F ; ?
		dc.b $88
		dc.b   0
		dc.b $E2
		dc.b $20
		dc.b $37 ; 7
		dc.b   8
		dc.b $15
		dc.b $4A ; J
		dc.b $81
		dc.b $C6
		dc.b   0
		dc.b $71 ; q
		dc.b $10
		dc.b $E3
		dc.b   0
		dc.b   0
		dc.b $10
		dc.b   8
		dc.b   9
		dc.b $C0
		dc.b   2
		dc.b $21 ; !
		dc.b $23 ; #
		dc.b $C4
		dc.b   0
		dc.b $71 ; q
		dc.b $11
		dc.b  $B
		dc.b $99
		dc.b   4
		dc.b $61 ; a
		dc.b $E0
		dc.b $23 ; #
		dc.b   2
		dc.b $30 ; 0
		dc.b $48 ; H
		dc.b $71 ; q
		dc.b $80
		dc.b $1C
		dc.b $18
		dc.b   1
		dc.b $82
		dc.b $81
		dc.b   3
		dc.b $F8
		dc.b   6
		dc.b   3
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   1
		dc.b   5
		dc.b $50 ; P
		dc.b $16
		dc.b $E3
		dc.b $80
		dc.b   0
		dc.b $B6
		dc.b $10
		dc.b $25 ; %
		dc.b $60 ; `
		dc.b $60 ; `
		dc.b   1
		dc.b   0
		dc.b  $C
		dc.b $18
		dc.b $20
		dc.b $60 ; `
		dc.b $C2
		dc.b   7
		dc.b   2
		dc.b $30 ; 0
		dc.b $38 ; 8
		dc.b $31 ; 1
		dc.b $81
		dc.b $F0
		dc.b $84
		dc.b $42 ; B
		dc.b   7
		dc.b   2
		dc.b   8
		dc.b $1D
		dc.b $10
		dc.b $48 ; H
		dc.b $20
		dc.b $6A ; j
		dc.b $80
		dc.b $FA
		dc.b $80
		dc.b $26 ; &
		dc.b   3
		dc.b $70 ; p
		dc.b   3
		dc.b   4
		dc.b $5A ; Z
		dc.b   0
		dc.b $78 ; x
		dc.b $4A ; J
		dc.b $70 ; p
		dc.b  $D
		dc.b $4F ; O
		dc.b $80
		dc.b $73 ; s
		dc.b $60 ; `
		dc.b $C5
		dc.b $18
		dc.b $1A
		dc.b   0
		dc.b $F8
		dc.b $71 ; q
		dc.b $86
		dc.b   0
		dc.b $54 ; T
		dc.b   9
		dc.b $84
		dc.b $A4
		dc.b $C0
		dc.b $67 ; g
		dc.b   2
		dc.b $69 ; i
		dc.b $2F ; /
		dc.b $F0
		dc.b   0
		dc.b   5
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $D
		dc.b   2
		dc.b   0
		dc.b   0
		dc.b $70 ; p
		dc.b $86
		dc.b $30 ; 0
		dc.b   0
		dc.b $46 ; F
		dc.b   3
		dc.b $88
		dc.b $30 ; 0
		dc.b $C6
		dc.b   3
		dc.b $80
		dc.b $51 ; Q
		dc.b $80
		dc.b $E6
		dc.b  $C
		dc.b $20
		dc.b   0
		dc.b   4
		dc.b   0
		dc.b $C4
		dc.b $A4
		dc.b $34 ; 4
		dc.b   1
		dc.b $80
		dc.b $A2
		dc.b $3D ; =
		dc.b $21 ; !
		dc.b $A8
		dc.b $8C
		dc.b   5
		dc.b $31 ; 1
		dc.b $69 ; i
		dc.b  $D
		dc.b $CC
		dc.b $62 ; b
		dc.b $47 ; G
		dc.b $22 ; "
		dc.b $90
		dc.b $D4
		dc.b $46 ; F
		dc.b $E6
		dc.b $54 ; T
		dc.b $81
		dc.b $86
		dc.b   4
		dc.b $12
		dc.b $C1
		dc.b $54 ; T
		dc.b   5
		dc.b $B8
		dc.b $D8
		dc.b $62 ; b
		dc.b $D8
		dc.b $4E ; N
		dc.b $57 ; W
		dc.b $85
		dc.b $91
		dc.b $4B ; K
		dc.b   6
		dc.b $2A ; *
		dc.b   0
		dc.b $46 ; F
		dc.b $40 ; @
		dc.b  $A
		dc.b $27 ; '
		dc.b $C5
		dc.b $43 ; C
		dc.b  $A
		dc.b $31 ; 1
		dc.b $50 ; P
		dc.b $E0
		dc.b $94
		dc.b $52 ; R
		dc.b $E8
		dc.b $98
		dc.b $AE
		dc.b $13
		dc.b $95
		dc.b $E3
		dc.b $61 ; a
		dc.b $8B
		dc.b $61 ; a
		dc.b $39 ; 9
		dc.b $5E ; ^
		dc.b $16
		dc.b $45 ; E
		dc.b $2E ; .
		dc.b $89
		dc.b $F1
		dc.b $50 ; P
		dc.b $C2
		dc.b $8C
		dc.b $54 ; T
		dc.b $38 ; 8
		dc.b $A4
		dc.b $7C ; |
		dc.b $64 ; d
		dc.b $30 ; 0
		dc.b $A3
		dc.b $15
		dc.b  $E
		dc.b   9
		dc.b $45 ; E
		dc.b $2E ; .
		dc.b $89
		dc.b $8A
		dc.b $E1
		dc.b $39 ; 9
		dc.b $5E ; ^
		dc.b $36 ; 6
		dc.b $18
		dc.b $B6
		dc.b $13
		dc.b $95
		dc.b $E1
		dc.b $64 ; d
		dc.b $52 ; R
		dc.b $C1
		dc.b $8A
		dc.b $A0
		dc.b $11
		dc.b $94
		dc.b $E3
		dc.b $9A
		dc.b $71 ; q
		dc.b $94
		dc.b $C2
		dc.b $AC
		dc.b $55 ; U
		dc.b $38 ; 8
		dc.b $67 ; g
		dc.b   8
		dc.b $BF
		dc.b $E0
		dc.b   0
		dc.b   7
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   1
		dc.b   5
		dc.b $50 ; P
		dc.b $A2
		dc.b $82
		dc.b   5
		dc.b $14
		dc.b $1C
		dc.b  $A
		dc.b $20
		dc.b  $A
		dc.b $D1
		dc.b   2
		dc.b $1A
		dc.b $90
		dc.b $28 ; (
		dc.b $7C ; |
		dc.b $C4
		dc.b   4
		dc.b $C2
		dc.b $20
		dc.b $96
		dc.b $E5
		dc.b   1
		dc.b  $A
		dc.b   8
		dc.b $1C
		dc.b $10
		dc.b $48 ; H
		dc.b $10
		dc.b $60 ; `
		dc.b $41 ; A
		dc.b   7
		dc.b  $A
		dc.b   8
		dc.b $38 ; 8
		dc.b $1C
		dc.b $20
		dc.b $93
		dc.b  $E
		dc.b   0
		dc.b $20
		dc.b $7C ; |
		dc.b $41 ; A
		dc.b $E0
		dc.b $93
		dc.b $12
		dc.b   1
		dc.b   8
		dc.b $69 ; i
		dc.b   3
		dc.b $14
		dc.b $BC
		dc.b $18
		dc.b $C5
		dc.b $E0
		dc.b $2D ; -
		dc.b   0
		dc.b   8
		dc.b $F1
		dc.b $20
		dc.b   2
		dc.b   9
		dc.b $44 ; D
		dc.b $10
		dc.b $18
		dc.b   2
		dc.b $61 ; a
		dc.b $C0
		dc.b $1B
		dc.b $16
		dc.b   1
		dc.b $10
		dc.b $30 ; 0
		dc.b $15
		dc.b $42 ; B
		dc.b $80
		dc.b  $E
		dc.b   4
		dc.b   2
		dc.b $A0
		dc.b $20
		dc.b $28 ; (
		dc.b $81
		dc.b $44 ; D
		dc.b $1F
		dc.b $F8
		dc.b   6
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   1
		dc.b $3C ; <
		dc.b $68 ; h
		dc.b   1
		dc.b $83
		dc.b   0
		dc.b $22 ; "
		dc.b $50 ; P
		dc.b   7
		dc.b $F8
		dc.b   0
		dc.b   6
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   7
		dc.b $1A
		dc.b   0
		dc.b   1
		dc.b $90
		dc.b $13
		dc.b $91
		dc.b $20
		dc.b $34 ; 4
		dc.b $45 ; E
		dc.b $80
		dc.b $20
		dc.b  $E
		dc.b $20
		dc.b   8
		dc.b $89
		dc.b $C4
		dc.b   0
		dc.b $71 ; q
		dc.b $50 ; P
		dc.b $81
		dc.b   8
		dc.b $18
		dc.b   0
		dc.b $40 ; @
		dc.b $E6
		dc.b  $C
		dc.b $D8
		dc.b   0
		dc.b $E0
		dc.b $C0
		dc.b $10
		dc.b $12
		dc.b $1F
		dc.b $C0
unk_A9DC:       dc.b   0		; DATA XREF: sub_1F7E+E↑o
		dc.b   0
		dc.b   0
		dc.b   5
		dc.b   4
		dc.b $20
		dc.b   0
		dc.b $F0
		dcb.b $61C,$FF
unk_B000:       dc.b   0		; DATA XREF: sub_1344+2↑o
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b   0
		dc.b $18
		dc.b $18
		dc.b   0
		dc.b $36 ; 6
		dc.b $36 ; 6
		dc.b $48 ; H
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $12
		dc.b $12
		dc.b $7F ; 
		dc.b $12
		dc.b $7F ; 
		dc.b $24 ; $
		dc.b $24 ; $
		dc.b   0
		dc.b   8
		dc.b $3F ; ?
		dc.b $48 ; H
		dc.b $3E ; >
		dc.b   9
		dc.b $7E ; ~
		dc.b   8
		dc.b   0
		dc.b $71 ; q
		dc.b $52 ; R
		dc.b $74 ; t
		dc.b   8
		dc.b $17
		dc.b $25 ; %
		dc.b $47 ; G
		dc.b   0
		dc.b $18
		dc.b $24 ; $
		dc.b $18
		dc.b $29 ; )
		dc.b $45 ; E
		dc.b $46 ; F
		dc.b $39 ; 9
		dc.b   0
		dc.b $30 ; 0
		dc.b $30 ; 0
		dc.b $40 ; @
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $C
		dc.b $10
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $10
		dc.b  $C
		dc.b   0
		dc.b $30 ; 0
		dc.b   8
		dc.b   4
		dc.b   4
		dc.b   4
		dc.b   8
		dc.b $30 ; 0
		dc.b   0
		dc.b   0
		dc.b   8
		dc.b $2A ; *
		dc.b $1C
		dc.b $2A ; *
		dc.b   8
		dc.b   0
		dc.b   0
		dc.b   8
		dc.b   8
		dc.b   8
		dc.b $7F ; 
		dc.b   8
		dc.b   8
		dc.b   8
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $30 ; 0
		dc.b $30 ; 0
		dc.b $40 ; @
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $7F ; 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $30 ; 0
		dc.b $30 ; 0
		dc.b   0
		dc.b   1
		dc.b   2
		dc.b   4
		dc.b   8
		dc.b $10
		dc.b $20
		dc.b $40 ; @
		dc.b   0
		dc.b $1E
		dc.b $33 ; 3
		dc.b $33 ; 3
		dc.b $33 ; 3
		dc.b $33 ; 3
		dc.b $33 ; 3
		dc.b $1E
		dc.b   0
		dc.b $18
		dc.b $38 ; 8
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b $3C ; <
		dc.b   0
		dc.b $3E ; >
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b  $E
		dc.b $38 ; 8
		dc.b $60 ; `
		dc.b $7F ; 
		dc.b   0
		dc.b $3E ; >
		dc.b $63 ; c
		dc.b   3
		dc.b $1E
		dc.b   3
		dc.b $63 ; c
		dc.b $3E ; >
		dc.b   0
		dc.b   6
		dc.b  $E
		dc.b $1E
		dc.b $36 ; 6
		dc.b $66 ; f
		dc.b $7F ; 
		dc.b   6
		dc.b   0
		dc.b $7E ; ~
		dc.b $60 ; `
		dc.b $7E ; ~
		dc.b $63 ; c
		dc.b   3
		dc.b $63 ; c
		dc.b $3E ; >
		dc.b   0
		dc.b $3E ; >
		dc.b $63 ; c
		dc.b $60 ; `
		dc.b $7E ; ~
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b $3E ; >
		dc.b   0
		dc.b $3F ; ?
		dc.b $63 ; c
		dc.b   6
		dc.b   6
		dc.b  $C
		dc.b  $C
		dc.b $18
		dc.b   0
		dc.b $3E ; >
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b $3E ; >
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b $3E ; >
		dc.b   0
		dc.b $3E ; >
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b $3F ; ?
		dc.b   3
		dc.b $63 ; c
		dc.b $3E ; >
		dc.b   0
		dc.b   0
		dc.b $18
		dc.b $18
		dc.b   0
		dc.b   0
		dc.b $18
		dc.b $18
		dc.b   0
		dc.b   0
		dc.b $18
		dc.b $18
		dc.b   0
		dc.b   0
		dc.b $18
		dc.b $18
		dc.b $20
		dc.b   3
		dc.b  $C
		dc.b $30 ; 0
		dc.b $40 ; @
		dc.b $30 ; 0
		dc.b  $C
		dc.b   3
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $7F ; 
		dc.b   0
		dc.b $7F ; 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $60 ; `
		dc.b $18
		dc.b   6
		dc.b   1
		dc.b   6
		dc.b $18
		dc.b $60 ; `
		dc.b   0
		dc.b $3E ; >
		dc.b $63 ; c
		dc.b   3
		dc.b $1E
		dc.b $18
		dc.b   0
		dc.b $18
		dc.b   0
		dc.b $3C ; <
		dc.b $42 ; B
		dc.b $39 ; 9
		dc.b $49 ; I
		dc.b $49 ; I
		dc.b $49 ; I
		dc.b $36 ; 6
		dc.b   0
		dc.b $1C
		dc.b $1C
		dc.b $36 ; 6
		dc.b $36 ; 6
		dc.b $7F ; 
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b   0
		dc.b $7E ; ~
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b $7E ; ~
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b $7E ; ~
		dc.b   0
		dc.b $3E ; >
		dc.b $73 ; s
		dc.b $60 ; `
		dc.b $60 ; `
		dc.b $60 ; `
		dc.b $73 ; s
		dc.b $3E ; >
		dc.b   0
		dc.b $7E ; ~
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b $7E ; ~
		dc.b   0
		dc.b $3F ; ?
		dc.b $30 ; 0
		dc.b $30 ; 0
		dc.b $3E ; >
		dc.b $30 ; 0
		dc.b $30 ; 0
		dc.b $3F ; ?
		dc.b   0
		dc.b $3F ; ?
		dc.b $30 ; 0
		dc.b $30 ; 0
		dc.b $3E ; >
		dc.b $30 ; 0
		dc.b $30 ; 0
		dc.b $30 ; 0
		dc.b   0
		dc.b $3E ; >
		dc.b $73 ; s
		dc.b $60 ; `
		dc.b $67 ; g
		dc.b $63 ; c
		dc.b $73 ; s
		dc.b $3E ; >
		dc.b   0
		dc.b $66 ; f
		dc.b $66 ; f
		dc.b $66 ; f
		dc.b $7E ; ~
		dc.b $66 ; f
		dc.b $66 ; f
		dc.b $66 ; f
		dc.b   0
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b   0
		dc.b  $C
		dc.b  $C
		dc.b  $C
		dc.b  $C
		dc.b $CC
		dc.b $CC
		dc.b $78 ; x
		dc.b   0
		dc.b $63 ; c
		dc.b $66 ; f
		dc.b $6C ; l
		dc.b $78 ; x
		dc.b $6C ; l
		dc.b $66 ; f
		dc.b $63 ; c
		dc.b   0
		dc.b $60 ; `
		dc.b $60 ; `
		dc.b $60 ; `
		dc.b $60 ; `
		dc.b $60 ; `
		dc.b $60 ; `
		dc.b $7F ; 
		dc.b   0
		dc.b $63 ; c
		dc.b $77 ; w
		dc.b $7F ; 
		dc.b $6B ; k
		dc.b $6B ; k
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b   0
		dc.b $63 ; c
		dc.b $73 ; s
		dc.b $7B ; {
		dc.b $7F ; 
		dc.b $6F ; o
		dc.b $67 ; g
		dc.b $63 ; c
		dc.b   0
		dc.b $3E ; >
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b $3E ; >
		dc.b   0
		dc.b $7E ; ~
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b $7E ; ~
		dc.b $60 ; `
		dc.b $60 ; `
		dc.b $60 ; `
		dc.b   0
		dc.b $3E ; >
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b $6F ; o
		dc.b $63 ; c
		dc.b $3F ; ?
		dc.b   0
		dc.b $7E ; ~
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b $7E ; ~
		dc.b $68 ; h
		dc.b $66 ; f
		dc.b $67 ; g
		dc.b   0
		dc.b $3E ; >
		dc.b $63 ; c
		dc.b $70 ; p
		dc.b $3E ; >
		dc.b   7
		dc.b $63 ; c
		dc.b $3E ; >
		dc.b   0
		dc.b $7E ; ~
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b   0
		dc.b $66 ; f
		dc.b $66 ; f
		dc.b $66 ; f
		dc.b $66 ; f
		dc.b $66 ; f
		dc.b $66 ; f
		dc.b $3C ; <
		dc.b   0
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b $36 ; 6
		dc.b $36 ; 6
		dc.b $1C
		dc.b $1C
		dc.b   0
		dc.b $6B ; k
		dc.b $6B ; k
		dc.b $6B ; k
		dc.b $6B ; k
		dc.b $6B ; k
		dc.b $7F ; 
		dc.b $36 ; 6
		dc.b   0
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b $36 ; 6
		dc.b $1C
		dc.b $36 ; 6
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b   0
		dc.b $66 ; f
		dc.b $66 ; f
		dc.b $66 ; f
		dc.b $3C ; <
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b   0
		dc.b $7F ; 
		dc.b   7
		dc.b  $E
		dc.b $1C
		dc.b $38 ; 8
		dc.b $70 ; p
		dc.b $7F ; 
		dc.b   0
		dc.b $38 ; 8
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $38 ; 8
		dc.b   0
		dc.b $63 ; c
		dc.b $22 ; "
		dc.b $3E ; >
		dc.b   8
		dc.b $3E ; >
		dc.b   8
		dc.b $1C
		dc.b   0
		dc.b $1C
		dc.b   4
		dc.b   4
		dc.b   4
		dc.b   4
		dc.b   4
		dc.b $1C
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   8
		dc.b $14
		dc.b $22 ; "
		dc.b $41 ; A
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $7F ; 
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $18
		dc.b $18
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $3C ; <
		dc.b $46 ; F
		dc.b $3E ; >
		dc.b $66 ; f
		dc.b $3B ; ;
		dc.b   0
		dc.b $60 ; `
		dc.b $60 ; `
		dc.b $6C ; l
		dc.b $7E ; ~
		dc.b $66 ; f
		dc.b $66 ; f
		dc.b $7C ; |
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $3C ; <
		dc.b $66 ; f
		dc.b $60 ; `
		dc.b $66 ; f
		dc.b $3C ; <
		dc.b   0
		dc.b   6
		dc.b   6
		dc.b $3E ; >
		dc.b $66 ; f
		dc.b $66 ; f
		dc.b $76 ; v
		dc.b $3E ; >
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $3C ; <
		dc.b $66 ; f
		dc.b $7E ; ~
		dc.b $60 ; `
		dc.b $3C ; <
		dc.b   0
		dc.b   0
		dc.b $1C
		dc.b $36 ; 6
		dc.b $78 ; x
		dc.b $30 ; 0
		dc.b $30 ; 0
		dc.b $30 ; 0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $3C ; <
		dc.b $66 ; f
		dc.b $66 ; f
		dc.b $3E ; >
		dc.b   6
		dc.b $3C ; <
		dc.b $30 ; 0
		dc.b $30 ; 0
		dc.b $3C ; <
		dc.b $36 ; 6
		dc.b $36 ; 6
		dc.b $36 ; 6
		dc.b $36 ; 6
		dc.b   0
		dc.b $18
		dc.b   0
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b   0
		dc.b  $C
		dc.b   0
		dc.b  $C
		dc.b  $C
		dc.b  $C
		dc.b $6C ; l
		dc.b $7C ; |
		dc.b $38 ; 8
		dc.b $30 ; 0
		dc.b $33 ; 3
		dc.b $36 ; 6
		dc.b $3C ; <
		dc.b $3C ; <
		dc.b $36 ; 6
		dc.b $33 ; 3
		dc.b   0
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $76 ; v
		dc.b $6D ; m
		dc.b $6D ; m
		dc.b $6D ; m
		dc.b $6D ; m
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $3C ; <
		dc.b $32 ; 2
		dc.b $32 ; 2
		dc.b $32 ; 2
		dc.b $32 ; 2
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $3C ; <
		dc.b $66 ; f
		dc.b $66 ; f
		dc.b $66 ; f
		dc.b $3C ; <
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $7C ; |
		dc.b $66 ; f
		dc.b $66 ; f
		dc.b $76 ; v
		dc.b $6C ; l
		dc.b $60 ; `
		dc.b   0
		dc.b   0
		dc.b $3E ; >
		dc.b $66 ; f
		dc.b $66 ; f
		dc.b $6E ; n
		dc.b $36 ; 6
		dc.b   6
		dc.b   0
		dc.b   0
		dc.b $36 ; 6
		dc.b $3A ; :
		dc.b $30 ; 0
		dc.b $30 ; 0
		dc.b $30 ; 0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $1E
		dc.b $30 ; 0
		dc.b $1C
		dc.b   6
		dc.b $3C ; <
		dc.b   0
		dc.b $18
		dc.b $18
		dc.b $3C ; <
		dc.b $18
		dc.b $18
		dc.b $18
		dc.b  $C
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $66 ; f
		dc.b $66 ; f
		dc.b $66 ; f
		dc.b $66 ; f
		dc.b $3D ; =
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b $36 ; 6
		dc.b $36 ; 6
		dc.b $1C
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $6D ; m
		dc.b $6D ; m
		dc.b $6D ; m
		dc.b $6D ; m
		dc.b $36 ; 6
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $66 ; f
		dc.b $3C ; <
		dc.b $18
		dc.b $3C ; <
		dc.b $66 ; f
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b $36 ; 6
		dc.b $1C
		dc.b $18
		dc.b $30 ; 0
		dc.b   0
		dc.b   0
		dc.b $7E ; ~
		dc.b  $C
		dc.b $18
		dc.b $30 ; 0
		dc.b $7E ; ~
		dc.b   0
		dc.b $18
		dc.b $10
		dc.b $10
		dc.b $20
		dc.b $10
		dc.b $10
		dc.b $18
		dc.b   0
		dc.b   8
		dc.b   8
		dc.b   8
		dc.b   0
		dc.b   8
		dc.b   8
		dc.b   8
		dc.b   0
		dc.b $18
		dc.b   8
		dc.b   8
		dc.b   4
		dc.b   8
		dc.b   8
		dc.b $18
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $31 ; 1
		dc.b $7F ; 
		dc.b $4E ; N
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $3C ; <
		dc.b $42 ; B
		dc.b $99
		dc.b $9F
		dc.b $99
		dc.b $42 ; B
		dc.b $3C ; <
		dc.b   0
unk_B300:       dc.b   0		; DATA XREF: sub_1B6E↑o
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $83
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $74 ; t
		dc.b $21 ; !
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $18
		dc.b $87
		dc.b $41 ; A
		dc.b $11
		dc.b $18
		dc.b $51 ; Q
		dc.b $11
		dc.b $11
		dc.b $16
		dc.b $21 ; !
		dc.b $11
		dc.b $11
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $73 ; s
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $31 ; 1
		dc.b $11
		dc.b $11
		dc.b $85
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $73 ; s
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $31 ; 1
		dc.b $11
		dc.b $88
		dc.b $85
		dc.b $11
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $18
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $18
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $18
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $68 ; h
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $17
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $13
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $87
		dc.b $88
		dc.b $88
		dc.b $76 ; v
		dc.b $B9
		dc.b $87
		dc.b $7A ; z
		dc.b $99
		dc.b $99
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $76 ; v
		dc.b $BA
		dc.b $AA
		dc.b $A6
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $77 ; w
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $B7
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $99
		dc.b $A8
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $61 ; a
		dc.b $88
		dc.b $88
		dc.b $87
		dc.b $31 ; 1
		dc.b $88
		dc.b $88
		dc.b $84
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $72 ; r
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $41 ; A
		dc.b $11
		dc.b $88
		dc.b $87
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $84
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $61 ; a
		dc.b $11
		dc.b $11
		dc.b $87
		dc.b $31 ; 1
		dc.b $11
		dc.b $13
		dc.b $85
		dc.b $11
		dc.b $11
		dc.b $16
		dc.b $72 ; r
		dc.b $11
		dc.b $11
		dc.b $38 ; 8
		dc.b $41 ; A
		dc.b $11
		dc.b $11
		dc.b $78 ; x
		dc.b $11
		dc.b $11
		dc.b $14
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $37 ; 7
		dc.b $88
		dc.b $11
		dc.b $12
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $15
		dc.b $88
		dc.b $87
		dc.b $11
		dc.b $47 ; G
		dc.b $88
		dc.b $84
		dc.b $11
		dc.b $68 ; h
		dc.b $88
		dc.b $71 ; q
		dc.b $14
		dc.b $88
		dc.b $87
		dc.b $31 ; 1
		dc.b $28 ; (
		dc.b $88
		dc.b $85
		dc.b $11
		dc.b $68 ; h
		dc.b $88
		dc.b $62 ; b
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $41 ; A
		dc.b $11
		dc.b $88
		dc.b $86
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $82
		dc.b $11
		dc.b $12
		dc.b $88
		dc.b $51 ; Q
		dc.b $11
		dc.b $14
		dc.b $87
		dc.b $11
		dc.b $11
		dc.b $26 ; &
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $74 ; t
		dc.b $11
		dc.b $11
		dc.b $23 ; #
		dc.b $61 ; a
		dc.b $11
		dc.b $12
		dc.b $78 ; x
		dc.b $31 ; 1
		dc.b $11
		dc.b $25 ; %
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $48 ; H
		dc.b $88
		dc.b $11
		dc.b $12
		dc.b $78 ; x
		dc.b $88
		dc.b $11
		dc.b $16
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $38 ; 8
		dc.b $88
		dc.b $88
		dc.b $12
		dc.b $68 ; h
		dc.b $88
		dc.b $88
		dc.b $14
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $37 ; 7
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $68 ; h
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $62 ; b
		dc.b $11
		dc.b $11
		dc.b $36 ; 6
		dc.b $41 ; A
		dc.b $11
		dc.b $11
		dc.b $68 ; h
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $12
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $62 ; b
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $41 ; A
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $13
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $26 ; &
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $68 ; h
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $21 ; !
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $41 ; A
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $74 ; t
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $36 ; 6
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $68 ; h
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $86
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $83
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $47 ; G
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $62 ; b
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $21 ; !
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $21 ; !
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $12
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $61 ; a
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $85
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $41 ; A
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $73 ; s
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $87
		dc.b $21 ; !
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $62 ; b
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $84
		dc.b $31 ; 1
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $71 ; q
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $86
		dc.b $41 ; A
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $58 ; X
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $16
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $13
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $48 ; H
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $16
		dc.b $88
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $78 ; x
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $38 ; 8
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $25 ; %
		dc.b $88
		dc.b $11
		dc.b $11
		dc.b $12
		dc.b $78 ; x
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $37 ; 7
		dc.b $85
		dc.b $11
		dc.b $11
		dc.b $14
		dc.b $87
		dc.b $21 ; !
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $62 ; b
		dc.b $11
		dc.b $11
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $68 ; h
		dc.b $88
		dc.b $88
		dc.b $86
		dc.b $38 ; 8
		dc.b $88
		dc.b $88
		dc.b $B9
		dc.b $88
		dc.b $88
		dc.b $8B
		dc.b $99
		dc.b $88
		dc.b $88
		dc.b $B9
		dc.b $A8
		dc.b $88
		dc.b $8B
		dc.b $9B
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $87
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $7A ; z
		dc.b $88
		dc.b $88
		dc.b $87
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $6A ; j
		dc.b $88
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $88
		dc.b $87
		dc.b $A9
		dc.b $99
		dc.b $88
		dc.b $79 ; y
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $99
		dc.b $A8
		dc.b $99
		dc.b $88
		dc.b $97
		dc.b $88
		dc.b $99
		dc.b $88
		dc.b $78 ; x
		dc.b $89
		dc.b $99
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $86
		dc.b $88
		dc.b $88
		dc.b $87
		dc.b $B9
		dc.b $88
		dc.b $87
		dc.b $A9
		dc.b $99
		dc.b $87
		dc.b $B9
		dc.b $99
		dc.b $99
		dc.b $B9
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $88
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $88
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $88
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $BA
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $87
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $98
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $98
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $98
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $98
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $A9
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $8B
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $A9
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $79 ; y
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $A8
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $97
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $9B
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $9A
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $9A
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $9A
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $9B
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $9B
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $A6
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $A8
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $B8
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $86
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $ED
		dc.b $88
		dc.b $88
		dc.b $7E ; ~
		dc.b $DD
		dc.b $88
		dc.b $87
		dc.b $ED
		dc.b $DD
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $7E ; ~
		dc.b $88
		dc.b $88
		dc.b $8F
		dc.b $DD
		dc.b $88
		dc.b $87
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $FD
		dc.b $DD
		dc.b $DD
		dc.b $7E ; ~
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $86
		dc.b $88
		dc.b $88
		dc.b $87
		dc.b $FD
		dc.b $88
		dc.b $87
		dc.b $FD
		dc.b $DD
		dc.b $87
		dc.b $FD
		dc.b $DD
		dc.b $DD
		dc.b $FE
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $7F ; 
		dc.b $88
		dc.b $7F ; 
		dc.b $EE
		dc.b $DD
		dc.b $FE
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DF
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $68 ; h
		dc.b $DD
		dc.b $DD
		dc.b $D6
		dc.b $88
		dc.b $FE
		dc.b $EE
		dc.b $FF
		dc.b $78 ; x
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $E7
		dc.b $DD
		dc.b $DD
		dc.b $DE
		dc.b $78 ; x
		dc.b $DD
		dc.b $DD
		dc.b $E8
		dc.b $88
		dc.b $DD
		dc.b $DE
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $E8
		dc.b $88
		dc.b $87
		dc.b $DF
		dc.b $88
		dc.b $88
		dc.b $7E ; ~
		dc.b $F8
		dc.b $88
		dc.b $87
		dc.b $E7
		dc.b $88
		dc.b $88
		dc.b $FE
		dc.b $88
		dc.b $88
		dc.b $7E ; ~
		dc.b $E8
		dc.b $88
		dc.b $87
		dc.b $DE
		dc.b $88
		dc.b $8B
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $E7
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $F8
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $78 ; x
		dc.b $88
		dc.b $86
		dc.b $D7
		dc.b $88
		dc.b $88
		dc.b $77 ; w
		dc.b $78 ; x
		dc.b $88
		dc.b $87
		dc.b $78 ; x
		dc.b $88
		dc.b $88
		dc.b $78 ; x
		dc.b $88
		dc.b $88
		dc.b $87
		dc.b $78 ; x
		dc.b $88
		dc.b $88
		dc.b $86
		dc.b $88
		dc.b $8A
		dc.b $76 ; v
		dc.b $78 ; x
		dc.b $88
		dc.b $AB
		dc.b $F7
		dc.b $88
		dc.b $8A
		dc.b $B8
		dc.b $78 ; x
		dc.b $87
		dc.b $A6
		dc.b $88
		dc.b $88
		dc.b $7B ; {
		dc.b $78 ; x
		dc.b $88
		dc.b $86
		dc.b $B7
		dc.b $68 ; h
		dc.b $86
		dc.b $6B ; k
		dc.b $86
		dc.b $88
		dc.b $69 ; i
		dc.b $68 ; h
		dc.b $68 ; h
		dc.b $86
		dc.b $AB
		dc.b $88
		dc.b $BA
		dc.b $68 ; h
		dc.b $87
		dc.b $86
		dc.b $A7
		dc.b $88
		dc.b $79 ; y
		dc.b $6B ; k
		dc.b $88
		dc.b $87
		dc.b $99
		dc.b $B8
		dc.b $88
		dc.b $79 ; y
		dc.b $9B
		dc.b $88
		dc.b $8B
		dc.b $9A
		dc.b $78 ; x
		dc.b $88
		dc.b $B9
		dc.b $B7
		dc.b $88
		dc.b $8B
		dc.b $9B
		dc.b $88
		dc.b $89
		dc.b $A9
		dc.b $68 ; h
		dc.b $88
		dc.b $99
		dc.b $A7
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $78 ; x
		dc.b $87
		dc.b $99
		dc.b $9A
		dc.b $88
		dc.b $79 ; y
		dc.b $99
		dc.b $B8
		dc.b $87
		dc.b $99
		dc.b $A6
		dc.b $88
		dc.b $79 ; y
		dc.b $9A
		dc.b $78 ; x
		dc.b $87
		dc.b $99
		dc.b $B8
		dc.b $88
		dc.b $79 ; y
		dc.b $A6
		dc.b $88
		dc.b $87
		dc.b $99
		dc.b $78 ; x
		dc.b $88
		dc.b $79 ; y
		dc.b $9A
		dc.b $99
		dc.b $98
		dc.b $99
		dc.b $88
		dc.b $99
		dc.b $88
		dc.b $99
		dc.b $88
		dc.b $A8
		dc.b $89
		dc.b $99
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $99
		dc.b $97
		dc.b $99
		dc.b $88
		dc.b $99
		dc.b $78 ; x
		dc.b $99
		dc.b $88
		dc.b $A8
		dc.b $87
		dc.b $99
		dc.b $88
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $99
		dc.b $9B
		dc.b $99
		dc.b $88
		dc.b $99
		dc.b $B8
		dc.b $99
		dc.b $88
		dc.b $96
		dc.b $88
		dc.b $99
		dc.b $88
		dc.b $78 ; x
		dc.b $89
		dc.b $99
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $88
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $88
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $88
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $88
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $88
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $88
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $88
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $88
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $88
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $88
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $88
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $88
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $98
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $98
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $98
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $98
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $98
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $98
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $98
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $98
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $98
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $98
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $98
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $98
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $98
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $9B
		dc.b $88
		dc.b $89
		dc.b $99
		dc.b $B8
		dc.b $88
		dc.b $89
		dc.b $9A
		dc.b $88
		dc.b $88
		dc.b $89
		dc.b $A7
		dc.b $88
		dc.b $88
		dc.b $8A
		dc.b $78 ; x
		dc.b $88
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $78 ; x
		dc.b $99
		dc.b $99
		dc.b $9B
		dc.b $88
		dc.b $99
		dc.b $99
		dc.b $97
		dc.b $88
		dc.b $99
		dc.b $99
		dc.b $B8
		dc.b $88
		dc.b $99
		dc.b $99
		dc.b $78 ; x
		dc.b $88
		dc.b $99
		dc.b $9B
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $97
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $B8
		dc.b $88
		dc.b $88
		dc.b $9A
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $A7
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $78 ; x
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $8F
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $7D ; }
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $FD
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $87
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $77 ; w
		dc.b $88
		dc.b $88
		dc.b $87
		dc.b $E8
		dc.b $88
		dc.b $88
		dc.b $7E ; ~
		dc.b $D8
		dc.b $88
		dc.b $88
		dc.b $ED
		dc.b $D8
		dc.b $88
		dc.b $8F
		dc.b $DD
		dc.b $D8
		dc.b $88
		dc.b $FD
		dc.b $DD
		dc.b $D8
		dc.b $87
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $7E ; ~
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $ED
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $88
		dc.b $7E ; ~
		dc.b $DD
		dc.b $DD
		dc.b $87
		dc.b $78 ; x
		dc.b $88
		dc.b $88
		dc.b $78 ; x
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $8D
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $8D
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $8D
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $8D
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $8D
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $8D
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $8D
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $8D
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $88
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $88
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $88
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $88
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $88
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $D8
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $8F
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $FD
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $D8
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $78 ; x
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $87
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $7D ; }
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $68 ; h
		dc.b $88
		dc.b $DD
		dc.b $D6
		dc.b $88
		dc.b $8E
		dc.b $DD
		dc.b $78 ; x
		dc.b $87
		dc.b $DD
		dc.b $D7
		dc.b $88
		dc.b $6D ; m
		dc.b $D6
		dc.b $88
		dc.b $8F
		dc.b $DD
		dc.b $78 ; x
		dc.b $87
		dc.b $ED
		dc.b $D7
		dc.b $88
		dc.b $6D ; m
		dc.b $DD
		dc.b $78 ; x
		dc.b $88
		dc.b $DD
		dc.b $D7
		dc.b $88
		dc.b $8F
		dc.b $DD
		dc.b $78 ; x
		dc.b $87
		dc.b $ED
		dc.b $D8
		dc.b $88
		dc.b $6E ; n
		dc.b $DD
		dc.b $88
		dc.b $8F
		dc.b $DD
		dc.b $D7
		dc.b $88
		dc.b $ED
		dc.b $DD
		dc.b $88
		dc.b $8E
		dc.b $DD
		dc.b $D8
		dc.b $88
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $86
		dc.b $DD
		dc.b $D8
		dc.b $88
		dc.b $FD
		dc.b $DD
		dc.b $88
		dc.b $7F ; 
		dc.b $DF
		dc.b $6D ; m
		dc.b $E8
		dc.b $88
		dc.b $67 ; g
		dc.b $DF
		dc.b $88
		dc.b $88
		dc.b $86
		dc.b $F8
		dc.b $88
		dc.b $88
		dc.b $FE
		dc.b $88
		dc.b $88
		dc.b $7E ; ~
		dc.b $F8
		dc.b $88
		dc.b $86
		dc.b $EF
		dc.b $88
		dc.b $87
		dc.b $FE
		dc.b $68 ; h
		dc.b $86
		dc.b $6E ; n
		dc.b $D6
		dc.b $88
		dc.b $68 ; h
		dc.b $DD
		dc.b $68 ; h
		dc.b $86
		dc.b $7F ; 
		dc.b $D7
		dc.b $88
		dc.b $87
		dc.b $F7
		dc.b $78 ; x
		dc.b $88
		dc.b $6E ; n
		dc.b $78 ; x
		dc.b $88
		dc.b $8F
		dc.b $E8
		dc.b $88
		dc.b $87
		dc.b $FE
		dc.b $88
		dc.b $87
		dc.b $7E ; ~
		dc.b $E8
		dc.b $88
		dc.b $68 ; h
		dc.b $DE
		dc.b $88
		dc.b $87
		dc.b $78 ; x
		dc.b $F8
		dc.b $88
		dc.b $87
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $78 ; x
		dc.b $88
		dc.b $7F ; 
		dc.b $88
		dc.b $BA
		dc.b $68 ; h
		dc.b $E8
		dc.b $8B
		dc.b $A7
		dc.b $88
		dc.b $88
		dc.b $AB
		dc.b $88
		dc.b $88
		dc.b $8A
		dc.b $68 ; h
		dc.b $88
		dc.b $88
		dc.b $B7
		dc.b $76 ; v
		dc.b $88
		dc.b $8A
		dc.b $86
		dc.b $F8
		dc.b $88
		dc.b $A9
		dc.b $F6
		dc.b $88
		dc.b $8A
		dc.b $A7
		dc.b $68 ; h
		dc.b $88
		dc.b $AB
		dc.b $88
		dc.b $88
		dc.b $7A ; z
		dc.b $78 ; x
		dc.b $88
		dc.b $87
		dc.b $A7
		dc.b $88
		dc.b $88
		dc.b $7B ; {
		dc.b $78 ; x
		dc.b $88
		dc.b $8A
		dc.b $67 ; g
		dc.b $88
		dc.b $88
		dc.b $A9
		dc.b $88
		dc.b $88
		dc.b $8A
		dc.b $99
		dc.b $88
		dc.b $87
		dc.b $A9
		dc.b $99
		dc.b $88
		dc.b $7A ; z
		dc.b $99
		dc.b $99
		dc.b $87
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $87
		dc.b $99
		dc.b $B8
		dc.b $88
		dc.b $69 ; i
		dc.b $96
		dc.b $88
		dc.b $8B
		dc.b $99
		dc.b $78 ; x
		dc.b $87
		dc.b $B9
		dc.b $A8
		dc.b $88
		dc.b $69 ; i
		dc.b $96
		dc.b $88
		dc.b $86
		dc.b $99
		dc.b $78 ; x
		dc.b $88
		dc.b $69 ; i
		dc.b $99
		dc.b $88
		dc.b $86
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $B9
		dc.b $99
		dc.b $99
		dc.b $8B
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $B9
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $79 ; y
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $9B
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $9B
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $78 ; x
		dc.b $99
		dc.b $99
		dc.b $B8
		dc.b $88
		dc.b $99
		dc.b $A7
		dc.b $88
		dc.b $88
		dc.b $AB
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $78 ; x
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $87
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $A7
		dc.b $99
		dc.b $99
		dc.b $9A
		dc.b $78 ; x
		dc.b $99
		dc.b $99
		dc.b $A7
		dc.b $88
		dc.b $99
		dc.b $9A
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $68 ; h
		dc.b $88
		dc.b $88
		dc.b $A7
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $77 ; w
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $78 ; x
		dc.b $88
		dc.b $88
		dc.b $87
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $78 ; x
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $87
		dc.b $DD
		dc.b $88
		dc.b $88
		dc.b $8F
		dc.b $DD
		dc.b $88
		dc.b $88
		dc.b $7D ; }
		dc.b $DD
		dc.b $88
		dc.b $88
		dc.b $FD
		dc.b $DD
		dc.b $88
		dc.b $87
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $8F
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $8E
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $6E ; n
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $FD
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $FD
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $ED
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $ED
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $D7
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DE
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $8D
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $8D
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $8D
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $8D
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $8D
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $8D
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $8D
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $8D
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $8D
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $F8
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $DE
		dc.b $78 ; x
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $88
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $88
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $88
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $88
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $D8
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $8D
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $D8
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $8E
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $DE
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $D8
		dc.b $88
		dc.b $88
		dc.b $E6
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $78 ; x
		dc.b $88
		dc.b $DD
		dc.b $E7
		dc.b $88
		dc.b $88
		dc.b $D8
		dc.b $87
		dc.b $ED
		dc.b $F8
		dc.b $88
		dc.b $FD
		dc.b $D7
		dc.b $88
		dc.b $8E
		dc.b $DD
		dc.b $78 ; x
		dc.b $88
		dc.b $DD
		dc.b $D7
		dc.b $88
		dc.b $7E ; ~
		dc.b $DD
		dc.b $78 ; x
		dc.b $86
		dc.b $EF
		dc.b $D8
		dc.b $88
		dc.b $FD
		dc.b $F8
		dc.b $88
		dc.b $8E
		dc.b $DF
		dc.b $88
		dc.b $87
		dc.b $DD
		dc.b $F8
		dc.b $88
		dc.b $7D ; }
		dc.b $DF
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $68 ; h
		dc.b $88
		dc.b $88
		dc.b $D7
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $78 ; x
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $77 ; w
		dc.b $88
		dc.b $88
		dc.b $8F
		dc.b $68 ; h
		dc.b $88
		dc.b $87
		dc.b $F6
		dc.b $88
		dc.b $88
		dc.b $8B
		dc.b $68 ; h
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $79 ; y
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $7A ; z
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $88
		dc.b $87
		dc.b $6B ; k
		dc.b $BA
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $99
		dc.b $AA
		dc.b $B7
		dc.b $BB
		dc.b $67 ; g
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $99
		dc.b $99
		dc.b $9B
		dc.b $77 ; w
		dc.b $99
		dc.b $9B
		dc.b $78 ; x
		dc.b $88
		dc.b $AB
		dc.b $68 ; h
		dc.b $88
		dc.b $88
		dc.b $78 ; x
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $ED
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $FD
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $7D ; }
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $8E
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $88
		dc.b $DD
		dc.b $DD
		dc.b $88
		dc.b $88
		dc.b $8E
		dc.b $DD
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $7F ; 
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $77 ; w
		dc.b $6E ; n
		dc.b $EE
		dc.b $EF
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $E7
		dc.b $DD
		dc.b $DF
		dc.b $67 ; g
		dc.b $88
		dc.b $67 ; g
		dc.b $78 ; x
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DD
		dc.b $DF
		dc.b $DD
		dc.b $DD
		dc.b $DE
		dc.b $78 ; x
		dc.b $DD
		dc.b $DF
		dc.b $78 ; x
		dc.b $88
		dc.b $EF
		dc.b $68 ; h
		dc.b $88
		dc.b $88
		dc.b $78 ; x
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $DF
		dc.b $78 ; x
		dc.b $88
		dc.b $88
		dc.b $78 ; x
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
unk_C980:       dc.b   0		; DATA XREF: sub_1B6E+2E↑o
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   1
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b   3
		dc.b   0
		dc.b   4
		dc.b   0
		dc.b   5
		dc.b   0
		dc.b   6
		dc.b   0
		dc.b   7
		dc.b   0
		dc.b   8
		dc.b   0
		dc.b   9
		dc.b   0
		dc.b  $A
		dc.b $80
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $B
		dc.b   0
		dc.b  $C
		dc.b   0
		dc.b  $D
		dc.b   0
		dc.b  $E
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b $10
		dc.b   0
		dc.b $11
		dc.b   0
		dc.b $12
		dc.b   0
		dc.b $13
		dc.b   0
		dc.b $14
		dc.b $40 ; @
		dc.b  $B
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $B
		dc.b   0
		dc.b $15
		dc.b   0
		dc.b $15
		dc.b   0
		dc.b $15
		dc.b   0
		dc.b $16
		dc.b   0
		dc.b $17
		dc.b   0
		dc.b $18
		dc.b   0
		dc.b $19
		dc.b   0
		dc.b $1A
		dc.b   0
		dc.b $1B
		dc.b $40 ; @
		dc.b  $B
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $B
		dc.b   0
		dc.b $15
		dc.b   0
		dc.b $15
		dc.b   0
		dc.b $1C
		dc.b   0
		dc.b $1D
		dc.b   0
		dc.b $1E
		dc.b   0
		dc.b $1F
		dc.b   0
		dc.b $20
		dc.b   0
		dc.b $21 ; !
		dc.b   0
		dc.b $22 ; "
		dc.b $40 ; @
		dc.b  $B
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $B
		dc.b   0
		dc.b $15
		dc.b   0
		dc.b $15
		dc.b   0
		dc.b $23 ; #
		dc.b   0
		dc.b $24 ; $
		dc.b   0
		dc.b $25 ; %
		dc.b   0
		dc.b $26 ; &
		dc.b   0
		dc.b $27 ; '
		dc.b   0
		dc.b $15
		dc.b   0
		dc.b $15
		dc.b $40 ; @
		dc.b  $B
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $28 ; (
		dc.b   0
		dc.b $29 ; )
		dc.b   0
		dc.b $29 ; )
		dc.b   0
		dc.b $2A ; *
		dc.b   0
		dc.b $2B ; +
		dc.b   0
		dc.b $2C ; ,
		dc.b   0
		dc.b $29 ; )
		dc.b   0
		dc.b $29 ; )
		dc.b   0
		dc.b $29 ; )
		dc.b   0
		dc.b $29 ; )
		dc.b $80
		dc.b $28 ; (
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
unk_CAFC:       dc.b   1		; DATA XREF: sub_1684+3A↑o
		dc.b $82
		dc.b $82
		dc.b   8
		dc.b $EC
		dc.b $83
		dc.b   5
		dc.b $12
		dc.b $17
		dc.b $67 ; g
		dc.b $28 ; (
		dc.b $F2
		dc.b $84
		dc.b   6
		dc.b $32 ; 2
		dc.b $17
		dc.b $6D ; m
		dc.b $28 ; (
		dc.b $ED
		dc.b $38 ; 8
		dc.b $EA
		dc.b $48 ; H
		dc.b $F0
		dc.b $58 ; X
		dc.b $F1
		dc.b $77 ; w
		dc.b $66 ; f
		dc.b $85
		dc.b   4
		dc.b   5
		dc.b $16
		dc.b $34 ; 4
		dc.b $28 ; (
		dc.b $EE
		dc.b $86
		dc.b   6
		dc.b $2F ; /
		dc.b $87
		dc.b   3
		dc.b   0
		dc.b $15
		dc.b  $F
		dc.b $26 ; &
		dc.b $2C ; ,
		dc.b $37 ; 7
		dc.b $6B ; k
		dc.b $47 ; G
		dc.b $74 ; t
		dc.b $58 ; X
		dc.b $F6
		dc.b $88
		dc.b   4
		dc.b   2
		dc.b $15
		dc.b $14
		dc.b $27 ; '
		dc.b $6E ; n
		dc.b $89
		dc.b   4
		dc.b   3
		dc.b $16
		dc.b $2D ; -
		dc.b $28 ; (
		dc.b $F4
		dc.b $8A
		dc.b   5
		dc.b $10
		dc.b $17
		dc.b $72 ; r
		dc.b $8B
		dc.b   5
		dc.b  $E
		dc.b $17
		dc.b $6A ; j
		dc.b $8C
		dc.b   5
		dc.b $11
		dc.b $17
		dc.b $71 ; q
		dc.b $8D
		dc.b   4
		dc.b   6
		dc.b $16
		dc.b $2E ; .
		dc.b $28 ; (
		dc.b $E7
		dc.b $8E
		dc.b   4
		dc.b   4
		dc.b $15
		dc.b $13
		dc.b $26 ; &
		dc.b $30 ; 0
		dc.b $37 ; 7
		dc.b $70 ; p
		dc.b $48 ; H
		dc.b $F5
		dc.b $8F
		dc.b   5
		dc.b $15
		dc.b $16
		dc.b $31 ; 1
		dc.b $27 ; '
		dc.b $6C ; l
		dc.b $37 ; 7
		dc.b $6F ; o
		dc.b $48 ; H
		dc.b $EB
		dc.b $58 ; X
		dc.b $EF
		dc.b $78 ; x
		dc.b $E6
		dc.b $FF
		dc.b $CD
		dc.b $9B
		dc.b $36 ; 6
		dc.b $6C ; l
		dc.b $D9
		dc.b $B3
		dc.b $66 ; f
		dc.b $F0
		dc.b $96
		dc.b $52 ; R
		dc.b $F0
		dc.b $96
		dc.b $52 ; R
		dc.b $F1
		dc.b $97
		dc.b $F9
		dc.b $33 ; 3
		dc.b $F8
		dc.b $CB
		dc.b $37 ; 7
		dc.b $F9
		dc.b $33 ; 3
		dc.b $FF
		dc.b $92
		dc.b $59 ; Y
		dc.b $B3
		dc.b $66 ; f
		dc.b $96
		dc.b $6C ; l
		dc.b $A5
		dc.b $E1
		dc.b $2F ; /
		dc.b $F2
		dc.b $4B ; K
		dc.b $6C ; l
		dc.b $BA
		dc.b $B3
		dc.b $E5
		dc.b $9F
		dc.b $B7
		dc.b $3E ; >
		dc.b $D9
		dc.b $76 ; v
		dc.b $AC
		dc.b $B6
		dc.b $CB
		dc.b $29 ; )
		dc.b $65 ; e
		dc.b $21 ; !
		dc.b $2C ; ,
		dc.b $B3
		dc.b $F6
		dc.b $AC
		dc.b $B6
		dc.b $CB
		dc.b $B6
		dc.b $42 ; B
		dc.b $59 ; Y
		dc.b $4B ; K
		dc.b $A9
		dc.b $44 ; D
		dc.b $BC
		dc.b $44 ; D
		dc.b $BA
		dc.b $A5
		dc.b $96
		dc.b $7C ; |
		dc.b $A5
		dc.b $9B
		dc.b $36 ; 6
		dc.b $6C ; l
		dc.b $D9
		dc.b $A5
		dc.b $D5
		dc.b $9D
		dc.b $93
		dc.b $2B ; +
		dc.b $DD
		dc.b $EB
		dc.b $91
		dc.b $FF
		dc.b $7B ; {
		dc.b $A9
		dc.b $7C ; |
		dc.b $41 ; A
		dc.b $85
		dc.b $EA
		dc.b $BA
		dc.b $6E ; n
		dc.b $C8
		dc.b $43 ; C
		dc.b $D6
		dc.b $4E ; N
		dc.b $68 ; h
		dc.b $61 ; a
		dc.b $5C ; \
		dc.b $20
		dc.b $73 ; s
		dc.b $AC
		dc.b $E0
		dc.b $47 ; G
		dc.b   4
		dc.b $AC
		dc.b $DD
		dc.b $BA
		dc.b   9
		dc.b $9B
		dc.b $32 ; 2
		dc.b $FF
		dc.b $90
		dc.b $65 ; e
		dc.b $A7
		dc.b $53 ; S
		dc.b $3A ; :
		dc.b $E7
		dc.b $2E ; .
		dc.b $DE
		dc.b $BD
		dc.b $B7
		dc.b $F5
		dc.b $A3
		dc.b $D3
		dc.b $14
		dc.b $C5
		dc.b $1B
		dc.b $36 ; 6
		dc.b $6C ; l
		dc.b $D9
		dc.b $B3
		dc.b $2E ; .
		dc.b $4B ; K
		dc.b $E0
		dc.b $8C
		dc.b $17
		dc.b $6A ; j
		dc.b $E5
		dc.b $36 ; 6
		dc.b $35 ; 5
		dc.b $7F ; 
		dc.b $56 ; V
		dc.b $7F ; 
		dc.b $19
		dc.b  $C
		dc.b $FD
		dc.b $5E ; ^
		dc.b $5D ; ]
		dc.b $B2
		dc.b $CD
		dc.b $2D ; -
		dc.b $B9
		dc.b $FF
		dc.b $C9
		dc.b $9F
		dc.b $FC
		dc.b $83
		dc.b $36 ; 6
		dc.b $6C ; l
		dc.b $D9
		dc.b $B3
		dc.b $66 ; f
		dc.b $CD
		dc.b $E2
		dc.b $4D ; M
		dc.b $E2
		dc.b $11
		dc.b $49 ; I
		dc.b $92
		dc.b  $E
		dc.b $28 ; (
		dc.b $64 ; d
		dc.b  $D
		dc.b $BF
		dc.b $71 ; q
		dc.b $90
		dc.b $37 ; 7
		dc.b $1D
		dc.b   6
		dc.b $44 ; D
		dc.b $D4
		dc.b $B2
		dc.b $4A ; J
		dc.b   9
		dc.b $41 ; A
		dc.b $2C ; ,
		dc.b $81
		dc.b $74 ; t
		dc.b $70 ; p
		dc.b $63 ; c
		dc.b $25 ; %
		dc.b $BC
		dc.b $61 ; a
		dc.b  $D
		dc.b $70 ; p
		dc.b $DC
		dc.b $29 ; )
		dc.b  $D
		dc.b $CF
		dc.b $20
		dc.b $5D ; ]
		dc.b $14
		dc.b $17
		dc.b $FD
		dc.b $DF
		dc.b $78 ; x
		dc.b $5E ; ^
		dc.b $9A
		dc.b $7F ; 
		dc.b $DF
		dc.b $5E ; ^
		dc.b $82
		dc.b $FD
		dc.b $78 ; x
		dc.b $6F ; o
		dc.b $48 ; H
		dc.b $1A
		dc.b $57 ; W
		dc.b $81
		dc.b $1C
		dc.b $EB
		dc.b $80
		dc.b $28 ; (
		dc.b $7A ; z
		dc.b $D9
		dc.b $C8
		dc.b $F9
		dc.b $59 ; Y
		dc.b $FB
		dc.b $83
		dc.b $D7
		dc.b $40 ; @
		dc.b $56 ; V
		dc.b $13
		dc.b $E9
		dc.b $3A ; :
		dc.b $A3
		dc.b $62 ; b
		dc.b $EC
		dc.b $2B ; +
		dc.b $FE
		dc.b $EA
		dc.b $E0
		dc.b $7E ; ~
		dc.b $AE
		dc.b $83
		dc.b $60 ; `
		dc.b $DC
		dc.b $8C
		dc.b $A7
		dc.b $74 ; t
		dc.b  $A
		dc.b $D8
		dc.b $60 ; `
		dc.b $D6
		dc.b $D0
		dc.b $D1
		dc.b $8E
		dc.b   6
		dc.b $41 ; A
		dc.b $72 ; r
		dc.b $5C ; \
		dc.b $97
		dc.b $6E ; n
		dc.b $3A ; :
		dc.b $87
		dc.b $77 ; w
		dc.b  $C
		dc.b $5D ; ]
		dc.b $93
		dc.b $61 ; a
		dc.b $B1
		dc.b $8E
		dc.b $18
		dc.b $56 ; V
		dc.b $66 ; f
		dc.b $E8
		dc.b $23 ; #
		dc.b $4E ; N
		dc.b $A5
		dc.b $C9
		dc.b $AA
		dc.b $98
		dc.b $D1
		dc.b $93
		dc.b $62 ; b
		dc.b $66 ; f
		dc.b $5C ; \
		dc.b $87
		dc.b $80
		dc.b $64 ; d
		dc.b $61 ; a
		dc.b $DB
		dc.b $C1
		dc.b $C3
		dc.b $20
		dc.b $8C
		dc.b $9D
		dc.b $F3
		dc.b $E6
		dc.b $AA
		dc.b $7F ; 
		dc.b $BD
		dc.b $36 ; 6
		dc.b $66 ; f
		dc.b $CD
		dc.b $99
		dc.b $7F ; 
		dc.b $C8
		dc.b $DF
		dc.b $E4
		dc.b $AB
		dc.b $78 ; x
		dc.b $E2
		dc.b $9D
		dc.b $4B ; K
		dc.b $3A ; :
		dc.b $B6
		dc.b $4B ; K
		dc.b $93
		dc.b $B3
		dc.b $66 ; f
		dc.b $CD
		dc.b $9B
		dc.b $36 ; 6
		dc.b $6C ; l
		dc.b $B4
		dc.b $F0
		dc.b $FD
		dc.b $5E ; ^
		dc.b $4B ; K
		dc.b $9B
		dc.b $36 ; 6
		dc.b $6C ; l
		dc.b $DB
		dc.b $65 ; e
		dc.b $E0
		dc.b $3C ; <
		dc.b $34 ; 4
		dc.b $1A
		dc.b $6D ; m
		dc.b $57 ; W
		dc.b $CB
		dc.b $A9
		dc.b $44 ; D
		dc.b $97
		dc.b $36 ; 6
		dc.b $6C ; l
		dc.b $A5
		dc.b $E3
		dc.b $21 ; !
		dc.b $B6
		dc.b $5D ; ]
		dc.b $AF
		dc.b $5E ; ^
		dc.b $AC
		dc.b $FD
		dc.b $59 ; Y
		dc.b $C6
		dc.b $52 ; R
		dc.b $ED
		dc.b $90
		dc.b $F0
		dc.b $CF
		dc.b $D5
		dc.b $9C
		dc.b $4B ; K
		dc.b $29 ; )
		dc.b $6D ; m
		dc.b $B3
		dc.b $2F ; /
		dc.b $2C ; ,
		dc.b $86
		dc.b $59 ; Y
		dc.b $FA
		dc.b $A4
		dc.b $25 ; %
		dc.b $DB
		dc.b $2D ; -
		dc.b $B2
		dc.b $ED
		dc.b $CF
		dc.b $94
		dc.b $BA
		dc.b $B3
		dc.b $F8
		dc.b $48 ; H
		dc.b $78 ; x
		dc.b $48 ; H
		dc.b $4B ; K
		dc.b $C6
		dc.b $5F ; _
		dc.b $E4
		dc.b $90
		dc.b $FF
		dc.b $26 ; &
		dc.b $7F ; 
		dc.b $19
		dc.b  $F
		dc.b $1C
		dc.b $E3
		dc.b $6C ; l
		dc.b $B6
		dc.b $CB
		dc.b $29 ; )
		dc.b $6D ; m
		dc.b $97
		dc.b $54 ; T
		dc.b $BF
		dc.b $C9
		dc.b $2C ; ,
		dc.b $D9
		dc.b $B3
		dc.b $66 ; f
		dc.b $97
		dc.b $F9
		dc.b $25 ; %
		dc.b $FE
		dc.b $41 ; A
		dc.b $2F ; /
		dc.b $11
		dc.b $2C ; ,
		dc.b $DD
		dc.b $42 ; B
		dc.b $1E
		dc.b $20
		dc.b $BF
		dc.b $C8
		dc.b $3F ; ?
		dc.b $C8
		dc.b $3F ; ?
		dc.b $C8
		dc.b $BD
		dc.b $AA
		dc.b $1D
		dc.b $91
		dc.b $6D ; m
		dc.b $56 ; V
		dc.b $C0
		dc.b $83
		dc.b $8E
		dc.b $13
		dc.b $80
		dc.b $46 ; F
		dc.b $A3
		dc.b $F4
		dc.b $81
		dc.b $6B ; k
		dc.b $50 ; P
		dc.b $4B ; K
		dc.b $62 ; b
		dc.b $8D
		dc.b   5
		dc.b $FA
		dc.b $3D ; =
		dc.b $6F ; o
		dc.b $2B ; +
		dc.b $F4
		dc.b $B0
		dc.b $B5
		dc.b $A8
		dc.b $5E ; ^
		dc.b $8A
		dc.b $34 ; 4
		dc.b $BC
		dc.b $28 ; (
		dc.b $57 ; W
		dc.b $A8
		dc.b $5D ; ]
		dc.b $65 ; e
		dc.b $EC
		dc.b $5E ; ^
		dc.b $C4
		dc.b $29 ; )
		dc.b $D0
		dc.b $9D
		dc.b $7E ; ~
		dc.b $BA
		dc.b $3B ; ;
		dc.b $A1
		dc.b   2
		dc.b $B0
		dc.b $9F
		dc.b $4D ; M
		dc.b $67 ; g
		dc.b $B8
		dc.b $1F
		dc.b $F6
		dc.b $1E
		dc.b $58 ; X
		dc.b $A5
		dc.b $C4
		dc.b $EA
		dc.b $FA
		dc.b $F3
		dc.b $FF
		dc.b $EF
		dc.b $F9
		dc.b $65 ; e
		dc.b $FE
		dc.b $BA
		dc.b $7F ; 
		dc.b $6D ; m
		dc.b $A8
		dc.b $EF
		dc.b $F4
		dc.b $72 ; r
		dc.b $23 ; #
		dc.b $24 ; $
		dc.b $DE
		dc.b $D4
		dc.b $EF
		dc.b $E7
		dc.b $9E
		dc.b $F6
		dc.b $D4
		dc.b $4E ; N
		dc.b $B9
		dc.b $C7
		dc.b $FC
		dc.b $B2
		dc.b $BB
		dc.b $50 ; P
		dc.b $32 ; 2
		dc.b $D5
		dc.b  $F
		dc.b $EC
		dc.b $3A ; :
		dc.b $87
		dc.b   4
		dc.b $AE
		dc.b   4
		dc.b $E4
		dc.b $AE
		dc.b  $D
		dc.b   3
		dc.b $C1
		dc.b $A2
		dc.b $CE
		dc.b $64 ; d
		dc.b $68 ; h
		dc.b $C1
		dc.b $AA
		dc.b $C8
		dc.b $D1
		dc.b $28 ; (
		dc.b $E2
		dc.b $69 ; i
		dc.b $5A ; Z
		dc.b $60 ; `
		dc.b $C9
		dc.b $C6
		dc.b $E8
		dc.b $A1
		dc.b $72 ; r
		dc.b $E3
		dc.b $B9
		dc.b $2B ; +
		dc.b $C3
		dc.b $1F
		dc.b $EE
		dc.b $61 ; a
		dc.b $8A
		dc.b $31 ; 1
		dc.b $32 ; 2
		dc.b $75 ; u
		dc.b $CD
		dc.b $BB
		dc.b $E7
		dc.b $B2
		dc.b $7B ; {
		dc.b $22 ; "
		dc.b $91
		dc.b $E7
		dc.b $99
		dc.b $71 ; q
		dc.b $C2
		dc.b $EA
		dc.b $CE
		dc.b $A8
		dc.b $D3
		dc.b $AC
		dc.b $F1
		dc.b $C2
		dc.b $A9
		dc.b $8A
		dc.b $7F ; 
		dc.b $BF
		dc.b $D7
		dc.b $1C
		dc.b $1B
		dc.b $83
		dc.b $47 ; G
		dc.b $9E
		dc.b   9
		dc.b $FA
		dc.b $CC
		dc.b  $A
		dc.b $11
		dc.b $C1
		dc.b $A2
		dc.b $9B
		dc.b $1C
		dc.b $BB
		dc.b $71 ; q
		dc.b $C0
		dc.b $B6
		dc.b $A6
		dc.b $C4
		dc.b $76 ; v
		dc.b $DC
		dc.b $2A ; *
		dc.b $8D
		dc.b $B5
		dc.b $B8
		dc.b $30 ; 0
		dc.b $CB
		dc.b  $D
		dc.b $8E
		dc.b   9
		dc.b $FE
		dc.b $F8
		dc.b $E1
		dc.b $BF
		dc.b $36 ; 6
		dc.b $6C ; l
		dc.b $D9
		dc.b $97
		dc.b $C1
		dc.b $72 ; r
		dc.b $E7
		dc.b $DA
		dc.b $F3
		dc.b $AC
		dc.b $FB
		dc.b $FF
		dc.b $DD
		dc.b $9B
		dc.b $36 ; 6
		dc.b $6C ; l
		dc.b $D9
		dc.b $AF
		dc.b $FF
		dc.b $23 ; #
		dc.b $78 ; x
		dc.b $8A
		dc.b $BB
		dc.b $21 ; !
		dc.b $DA
		dc.b $33 ; 3
		dc.b $66 ; f
		dc.b $CD
		dc.b $9B
		dc.b $36 ; 6
		dc.b $6C ; l
		dc.b $AF
		dc.b $CB
		dc.b $4E ; N
		dc.b $D0
		dc.b $95
		dc.b $41 ; A
		dc.b $92
		dc.b $E6
		dc.b $CD
		dc.b $99
		dc.b $7F ; 
		dc.b $C8
		dc.b $3C ; <
		dc.b $54 ; T
		dc.b $B2
		dc.b $50 ; P
		dc.b $EA
		dc.b $25 ; %
		dc.b $54 ; T
		dc.b $EB
		dc.b $3A ; :
		dc.b $A5
		dc.b $27 ; '
		dc.b $CA
		dc.b $65 ; e
		dc.b $9B
		dc.b $36 ; 6
		dc.b $52 ; R
		dc.b $C8
		dc.b $5F ; _
		dc.b $D4
		dc.b $32 ; 2
		dc.b  $D
		dc.b $90
		dc.b $5C ; \
		dc.b $52 ; R
		dc.b $B4
		dc.b $4A ; J
		dc.b $4C ; L
		dc.b $A1
		dc.b $44 ; D
		dc.b $81
		dc.b $40 ; @
		dc.b $85
		dc.b $21 ; !
		dc.b $B9
		dc.b $E4
		dc.b  $B
		dc.b $36 ; 6
		dc.b $6C ; l
		dc.b $D9
		dc.b $9C
		dc.b $3C ; <
		dc.b $67 ; g
		dc.b $E3
		dc.b   4
		dc.b $6B ; k
		dc.b $FA
		dc.b $8A
		dc.b   8
		dc.b $D9
		dc.b $B3
		dc.b $66 ; f
		dc.b $CD
		dc.b $92
		dc.b $B9
		dc.b $3C ; <
		dc.b $1D
		dc.b $3E ; >
		dc.b $A3
		dc.b $9C
		dc.b $3A ; :
		dc.b $A7
		dc.b   2
		dc.b $ED
		dc.b $6E ; n
		dc.b $54 ; T
		dc.b $CD
		dc.b $95
		dc.b $EF
		dc.b $51 ; Q
		dc.b $B4
		dc.b $37 ; 7
		dc.b  $C
		dc.b $97
		dc.b $FB
		dc.b $D5
		dc.b $64 ; d
		dc.b $37 ; 7
		dc.b $40 ; @
		dc.b $9A
		dc.b $70 ; p
		dc.b $3D ; =
		dc.b $DF
		dc.b $AA
		dc.b $FD
		dc.b $C1
		dc.b $90
		dc.b $23 ; #
		dc.b $73 ; s
		dc.b $23 ; #
		dc.b $3A ; :
		dc.b $99
		dc.b $B3
		dc.b $78 ; x
		dc.b $AD
		dc.b $EC
		dc.b $E0
		dc.b $6F ; o
		dc.b $73 ; s
		dc.b $55 ; U
		dc.b $2B ; +
		dc.b $36 ; 6
		dc.b $46 ; F
		dc.b $C1
		dc.b $BF
		dc.b $55 ; U
		dc.b $4E ; N
		dc.b $45 ; E
		dc.b $71 ; q
		dc.b $58 ; X
		dc.b $40 ; @
		dc.b $98
		dc.b $16
		dc.b $6C ; l
		dc.b $DA
		dc.b $78 ; x
		dc.b $DC
		dc.b $17
		dc.b $A9
		dc.b $20
		dc.b $85
		dc.b $92
		dc.b $ED
		dc.b $DD
		dc.b $FA
		dc.b $B1
		dc.b $95
		dc.b  $F
		dc.b   6
		dc.b   5
		dc.b   6
		dc.b $4D ; M
		dc.b $87
		dc.b $9B
		dc.b $FC
		dc.b $8B
		dc.b $FE
		dc.b $41 ; A
		dc.b $E2
		dc.b $BE
		dc.b  $B
		dc.b $B5
		dc.b $73 ; s
		dc.b $78 ; x
		dc.b $8C
		dc.b $DB
		dc.b $57 ; W
		dc.b $25 ; %
		dc.b $97
		dc.b $82
		dc.b $E5
		dc.b $2F ; /
		dc.b   1
		dc.b $2C ; ,
		dc.b $A5
		dc.b $B7
		dc.b $41 ; A
		dc.b $2E ; .
		dc.b $A7
		dc.b $F8
		dc.b $8C
		dc.b $84
		dc.b $BB
		dc.b $56 ; V
		dc.b $5D ; ]
		dc.b $B2
		dc.b $7A ; z
		dc.b $F8
		dc.b $2B ; +
		dc.b $F6
		dc.b $CB
		dc.b $36 ; 6
		dc.b $6E ; n
		dc.b $A5
		dc.b $FF
		dc.b $24 ; $
		dc.b $B2
		dc.b $5D ; ]
		dc.b $B9
		dc.b $DE
		dc.b $A3
		dc.b $B8
		dc.b $2B ; +
		dc.b $D4
		dc.b $2B ; +
		dc.b $D6
		dc.b $CC
		dc.b $F9
		dc.b $3F ; ?
		dc.b $A8
		dc.b $67 ; g
		dc.b $ED
		dc.b $BD
		dc.b $73 ; s
		dc.b $ED
		dc.b $5B ; [
		dc.b $25 ; %
		dc.b $92
		dc.b $E5
		dc.b $AE
		dc.b $4B ; K
		dc.b $92
		dc.b $85
		dc.b $25 ; %
		dc.b $C9
		dc.b $6F ; o
		dc.b   4
		dc.b $BF
		dc.b $E7
		dc.b $D0
		dc.b $1D
		dc.b  $C
		dc.b $64 ; d
		dc.b $29 ; )
		dc.b   2
		dc.b $7F ; 
		dc.b $6C ; l
		dc.b $B2
		dc.b $97
		dc.b $6C ; l
		dc.b $B2
		dc.b $96
		dc.b $D9
		dc.b $75 ; u
		dc.b $4B ; K
		dc.b $6C ; l
		dc.b $BC
		dc.b $25 ; %
		dc.b $94
		dc.b $B2
		dc.b $CF
		dc.b $96
		dc.b $7E ; ~
		dc.b $D1
		dc.b $2C ; ,
		dc.b $B3
		dc.b $F6
		dc.b $B8
		dc.b $79 ; y
		dc.b $76 ; v
		dc.b $DA
		dc.b $B2
		dc.b $CA
		dc.b $5B ; [
		dc.b $64 ; d
		dc.b $25 ; %
		dc.b $E1
		dc.b $21 ; !
		dc.b $2F ; /
		dc.b $1C
		dc.b $FF
		dc.b $E4
		dc.b $CF
		dc.b $9B
		dc.b $AA
		dc.b $5B ; [
		dc.b $65 ; e
		dc.b $D5
		dc.b $9F
		dc.b $B6
		dc.b $5D ; ]
		dc.b $59 ; Y
		dc.b $FB
		dc.b $65 ; e
		dc.b $94
		dc.b $AF
		dc.b $ED
		dc.b $F2
		dc.b $EE
		dc.b $CF
		dc.b $E1
		dc.b $9F
		dc.b $36 ; 6
		dc.b $6E ; n
		dc.b $A9
		dc.b $66 ; f
		dc.b $CD
		dc.b $9F
		dc.b $A8
		dc.b $72 ; r
		dc.b $32 ; 2
		dc.b $85
		dc.b $92
		dc.b $52 ; R
		dc.b $B2
		dc.b $FC
		dc.b $A5
		dc.b $97
		dc.b $4D ; M
		dc.b $B2
		dc.b $C9
		dc.b $EA
		dc.b $36 ; 6
		dc.b $CB
		dc.b $2C ; ,
		dc.b $EA
		dc.b $32 ; 2
		dc.b $97
		dc.b $53 ; S
		dc.b $FC
		dc.b $54 ; T
		dc.b $78 ; x
		dc.b  $B
		dc.b $DE
		dc.b $BA
		dc.b $EF
		dc.b $7A ; z
		dc.b $BE
		dc.b $FB
		dc.b $14
		dc.b $2B ; +
		dc.b $D6
		dc.b $C5
		dc.b $7D ; }
		dc.b $FD
		dc.b $14
		dc.b $2D ; -
		dc.b $8A
		dc.b $17
		dc.b $A5
		dc.b $FA
		dc.b $5F ; _
		dc.b $62 ; b
		dc.b $FF
		dc.b $DD
		dc.b $E4
		dc.b $35 ; 5
		dc.b  $A
		dc.b $3C ; <
		dc.b $DA
		dc.b $64 ; d
		dc.b $29 ; )
		dc.b $FA
		dc.b $BA
		dc.b $3C ; <
		dc.b $85
		dc.b   1
		dc.b $90
		dc.b $2B ; +
		dc.b $29 ; )
		dc.b $61 ; a
		dc.b $3C ; <
		dc.b $82
		dc.b $EB
		dc.b $2D ; -
		dc.b $64 ; d
		dc.b $E2
		dc.b $71 ; q
		dc.b  $B
		dc.b $85
		dc.b   5
		dc.b $18
		dc.b $B9
		dc.b $C9
		dc.b $85
		dc.b $D8
		dc.b $55 ; U
		dc.b $A8
		dc.b   9
		dc.b $B0
		dc.b $AB
		dc.b $E8
		dc.b $D8
		dc.b $28 ; (
		dc.b $5A ; Z
		dc.b $5D ; ]
		dc.b $5B ; [
		dc.b $37 ; 7
		dc.b $5D ; ]
		dc.b $A5
		dc.b $EB
		dc.b $46 ; F
		dc.b $FD
		dc.b $C0
		dc.b $DC
		dc.b $74 ; t
		dc.b   5
		dc.b $65 ; e
		dc.b  $C
		dc.b $13
		dc.b $E8
		dc.b $D4
		dc.b $79 ; y
		dc.b   2
		dc.b $C5
		dc.b $88
		dc.b $10
		dc.b $2D ; -
		dc.b $88
		dc.b $D4
		dc.b $1B
		dc.b $D1
		dc.b $88
		dc.b $75 ; u
		dc.b $A1
		dc.b  $A
		dc.b $1D
		dc.b $2F ; /
		dc.b $20
		dc.b $65 ; e
		dc.b $AC
		dc.b $9E
		dc.b $56 ; V
		dc.b $13
		dc.b $CB
		dc.b $DA
		dc.b $8A
		dc.b $F5
		dc.b $26 ; &
		dc.b $A8
		dc.b $50 ; P
		dc.b $58 ; X
		dc.b $A5
		dc.b $5E ; ^
		dc.b $A5
		dc.b $8C
		dc.b $DE
		dc.b $55 ; U
		dc.b $FE
		dc.b $40 ; @
		dc.b $A5
		dc.b $C8
		dc.b $CF
		dc.b $27 ; '
		dc.b $C6
		dc.b $E1
		dc.b $B9
		dc.b $E5
		dc.b $1F
		dc.b $DE
		dc.b $D1
		dc.b $FD
		dc.b $6D ; m
		dc.b $4F ; O
		dc.b $F7
		dc.b $96
		dc.b $F4
		dc.b $D8
		dc.b $BB
		dc.b $81
		dc.b $25 ; %
		dc.b $68 ; h
		dc.b $D1
		dc.b $86
		dc.b $AB
		dc.b $B8
		dc.b $C1
		dc.b $D6
		dc.b $B4
		dc.b $4E ; N
		dc.b  $E
		dc.b $62 ; b
		dc.b $98
		dc.b $23 ; #
		dc.b $87
		dc.b   7
		dc.b $94
		dc.b $30 ; 0
		dc.b $AE
		dc.b $E6
		dc.b $9E
		dc.b $28 ; (
		dc.b $47 ; G
		dc.b   4
		dc.b $C5
		dc.b $2A ; *
		dc.b $C5
		dc.b  $C
		dc.b $20
		dc.b $DF
		dc.b $AC
		dc.b $4D ; M
		dc.b $93
		dc.b $EB
		dc.b $9D
		dc.b $53 ; S
		dc.b $7A ; z
		dc.b $56 ; V
		dc.b $7D ; }
		dc.b $E9
		dc.b $FE
		dc.b $F9
		dc.b $D5
		dc.b $19
		dc.b $2B ; +
		dc.b $C8
		dc.b $E1
		dc.b $1E
		dc.b $4C ; L
		dc.b $7C ; |
		dc.b $8E
		dc.b $14
		dc.b $84
		dc.b $EB
		dc.b $FF
		dc.b $EA
		dc.b $E1
		dc.b $77 ; w
		dc.b $29 ; )
		dc.b $C1
		dc.b $92
		dc.b $A8
		dc.b $65 ; e
		dc.b   3
		dc.b $82
		dc.b $62 ; b
		dc.b $96
		dc.b $F3
		dc.b $F5
		dc.b $A6
		dc.b $33 ; 3
		dc.b $EF
		dc.b $6C ; l
		dc.b $37 ; 7
		dc.b $A5
		dc.b $59 ; Y
		dc.b $EB
		dc.b $92
		dc.b $7F ; 
		dc.b $BD
		dc.b $31 ; 1
		dc.b $C2
		dc.b $BE
		dc.b $AD
		dc.b $3C ; <
		dc.b $5A ; Z
		dc.b $6D ; m
		dc.b $3A ; :
		dc.b $FF
		dc.b $F9
		dc.b $BA
		dc.b $E6
		dc.b $DB
		dc.b $E6
		dc.b $E8
		dc.b $70 ; p
		dc.b $AB
		dc.b $B2
		dc.b $1C
		dc.b $36 ; 6
		dc.b $36 ; 6
		dc.b $28 ; (
		dc.b $D3
		dc.b $C6
		dc.b $6D ; m
		dc.b $C2
		dc.b $BC
		dc.b $F0
		dc.b $73 ; s
		dc.b $4F ; O
		dc.b $F7
		dc.b $A9
		dc.b   6
		dc.b $42 ; B
		dc.b $84
		dc.b $67 ; g
		dc.b $8A
		dc.b $42 ; B
		dc.b $D2
		dc.b $8E
		dc.b  $E
		dc.b $48 ; H
		dc.b  $A
		dc.b $20
		dc.b $48 ; H
		dc.b $1F
		dc.b $F2
		dc.b $13
		dc.b $D3
		dc.b $9D
		dc.b $DC
		dc.b $DC
		dc.b $DD
		dc.b $F8
		dc.b $6F ; o
		dc.b $9B
		dc.b $4E ; N
		dc.b $B8
		dc.b $72 ; r
		dc.b $A0
		dc.b $A3
		dc.b $C8
		dc.b $50 ; P
		dc.b $EE
		dc.b $2D ; -
		dc.b $5E ; ^
		dc.b $85
		dc.b   8
		dc.b $A6
		dc.b $C6
		dc.b $21 ; !
		dc.b $4E ; N
		dc.b $B7
		dc.b $10
		dc.b $C3
		dc.b $62 ; b
		dc.b $34 ; 4
		dc.b $38 ; 8
		dc.b $6C ; l
		dc.b $83
		dc.b $92
		dc.b $1C
		dc.b   9
		dc.b $D0
		dc.b $47 ; G
		dc.b $76 ; v
		dc.b $99
		dc.b $1C
		dc.b $2A ; *
		dc.b $36 ; 6
		dc.b $A3
		dc.b $52 ; R
		dc.b $7B ; {
		dc.b $49 ; I
		dc.b $19
		dc.b $C6
		dc.b $90
		dc.b $C8
		dc.b $A1
		dc.b $37 ; 7
		dc.b $4D ; M
		dc.b $79 ; y
		dc.b $D0
		dc.b $B9
		dc.b  $C
		dc.b $51 ; Q
		dc.b $85
		dc.b   7
		dc.b $EA
		dc.b $91
		dc.b $8C
		dc.b $8F
		dc.b $6A ; j
		dc.b $CC
		dc.b $9C
		dc.b $D9
		dc.b $29 ; )
		dc.b $A5
		dc.b $59 ; Y
		dc.b $2B ; +
		dc.b $90
		dc.b $C6
		dc.b $70 ; p
		dc.b $4C ; L
		dc.b $8A
		dc.b $70 ; p
		dc.b $DD
		dc.b $91
		dc.b $A4
		dc.b  $E
		dc.b $83
		dc.b $20
		dc.b $47 ; G
		dc.b $FB
		dc.b $8C
		dc.b $86
		dc.b $AA
		dc.b $1C
		dc.b $25 ; %
		dc.b $7D ; }
		dc.b  $C
		dc.b $A0
		dc.b $98
		dc.b $A6
		dc.b $28 ; (
		dc.b $43 ; C
		dc.b $FB
		dc.b $D0
		dc.b $24 ; $
		dc.b $82
		dc.b $34 ; 4
		dc.b $13
		dc.b $9E
		dc.b $80
		dc.b $99
		dc.b $2B ; +
		dc.b $4B ; K
		dc.b   9
		dc.b $2A ; *
		dc.b $50 ; P
		dc.b $9C
		dc.b  $D
		dc.b $BF
		dc.b $BD
		dc.b $41 ; A
		dc.b $FB
		dc.b $AC
		dc.b $20
		dc.b $42 ; B
		dc.b $96
		dc.b $50 ; P
		dc.b $E8
		dc.b $FA
		dc.b $31 ; 1
		dc.b $1D
		dc.b $2C ; ,
		dc.b $AA
		dc.b $55 ; U
		dc.b $21 ; !
		dc.b $66 ; f
		dc.b $F6
		dc.b $FD
		dc.b $5F ; _
		dc.b $F7
		dc.b $AE
		dc.b $81
		dc.b   3
		dc.b $28 ; (
		dc.b $13
		dc.b $8B
		dc.b $FE
		dc.b $F0
		dc.b $9E
		dc.b $CF
		dc.b $EC
		dc.b $7E ; ~
		dc.b $AB
		dc.b $A1
		dc.b $40 ; @
		dc.b $BD
		dc.b $89
		dc.b $B9
		dc.b $52 ; R
		dc.b $C2
		dc.b $E7
		dc.b $75 ; u
		dc.b $FE
		dc.b $CA
		dc.b $28 ; (
		dc.b $F8
		dc.b $24 ; $
		dc.b $2D ; -
		dc.b $67 ; g
		dc.b $2F ; /
		dc.b $F9
		dc.b   7
		dc.b $F9
		dc.b $2F ; /
		dc.b $1A
		dc.b $82
		dc.b $ED
		dc.b $F5
		dc.b $76 ; v
		dc.b $D8
		dc.b $47 ; G
		dc.b $91
		dc.b $43 ; C
		dc.b $68 ; h
		dc.b $A3
		dc.b $C9
		dc.b $72 ; r
		dc.b $E8
		dc.b $C3
		dc.b $26 ; &
		dc.b $75 ; u
		dc.b $84
		dc.b $79 ; y
		dc.b $B3
		dc.b $66 ; f
		dc.b $F0
		dc.b $97
		dc.b $86
		dc.b $7F ; 
		dc.b $11
		dc.b $2E ; .
		dc.b $AC
		dc.b $E3
		dc.b $C2
		dc.b $43 ; C
		dc.b $C2
		dc.b $59 ; Y
		dc.b $BA
		dc.b $A5
		dc.b $E3
		dc.b $9F
		dc.b $6A ; j
		dc.b $F6
		dc.b $CB
		dc.b $29 ; )
		dc.b $64 ; d
		dc.b $BB
		dc.b $7C ; |
		dc.b $BA
		dc.b $A4
		dc.b $F9
		dc.b $75 ; u
		dc.b $4A ; J
		dc.b $F9
		dc.b $65 ; e
		dc.b $2C ; ,
		dc.b $DD
		dc.b $4B ; K
		dc.b $92
		dc.b $D9
		dc.b $A6
		dc.b $4B ; K
		dc.b $90
		dc.b $CE
		dc.b $FC
		dc.b $94
		dc.b $76 ; v
		dc.b $BE
		dc.b $59 ; Y
		dc.b $69 ; i
		dc.b $B6
		dc.b $5B ; [
		dc.b $55 ; U
		dc.b $F9
		dc.b $2F ; /
		dc.b $68 ; h
		dc.b $BF
		dc.b $20
		dc.b $5B ; [
		dc.b $54 ; T
		dc.b $28 ; (
		dc.b $28 ; (
		dc.b $75 ; u
		dc.b $2D ; -
		dc.b   4
		dc.b $BC
		dc.b $65 ; e
		dc.b $FE
		dc.b $49 ; I
		dc.b $78 ; x
		dc.b $C9
		dc.b $72 ; r
		dc.b $96
		dc.b $82
		dc.b $F5
		dc.b $FF
		dc.b $B8
		dc.b $23 ; #
		dc.b $A1
		dc.b $82
		dc.b $7D ; }
		dc.b $2C ; ,
		dc.b $50 ; P
		dc.b $5D ; ]
		dc.b $16
		dc.b $C3
		dc.b $FD
		dc.b $C5
		dc.b $84
		dc.b $74 ; t
		dc.b $B2
		dc.b $87
		dc.b $ED
		dc.b $47 ; G
		dc.b $A8
		dc.b $30 ; 0
		dc.b $5F ; _
		dc.b $F7
		dc.b $E8
		dc.b $B6
		dc.b $2D ; -
		dc.b $9B
		dc.b $74 ; t
		dc.b $7A ; z
		dc.b $87
		dc.b $18
		dc.b $96
		dc.b $52 ; R
		dc.b $DB
		dc.b $6A ; j
		dc.b $CB
		dc.b $B6
		dc.b $5A ; Z
		dc.b $9F
		dc.b $96
		dc.b $7C ; |
		dc.b $B5
		dc.b $18
		dc.b $51 ; Q
		dc.b $A7
		dc.b $EA
		dc.b $ED
		dc.b $70 ; p
		dc.b $53 ; S
		dc.b $71 ; q
		dc.b $EA
		dc.b $B4
		dc.b $7E ; ~
		dc.b $EC
		dc.b $FF
		dc.b $76 ; v
		dc.b $6E ; n
		dc.b $B5
		dc.b $C6
		dc.b $ED
		dc.b $AB
		dc.b $B5
		dc.b $7C ; |
		dc.b $17
		dc.b $25 ; %
		dc.b $DB
		dc.b $2E ; .
		dc.b $DD
		dc.b $36 ; 6
		dc.b $FE
		dc.b $CD
		dc.b $76 ; v
		dc.b $E9
		dc.b $25 ; %
		dc.b $12
		dc.b $DA
		dc.b $BA
		dc.b $F4
		dc.b $DA
		dc.b $E3
		dc.b $71 ; q
		dc.b $85
		dc.b $CF
		dc.b $FB
		dc.b $97
		dc.b   5
		dc.b $F2
		dc.b $ED
		dc.b $97
		dc.b $6C ; l
		dc.b $B2
		dc.b $96
		dc.b $D9
		dc.b $75 ; u
		dc.b $79 ; y
		dc.b $75 ; u
		dc.b $4B ; K
		dc.b $2C ; ,
		dc.b $FD
		dc.b $4B ; K
		dc.b $97
		dc.b $96
		dc.b $DE
		dc.b $EF
		dc.b $2E ; .
		dc.b $DD
		dc.b $32 ; 2
		dc.b $90
		dc.b $96
		dc.b $52 ; R
		dc.b $5C ; \
		dc.b $A4
		dc.b $14
		dc.b $F3
		dc.b $66 ; f
		dc.b $CD
		dc.b $2F ; /
		dc.b $F2
		dc.b $4B ; K
		dc.b $36 ; 6
		dc.b $7F ; 
		dc.b $1C
		dc.b $F9
		dc.b $4B ; K
		dc.b $C3
		dc.b $F6
		dc.b $79 ; y
		dc.b $B2
		dc.b $96
		dc.b $6C ; l
		dc.b $D9
		dc.b $B3
		dc.b $76 ; v
		dc.b $E9
		dc.b $7F ; 
		dc.b $82
		dc.b $D9
		dc.b $2E ; .
		dc.b $D9
		dc.b $2D ; -
		dc.b $9B
		dc.b $73 ; s
		dc.b $FF
		dc.b $93
		dc.b $3F ; ?
		dc.b $8E
		dc.b $7C ; |
		dc.b $D9
		dc.b $A5
		dc.b $9B
		dc.b $36 ; 6
		dc.b $6F ; o
		dc.b $15
		dc.b $A0
		dc.b $EA
		dc.b $10
		dc.b $B7
		dc.b $C0
		dc.b $A0
		dc.b $5E ; ^
		dc.b $34 ; 4
		dc.b $FF
		dc.b $21 ; !
		dc.b $F8
		dc.b  $C
		dc.b $8B
		dc.b $6A ; j
		dc.b $DE
		dc.b $1C
		dc.b $8D
		dc.b $90
		dc.b $67 ; g
		dc.b $34 ; 4
		dc.b $DB
		dc.b $A2
		dc.b $8A
		dc.b   3
		dc.b $D6
		dc.b $46 ; F
		dc.b $29 ; )
		dc.b $AC
		dc.b $DC
		dc.b $71 ; q
		dc.b $21 ; !
		dc.b $A3
		dc.b $AE
		dc.b $27 ; '
		dc.b $A8
		dc.b $E7
		dc.b $30 ; 0
		dc.b $4F ; O
		dc.b $64 ; d
		dc.b $81
		dc.b $93
		dc.b $D6
		dc.b $1A
		dc.b $8A
		dc.b $C5
		dc.b $A0
		dc.b $27 ; '
		dc.b $13
		dc.b $AC
		dc.b $27 ; '
		dc.b $B8
		dc.b $B5
		dc.b $D1
		dc.b $E5
		dc.b $61 ; a
		dc.b $74 ; t
		dc.b $50 ; P
		dc.b $AF
		dc.b $57 ; W
		dc.b $DF
		dc.b $AD
		dc.b $6C ; l
		dc.b $EE
		dc.b $7F ; 
		dc.b $ED
		dc.b $7A ; z
		dc.b $28 ; (
		dc.b $57 ; W
		dc.b $EE
		dc.b $BE
		dc.b $CD
		dc.b $29 ; )
		dc.b $67 ; g
		dc.b $70 ; p
		dc.b $2D ; -
		dc.b $7D ; }
		dc.b $C5
		dc.b $D1
		dc.b $5F ; _
		dc.b $A0
		dc.b $FE
		dc.b $2D ; -
		dc.b $8A
		dc.b $34 ; 4
		dc.b $B3
		dc.b $F6
		dc.b $A0
		dc.b $93
		dc.b $AD
		dc.b $8A
		dc.b $E4
		dc.b $D8
		dc.b $DB
		dc.b $99
		dc.b $31 ; 1
		dc.b $BA
		dc.b $97
		dc.b $26 ; &
		dc.b $2D ; -
		dc.b $4F ; O
		dc.b $EE
		dc.b $AD
		dc.b   1
		dc.b $31 ; 1
		dc.b $38 ; 8
		dc.b $2D ; -
		dc.b $35 ; 5
		dc.b $25 ; %
		dc.b $69 ; i
		dc.b $FA
		dc.b $B9
		dc.b $D4
		dc.b $15
		dc.b $68 ; h
		dc.b $A3
		dc.b $F7
		dc.b  $F
		dc.b $50 ; P
		dc.b $A5
		dc.b $FE
		dc.b $72 ; r
		dc.b $7A ; z
		dc.b $EB
		dc.b $20
		dc.b $AF
		dc.b $72 ; r
		dc.b $EA
		dc.b $4E ; N
		dc.b $6E ; n
		dc.b $6E ; n
		dc.b $FB
		dc.b $F7
		dc.b $2E ; .
		dc.b $E5
		dc.b  $A
		dc.b $14
		dc.b $94
		dc.b $BA
		dc.b $2E ; .
		dc.b $B5
		dc.b  $A
		dc.b $F5
		dc.b $D4
		dc.b $15
		dc.b $EA
		dc.b $37 ; 7
		dc.b $A3
		dc.b $94
		dc.b $77 ; w
		dc.b $B9
		dc.b $7F ; 
		dc.b $DE
		dc.b $85
		dc.b $71 ; q
		dc.b $F2
		dc.b $71 ; q
		dc.b $58 ; X
		dc.b $46 ; F
		dc.b $46 ; F
		dc.b $5A ; Z
		dc.b $3E ; >
		dc.b $86
		dc.b $56 ; V
		dc.b $19
		dc.b  $A
		dc.b   5
		dc.b $14
		dc.b $E8
		dc.b $57 ; W
		dc.b $8A
		dc.b   5
		dc.b   4
		dc.b $BA
		dc.b $DD
		dc.b $FE
		dc.b $7B ; {
		dc.b $48 ; H
		dc.b $C8
		dc.b $E1
		dc.b $40 ; @
		dc.b $56 ; V
		dc.b $D0
		dc.b $C1
		dc.b  $A
		dc.b $1D
		dc.b $1E
		dc.b $5D ; ]
		dc.b   8
		dc.b $5E ; ^
		dc.b $42 ; B
		dc.b $82
		dc.b $9A
		dc.b $9B
		dc.b $5B ; [
		dc.b $99
		dc.b $19
		dc.b $C4
		dc.b  $A
		dc.b $E9
		dc.b $BA
		dc.b $67 ; g
		dc.b $EB
		dc.b $89
		dc.b $40 ; @
		dc.b $E1
		dc.b $C1
		dc.b $F4
		dc.b $3B ; ;
		dc.b $A2
		dc.b $4F ; O
		dc.b $DC
		dc.b $64 ; d
		dc.b   8
		dc.b $5E ; ^
		dc.b $42 ; B
		dc.b $80
		dc.b $99
		dc.b $18
		dc.b $5E ; ^
		dc.b   9
		dc.b $BF
		dc.b $BC
		dc.b $DF
		dc.b $BB
		dc.b $2D ; -
		dc.b $5B ; [
		dc.b $D2
		dc.b   4
		dc.b $69 ; i
		dc.b $5C ; \
		dc.b $23 ; #
		dc.b   4
		dc.b $69 ; i
		dc.b $C2
		dc.b $33 ; 3
		dc.b $AC
		dc.b $38 ; 8
		dc.b $CF
		dc.b $60 ; `
		dc.b $A4
		dc.b $67 ; g
		dc.b $8D
		dc.b $84
		dc.b $EB
		dc.b $A3
		dc.b $71 ; q
		dc.b $3C ; <
		dc.b $E0
		dc.b $6E ; n
		dc.b $A6
		dc.b $B2
		dc.b $86
		dc.b $1C
		dc.b $8E
		dc.b $3B ; ;
		dc.b $27 ; '
		dc.b $C8
		dc.b $B7
		dc.b $E1
		dc.b $8E
		dc.b $18
		dc.b $A5
		dc.b $51 ; Q
		dc.b $BF
		dc.b $57 ; W
		dc.b $83
		dc.b $BD
		dc.b $19
		dc.b $19
		dc.b $C7
		dc.b $74 ; t
		dc.b $DB
		dc.b $FD
		dc.b $30 ; 0
		dc.b $38 ; 8
		dc.b $61 ; a
		dc.b $59 ; Y
		dc.b $C0
		dc.b $92
		dc.b $29 ; )
		dc.b $8A
		dc.b $31 ; 1
		dc.b $D5
		dc.b $19
		dc.b $31 ; 1
		dc.b $62 ; b
		dc.b $AA
		dc.b $46 ; F
		dc.b $75 ; u
		dc.b $47 ; G
		dc.b $24 ; $
		dc.b  $A
		dc.b $13
		dc.b $C5
		dc.b $DB
		dc.b $A0
		dc.b $98
		dc.b $9E
		dc.b $E8
		dc.b $60 ; `
		dc.b $EB
		dc.b $BD
		dc.b $4C ; L
		dc.b $A1
		dc.b $18
		dc.b $4F ; O
		dc.b $91
		dc.b $94
		dc.b $2E ; .
		dc.b $48 ; H
		dc.b $11
		dc.b $BA
		dc.b  $D
		dc.b $3D ; =
		dc.b $45 ; E
		dc.b   8
		dc.b $B2
		dc.b $55 ; U
		dc.b $AA
		dc.b $C7
		dc.b   6
		dc.b $4D ; M
		dc.b $EC
		dc.b $6D ; m
		dc.b $3D ; =
		dc.b $ED
		dc.b $87
		dc.b $5C ; \
		dc.b $F1
		dc.b $A4
		dc.b $30 ; 0
		dc.b $24 ; $
		dc.b $14
		dc.b $E4
		dc.b $8D
		dc.b $1A
		dc.b   2
		dc.b $83
		dc.b $3A ; :
		dc.b   4
		dc.b  $E
		dc.b $8C
		dc.b $50 ; P
		dc.b $6D ; m
		dc.b $C0
		dc.b $8C
		dc.b $23 ; #
		dc.b $81
		dc.b $1E
		dc.b $EA
		dc.b $A3
		dc.b $A9
		dc.b  $A
		dc.b $6F ; o
		dc.b $75 ; u
		dc.b   3
		dc.b $7F ; 
		dc.b $91
		dc.b   7
		dc.b $89
		dc.b  $C
		dc.b $A5
		dc.b $D4
		dc.b $B9
		dc.b $4B ; K
		dc.b $C0
		dc.b $4B ; K
		dc.b $6E ; n
		dc.b $7D ; }
		dc.b $B9
		dc.b $FC
		dc.b $7C ; |
		dc.b $BC
		dc.b   7
		dc.b $56 ; V
		dc.b $7F ; 
		dc.b $F2
		dc.b $4B ; K
		dc.b $34 ; 4
		dc.b $BC
		dc.b $25 ; %
		dc.b $94
		dc.b $BC
		dc.b $73 ; s
		dc.b $F8
		dc.b $CA
		dc.b $F9
		dc.b $6D ; m
		dc.b $F2
		dc.b  $D
		dc.b $94
		dc.b $96
		dc.b $FD
		dc.b   2
		dc.b $2C ; ,
		dc.b $85
		dc.b $6E ; n
		dc.b $C7
		dc.b $29 ; )
		dc.b $28 ; (
		dc.b $81
		dc.b $72 ; r
		dc.b $95
		dc.b $E0
		dc.b $E8
		dc.b $65 ; e
		dc.b $90
		dc.b $6D ; m
		dc.b $54 ; T
		dc.b $30 ; 0
		dc.b $75 ; u
		dc.b $68 ; h
		dc.b $39 ; 9
		dc.b $8D
		dc.b $B1
		dc.b $48 ; H
		dc.b $3A ; :
		dc.b $29 ; )
		dc.b $8C
		dc.b $DA
		dc.b $33 ; 3
		dc.b $AC
		dc.b $D9
		dc.b $D3
		dc.b $29 ; )
		dc.b $B4
		dc.b   9
		dc.b $B7
		dc.b $43 ; C
		dc.b $DB
		dc.b $75 ; u
		dc.b $8A
		dc.b $28 ; (
		dc.b $F2
		dc.b $8A
		dc.b $71 ; q
		dc.b $FE
		dc.b $F5
		dc.b $70 ; p
		dc.b $EB
		dc.b $48 ; H
		dc.b $98
		dc.b $3C ; <
		dc.b  $B
		dc.b $5B ; [
		dc.b $92
		dc.b $3F ; ?
		dc.b $F7
		dc.b $7F ; 
		dc.b $F2
		dc.b $60 ; `
		dc.b  $C
		dc.b $5B ; [
		dc.b $D1
		dc.b $6C ; l
		dc.b $51 ; Q
		dc.b $5C ; \
		dc.b $23 ; #
		dc.b $62 ; b
		dc.b $63 ; c
		dc.b $38 ; 8
		dc.b $D2
		dc.b $71 ; q
		dc.b $D6
		dc.b $BF
		dc.b $F7
		dc.b $7A ; z
		dc.b $DE
		dc.b $15
		dc.b $ED
		dc.b $19
		dc.b $91
		dc.b $B2
		dc.b   6
		dc.b $FD
		dc.b $CB
		dc.b $45 ; E
		dc.b $E7
		dc.b $63 ; c
		dc.b $38 ; 8
		dc.b $BF
		dc.b $7A ; z
		dc.b $6F ; o
		dc.b $32 ; 2
		dc.b $C1
		dc.b $8D
		dc.b $C1
		dc.b $37 ; 7
		dc.b $A5
		dc.b $6C ; l
		dc.b $E1
		dc.b $5D ; ]
		dc.b $6A ; j
		dc.b $2D ; -
		dc.b $99
		dc.b $EB
		dc.b $59 ; Y
		dc.b $BA
		dc.b $96
		dc.b $3A ; :
		dc.b $29 ; )
		dc.b   1
		dc.b $47 ; G
		dc.b $1F
		dc.b $EA
		dc.b $E0
		dc.b $57 ; W
		dc.b $13
		dc.b $CA
		dc.b   2
		dc.b $13
		dc.b $3F ; ?
		dc.b $DC
		dc.b $3A ; :
		dc.b $6F ; o
		dc.b $26 ; &
		dc.b $23 ; #
		dc.b $4B ; K
		dc.b $41 ; A
		dc.b $39 ; 9
		dc.b $89
		dc.b $32 ; 2
		dc.b $97
		dc.b $56 ; V
		dc.b $7C ; |
		dc.b $A5
		dc.b $97
		dc.b $92
		dc.b $E4
		dc.b $32 ; 2
		dc.b $CE
		dc.b $B9
		dc.b $39 ; 9
		dc.b $90
		dc.b $6D ; m
		dc.b  $D
		dc.b $8C
		dc.b $F9
		dc.b $D3
		dc.b $62 ; b
		dc.b $55 ; U
		dc.b $39 ; 9
		dc.b $AB
		dc.b $FF
		dc.b $E4
		dc.b $64 ; d
		dc.b $97
		dc.b $F9
		dc.b $17
		dc.b $B6
		dc.b $5B ; [
		dc.b $64 ; d
		dc.b $C1
		dc.b $7C ; |
		dc.b $26 ; &
		dc.b $E5
		dc.b $DB
		dc.b $A2
		dc.b $73 ; s
		dc.b $98
		dc.b $23 ; #
		dc.b $AA
		dc.b $32 ; 2
		dc.b $7F ; 
		dc.b $37 ; 7
		dc.b $14
		dc.b $D9
		dc.b $3F ; ?
		dc.b $F7
		dc.b $E6
		dc.b $F2
		dc.b $EA
		dc.b $5E ; ^
		dc.b $D1
		dc.b $B5
		dc.b $6F ; o
		dc.b $ED
		dc.b $97
		dc.b $50 ; P
		dc.b $5F ; _
		dc.b $16
		dc.b $70 ; p
		dc.b $C8
		dc.b $69 ; i
		dc.b $96
		dc.b $10
		dc.b $7E ; ~
		dc.b $DC
		dc.b $51 ; Q
		dc.b $9F
		dc.b $DB
		dc.b $9F
		dc.b $C2
		dc.b $42 ; B
		dc.b $5B ; [
		dc.b $73 ; s
		dc.b $E4
		dc.b $2F ; /
		dc.b $DB
		dc.b $E5
		dc.b $96
		dc.b $7C ; |
		dc.b $BC
		dc.b $B6
		dc.b $CB
		dc.b $36 ; 6
		dc.b $6D ; m
		dc.b $B2
		dc.b $FF
		dc.b $24 ; $
		dc.b $B3
		dc.b $66 ; f
		dc.b $CA
		dc.b $5D ; ]
		dc.b $52 ; R
		dc.b $CA
		dc.b $59 ; Y
		dc.b $B3
		dc.b $6D ; m
		dc.b $59 ; Y
		dc.b $78 ; x
		dc.b $8E
		dc.b $AE
		dc.b $E1
		dc.b $B5
		dc.b $41 ; A
		dc.b $59 ; Y
		dc.b $DB
		dc.b $20
		dc.b $A2
		dc.b $5B ; [
		dc.b $7C ; |
		dc.b $96
		dc.b $5B ; [
		dc.b $65 ; e
		dc.b $9B
		dc.b $25 ; %
		dc.b $DA
		dc.b $B9
		dc.b  $C
		dc.b $A5
		dc.b $E0
		dc.b $3F ; ?
		dc.b $C8
		dc.b $36 ; 6
		dc.b $AE
		dc.b $4B ; K
		dc.b $92
		dc.b $8C
		dc.b $95
		dc.b $FB
		dc.b $A4
		dc.b $AF
		dc.b $CE
		dc.b $36 ; 6
		dc.b $F9
		dc.b $76 ; v
		dc.b $8D
		dc.b $AB
		dc.b $B7
		dc.b $41 ; A
		dc.b $94
		dc.b $B6
		dc.b $AD
		dc.b $9D
		dc.b $4B ; K
		dc.b $27 ; '
		dc.b $F5
		dc.b  $D
		dc.b   2
		dc.b $F8
		dc.b $C8
		dc.b $2E ; .
		dc.b $65 ; e
		dc.b $FF
		dc.b $BF
		dc.b $FD
		dc.b $FF
		dc.b $CE
		dc.b $BF
		dc.b $E7
		dc.b $5B ; [
		dc.b $28 ; (
		dc.b $14
		dc.b $49 ; I
		dc.b $45 ; E
		dc.b $1F
		dc.b $2C ; ,
		dc.b $94
		dc.b $E9
		dc.b $94
		dc.b $97
		dc.b $21 ; !
		dc.b $43 ; C
		dc.b   7
		dc.b $FB
		dc.b $B3
		dc.b $12
		dc.b $16
		dc.b $83
		dc.b  $E
		dc.b $57 ; W
		dc.b $C8
		dc.b $48 ; H
		dc.b $EF
		dc.b $CE
		dc.b $AF
		dc.b $90
		dc.b $76 ; v
		dc.b $75 ; u
		dc.b $12
		dc.b $B3
		dc.b $F8
		dc.b $62 ; b
		dc.b $DF
		dc.b $E1
		dc.b $AD
		dc.b $BF
		dc.b $D3
		dc.b $53 ; S
		dc.b $71 ; q
		dc.b $B8
		dc.b $FF
		dc.b $77 ; w
		dc.b $E8
		dc.b $EB
		dc.b $42 ; B
		dc.b $B8
		dc.b $DC
		dc.b $6E ; n
		dc.b $B4
		dc.b $7A ; z
		dc.b $3A ; :
		dc.b $D7
		dc.b $5E ; ^
		dc.b  $C
		dc.b $1E
		dc.b $A3
		dc.b $FC
		dc.b $B0
		dc.b $3F ; ?
		dc.b $DD
		dc.b $DA
		dc.b  $D
		dc.b $E6
		dc.b $E3
		dc.b $5B ; [
		dc.b $ED
		dc.b   7
		dc.b $AA
		dc.b $4B ; K
		dc.b $25 ; %
		dc.b $79 ; y
		dc.b $B4
		dc.b $AC
		dc.b $60 ; `
		dc.b $E6
		dc.b $B0
		dc.b $C3
		dc.b $99
		dc.b $C7
		dc.b $61 ; a
		dc.b $B3
		dc.b $8C
		dc.b $18
		dc.b $3D ; =
		dc.b $46 ; F
		dc.b $CF
		dc.b $30 ; 0
		dc.b $E3
		dc.b $67 ; g
		dc.b $5F ; _
		dc.b $D0
		dc.b $DC
		dc.b $77 ; w
		dc.b $98
		dc.b $37 ; 7
		dc.b $1B
		dc.b $97
		dc.b $25 ; %
		dc.b $F0
		dc.b $30 ; 0
		dc.b $BD
		dc.b $B2
		dc.b $CA
		dc.b $D5
		dc.b $CA
		dc.b $59 ; Y
		dc.b   9
		dc.b $33 ; 3
		dc.b $F6
		dc.b $C9
		dc.b $45 ; E
		dc.b $AB
		dc.b $9F
		dc.b $25 ; %
		dc.b $93
		dc.b $98
		dc.b $2E ; .
		dc.b $52 ; R
		dc.b $CA
		dc.b $57 ; W
		dc.b $1C
		dc.b $BB
		dc.b $64 ; d
		dc.b $CE
		dc.b $31 ; 1
		dc.b $E3
		dc.b $FC
		dc.b $3E ; >
		dc.b $AF
		dc.b $2C ; ,
		dc.b $B3
		dc.b $F6
		dc.b $E7
		dc.b $DA
		dc.b $25 ; %
		dc.b $E3
		dc.b $E5
		dc.b $94
		dc.b $B3
		dc.b $78 ; x
		dc.b $E7
		dc.b $19
		dc.b $FC
		dc.b $33 ; 3
		dc.b $F8
		dc.b $48 ; H
		dc.b $67 ; g
		dc.b $EA
		dc.b $F2
		dc.b $CA
		dc.b $59 ; Y
		dc.b $4B ; K
		dc.b $34 ; 4
		dc.b $BF
		dc.b $C9
		dc.b $9F
		dc.b $C7
		dc.b $CB
		dc.b $FC
		dc.b $92
		dc.b $CD
		dc.b $2C ; ,
		dc.b $D2
		dc.b $CD
		dc.b $9B
		dc.b $C3
		dc.b $3F ; ?
		dc.b $F9
		dc.b $25 ; %
		dc.b $99
		dc.b $7C ; |
		dc.b $33 ; 3
		dc.b $97
		dc.b $84
		dc.b $94
		dc.b $66 ; f
		dc.b $CD
		dc.b $94
		dc.b $B2
		dc.b $97
		dc.b $86
		dc.b $7F ; 
		dc.b   5
		dc.b $E9
		dc.b $B4
		dc.b $9D
		dc.b $72 ; r
		dc.b $1E
		dc.b $D3
		dc.b $6C ; l
		dc.b $18
		dc.b $2B ; +
		dc.b $72 ; r
		dc.b $64 ; d
		dc.b $B8
		dc.b $C4
		dc.b $38 ; 8
		dc.b $34 ; 4
		dc.b   1
		dc.b $C1
		dc.b $CD
		dc.b $32 ; 2
		dc.b $1C
		dc.b $81
		dc.b $D0
		dc.b $2C ; ,
		dc.b  $F
		dc.b $D8
		dc.b $E8
		dc.b $A3
		dc.b $4C ; L
		dc.b $A9
		dc.b $AD
		dc.b $72 ; r
		dc.b $B3
		dc.b $B9
		dc.b $F7
		dc.b $D8
		dc.b $A2
		dc.b $44 ; D
		dc.b  $B
		dc.b $5A ; Z
		dc.b $EB
		dc.b $D0
		dc.b $2B ; +
		dc.b $D5
		dc.b $EA
		dc.b $3B ; ;
		dc.b $84
		dc.b $97
		dc.b $5A ; Z
		dc.b $85
		dc.b  $A
		dc.b $15
		dc.b $EA
		dc.b $15
		dc.b $EA
		dc.b $F5
		dc.b $1A
		dc.b $3D ; =
		dc.b $44 ; D
		dc.b $84
		dc.b $94
		dc.b $2D ; -
		dc.b $E1
		dc.b $5F ; _
		dc.b $A5
		dc.b $8A
		dc.b $14
		dc.b $77 ; w
		dc.b $6B ; k
		dc.b $BD
		dc.b $5E ; ^
		dc.b $A0
		dc.b $BF
		dc.b $EE
		dc.b $5A ; Z
		dc.b $FF
		dc.b $91
		dc.b $61 ; a
		dc.b $6A ; j
		dc.b $81
		dc.b  $A
		dc.b $5E ; ^
		dc.b $5A ; Z
		dc.b $A8
		dc.b $3B ; ;
		dc.b $86
		dc.b $81
		dc.b $42 ; B
		dc.b $EB
		dc.b $D0
		dc.b $77 ; w
		dc.b $3D ; =
		dc.b $48 ; H
		dc.b $68 ; h
		dc.b $14
		dc.b $1A
		dc.b $58 ; X
		dc.b $A7
		dc.b   9
		dc.b $BC
		dc.b $B9
		dc.b $25 ; %
		dc.b $53 ; S
		dc.b $5F ; _
		dc.b $EE
		dc.b $7D ; }
		dc.b $BB
		dc.b $B7
		dc.b $7E ; ~
		dc.b $AD
		dc.b $15
		dc.b $FF
		dc.b $D8
		dc.b $B5
		dc.b $3F ; ?
		dc.b $70 ; p
		dc.b $9B
		dc.b $D0
		dc.b $87
		dc.b $5A ; Z
		dc.b $10
		dc.b $9F
		dc.b $20
		dc.b $5A ; Z
		dc.b $FB
		dc.b $B5
		dc.b $E8
		dc.b $34 ; 4
		dc.b $7F ; 
		dc.b $34 ; 4
		dc.b $FB
		dc.b $C9
		dc.b $D8
		dc.b $6C ; l
		dc.b $A3
		dc.b $B8
		dc.b $56 ; V
		dc.b $CA
		dc.b $3A ; :
		dc.b $7E ; ~
		dc.b $D4
		dc.b  $A
		dc.b $F5
		dc.b $7E ; ~
		dc.b $8F
		dc.b $52 ; R
		dc.b $B3
		dc.b $9B
		dc.b $9B
		dc.b $9B
		dc.b $9A
		dc.b $7D ; }
		dc.b $69 ; i
		dc.b $B9
		dc.b $DC
		dc.b   1
		dc.b   2
		dc.b $FD
		dc.b $DB
		dc.b $D5
		dc.b $FB
		dc.b $92
		dc.b $8E
		dc.b $BB
		dc.b $D5
		dc.b $C9
		dc.b $BB
		dc.b $D5
		dc.b $CA
		dc.b $26 ; &
		dc.b $E9
		dc.b $B8
		dc.b $49 ; I
		dc.b $35 ; 5
		dc.b  $D
		dc.b $54 ; T
		dc.b $70 ; p
		dc.b $A0
		dc.b $DC
		dc.b $FA
		dc.b   2
		dc.b $D4
		dc.b $43 ; C
		dc.b $F9
		dc.b $17
		dc.b $7A ; z
		dc.b $DD
		dc.b $A9
		dc.b $93
		dc.b $9D
		dc.b $C0
		dc.b $B5
		dc.b $36 ; 6
		dc.b $A2
		dc.b $14
		dc.b $67 ; g
		dc.b $6E ; n
		dc.b $90
		dc.b $D4
		dc.b $CE
		dc.b $14
		dc.b $B2
		dc.b $EF
		dc.b $D5
		dc.b $D0
		dc.b $6A ; j
		dc.b $4E ; N
		dc.b $7F ; 
		dc.b $D5
		dc.b $B2
		dc.b $55 ; U
		dc.b $DB
		dc.b $85
		dc.b   1
		dc.b $3C ; <
		dc.b $81
		dc.b  $F
		dc.b $E4
		dc.b $6B ; k
		dc.b $A5
		dc.b $9A
		dc.b $58 ; X
		dc.b $43 ; C
		dc.b $F6
		dc.b $A4
		dc.b   9
		dc.b $FD
		dc.b $CE
		dc.b $20
		dc.b $56 ; V
		dc.b $14
		dc.b $DB
		dc.b $55 ; U
		dc.b $3A ; :
		dc.b $16
		dc.b $C7
		dc.b $92
		dc.b $55 ; U
		dc.b $31 ; 1
		dc.b $A7
		dc.b   8
		dc.b $54 ; T
		dc.b $14
		dc.b  $F
		dc.b $F7
		dc.b  $F
		dc.b $27 ; '
		dc.b $DE
		dc.b $2F ; /
		dc.b $D1
		dc.b $F4
		dc.b   5
		dc.b $61 ; a
		dc.b  $B
		dc.b $EC
		dc.b $57 ; W
		dc.b $DF
		dc.b $66 ; f
		dc.b $C8
		dc.b $DB
		dc.b $AB
		dc.b $AF
		dc.b $89
		dc.b $F3
		dc.b $6F ; o
		dc.b $4C ; L
		dc.b $53 ; S
		dc.b $7C ; |
		dc.b $EA
		dc.b $85
		dc.b $BE
		dc.b $75 ; u
		dc.b $73 ; s
		dc.b $6F ; o
		dc.b $9B
		dc.b $DC
		dc.b $DB
		dc.b $13
		dc.b $8B
		dc.b $46 ; F
		dc.b  $C
		dc.b $95
		dc.b $B9
		dc.b $D1
		dc.b $39 ; 9
		dc.b $EF
		dc.b $8B
		dc.b $A1
		dc.b $CD
		dc.b $C9
		dc.b $3A ; :
		dc.b $E7
		dc.b $BD
		dc.b $3F ; ?
		dc.b $DF
		dc.b $87
		dc.b $FB
		dc.b $E7
		dc.b $8C
		dc.b $EA
		dc.b $9B
		dc.b $3F ; ?
		dc.b $DD
		dc.b $5E ; ^
		dc.b $15
		dc.b $64 ; d
		dc.b $82
		dc.b $32 ; 2
		dc.b $55 ; U
		dc.b $31 ; 1
		dc.b $48 ; H
		dc.b $34 ; 4
		dc.b $F7
		dc.b $E1
		dc.b $CD
		dc.b $DE
		dc.b $98
		dc.b $A7
		dc.b $FB
		dc.b $CE
		dc.b $2D ; -
		dc.b $C3
		dc.b $14
		dc.b $AD
		dc.b $D3
		dc.b $DE
		dc.b $8D
		dc.b $C3
		dc.b $14
		dc.b $69 ; i
		dc.b $B4
		dc.b $EA
		dc.b $8D
		dc.b $3B ; ;
		dc.b $B8
		dc.b $32 ; 2
		dc.b $3A ; :
		dc.b $2C ; ,
		dc.b $95
		dc.b $4E ; N
		dc.b $77 ; w
		dc.b $45 ; E
		dc.b $86
		dc.b $9D
		dc.b $B2
		dc.b $C9
		dc.b $8E
		dc.b $FD
		dc.b $36 ; 6
		dc.b $CB
		dc.b $17
		dc.b $2E ; .
		dc.b $4B ; K
		dc.b $28 ; (
		dc.b $25 ; %
		dc.b $50 ; P
		dc.b $68 ; h
		dc.b $21 ; !
		dc.b $84
		dc.b $25 ; %
		dc.b $DD
		dc.b $8A
		dc.b $40 ; @
		dc.b $28 ; (
		dc.b $54 ; T
		dc.b $AC
		dc.b $CF
		dc.b $40 ; @
		dc.b $98
		dc.b $A4
		dc.b $35 ; 5
		dc.b $B5
		dc.b $7D ; }
		dc.b $5B ; [
		dc.b $FD
		dc.b $D5
		dc.b $9D
		dc.b $C8
		dc.b $71 ; q
		dc.b $E1
		dc.b $CF
		dc.b  $F
		dc.b $5F ; _
		dc.b $DE
		dc.b $FF
		dc.b $B8
		dc.b $BF
		dc.b $DC
		dc.b $58 ; X
		dc.b $73 ; s
		dc.b $92
		dc.b $31 ; 1
		dc.b $6A ; j
		dc.b $E4
		dc.b $1A
		dc.b $16
		dc.b $C2
		dc.b $81
		dc.b $89
		dc.b $D0
		dc.b $27 ; '
		dc.b $93
		dc.b $99
		dc.b $D0
		dc.b $A3
		dc.b $E6
		dc.b $DF
		dc.b $C8
		dc.b $C2
		dc.b $A9
		dc.b $13
		dc.b $28 ; (
		dc.b $45 ; E
		dc.b $31 ; 1
		dc.b $C0
		dc.b $E0
		dc.b $51 ; Q
		dc.b $DC
		dc.b  $B
		dc.b $A2
		dc.b $F4
		dc.b $5D ; ]
		dc.b $6A ; j
		dc.b $FD
		dc.b $C9
		dc.b $FE
		dc.b $78 ; x
		dc.b $7F ; 
		dc.b $DE
		dc.b $96
		dc.b $1B
		dc.b $C9
		dc.b $E7
		dc.b $40 ; @
		dc.b $60 ; `
		dc.b $FD
		dc.b $4E ; N
		dc.b $CF
		dc.b $DC
		dc.b   2
		dc.b $8A
		dc.b $45 ; E
		dc.b $22 ; "
		dc.b $91
		dc.b $48 ; H
		dc.b $FF
		dc.b $7B ; {
		dc.b $8F
		dc.b  $A
		dc.b $A1
		dc.b $43 ; C
		dc.b $D6
		dc.b $A0
		dc.b $BF
		dc.b $59 ; Y
		dc.b $85
		dc.b $A1
		dc.b $23 ; #
		dc.b $86
		dc.b $B2
		dc.b $87
		dc.b $15
		dc.b $7A ; z
		dc.b $BE
		dc.b $F0
		dc.b $85
		dc.b $D2
		dc.b $F8
		dc.b $A4
		dc.b $4A ; J
		dc.b $C3
		dc.b $48 ; H
		dc.b $A7
		dc.b $12
		dc.b $51 ; Q
		dc.b $54 ; T
		dc.b $AC
		dc.b $E2
		dc.b $85
		dc.b $54 ; T
		dc.b $C5
		dc.b $31 ; 1
		dc.b $FF
		dc.b $F2
		dc.b $46 ; F
		dc.b $71 ; q
		dc.b $E1
		dc.b $FB
		dc.b $96
		dc.b $4B ; K
		dc.b $AD
		dc.b   5
		dc.b   9
		dc.b $C0
		dc.b $5A ; Z
		dc.b $F6
		dc.b $83
		dc.b $18
		dc.b $F4
		dc.b   5
		dc.b   2
		dc.b $37 ; 7
		dc.b $DE
		dc.b $60 ; `
		dc.b $FF
		dc.b $D8
		dc.b $EF
		dc.b $5F ; _
		dc.b $D6
		dc.b $4F ; O
		dc.b $F5
		dc.b $84
		dc.b $E2
		dc.b $C1
		dc.b $A1
		dc.b $16
		dc.b $28 ; (
		dc.b $37 ; 7
		dc.b $26 ; &
		dc.b $8D
		dc.b $D6
		dc.b $D2
		dc.b $30 ; 0
		dc.b $75 ; u
		dc.b $D0
		dc.b $DD
		dc.b   6
		dc.b $80
		dc.b $20
		dc.b $40 ; @
		dc.b $A0
		dc.b $E2
		dc.b $D7
		dc.b $43 ; C
		dc.b $E2
		dc.b $5D ; ]
		dc.b $3D ; =
		dc.b   1
		dc.b $D8
		dc.b $8D
		dc.b $FD
		dc.b $E8
		dc.b $73 ; s
		dc.b $F0
		dc.b $E5
		dc.b $1E
		dc.b $4D ; M
		dc.b   4
		dc.b $63 ; c
		dc.b $E4
		dc.b $50 ; P
		dc.b $74 ; t
		dc.b $37 ; 7
		dc.b $5A ; Z
		dc.b $47 ; G
		dc.b  $A
		dc.b $1D
		dc.b  $C
		dc.b $A0
		dc.b $43 ; C
		dc.b $F9
		dc.b   6
		dc.b $13
		dc.b $62 ; b
		dc.b $18
		dc.b $D8
		dc.b $8C
		dc.b $36 ; 6
		dc.b $D5
		dc.b $2B ; +
		dc.b $36 ; 6
		dc.b $2C ; ,
		dc.b $AE
		dc.b $4A ; J
		dc.b $CC
		dc.b $A4
		dc.b $D0
		dc.b $46 ; F
		dc.b $46 ; F
		dc.b $21 ; !
		dc.b $FA
		dc.b $AF
		dc.b $DE
		dc.b $DA
		dc.b $DA
		dc.b $91
		dc.b $91
		dc.b $8E
		dc.b $11
		dc.b $6E ; n
		dc.b $10
		dc.b $B6
		dc.b  $E
		dc.b $83
		dc.b $43 ; C
		dc.b $6E ; n
		dc.b $7F ; 
		dc.b   9
		dc.b $75 ; u
		dc.b   2
		dc.b $CA
		dc.b $5B ; [
		dc.b $6F ; o
		dc.b $17
		dc.b $65 ; e
		dc.b $2C ; ,
		dc.b $94
		dc.b $9A
		dc.b  $C
		dc.b $BB
		dc.b $41 ; A
		dc.b $C2
		dc.b $28 ; (
		dc.b $6F ; o
		dc.b $26 ; &
		dc.b $38 ; 8
		dc.b $1B
		dc.b  $A
		dc.b $45 ; E
		dc.b $A0
		dc.b $E6
		dc.b $79 ; y
		dc.b $F2
		dc.b $32 ; 2
		dc.b $50 ; P
		dc.b $E3
		dc.b $81
		dc.b $85
		dc.b $D5
		dc.b   6
		dc.b $B6
		dc.b   2
		dc.b $E4
		dc.b $6C ; l
		dc.b $1A
		dc.b $6C ; l
		dc.b $8C
		dc.b $8D
		dc.b $CA
		dc.b $6C ; l
		dc.b $90
		dc.b $71 ; q
		dc.b $DD
		dc.b $C9
		dc.b $DC
		dc.b $8B
		dc.b $F5
		dc.b $45 ; E
		dc.b   2
		dc.b   5
		dc.b   3
		dc.b $A0
		dc.b $32 ; 2
		dc.b $EE
		dc.b $1F
		dc.b $B8
		dc.b $31 ; 1
		dc.b $43 ; C
		dc.b $27 ; '
		dc.b $AB
		dc.b $41 ; A
		dc.b $88
		dc.b $C2
		dc.b $CA
		dc.b $8F
		dc.b $5C ; \
		dc.b $F9
		dc.b $59 ; Y
		dc.b $A7
		dc.b $6B ; k
		dc.b $E5
		dc.b $E0
		dc.b $16
		dc.b $5D ; ]
		dc.b $B9
		dc.b $F4
		dc.b $FE
		dc.b $99
		dc.b $65 ; e
		dc.b $DD
		dc.b $2D ; -
		dc.b $B2
		dc.b $CA
		dc.b $5D ; ]
		dc.b $52 ; R
		dc.b $EA
		dc.b $96
		dc.b $D9
		dc.b $76 ; v
		dc.b $CB
		dc.b $B5
		dc.b $7C ; |
		dc.b $54 ; T
		dc.b $F2
		dc.b $96
		dc.b $D5
		dc.b $1A
		dc.b $B3
		dc.b $E4
		dc.b $2E ; .
		dc.b $81
		dc.b $4B ; K
		dc.b $20
		dc.b $E3
		dc.b $89
		dc.b  $E
		dc.b $D1
		dc.b $40 ; @
		dc.b $52 ; R
		dc.b $C9
		dc.b $4E ; N
		dc.b $86
		dc.b $36 ; 6
		dc.b $82
		dc.b $30 ; 0
		dc.b $43 ; C
		dc.b $4D ; M
		dc.b $6A ; j
		dc.b $1D
		dc.b $E9
		dc.b $AE
		dc.b  $E
		dc.b $BB
		dc.b $51 ; Q
		dc.b   3
		dc.b $FD
		dc.b $54 ; T
		dc.b $60 ; `
		dc.b $F3
		dc.b $B0
		dc.b $8D
		dc.b $FF
		dc.b $E3
		dc.b $1F
		dc.b $D3
		dc.b  $B
		dc.b $FE
		dc.b $31 ; 1
		dc.b $FB
		dc.b $35 ; 5
		dc.b $FF
		dc.b $9A
		dc.b $FF
		dc.b $CE
		dc.b $4B ; K
		dc.b $FD
		dc.b $35 ; 5
		dc.b $92
		dc.b $FF
		dc.b  $D
		dc.b $41 ; A
		dc.b $D8
		dc.b $6F ; o
		dc.b $30 ; 0
		dc.b $72 ; r
		dc.b $BC
		dc.b $5E ; ^
		dc.b $77 ; w
		dc.b $AF
		dc.b $4B ; K
		dc.b $73 ; s
		dc.b $89
		dc.b $28 ; (
		dc.b $BC
		dc.b $4B ; K
		dc.b $F6
		dc.b $A2
		dc.b $F1
		dc.b $FB
		dc.b $35 ; 5
		dc.b $12
		dc.b $12
		dc.b $5C ; \
		dc.b $EB
		dc.b $9C
		dc.b $69 ; i
		dc.b $FD
		dc.b $37 ; 7
		dc.b $1D
		dc.b $E6
		dc.b $AF
		dc.b $71 ; q
		dc.b $BA
		dc.b $DB
		dc.b $CE
		dc.b $C7
		dc.b $1D
		dc.b $86
		dc.b $2F ; /
		dc.b $FD
		dc.b $CF
		dc.b $E5
		dc.b $94
		dc.b $18
		dc.b $B6
		dc.b $C3
		dc.b $97
		dc.b $49 ; I
		dc.b $3D ; =
		dc.b $64 ; d
		dc.b $F5
		dc.b $CE
		dc.b $24 ; $
		dc.b $24 ; $
		dc.b $A1
		dc.b $4E ; N
		dc.b $E0
		dc.b $BD
		dc.b $A6
		dc.b $E3
		dc.b $6D ; m
		dc.b $25 ; %
		dc.b $91
		dc.b $EA
		dc.b $B8
		dc.b $2C ; ,
		dc.b $9C
		dc.b $2E ; .
		dc.b $B5
		dc.b $72 ; r
		dc.b  $E
		dc.b $B6
		dc.b $E1
		dc.b $92
		dc.b $BE
		dc.b $D0
		dc.b $72 ; r
		dc.b  $A
		dc.b $F3
		dc.b $7A ; z
		dc.b $85
		dc.b $7A ; z
		dc.b $8D
		dc.b $3C ; <
		dc.b $25 ; %
		dc.b $9B
		dc.b $6C ; l
		dc.b $BF
		dc.b $C9
		dc.b $2C ; ,
		dc.b $D2
		dc.b $ED
		dc.b $CF
		dc.b $B7
		dc.b $3E ; >
		dc.b $DF
		dc.b $2D ; -
		dc.b $B9
		dc.b $F6
		dc.b $E7
		dc.b $DA
		dc.b $25 ; %
		dc.b $D5
		dc.b $2E ; .
		dc.b $DC
		dc.b $E0
		dc.b $F2
		dc.b $97
		dc.b $6C ; l
		dc.b $96
		dc.b $1D
		dc.b $52 ; R
		dc.b $5A ; Z
		dc.b $75 ; u
		dc.b $3E ; >
		dc.b $9B
		dc.b $73 ; s
		dc.b $D8
		dc.b $52 ; R
		dc.b $C9
		dc.b $EB
		dc.b $66 ; f
		dc.b $71 ; q
		dc.b $A5
		dc.b $99
		dc.b  $D
		dc.b $2F ; /
		dc.b $79 ; y
		dc.b $42 ; B
		dc.b $D6
		dc.b $C1
		dc.b $8C
		dc.b $AE
		dc.b $E0
		dc.b $E8
		dc.b $37 ; 7
		dc.b $A9
		dc.b $5D ; ]
		dc.b $36 ; 6
		dc.b $46 ; F
		dc.b $23 ; #
		dc.b $67 ; g
		dc.b $5D ; ]
		dc.b   6
		dc.b $3E ; >
		dc.b $4E ; N
		dc.b $E4
		dc.b $7C ; |
		dc.b $8C
		dc.b $A0
		dc.b $4C ; L
		dc.b $50 ; P
		dc.b   7
		dc.b $43 ; C
		dc.b $A3
		dc.b $99
		dc.b $D6
		dc.b $4B ; K
		dc.b $44 ; D
		dc.b $BA
		dc.b $9A
		dc.b  $C
		dc.b $1C
		dc.b $F5
		dc.b $18
		dc.b $1B
		dc.b $F4
		dc.b $82
		dc.b $44 ; D
		dc.b $C8
		dc.b $28 ; (
		dc.b $71 ; q
		dc.b $41 ; A
		dc.b $8E
		dc.b $C3
		dc.b $68 ; h
		dc.b $71 ; q
		dc.b $27 ; '
		dc.b $94
		dc.b $2D ; -
		dc.b $81
		dc.b $18
		dc.b $90
		dc.b $FD
		dc.b $AB
		dc.b $E4
		dc.b $A2
		dc.b $41 ; A
		dc.b $5E ; ^
		dc.b $AF
		dc.b $51 ; Q
		dc.b $A0
		dc.b $FD
		dc.b $A8
		dc.b $5B ; [
		dc.b $16
		dc.b $C5
		dc.b $BD
		dc.b $EA
		dc.b $FF
		dc.b $DA
		dc.b $BD
		dc.b $45 ; E
		dc.b $F6
		dc.b $2D ; -
		dc.b $9A
		dc.b   5
		dc.b $21 ; !
		dc.b $47 ; G
		dc.b $52 ; R
		dc.b $C2
		dc.b   5
		dc.b $D0
		dc.b $81
		dc.b $3C ; <
		dc.b $97
		dc.b $FC
		dc.b $EA
		dc.b $34 ; 4
		dc.b  $A
		dc.b $FD
		dc.b   7
		dc.b $77 ; w
		dc.b $4D ; M
		dc.b   7
		dc.b $F9
		dc.b $42 ; B
		dc.b $82
		dc.b $B3
		dc.b $F6
		dc.b $BB
		dc.b $BF
		dc.b $8A
		dc.b $53 ; S
		dc.b $2F ; /
		dc.b $DA
		dc.b $92
		dc.b $55 ; U
		dc.b   7
		dc.b $75 ; u
		dc.b $36 ; 6
		dc.b $3D ; =
		dc.b $5E ; ^
		dc.b $49 ; I
		dc.b $52 ; R
		dc.b $42 ; B
		dc.b $57 ; W
		dc.b $94
		dc.b $E9
		dc.b $A3
		dc.b $F7
		dc.b  $F
		dc.b $DA
		dc.b $85
		dc.b $7E ; ~
		dc.b $85
		dc.b $30 ; 0
		dc.b $A4
		dc.b $A4
		dc.b $98
		dc.b $84
		dc.b $A9
		dc.b $24 ; $
		dc.b  $A
		dc.b $78 ; x
		dc.b $C2
		dc.b $82
		dc.b $93
		dc.b $21 ; !
		dc.b $B8
		dc.b $13
		dc.b $DC
		dc.b $4D ; M
		dc.b $C1
		dc.b $9D
		dc.b $3C ; <
		dc.b $66 ; f
		dc.b  $A
		dc.b $64 ; d
		dc.b $8A
		dc.b $30 ; 0
		dc.b $D9
		dc.b   5
		dc.b $EF
		dc.b $82
		dc.b $E2
		dc.b $9B
		dc.b $20
		dc.b $B8
		dc.b $16
		dc.b $30 ; 0
		dc.b $5A ; Z
		dc.b   2
		dc.b $C1
		dc.b $F4
		dc.b $1B
		dc.b $82
		dc.b $38 ; 8
		dc.b $16
		dc.b $B5
		dc.b $7A ; z
		dc.b $82
		dc.b   5
		dc.b $ED
		dc.b $20
		dc.b $A0
		dc.b $AC
		dc.b $BC
		dc.b $2B ; +
		dc.b $CB
		dc.b $FE
		dc.b $EF
		dc.b $9F
		dc.b $44 ; D
		dc.b $AA
		dc.b $2D ; -
		dc.b $8A
		dc.b $D8
		dc.b $E8
		dc.b $34 ; 4
		dc.b $34 ; 4
		dc.b $AF
		dc.b $FA
		dc.b $1C
		dc.b $3F ; ?
		dc.b $B0
		dc.b $E1
		dc.b $FB
		dc.b $8B
		dc.b $2F ; /
		dc.b $14
		dc.b $BD
		dc.b $AF
		dc.b $6B ; k
		dc.b $E4
		dc.b $42 ; B
		dc.b $F6
		dc.b $C2
		dc.b $F1
		dc.b $7E ; ~
		dc.b $15
		dc.b $C2
		dc.b $F9
		dc.b $EF
		dc.b $C3
		dc.b $63 ; c
		dc.b $9B
		dc.b  $D
		dc.b $84
		dc.b $EE
		dc.b $7C ; |
		dc.b $35 ; 5
		dc.b $36 ; 6
		dc.b $A6
		dc.b $E2
		dc.b $3F ; ?
		dc.b $77 ; w
		dc.b $CE
		dc.b $9F
		dc.b $CB
		dc.b $E5
		dc.b $31 ; 1
		dc.b $B8
		dc.b $16
		dc.b $28 ; (
		dc.b $F2
		dc.b   9
		dc.b $8F
		dc.b $F7
		dc.b $B6
		dc.b $4D ; M
		dc.b $9D
		dc.b  $E
		dc.b $77 ; w
		dc.b $43 ; C
		dc.b $74 ; t
		dc.b $5A ; Z
		dc.b $1F
		dc.b $C8
		dc.b $E3
		dc.b $74 ; t
		dc.b $2E ; .
		dc.b $75 ; u
		dc.b $DF
		dc.b $BC
		dc.b $4A ; J
		dc.b $94
		dc.b $19
		dc.b $37 ; 7
		dc.b $E1
		dc.b $BE
		dc.b $77 ; w
		dc.b $7A ; z
		dc.b $C0
		dc.b $9F
		dc.b $7A ; z
		dc.b $85
		dc.b $D6
		dc.b $BF
		dc.b $A6
		dc.b $25 ; %
		dc.b $BD
		dc.b $45 ; E
		dc.b $FA
		dc.b $71 ; q
		dc.b $75 ; u
		dc.b $E4
		dc.b $34 ; 4
		dc.b $DE
		dc.b $91
		dc.b $25 ; %
		dc.b $EF
		dc.b $48 ; H
		dc.b $E2
		dc.b $98
		dc.b $CE
		dc.b $33 ; 3
		dc.b $FD
		dc.b $ED
		dc.b $1E
		dc.b $5A ; Z
		dc.b $9B
		dc.b $15
		dc.b $BD
		dc.b $F4
		dc.b $73 ; s
		dc.b $5E ; ^
		dc.b $B7
		dc.b $BF
		dc.b $70 ; p
		dc.b $5F ; _
		dc.b $F3
		dc.b $2D ; -
		dc.b $EB
		dc.b $FA
		dc.b $60 ; `
		dc.b $B7
		dc.b $AD
		dc.b $E2
		dc.b $87
		dc.b $7A ; z
		dc.b $91
		dc.b $F1
		dc.b $9D
		dc.b $EB
		dc.b $7D ; }
		dc.b $3D ; =
		dc.b $3F ; ?
		dc.b $DE
		dc.b $98
		dc.b $CF
		dc.b $79 ; y
		dc.b $5B ; [
		dc.b   8
		dc.b $DC
		dc.b $83
		dc.b $71 ; q
		dc.b $F1
		dc.b $6A ; j
		dc.b $1B
		dc.b $BF
		dc.b $78 ; x
		dc.b $69 ; i
		dc.b $8F
		dc.b  $E
		dc.b $BC
		dc.b $22 ; "
		dc.b $98
		dc.b $A6
		dc.b $FF
		dc.b $F7
		dc.b $56 ; V
		dc.b $E8
		dc.b $9F
		dc.b $3A ; :
		dc.b $34 ; 4
		dc.b $48 ; H
		dc.b $E1
		dc.b $17
		dc.b $34 ; 4
		dc.b $4C ; L
		dc.b $11
		dc.b $A5
		dc.b $62 ; b
		dc.b $77 ; w
		dc.b $1A
		dc.b $63 ; c
		dc.b $85
		dc.b $CE
		dc.b $E4
		dc.b $98
		dc.b $FA
		dc.b $E3
		dc.b $86
		dc.b $C4
		dc.b $AE
		dc.b $1C
		dc.b $51 ; Q
		dc.b $91
		dc.b $B8
		dc.b $34 ; 4
		dc.b $7F ; 
		dc.b $7B ; {
		dc.b $36 ; 6
		dc.b $AC
		dc.b $F1
		dc.b $9E
		dc.b $C9
		dc.b $EF
		dc.b $C3
		dc.b $AD
		dc.b $39 ; 9
		dc.b $BB
		dc.b $F0
		dc.b $C6
		dc.b   6
		dc.b $FC
		dc.b $2A ; *
		dc.b $90
		dc.b $7D ; }
		dc.b $D8
		dc.b $3A ; :
		dc.b $95
		dc.b $B9
		dc.b $19
		dc.b $CC
		dc.b $98
		dc.b $DD
		dc.b $A8
		dc.b $1E
		dc.b $CB
		dc.b $9C
		dc.b $CE
		dc.b $AC
		dc.b $EB
		dc.b $FB
		dc.b $DF
		dc.b $56 ; V
		dc.b $C4
		dc.b $99
		dc.b $39 ; 9
		dc.b $DD
		dc.b $72 ; r
		dc.b $41 ; A
		dc.b $A1
		dc.b $74 ; t
		dc.b $DA
		dc.b $30 ; 0
		dc.b $63 ; c
		dc.b $46 ; F
		dc.b $47 ; G
		dc.b $40 ; @
		dc.b $8F
		dc.b $94
		dc.b $53 ; S
		dc.b $93
		dc.b $A8
		dc.b $65 ; e
		dc.b   6
		dc.b $74 ; t
		dc.b  $F
		dc.b $73 ; s
		dc.b $45 ; E
		dc.b $89
		dc.b $9C
		dc.b $4E ; N
		dc.b $68 ; h
		dc.b $5D ; ]
		dc.b  $B
		dc.b $B5
		dc.b $42 ; B
		dc.b $8F
		dc.b $53 ; S
		dc.b $76 ; v
		dc.b $E7
		dc.b $CC
		dc.b $F7
		dc.b $6B ; k
		dc.b $A1
		dc.b $D0
		dc.b $6E ; n
		dc.b $14
		dc.b $D6
		dc.b $46 ; F
		dc.b $47 ; G
		dc.b $47 ; G
		dc.b $DA
		dc.b $EA
		dc.b $18
		dc.b $26 ; &
		dc.b $75 ; u
		dc.b   6
		dc.b $EF
		dc.b $5D ; ]
		dc.b $8E
		dc.b $B5
		dc.b  $D
		dc.b $D3
		dc.b $2F ; /
		dc.b $6B ; k
		dc.b $D5
		dc.b $EB
		dc.b $D0
		dc.b $95
		dc.b $EB
		dc.b $D0
		dc.b $9E
		dc.b $56 ; V
		dc.b $10
		dc.b $30 ; 0
		dc.b $40 ; @
		dc.b $E8
		dc.b $28 ; (
		dc.b $F4
		dc.b $20
		dc.b $6F ; o
		dc.b $51 ; Q
		dc.b $54 ; T
		dc.b $2E ; .
		dc.b $85
		dc.b $71 ; q
		dc.b  $B
		dc.b $6C ; l
		dc.b $26 ; &
		dc.b $E8
		dc.b $A3
		dc.b $77 ; w
		dc.b $B5
		dc.b $FA
		dc.b $C8
		dc.b $10
		dc.b $5F ; _
		dc.b $65 ; e
		dc.b $B5
		dc.b $F0
		dc.b $FD
		dc.b $E2
		dc.b $47 ; G
		dc.b $A1
		dc.b $8B
		dc.b $7F ; 
		dc.b $EE
		dc.b $15
		dc.b $EA
		dc.b $F3
		dc.b $FF
		dc.b $BF
		dc.b $FD
		dc.b $FA
		dc.b $2D ; -
		dc.b $9A
		dc.b $3D ; =
		dc.b $41 ; A
		dc.b $7E ; ~
		dc.b $E5
		dc.b $C6
		dc.b $DF
		dc.b $C9
		dc.b $75 ; u
		dc.b $DE
		dc.b $83
		dc.b $F7
		dc.b $20
		dc.b $81
		dc.b $1C
		dc.b $19
		dc.b $1E
		dc.b $6D ; m
		dc.b $C0
		dc.b $E1
		dc.b $16
		dc.b $E0
		dc.b $F3
		dc.b $84
		dc.b $5A ; Z
		dc.b $6B ; k
		dc.b $FE
		dc.b $77 ; w
		dc.b $7F ; 
		dc.b $24 ; $
		dc.b $1D
		dc.b $CE
		dc.b $B6
		dc.b $C3
		dc.b $77 ; w
		dc.b $F6
		dc.b $38 ; 8
		dc.b $57 ; W
		dc.b $FD
		dc.b $D5
		dc.b $C2
		dc.b $A9
		dc.b $54 ; T
		dc.b $DE
		dc.b $DF
		dc.b $EE
		dc.b $FD
		dc.b $CE
		dc.b $A6
		dc.b $47 ; G
		dc.b $98
		dc.b $4C ; L
		dc.b $4A ; J
		dc.b $C2
		dc.b  $D
		dc.b $3E ; >
		dc.b $84
		dc.b $78 ; x
		dc.b $10
		dc.b $20
		dc.b $5E ; ^
		dc.b $AF
		dc.b $23 ; #
		dc.b $AE
		dc.b   4
		dc.b $F2
		dc.b $4D ; M
		dc.b $88
		dc.b $40 ; @
		dc.b $A7
		dc.b $8C
		dc.b $C8
		dc.b $15
		dc.b $A4
		dc.b $EE
		dc.b $4C ; L
		dc.b $64 ; d
		dc.b $74 ; t
		dc.b $32 ; 2
		dc.b $4A ; J
		dc.b $D2
		dc.b   5
		dc.b $C8
		dc.b $92
		dc.b $A8
		dc.b $D0
		dc.b $28 ; (
		dc.b $19
		dc.b $27 ; '
		dc.b $5B ; [
		dc.b   2
		dc.b $34 ; 4
		dc.b $DE
		dc.b $F2
		dc.b   9
		dc.b $54 ; T
		dc.b $60 ; `
		dc.b $50 ; P
		dc.b $28 ; (
		dc.b $1F
		dc.b $24 ; $
		dc.b $67 ; g
		dc.b $19
		dc.b  $A
		dc.b $60 ; `
		dc.b $D1
		dc.b $A4
		dc.b $23 ; #
		dc.b   4
		dc.b $6E ; n
		dc.b $4F ; O
		dc.b $83
		dc.b $1C
		dc.b $1D
		dc.b $41 ; A
		dc.b $6B ; k
		dc.b $41 ; A
		dc.b $A0
		dc.b $42 ; B
		dc.b $BA
		dc.b $A3
		dc.b $4D ; M
		dc.b $21 ; !
		dc.b $12
		dc.b $80
		dc.b $EE
		dc.b $DC
		dc.b $3F ; ?
		dc.b $6B ; k
		dc.b $B8
		dc.b $E8
		dc.b $62 ; b
		dc.b $87
		dc.b $B8
		dc.b $7F ; 
		dc.b $61 ; a
		dc.b $CD
		dc.b   1
		dc.b $48 ; H
		dc.b $34 ; 4
		dc.b $6E ; n
		dc.b   4
		dc.b $65 ; e
		dc.b   6
		dc.b $32 ; 2
		dc.b $7C ; |
		dc.b $37 ; 7
		dc.b   2
		dc.b $50 ; P
		dc.b $41 ; A
		dc.b $42 ; B
		dc.b $85
		dc.b  $B
		dc.b $2F ; /
		dc.b $DA
		dc.b $90
		dc.b $5C ; \
		dc.b $BC
		dc.b $B2
		dc.b $7A ; z
		dc.b $E4
		dc.b $B9
		dc.b $67 ; g
		dc.b $37 ; 7
		dc.b $AF
		dc.b $6D ; m
		dc.b   6
		dc.b $9B
		dc.b $4D ; M
		dc.b $DA
		dc.b $E4
		dc.b $1D
		dc.b   7
		dc.b $C9
		dc.b $43 ; C
		dc.b $45 ; E
		dc.b $FA
		dc.b $5B ; [
		dc.b $70 ; p
		dc.b $D0
		dc.b $EE
		dc.b $81
		dc.b  $C
		dc.b $94
		dc.b $A2
		dc.b   9
		dc.b $EB
		dc.b $69 ; i
		dc.b $58 ; X
		dc.b $57 ; W
		dc.b $46 ; F
		dc.b $86
		dc.b $F2
		dc.b $68 ; h
		dc.b $38 ; 8
		dc.b $13
		dc.b $E9
		dc.b $D0
		dc.b $BF
		dc.b $EF
		dc.b $AD
		dc.b $42 ; B
		dc.b $C9
		dc.b $42 ; B
		dc.b $8D
		dc.b   4
		dc.b $88
		dc.b $F7
		dc.b $3D ; =
		dc.b $41 ; A
		dc.b   2
		dc.b $32 ; 2
		dc.b $F6
		dc.b $27 ; '
		dc.b $90
		dc.b $EE
		dc.b $F6
		dc.b $CE
		dc.b $B2
		dc.b $50 ; P
		dc.b $BF
		dc.b $C3
		dc.b $59 ; Y
		dc.b  $D
		dc.b $3F ; ?
		dc.b $A6
		dc.b $B9
		dc.b $D7
		dc.b $F6
		dc.b $6B ; k
		dc.b $2D ; -
		dc.b $33 ; 3
		dc.b $AE
		dc.b $75 ; u
		dc.b $7A ; z
		dc.b $FF
		dc.b  $D
		dc.b $65 ; e
		dc.b $A0
		dc.b $FE
		dc.b $18
		dc.b $50 ; P
		dc.b $BF
		dc.b $D3
		dc.b $EE
		dc.b $FF
		dc.b $1A
		dc.b $FF
		dc.b $4D ; M
		dc.b $65 ; e
		dc.b $A4
		dc.b $97
		dc.b $3B ; ;
		dc.b $E4
		dc.b $BF
		dc.b $B3
		dc.b $1D
		dc.b $DF
		dc.b $B3
		dc.b $D1
		dc.b $FA
		dc.b $67 ; g
		dc.b $D7
		dc.b $7A ; z
		dc.b $E7
		dc.b $B0
		dc.b $AC
		dc.b $BD
		dc.b $6C ; l
		dc.b $32 ; 2
		dc.b $7A ; z
		dc.b $D8
		dc.b $5A ; Z
		dc.b $8E
		dc.b $57 ; W
		dc.b $AF
		dc.b $4F ; O
		dc.b $D9
		dc.b $BD
		dc.b $46 ; F
		dc.b $7D ; }
		dc.b $24 ; $
		dc.b $24 ; $
		dc.b $24 ; $
		dc.b $B2
		dc.b $EE
		dc.b $90
		dc.b $CE
		dc.b $FB
		dc.b $FF
		dc.b $6B ; k
		dc.b $FB
		dc.b $3B ; ;
		dc.b $C4
		dc.b $AC
		dc.b $90
		dc.b $90
		dc.b $BC
		dc.b $1B
		dc.b $D4
		dc.b $49 ; I
		dc.b $F6
		dc.b $BF
		dc.b $3B ; ;
		dc.b $D6
		dc.b $D7
		dc.b $AD
		dc.b $E1
		dc.b $64 ; d
		dc.b  $C
		dc.b $28 ; (
		dc.b $50 ; P
		dc.b $B9
		dc.b $C2
		dc.b $94
		dc.b $82
		dc.b $FE
		dc.b $5A ; Z
		dc.b $4A ; J
		dc.b $5A ; Z
		dc.b $3D ; =
		dc.b $6F ; o
		dc.b $93
		dc.b $EF
		dc.b $5F ; _
		dc.b $D9
		dc.b $A8
		dc.b $51 ; Q
		dc.b $A6
		dc.b $75 ; u
		dc.b $FD
		dc.b $98
		dc.b $5C ; \
		dc.b $EB
		dc.b $79 ; y
		dc.b  $E
		dc.b $AB
		dc.b $CD
		dc.b $8A
		dc.b $5D ; ]
		dc.b $A7
		dc.b $75 ; u
		dc.b   6
		dc.b $D0
		dc.b $57 ; W
		dc.b $1B
		dc.b $8B
		dc.b $3E ; >
		dc.b $AB
		dc.b $A9
		dc.b $25 ; %
		dc.b $90
		dc.b $32 ; 2
		dc.b $71 ; q
		dc.b $E7
		dc.b $59 ; Y
		dc.b $28 ; (
		dc.b $53 ; S
		dc.b $19
		dc.b $D4
		dc.b $2B ; +
		dc.b $CF
		dc.b $3E ; >
		dc.b $52 ; R
		dc.b $CA
		dc.b $59 ; Y
		dc.b $2E ; .
		dc.b $7C ; |
		dc.b $BC
		dc.b $9F
		dc.b $2C ; ,
		dc.b $B3
		dc.b $AC
		dc.b $81
		dc.b $CB
		dc.b $6E ; n
		dc.b $B8
		dc.b $4B ; K
		dc.b $25 ; %
		dc.b $2B ; +
		dc.b $5D ; ]
		dc.b   9
		dc.b $28 ; (
		dc.b $27 ; '
		dc.b $1C
		dc.b $19
		dc.b $64 ; d
		dc.b $F2
		dc.b $81
		dc.b $1F
		dc.b $96
		dc.b $E3
		dc.b $2B ; +
		dc.b $D6
		dc.b $F0
		dc.b $BA
		dc.b $CC
		dc.b $AC
		dc.b $30 ; 0
		dc.b $6E ; n
		dc.b $30 ; 0
		dc.b $4F ; O
		dc.b $36 ; 6
		dc.b $37 ; 7
		dc.b $3C ; <
		dc.b $CA
		dc.b $17
		dc.b $41 ; A
		dc.b $9C
		dc.b $6D ; m
		dc.b $17
		dc.b $73 ; s
		dc.b $A4
		dc.b $66 ; f
		dc.b $D6
		dc.b $C1
		dc.b $D1
		dc.b $4E ; N
		dc.b $2D ; -
		dc.b   8
		dc.b $BA
		dc.b  $E
		dc.b $B6
		dc.b $8F
		dc.b $32 ; 2
		dc.b $81
		dc.b $3E ; >
		dc.b $80
		dc.b $E8
		dc.b $74 ; t
		dc.b $70 ; p
		dc.b $A3
		dc.b $50 ; P
		dc.b $E8
		dc.b $F8
		dc.b $B8
		dc.b $A1
		dc.b $43 ; C
		dc.b   9
		dc.b $13
		dc.b $23 ; #
		dc.b $A0
		dc.b $68 ; h
		dc.b $B3
		dc.b $A0
		dc.b $46 ; F
		dc.b  $D
		dc.b $A0
		dc.b $C4
		dc.b $64 ; d
		dc.b   8
		dc.b $1D
		dc.b  $C
		dc.b $81
		dc.b $82
		dc.b $B4
		dc.b $8D
		dc.b $E4
		dc.b $F3
		dc.b $23 ; #
		dc.b $A0
		dc.b $3A ; :
		dc.b $38 ; 8
		dc.b $9F
		dc.b $40 ; @
		dc.b $50 ; P
		dc.b $B0
		dc.b $8C
		dc.b $13
		dc.b $CA
		dc.b $C2
		dc.b $B0
		dc.b $BA
		dc.b $17
		dc.b $B2
		dc.b $8D
		dc.b $3F ; ?
		dc.b $EF
		dc.b $62 ; b
		dc.b $D8
		dc.b $BD
		dc.b $34 ; 4
		dc.b $FF
		dc.b $B9
		dc.b $93
		dc.b $C9
		dc.b $E6
		dc.b $C6
		dc.b   8
		dc.b $50 ; P
		dc.b $DA
		dc.b $9D
		dc.b $18
		dc.b $2B ; +
		dc.b $F4
		dc.b  $A
		dc.b $15
		dc.b $FD
		dc.b $C3
		dc.b $B8
		dc.b $28 ; (
		dc.b $D1
		dc.b $AC
		dc.b $57 ; W
		dc.b $CA
		dc.b $E3
		dc.b $BB
		dc.b $49 ; I
		dc.b $73 ; s
		dc.b $A3
		dc.b $1B
		dc.b $DB
		dc.b $83
		dc.b $1B
		dc.b $4D ; M
		dc.b $A7
		dc.b $CF
		dc.b $A3
		dc.b $C9
		dc.b $EC
		dc.b $34 ; 4
		dc.b $B1
		dc.b $C9
		dc.b $A0
		dc.b $57 ; W
		dc.b $B5
		dc.b $42 ; B
		dc.b $BF
		dc.b $52 ; R
		dc.b $57 ; W
		dc.b $40 ; @
		dc.b $E4
		dc.b $D8
		dc.b  $D
		dc.b $C9
		dc.b $54 ; T
		dc.b $C4
		dc.b $DB
		dc.b $B1
		dc.b $2A ; *
		dc.b $98
		dc.b $B7
		dc.b $E4
		dc.b $B0
		dc.b $AA
		dc.b $73 ; s
		dc.b $73 ; s
		dc.b $73 ; s
		dc.b $73 ; s
		dc.b $73 ; s
		dc.b $73 ; s
		dc.b $73 ; s
		dc.b $73 ; s
		dc.b $63 ; c
		dc.b $A9
		dc.b $F7
		dc.b $55 ; U
		dc.b $2A ; *
		dc.b $C1
		dc.b $91
		dc.b $BB
		dc.b $E7
		dc.b $D7
		dc.b $3D ; =
		dc.b $89
		dc.b $BE
		dc.b $75 ; u
		dc.b $4A ; J
		dc.b $A6
		dc.b $C4
		dc.b $AA
		dc.b $55 ; U
		dc.b $31 ; 1
		dc.b $4A ; J
		dc.b $CE
		dc.b $A9
		dc.b $8A
		dc.b $3F ; ?
		dc.b $B8
		dc.b $D2
		dc.b $AC
		dc.b $FD
		dc.b   6
		dc.b  $C
		dc.b $E3
		dc.b $79 ; y
		dc.b $BB
		dc.b $9D
		dc.b $CF
		dc.b $27 ; '
		dc.b $25 ; %
		dc.b $51 ; Q
		dc.b $9C
		dc.b $F2
		dc.b $C5
		dc.b $19
		dc.b $C7
		dc.b $AB
		dc.b $19
		dc.b $DC
		dc.b $E4
		dc.b $D9
		dc.b $C1
		dc.b $B7
		dc.b $A7
		dc.b $FB
		dc.b $E7
		dc.b $8F
		dc.b  $A
		dc.b $B5
		dc.b $52 ; R
		dc.b $E4
		dc.b $69 ; i
		dc.b $C5
		dc.b   1
		dc.b $19
		dc.b $38 ; 8
		dc.b $BF
		dc.b $99
		dc.b $C8
		dc.b $DA
		dc.b $29 ; )
		dc.b $B2
		dc.b $77 ; w
		dc.b $26 ; &
		dc.b $F4
		dc.b $6E ; n
		dc.b $6E ; n
		dc.b $6A ; j
		dc.b $A7
		dc.b $FB
		dc.b $FD
		dc.b $6B ; k
		dc.b $36 ; 6
		dc.b $48 ; H
		dc.b $F0
		dc.b $6F ; o
		dc.b $DE
		dc.b $37 ; 7
		dc.b $EB
		dc.b $1B
		dc.b $9B
		dc.b $FD
		dc.b $ED
		dc.b $C6
		dc.b $E4
		dc.b $B9
		dc.b $22 ; "
		dc.b $71 ; q
		dc.b $74 ; t
		dc.b $6E ; n
		dc.b $46 ; F
		dc.b $37 ; 7
		dc.b $5D ; ]
		dc.b $14
		dc.b $BA
		dc.b $2C ; ,
		dc.b $6D ; m
		dc.b $36 ; 6
		dc.b $46 ; F
		dc.b $48 ; H
		dc.b $CE
		dc.b $BF
		dc.b $DE
		dc.b $D9
		dc.b $3A ; :
		dc.b $A7
		dc.b $7E ; ~
		dc.b $15
		dc.b $48 ; H
		dc.b $B7
		dc.b $1B
		dc.b $8A
		dc.b $F8
		dc.b $B7
		dc.b   8
		dc.b $96
		dc.b $1B
		dc.b $30 ; 0
		dc.b $E6
		dc.b $E6
		dc.b $EF
		dc.b $4A ; J
		dc.b $FF
		dc.b $F9
		dc.b $22 ; "
		dc.b $9F
		dc.b $BC
		dc.b $FC
		dc.b $B2
		dc.b $BC
		dc.b $8E
		dc.b $3B ; ;
		dc.b $AF
		dc.b $28 ; (
		dc.b $E2
		dc.b $91
		dc.b $2F ; /
		dc.b $CB
		dc.b  $A
		dc.b $4E ; N
		dc.b $3F ; ?
		dc.b $C8
		dc.b $AE
		dc.b $11
		dc.b $B8
		dc.b $AB
		dc.b $C1
		dc.b $A2
		dc.b $D3
		dc.b $E3
		dc.b $FB
		dc.b $DF
		dc.b $DE
		dc.b $37 ; 7
		dc.b  $E
		dc.b $6F ; o
		dc.b $F7
		dc.b $EA
		dc.b $4E ; N
		dc.b $BB
		dc.b $C8
		dc.b $F5
		dc.b $32 ; 2
		dc.b $57 ; W
		dc.b $F7
		dc.b $1F
		dc.b $BB
		dc.b $BB
		dc.b $FB
		dc.b $1F
		dc.b $BD
		dc.b $2B ; +
		dc.b $C1
		dc.b $4F ; O
		dc.b $1C
		dc.b $1B
		dc.b $9B
		dc.b $FD
		dc.b $E9
		dc.b $8E
		dc.b $18
		dc.b $A4
		dc.b $5D ; ]
		dc.b $14
		dc.b $72 ; r
		dc.b $55 ; U
		dc.b  $D
		dc.b $D6
		dc.b $96
		dc.b $1F
		dc.b $BB
		dc.b $E3
		dc.b $30 ; 0
		dc.b $E8
		dc.b $B7
		dc.b   6
		dc.b $8F
		dc.b $2B ; +
		dc.b $B0
		dc.b $D9
		dc.b $84
		dc.b $38 ; 8
		dc.b $72 ; r
		dc.b $B6
		dc.b $E7
		dc.b $7E ; ~
		dc.b $E6
		dc.b $1F
		dc.b $EE
		dc.b $24 ; $
		dc.b $C5
		dc.b $31 ; 1
		dc.b $9F
		dc.b $32 ; 2
		dc.b $75 ; u
		dc.b $BA
		dc.b  $D
		dc.b $3D ; =
		dc.b $5B ; [
		dc.b $B9
		dc.b $25 ; %
		dc.b $C9
		dc.b $8B
		dc.b $A0
		dc.b $DD
		dc.b $69 ; i
		dc.b $74 ; t
		dc.b $DA
		dc.b $74 ; t
		dc.b $84
		dc.b $6E ; n
		dc.b $8B
		dc.b $4F ; O
		dc.b $F7
		dc.b   7
		dc.b $FA
		dc.b $AF
		dc.b $EC
		dc.b $42 ; B
		dc.b $38 ; 8
		dc.b $F1
		dc.b $E5
		dc.b $CD
		dc.b $54 ; T
		dc.b $64 ; d
		dc.b $B9
		dc.b $1B
		dc.b $7F ; 
		dc.b $F7
		dc.b $B7
		dc.b $CD
		dc.b $A2
		dc.b $C9
		dc.b $B1
		dc.b $3F ; ?
		dc.b $58 ; X
		dc.b $DB
		dc.b $E9
		dc.b $C5
		dc.b $B0
		dc.b $FD
		dc.b $C3
		dc.b $AA
		dc.b $90
		dc.b $8B
		dc.b $98
		dc.b $A1
		dc.b $3E ; >
		dc.b $7F ; 
		dc.b $4D ; M
		dc.b $CC
		dc.b $9A
		dc.b $99
		dc.b $C6
		dc.b $EC
		dc.b $3F ; ?
		dc.b $9B
		dc.b $B1
		dc.b $A7
		dc.b $56 ; V
		dc.b $4F ; O
		dc.b $D5
		dc.b $6C ; l
		dc.b $99
		dc.b $40 ; @
		dc.b $9A
		dc.b $B3
		dc.b $3A ; :
		dc.b $3D ; =
		dc.b $A6
		dc.b   9
		dc.b $FB
		dc.b $B9
		dc.b $1E
		dc.b $E1
		dc.b $B8
		dc.b $E0
		dc.b $47 ; G
		dc.b $43 ; C
		dc.b $68 ; h
		dc.b $19
		dc.b $1F
		dc.b $29 ; )
		dc.b $B8
		dc.b $E0
		dc.b $56 ; V
		dc.b $C0
		dc.b $99
		dc.b $D0
		dc.b $75 ; u
		dc.b  $D
		dc.b $A0
		dc.b $C7
		dc.b   2
		dc.b   4
		dc.b $8C
		dc.b $70 ; p
		dc.b $23 ; #
		dc.b $A3
		dc.b $9A
		dc.b   4
		dc.b $E3
		dc.b $27 ; '
		dc.b $90
		dc.b $34 ; 4
		dc.b $AA
		dc.b $19
		dc.b $4F ; O
		dc.b $7C ; |
		dc.b $FF
		dc.b $DF
		dc.b $1F
		dc.b $F7
		dc.b $C1
		dc.b $93
		dc.b $AC
		dc.b $8E
		dc.b $1C
		dc.b $53 ; S
		dc.b $13
		dc.b $14
		dc.b $38 ; 8
		dc.b $25 ; %
		dc.b $68 ; h
		dc.b   8
		dc.b $5B ; [
		dc.b   1
		dc.b $A0
		dc.b $5B ; [
		dc.b $14
		dc.b $5E ; ^
		dc.b $15
		dc.b $EA
		dc.b $62 ; b
		dc.b $F0
		dc.b $B6
		dc.b $21 ; !
		dc.b $8E
		dc.b $E0
		dc.b $B8
		dc.b $A4
		dc.b $4D ; M
		dc.b $42 ; B
		dc.b $F5
		dc.b $A4
		dc.b $47 ; G
		dc.b $37 ; 7
		dc.b $37 ; 7
		dc.b $FD
		dc.b $D7
		dc.b $5A ; Z
		dc.b $EB
		dc.b $5D ; ]
		dc.b $6A ; j
		dc.b $14
		dc.b $7E ; ~
		dc.b $E4
		dc.b $28 ; (
		dc.b $50 ; P
		dc.b $AF
		dc.b $35 ; 5
		dc.b  $A
		dc.b $14
		dc.b $69 ; i
		dc.b $1B
		dc.b $45 ; E
		dc.b $BC
		dc.b $76 ; v
		dc.b $61 ; a
		dc.b $8E
		dc.b $BF
		dc.b $DC
		dc.b $EB
		dc.b $30 ; 0
		dc.b $76 ; v
		dc.b $2B ; +
		dc.b $CC
		dc.b $1E
		dc.b $B3
		dc.b $1E
		dc.b $96
		dc.b $18
		dc.b $31 ; 1
		dc.b $A0
		dc.b $51 ; Q
		dc.b $FB
		dc.b $90
		dc.b $A3
		dc.b $F7
		dc.b   9
		dc.b $13
		dc.b $5D ; ]
		dc.b $6D ; m
		dc.b $85
		dc.b $66 ; f
		dc.b $46 ; F
		dc.b $E6
		dc.b $9D
		dc.b $67 ; g
		dc.b $6B ; k
		dc.b $9A
		dc.b $78 ; x
		dc.b $BD
		dc.b $B8
		dc.b $54 ; T
		dc.b $18
		dc.b $38 ; 8
		dc.b $B4
		dc.b $C7
		dc.b $EE
		dc.b $41 ; A
		dc.b $B8
		dc.b $1B
		dc.b $CC
		dc.b $18
		dc.b $FD
		dc.b $C8
		dc.b $B4
		dc.b $52 ; R
		dc.b $14
		dc.b $89
		dc.b $92
		dc.b $52 ; R
		dc.b $D8
		dc.b $19
		dc.b $56 ; V
		dc.b $7B ; {
		dc.b $9F
		dc.b $EA
		dc.b $E8
		dc.b $35 ; 5
		dc.b $53 ; S
		dc.b $62 ; b
		dc.b $55 ; U
		dc.b $2E ; .
		dc.b $E1
		dc.b $71 ; q
		dc.b $83
		dc.b $16
		dc.b $94
		dc.b   6
		dc.b $A6
		dc.b $D6
		dc.b $61 ; a
		dc.b $47 ; G
		dc.b $ED
		dc.b $68 ; h
		dc.b   8
		dc.b $77 ; w
		dc.b $1F
		dc.b $38 ; 8
		dc.b $EE
		dc.b $C1
		dc.b $9C
		dc.b $14
		dc.b $23 ; #
		dc.b $7E ; ~
		dc.b $AB
		dc.b $9E
		dc.b  $E
		dc.b $A3
		dc.b $4D ; M
		dc.b $B7
		dc.b $1C
		dc.b $12
		dc.b $2E ; .
		dc.b $14
		dc.b $81
		dc.b $46 ; F
		dc.b   5
		dc.b $A0
		dc.b $FE
		dc.b $AC
		dc.b $BF
		dc.b $CA
		dc.b $16
		dc.b $C5
		dc.b $1F
		dc.b $B5
		dc.b $7E ; ~
		dc.b $8C
		dc.b $3F ; ?
		dc.b $AB
		dc.b   3
		dc.b $FE
		dc.b $AD
		dc.b   7
		dc.b $73 ; s
		dc.b $CC
		dc.b $9C
		dc.b $40 ; @
		dc.b $84
		dc.b $14
		dc.b $44 ; D
		dc.b $E1
		dc.b $62 ; b
		dc.b $8A
		dc.b $6B ; k
		dc.b $D3
		dc.b $DB
		dc.b $F6
		dc.b $B7
		dc.b $98
		dc.b $3D ; =
		dc.b $2F ; /
		dc.b $7B ; {
		dc.b $A0
		dc.b $34 ; 4
		dc.b   4
		dc.b $E8
		dc.b $18
		dc.b $23 ; #
		dc.b $D5
		dc.b $17
		dc.b $51 ; Q
		dc.b $A1
		dc.b $74 ; t
		dc.b $22 ; "
		dc.b $41 ; A
		dc.b $42 ; B
		dc.b $BD
		dc.b $46 ; F
		dc.b $8F
		dc.b $57 ; W
		dc.b $FF
		dc.b $54 ; T
		dc.b $69 ; i
		dc.b $2F ; /
		dc.b $69 ; i
		dc.b   2
		dc.b $FF
		dc.b $39 ; 9
		dc.b $74 ; t
		dc.b $3D ; =
		dc.b $64 ; d
		dc.b $6E ; n
		dc.b $BA
		dc.b $C3
		dc.b $FD
		dc.b $EA
		dc.b $85
		dc.b $FE
		dc.b $18
		dc.b $EE
		dc.b $FD
		dc.b $9A
		dc.b $8C
		dc.b $EB
		dc.b $9F
		dc.b $41 ; A
		dc.b $FD
		dc.b $51 ; Q
		dc.b $FE
		dc.b $50 ; P
		dc.b $43 ; C
		dc.b $B9
		dc.b $E6
		dc.b $F5
		dc.b $1D
		dc.b $CC
		dc.b $63 ; c
		dc.b $F6
		dc.b $A1
		dc.b $5F ; _
		dc.b $9D
		dc.b $7C ; |
		dc.b $B4
		dc.b $1F
		dc.b $B5
		dc.b $CE
		dc.b $A3
		dc.b $F6
		dc.b $BF
		dc.b $B3
		dc.b   6
		dc.b $17
		dc.b $F6
		dc.b $6B ; k
		dc.b $67 ; g
		dc.b $F0
		dc.b $DE
		dc.b $7A ; z
		dc.b $7E ; ~
		dc.b $CD
		dc.b $73 ; s
		dc.b $AC
		dc.b $96
		dc.b $4B ; K
		dc.b $25 ; %
		dc.b $96
		dc.b $97
		dc.b $8B
		dc.b $DE
		dc.b $B9
		dc.b $D6
		dc.b $4B ; K
		dc.b $7B ; {
		dc.b $D7
		dc.b $3A ; :
		dc.b $E7
		dc.b $BF
		dc.b $BB
		dc.b $C8
		dc.b $48 ; H
		dc.b $69 ; i
		dc.b $9D
		dc.b $64 ; d
		dc.b $AF
		dc.b $D2
		dc.b $4B ; K
		dc.b $25 ; %
		dc.b  $E
		dc.b $30 ; 0
		dc.b $B2
		dc.b $59 ; Y
		dc.b $2B ; +
		dc.b $DC
		dc.b $3B ; ;
		dc.b $AC
		dc.b $20
		dc.b $AF
		dc.b $57 ; W
		dc.b $AB
		dc.b $ED
		dc.b $BC
		dc.b $28 ; (
		dc.b $3F ; ?
		dc.b $D5
		dc.b $85
		dc.b $FC
		dc.b $B0
		dc.b $71 ; q
		dc.b $89
		dc.b $2C ; ,
		dc.b $86
		dc.b $9F
		dc.b $96
		dc.b $92
		dc.b $85
		dc.b $1F
		dc.b $B3
		dc.b $1A
		dc.b $4B ; K
		dc.b $4C ; L
		dc.b $EB
		dc.b $27 ; '
		dc.b $E7
		dc.b $7F ; 
		dc.b $F0
		dc.b $D6
		dc.b $56 ; V
		dc.b $2F ; /
		dc.b $EC
		dc.b $CD
		dc.b $EB
		dc.b $25 ; %
		dc.b $96
		dc.b $8F
		dc.b $92
		dc.b $F9
		dc.b $5E ; ^
		dc.b $34 ; 4
		dc.b $FD
		dc.b $98
		dc.b $CE
		dc.b $3B ; ;
		dc.b $A4
		dc.b $AF
		dc.b $23 ; #
		dc.b $7A ; z
		dc.b $8A
		dc.b $1C
		dc.b  $C
		dc.b $1F
		dc.b $92
		dc.b $C9
		dc.b $64 ; d
		dc.b $3F ; ?
		dc.b $86
		dc.b $B2
		dc.b $1F
		dc.b $96
		dc.b $5F ; _
		dc.b $25 ; %
		dc.b $92
		dc.b $FF
		dc.b  $F
		dc.b $4F ; O
		dc.b $E1
		dc.b $8B
		dc.b $7F ; 
		dc.b $86
		dc.b $50 ; P
		dc.b $8F
		dc.b $92
		dc.b $BE
		dc.b $D7
		dc.b $BA
		dc.b $17
		dc.b $1B
		dc.b $4B ; K
		dc.b $47 ; G
		dc.b $94
		dc.b $1C
		dc.b $AF
		dc.b $BC
		dc.b $10
		dc.b $80
		dc.b $92
		dc.b $D8
		dc.b $65 ; e
		dc.b $2E ; .
		dc.b $90
		dc.b $70 ; p
		dc.b $32 ; 2
		dc.b $D0
		dc.b $8D
		dc.b $9D
		dc.b $47 ; G
		dc.b $9B
		dc.b $40 ; @
		dc.b $A2
		dc.b $64 ; d
		dc.b $EE
		dc.b $44 ; D
		dc.b $E8
		dc.b $37 ; 7
		dc.b $A0
		dc.b $B7
		dc.b $54 ; T
		dc.b $1C
		dc.b $51 ; Q
		dc.b $D5
		dc.b   6
		dc.b $81
		dc.b $1D
		dc.b $2D ; -
		dc.b $FD
		dc.b $C1
		dc.b $82
		dc.b $83
		dc.b $E8
		dc.b $64 ; d
		dc.b $C5
		dc.b $AE
		dc.b $8D
		dc.b   2
		dc.b $7D ; }
		dc.b   6
		dc.b $E7
		dc.b $AB
		dc.b $C9
		dc.b $5E ; ^
		dc.b $B6
		dc.b $42 ; B
		dc.b $2E ; .
		dc.b $27 ; '
		dc.b   2
		dc.b  $E
		dc.b $28 ; (
		dc.b $1D
		dc.b $1E
		dc.b $EB
		dc.b $60 ; `
		dc.b $46 ; F
		dc.b $F2
		dc.b $75 ; u
		dc.b $C7
		dc.b $40 ; @
		dc.b $6D ; m
		dc.b $30 ; 0
		dc.b $46 ; F
		dc.b $E3
		dc.b $63 ; c
		dc.b $B3
		dc.b $76 ; v
		dc.b $B6
		dc.b $20
		dc.b $64 ; d
		dc.b $1C
		dc.b $D8
		dc.b   2
		dc.b $B1
		dc.b $41 ; A
		dc.b $7F ; 
		dc.b $DD
		dc.b $E5
		dc.b $EC
		dc.b $5E ; ^
		dc.b $C4
		dc.b $1D
		dc.b $4E ; N
		dc.b $90
		dc.b $63 ; c
		dc.b $7F ; 
		dc.b $EE
		dc.b   1
		dc.b $31 ; 1
		dc.b $5D ; ]
		dc.b $FB
		dc.b $87
		dc.b $D1
		dc.b $E4
		dc.b  $E
		dc.b $E0
		dc.b $5A ; Z
		dc.b $ED
		dc.b $FF
		dc.b $BD
		dc.b $84
		dc.b $F2
		dc.b  $A
		dc.b  $A
		dc.b $C5
		dc.b   5
		dc.b $62 ; b
		dc.b $8B
		dc.b $C3
		dc.b $51 ; Q
		dc.b $41 ; A
		dc.b   5
		dc.b $E7
		dc.b $DD
		dc.b $78 ; x
		dc.b $BA
		dc.b $1F
		dc.b $B9
		dc.b $26 ; &
		dc.b $81
		dc.b $85
		dc.b $BF
		dc.b $D9
		dc.b $7F ; 
		dc.b $4C ; L
		dc.b   8
		dc.b $5E ; ^
		dc.b $3B ; ;
		dc.b $AC
		dc.b $FD
		dc.b $AB
		dc.b $D5
		dc.b $EB
		dc.b $D2
		dc.b $FD
		dc.b $2F ; /
		dc.b $7A ; z
		dc.b $D9
		dc.b $7D ; }
		dc.b $87
		dc.b $D8
		dc.b $9D
		dc.b $89
		dc.b $D8
		dc.b $9D
		dc.b $9F
		dc.b $B9
		dc.b $63 ; c
		dc.b $73 ; s
		dc.b $59 ; Y
		dc.b $E9
		dc.b $AB
		dc.b $FC
		dc.b $F7
		dc.b $AD
		dc.b $FA
		dc.b $7E ; ~
		dc.b $9A
		dc.b $CD
		dc.b $2F ; /
		dc.b $5F ; _
		dc.b $CB
		dc.b $2F ; /
		dc.b $FD
		dc.b $C4
		dc.b $5D ; ]
		dc.b $83
		dc.b $BB
		dc.b $12
		dc.b $A9
		dc.b $59 ; Y
		dc.b $D7
		dc.b  $E
		dc.b $C9
		dc.b $F6
		dc.b $23 ; #
		dc.b $BF
		dc.b $DB
		dc.b $E8
		dc.b $E3
		dc.b $71 ; q
		dc.b $B0
		dc.b $BF
		dc.b $FC
		dc.b $FF
		dc.b $96
		dc.b $5D ; ]
		dc.b $7A ; z
		dc.b $5E ; ^
		dc.b $B7
		dc.b $AD
		dc.b $EB
		dc.b $65 ; e
		dc.b $FF
		dc.b $B5
		dc.b $4E ; N
		dc.b $CC
		dc.b $31 ; 1
		dc.b $E1
		dc.b $B2
		dc.b $77 ; w
		dc.b $76 ; v
		dc.b $23 ; #
		dc.b $61 ; a
		dc.b $CF
		dc.b $D9
		dc.b $3E ; >
		dc.b $C6
		dc.b $37 ; 7
		dc.b $1D
		dc.b $DD
		dc.b $97
		dc.b $3F ; ?
		dc.b $FB
		dc.b $36 ; 6
		dc.b $5A ; Z
		dc.b $F3
		dc.b   7
		dc.b $67 ; g
		dc.b $A5
		dc.b $78 ; x
		dc.b $34 ; 4
		dc.b $EB
		dc.b $36 ; 6
		dc.b $43 ; C
		dc.b $D5
		dc.b $D8
		dc.b $C9
		dc.b $CF
		dc.b $6F ; o
		dc.b $62 ; b
		dc.b $5C ; \
		dc.b $6C ; l
		dc.b $6E ; n
		dc.b $36 ; 6
		dc.b $36 ; 6
		dc.b $B4
		dc.b $BD
		dc.b $2F ; /
		dc.b $31 ; 1
		dc.b $FD
		dc.b $9B
		dc.b $CE
		dc.b $F2
		dc.b $B0
		dc.b $DE
		dc.b $40 ; @
		dc.b $BD
		dc.b $5D ; ]
		dc.b $37 ; 7
		dc.b $1F
		dc.b $3B ; ;
		dc.b $99
		dc.b  $D
		dc.b $DE
		dc.b $9A
		dc.b $9A
		dc.b $F7
		dc.b $1B
		dc.b $AD
		dc.b $D4
		dc.b $5E ; ^
		dc.b $8C
		dc.b $E3
		dc.b $75 ; u
		dc.b $2D ; -
		dc.b $7B ; {
		dc.b $98
		dc.b $50 ; P
		dc.b $50 ; P
		dc.b $FF
		dc.b $EE
		dc.b $13
		dc.b $FD
		dc.b $E9
		dc.b $FE
		dc.b $F8
		dc.b $CF
		dc.b $1C
		dc.b $19
		dc.b $22 ; "
		dc.b $91
		dc.b $48 ; H
		dc.b $9B
		dc.b $7E ; ~
		dc.b $F0
		dc.b $E2
		dc.b $6E ; n
		dc.b $6F ; o
		dc.b $DC
		dc.b $DD
		dc.b $FC
		dc.b $96
		dc.b $C4
		dc.b $DE
		dc.b $65 ; e
		dc.b $D8
		dc.b $9B
		dc.b $12
		dc.b $38 ; 8
		dc.b $46 ; F
		dc.b $B3
		dc.b $BB
		dc.b   8
		dc.b $FA
		dc.b $47 ; G
		dc.b $9F
		dc.b $D3
		dc.b $D6
		dc.b $E4
		dc.b $EB
		dc.b $4E ; N
		dc.b $6E ; n
		dc.b $6C ; l
		dc.b $52 ; R
		dc.b $A9
		dc.b $8A
		dc.b $7E ; ~
		dc.b $F1
		dc.b $A3
		dc.b   6
		dc.b $8B
		dc.b $A0
		dc.b $50 ; P
		dc.b $A2
		dc.b $32 ; 2
		dc.b $39 ; 9
		dc.b $B8
		dc.b $F0
		dc.b $E7
		dc.b $9E
		dc.b $3F ; ?
		dc.b $DE
		dc.b $E6
		dc.b $E6
		dc.b $EF
		dc.b $4A ; J
		dc.b $C0
		dc.b $A0
		dc.b $D3
		dc.b $C4
		dc.b $AE
		dc.b $4D ; M
		dc.b $EC
		dc.b $9D
		dc.b $E9
		dc.b $CD
		dc.b $BD
		dc.b $2A ; *
		dc.b $9D
		dc.b $E9
		dc.b $D7
		dc.b $87
		dc.b $62 ; b
		dc.b $56 ; V
		dc.b $7D ; }
		dc.b $8D
		dc.b $D8
		dc.b $DB
		dc.b $D3
		dc.b $14
		dc.b $FF
		dc.b $7A ; z
		dc.b $73 ; s
		dc.b $6C ; l
		dc.b $4A ; J
		dc.b $E1
		dc.b $54 ; T
		dc.b $AC
		dc.b $FB
		dc.b $13
		dc.b $B2
		dc.b $B3
		dc.b $EC
		dc.b $C3
		dc.b $F2
		dc.b $4D ; M
		dc.b $D8
		dc.b $DD
		dc.b $89
		dc.b $8B
		dc.b $6A ; j
		dc.b $64 ; d
		dc.b $DE
		dc.b $8D
		dc.b $C5
		dc.b $D1
		dc.b $86
		dc.b $38 ; 8
		dc.b $34 ; 4
		dc.b $5D ; ]
		dc.b $BD
		dc.b $2A ; *
		dc.b $8C
		dc.b $95
		dc.b $4C ; L
		dc.b $51 ; Q
		dc.b $A3
		dc.b $D9
		dc.b $C2
		dc.b $B8
		dc.b $76 ; v
		dc.b $37 ; 7
		dc.b $16
		dc.b $EC
		dc.b $69 ; i
		dc.b $F6
		dc.b $7E ; ~
		dc.b $AD
		dc.b $9D
		dc.b $8A
		dc.b $34 ; 4
		dc.b $5D ; ]
		dc.b $C5
		dc.b $B9
		dc.b $7F ; 
		dc.b $A3
		dc.b $51 ; Q
		dc.b $39 ; 9
		dc.b $91
		dc.b $D0
		dc.b $2F ; /
		dc.b $DD
		dc.b $27 ; '
		dc.b $EE
		dc.b $A8
		dc.b $90
		dc.b $EC
		dc.b $68 ; h
		dc.b $EA
		dc.b $DC
		dc.b $DD
		dc.b $9F
		dc.b $CB
		dc.b $27 ; '
		dc.b $45 ; E
		dc.b $D1
		dc.b $74 ; t
		dc.b $7F ; 
		dc.b $25 ; %
		dc.b $FA
		dc.b $BE
		dc.b $C8
		dc.b $F6
		dc.b $71 ; q
		dc.b $84
		dc.b $6B ; k
		dc.b $3A ; :
		dc.b $CE
		dc.b $89
		dc.b $C6
		dc.b $70 ; p
		dc.b $4A ; J
		dc.b $41 ; A
		dc.b $B9
		dc.b $17
		dc.b $2D ; -
		dc.b $DF
		dc.b $AA
		dc.b $FF
		dc.b $C0
		dc.b $21 ; !
		dc.b $FB
		dc.b $83
		dc.b $E3
		dc.b $FD
		dc.b $8E
		dc.b $CF
		dc.b $D6
		dc.b $38 ; 8
		dc.b $81
		dc.b $3B ; ;
		dc.b $F5
		dc.b $44 ; D
		dc.b $D8
		dc.b $F2
		dc.b $64 ; d
		dc.b $64 ; d
		dc.b $AA
		dc.b $51 ; Q
		dc.b $92
		dc.b $B3
		dc.b $AB
		dc.b $42 ; B
		dc.b $29 ; )
		dc.b $8C
		dc.b $E1
		dc.b $46 ; F
		dc.b $48 ; H
		dc.b $B4
		dc.b   9
		dc.b $A9
		dc.b   2
		dc.b $83
		dc.b   2
		dc.b $31 ; 1
		dc.b $41 ; A
		dc.b $B8
		dc.b $16
		dc.b $B6
		dc.b $FF
		dc.b $3E ; >
		dc.b $28 ; (
		dc.b $76 ; v
		dc.b $1E
		dc.b $C3
		dc.b $77 ; w
		dc.b $3F ; ?
		dc.b $AD
		dc.b $6E ; n
		dc.b $46 ; F
		dc.b $86
		dc.b  $C
		dc.b $7C ; |
		dc.b $9D
		dc.b $16
		dc.b $71 ; q
		dc.b $82
		dc.b   7
		dc.b $43 ; C
		dc.b $7B ; {
		dc.b $53 ; S
		dc.b $A3
		dc.b $39 ; 9
		dc.b $8E
		dc.b   7
		dc.b $44 ; D
		dc.b $68 ; h
		dc.b $38 ; 8
		dc.b $8E
		dc.b $90
		dc.b $68 ; h
		dc.b $11
		dc.b $D0
		dc.b $DA
		dc.b  $D
		dc.b $6C ; l
		dc.b   8
		dc.b $E0
		dc.b $47 ; G
		dc.b   2
		dc.b $3A ; :
		dc.b $3E ; >
		dc.b $87
		dc.b $CB
		dc.b $A5
		dc.b $2D ; -
		dc.b $B0
		dc.b $83
		dc.b $A1
		dc.b $BB
		dc.b $A5
		dc.b $A0
		dc.b $BD
		dc.b $8A
		dc.b $C5
		dc.b $79 ; y
		dc.b $3C ; <
		dc.b $B5
		dc.b $90
		dc.b $27 ; '
		dc.b $93
		dc.b $E9
		dc.b $EC
		dc.b $56 ; V
		dc.b $96
		dc.b $B3
		dc.b $2B ; +
		dc.b   9
		dc.b $F0
		dc.b $EF
		dc.b $89
		dc.b $A7
		dc.b $5C ; \
		dc.b $4E ; N
		dc.b $3D ; =
		dc.b $68 ; h
		dc.b $20
		dc.b $9D
		dc.b $60 ; `
		dc.b $E1
		dc.b $14
		dc.b $AC
		dc.b $EC
		dc.b $38 ; 8
		dc.b $4E ; N
		dc.b $2A ; *
		dc.b $34 ; 4
		dc.b $10
		dc.b $43 ; C
		dc.b  $B
		dc.b $AE
		dc.b $11
		dc.b $38 ; 8
		dc.b $A7
		dc.b $5F ; _
		dc.b $A4
		dc.b $67 ; g
		dc.b $89
		dc.b $42 ; B
		dc.b $3F ; ?
		dc.b $C9
		dc.b $48 ; H
		dc.b $C0
		dc.b $E2
		dc.b $71 ; q
		dc.b $3A ; :
		dc.b $B1
		dc.b $B4
		dc.b $5A ; Z
		dc.b $30 ; 0
		dc.b $9C
		dc.b $5A ; Z
		dc.b $71 ; q
		dc.b $28 ; (
		dc.b $A3
		dc.b $13
		dc.b $4D ; M
		dc.b $A2
		dc.b $6C ; l
		dc.b $97
		dc.b $4F ; O
		dc.b $14
		dc.b $3E ; >
		dc.b $E1
		dc.b $B1
		dc.b  $D
		dc.b $42 ; B
		dc.b $F1
		dc.b $9C
		dc.b $42 ; B
		dc.b $8F
		dc.b $E6
		dc.b $BD
		dc.b $4A ; J
		dc.b $37 ; 7
		dc.b $20
		dc.b $50 ; P
		dc.b $4D ; M
		dc.b $3A ; :
		dc.b $A3
		dc.b $CA
		dc.b $13
		dc.b $D8
		dc.b $8C
		dc.b $53 ; S
		dc.b $D8
		dc.b $8F
		dc.b $51 ; Q
		dc.b $6B ; k
		dc.b $98
		dc.b $11
		dc.b $A3
		dc.b $25 ; %
		dc.b $51 ; Q
		dc.b $E6
		dc.b $DC
		dc.b   2
		dc.b $D9
		dc.b $CF
		dc.b $FB
		dc.b $57 ; W
		dc.b $DB
		dc.b $62 ; b
		dc.b $D8
		dc.b $A7
		dc.b $A7
		dc.b $F2
		dc.b $10
		dc.b $2D ; -
		dc.b $3F ; ?
		dc.b $55 ; U
		dc.b $3A ; :
		dc.b $A5
		dc.b $66 ; f
		dc.b $3F ; ?
		dc.b $DF
		dc.b $3A ; :
		dc.b $CF
		dc.b $67 ; g
		dc.b $AD
		dc.b $70 ; p
		dc.b $37 ; 7
		dc.b $32 ; 2
		dc.b $32 ; 2
		dc.b $32 ; 2
		dc.b $58 ; X
		dc.b $7F ; 
		dc.b $B8
		dc.b $FF
		dc.b $3D ; =
		dc.b   2
		dc.b $EB
		dc.b $21 ; !
		dc.b $B8
		dc.b $CA
		dc.b   1
		dc.b $28 ; (
		dc.b $74 ; t
		dc.b   5
		dc.b $8A
		dc.b $30 ; 0
		dc.b $3A ; :
		dc.b $6C ; l
		dc.b $47 ; G
		dc.b $1B
		dc.b $8B
		dc.b $85
		dc.b $67 ; g
		dc.b $FD
		dc.b $86
		dc.b $98
		dc.b $A0
		dc.b $A0
		dc.b $65 ; e
		dc.b   4
		dc.b  $C
		dc.b $8E
		dc.b $14
		dc.b $3B ; ;
		dc.b $81
		dc.b $C0
		dc.b $87
		dc.b $EA
		dc.b $8C
		dc.b $AD
		dc.b   4
		dc.b $65 ; e
		dc.b   3
		dc.b $DC
		dc.b $28 ; (
		dc.b $29 ; )
		dc.b $E8
		dc.b $47 ; G
		dc.b $43 ; C
		dc.b $8F
		dc.b $EA
		dc.b $E1
		dc.b $CF
		dc.b $C1
		dc.b $DC
		dc.b $E5
		dc.b   3
		dc.b $6E ; n
		dc.b   4
		dc.b $DC
		dc.b $B7
		dc.b   3
		dc.b $DD
		dc.b   2
		dc.b $B6
		dc.b   5
		dc.b $13
		dc.b $23 ; #
		dc.b $DC
		dc.b $65 ; e
		dc.b   3
		dc.b $2B ; +
		dc.b $4A ; J
		dc.b   6
		dc.b $5F ; _
		dc.b $CD
		dc.b $73 ; s
		dc.b $40 ; @
		dc.b $BF
		dc.b $9A
		dc.b $47 ; G
		dc.b $4E ; N
		dc.b $78 ; x
		dc.b $99
		dc.b $46 ; F
		dc.b $86
		dc.b $46 ; F
		dc.b $4E ; N
		dc.b $FD
		dc.b $E9
		dc.b $1F
		dc.b $EE
		dc.b $1D
		dc.b $FB
		dc.b $D3
		dc.b $A1
		dc.b $BB
		dc.b $F9
		dc.b $B4
		dc.b $32 ; 2
		dc.b $6A ; j
		dc.b $18
		dc.b $B5
		dc.b $88
		dc.b $F7
		dc.b $5B ; [
		dc.b $40 ; @
		dc.b $64 ; d
		dc.b $3F ; ?
		dc.b $2C ; ,
		dc.b $46 ; F
		dc.b   8
		dc.b $6E ; n
		dc.b $B8
		dc.b $C2
		dc.b $8D
		dc.b $39 ; 9
		dc.b $CC
		dc.b $68 ; h
		dc.b $39 ; 9
		dc.b $ED
		dc.b $B1
		dc.b $DC
		dc.b $E7
		dc.b $7B ; {
		dc.b $ED
		dc.b $75 ; u
		dc.b $C7
		dc.b $65 ; e
		dc.b $AE
		dc.b $62 ; b
		dc.b $BC
		dc.b $5A ; Z
		dc.b $2D ; -
		dc.b   5
		dc.b $65 ; e
		dc.b $AF
		dc.b $31 ; 1
		dc.b $9C
		dc.b $2F ; /
		dc.b $F0
		dc.b $D5
		dc.b $EB
		dc.b $FD
		dc.b $35 ; 5
		dc.b  $B
		dc.b $25 ; %
		dc.b $CF
		dc.b $A0
		dc.b $EE
		dc.b $FD
		dc.b $9B
		dc.b $D4
		dc.b $7E ; ~
		dc.b $CF
		dc.b $40 ; @
		dc.b $BF
		dc.b $C3
		dc.b $D0
		dc.b $2F ; /
		dc.b $F0
		dc.b $DF
		dc.b $2D ; -
		dc.b  $D
		dc.b $C6
		dc.b $25 ; %
		dc.b $A4
		dc.b $81
		dc.b $EA
		dc.b  $A
		dc.b $F5
		dc.b $BE
		dc.b $D7
		dc.b $7B ; {
		dc.b $5B ; [
		dc.b $FE
		dc.b $73 ; s
		dc.b $7D ; }
		dc.b $A0
		dc.b $AC
		dc.b $BC
		dc.b $EC
		dc.b $B6
		dc.b $CF
		dc.b $DC
		dc.b $8C
		dc.b $EB
		dc.b $9D
		dc.b $41 ; A
		dc.b $3E ; >
		dc.b $4B ; K
		dc.b $78 ; x
		dc.b $32 ; 2
		dc.b $17
		dc.b $EB
		dc.b $A7
		dc.b $A3
		dc.b $CA
		dc.b $C3
		dc.b $79 ; y
		dc.b   3
		dc.b $FF
		dc.b $39 ; 9
		dc.b $7F ; 
		dc.b $9D
		dc.b $41 ; A
		dc.b $FF
		dc.b $9E
		dc.b   4
		dc.b  $E
		dc.b  $C
		dc.b $E8
		dc.b   3
		dc.b $28 ; (
		dc.b $6A ; j
		dc.b $68 ; h
		dc.b  $A
		dc.b $1B
		dc.b $3A ; :
		dc.b $11
		dc.b $79 ; y
		dc.b   2
		dc.b $8D
		dc.b $1E
		dc.b $4F ; O
		dc.b $A7
		dc.b $43 ; C
		dc.b $2E ; .
		dc.b $8A
		dc.b $F9
		dc.b $2B ; +
		dc.b $FB
		dc.b $9E
		dc.b $AE
		dc.b $38 ; 8
		dc.b $1C
		dc.b $19
		dc.b $C7
		dc.b $C8
		dc.b $8C
		dc.b $A0
		dc.b $D0
		dc.b   4
		dc.b $65 ; e
		dc.b   3
		dc.b $2B ; +
		dc.b   8
		dc.b $5A ; Z
		dc.b $46 ; F
		dc.b $56 ; V
		dc.b $51 ; Q
		dc.b $C5
		dc.b $EC
		dc.b $65 ; e
		dc.b $DC
		dc.b $F3
		dc.b $23 ; #
		dc.b $E8
		dc.b $46 ; F
		dc.b $4D ; M
		dc.b  $B
		dc.b $A1
		dc.b $68 ; h
		dc.b $87
		dc.b $EF
		dc.b $4E ; N
		dc.b   0
		dc.b $F9
		dc.b $1C
		dc.b $60 ; `
		dc.b $40 ; @
		dc.b $CA
		dc.b $D8
		dc.b $1B
		dc.b $C8
		dc.b $50 ; P
		dc.b $19
		dc.b $58 ; X
		dc.b $4F ; O
		dc.b $27 ; '
		dc.b $9D
		dc.b $84
		dc.b $14
		dc.b $AC
		dc.b $25 ; %
		dc.b $7A ; z
		dc.b $85
		dc.b $7E ; ~
		dc.b $96
		dc.b $28 ; (
		dc.b $D0
		dc.b $29 ; )
		dc.b $BD
		dc.b $43 ; C
		dc.b $91
		dc.b $C7
		dc.b $DC
		dc.b $69 ; i
		dc.b $8B
		dc.b $95
		dc.b $EA
		dc.b $69 ; i
		dc.b $53 ; S
		dc.b $BD
		dc.b $47 ; G
		dc.b $75 ; u
		dc.b $AF
		dc.b $2D ; -
		dc.b   3
		dc.b $18
		dc.b $D0
		dc.b $68 ; h
		dc.b  $D
		dc.b $EE
		dc.b $4D ; M
		dc.b $EF
		dc.b $64 ; d
		dc.b $DF
		dc.b $6A ; j
		dc.b $75 ; u
		dc.b $9B
		dc.b $BB
		dc.b $D9
		dc.b $3B ; ;
		dc.b $D1
		dc.b $93
		dc.b $AD
		dc.b $A7
		dc.b $BD
		dc.b $2E ; .
		dc.b $4A ; J
		dc.b $FF
		dc.b $F9
		dc.b $D6
		dc.b $6C ; l
		dc.b $C1
		dc.b $9D
		dc.b $BF
		dc.b   6
		dc.b $EF
		dc.b $9F
		dc.b $7C ; |
		dc.b $FB
		dc.b $D2
		dc.b $A9
		dc.b $FE
		dc.b $FC
		dc.b $37 ; 7
		dc.b $A6
		dc.b $EB
		dc.b $17
		dc.b $A2
		dc.b $EB
		dc.b $50 ; P
		dc.b $B6
		dc.b $1E
		dc.b $B2
		dc.b $32 ; 2
		dc.b $36 ; 6
		dc.b $3D ; =
		dc.b $64 ; d
		dc.b $11
		dc.b $C7
		dc.b $D1
		dc.b $19
		dc.b $C6
		dc.b $15
		dc.b $F3
		dc.b $67 ; g
		dc.b $5B ; [
		dc.b $78 ; x
		dc.b $5F ; _
		dc.b $67 ; g
		dc.b $7B ; {
		dc.b $45 ; E
		dc.b $35 ; 5
		dc.b $7E ; ~
		dc.b $F1
		dc.b $22 ; "
		dc.b $7F ; 
		dc.b $AB
		dc.b $8B
		dc.b $A2
		dc.b $E3
		dc.b $B0
		dc.b $DE
		dc.b $76 ; v
		dc.b $13
		dc.b $C8
		dc.b $2B ; +
		dc.b $D4
		dc.b $9E
		dc.b $40 ; @
		dc.b $AD
		dc.b $BD
		dc.b $EB
		dc.b $1E
		dc.b $15
		dc.b $FE
		dc.b $F6
		dc.b $C4
		dc.b $FD
		dc.b $62 ; b
		dc.b $71 ; q
		dc.b $9F
		dc.b $EA
		dc.b $FF
		dc.b $78 ; x
		dc.b $96
		dc.b $BA
		dc.b $2E ; .
		dc.b $C0
		dc.b $18
		dc.b $B7
		dc.b $75 ; u
		dc.b $87
		dc.b $78 ; x
		dc.b $B5
		dc.b $EA
		dc.b $F3
		dc.b $7C ; |
		dc.b $7D ; }
		dc.b $95
		dc.b $22 ; "
		dc.b $EB
		dc.b $6C ; l
		dc.b $E1
		dc.b $1A
		dc.b   9
		dc.b $E2
		dc.b $9F
		dc.b $AC
		dc.b $48 ; H
		dc.b $FF
		dc.b $7A ; z
		dc.b $9F
		dc.b $BC
		dc.b $98
		dc.b $F4
		dc.b $23 ; #
		dc.b $E3
		dc.b $FB
		dc.b $91
		dc.b $E8
		dc.b $17
		dc.b $A1
		dc.b $EB
		dc.b $3D ; =
		dc.b $65 ; e
		dc.b $61 ; a
		dc.b $BD
		dc.b $D1
		dc.b $D4
		dc.b $6E ; n
		dc.b $7E ; ~
		dc.b $FC
		dc.b $23 ; #
		dc.b $87
		dc.b $F7
		dc.b $1D
		dc.b $17
		dc.b $19
		dc.b $1B
		dc.b $ED
		dc.b   6
		dc.b  $D
		dc.b $E6
		dc.b $FB
		dc.b $5E ; ^
		dc.b $40 ; @
		dc.b $81
		dc.b $3C ; <
		dc.b $C1
		dc.b   3
		dc.b $20
		dc.b $71 ; q
		dc.b $FE
		dc.b $4C ; L
		dc.b $67 ; g
		dc.b $43 ; C
		dc.b $8A
		dc.b $7E ; ~
		dc.b $B1
		dc.b $D1
		dc.b $2B ; +
		dc.b $69 ; i
		dc.b $FB
		dc.b $97
		dc.b $DB
		dc.b $FF
		dc.b $7D ; }
		dc.b $67 ; g
		dc.b $C4
		dc.b $C7
		dc.b $EF
		dc.b $26 ; &
		dc.b $71 ; q
		dc.b $C2
		dc.b $B8
		dc.b $47 ; G
		dc.b $1C
		dc.b $31 ; 1
		dc.b $4F ; O
		dc.b $E6
		dc.b $24 ; $
		dc.b $7D ; }
		dc.b   1
		dc.b $5A ; Z
		dc.b $46 ; F
		dc.b $2D ; -
		dc.b $1F
		dc.b $C9
		dc.b $1F
		dc.b $B9
		dc.b   6
		dc.b $40 ; @
		dc.b $9E
		dc.b $7D ; }
		dc.b $88
		dc.b $71 ; q
		dc.b $32 ; 2
		dc.b $1E
		dc.b $9C
		dc.b $7F ; 
		dc.b $93
		dc.b $C7
		dc.b  $F
		dc.b $DE
		dc.b $1C
		dc.b $7F ; 
		dc.b $F2
		dc.b $64 ; d
		dc.b $64 ; d
		dc.b $64 ; d
		dc.b   8
		dc.b $C1
		dc.b $82
		dc.b $7D ; }
		dc.b $BD
		dc.b $3F ; ?
		dc.b $DD
		dc.b $56 ; V
		dc.b $EC
		dc.b $64 ; d
		dc.b $69 ; i
		dc.b $D6
		dc.b $3D ; =
		dc.b $89
		dc.b $72 ; r
		dc.b $63 ; c
		dc.b $17
		dc.b $42 ; B
		dc.b $30 ; 0
		dc.b $4A ; J
		dc.b $A1
		dc.b $B8
		dc.b $DC
		dc.b $C8
		dc.b $D5
		dc.b $A3
		dc.b $AD
		dc.b $FD
		dc.b $61 ; a
		dc.b  $A
		dc.b $39 ; 9
		dc.b $8D
		dc.b $89
		dc.b $E4
		dc.b $28 ; (
		dc.b $7F ; 
		dc.b $EF
		dc.b $4E ; N
		dc.b $BC
		dc.b $31 ; 1
		dc.b $C3
		dc.b $9E
		dc.b $6C ; l
		dc.b $97
		dc.b $71 ; q
		dc.b $9B
		dc.b $7E ; ~
		dc.b $B1
		dc.b $C7
		dc.b $FB
		dc.b $CF
		dc.b $47 ; G
		dc.b $42 ; B
		dc.b $2E ; .
		dc.b $B4
		dc.b $7F ; 
		dc.b $25 ; %
		dc.b $E6
		dc.b  $F
		dc.b $85
		dc.b $DC
		dc.b $52 ; R
		dc.b $2D ; -
		dc.b $16
		dc.b $46 ; F
		dc.b $4E ; N
		dc.b $2E ; .
		dc.b $6A ; j
		dc.b $DC
		dc.b $96
		dc.b $B4
		dc.b $D9
		dc.b $3B ; ;
		dc.b  $D
		dc.b $93
		dc.b $B1
		dc.b $3B ; ;
		dc.b $12
		dc.b $37 ; 7
		dc.b $27 ; '
		dc.b $62 ; b
		dc.b $76 ; v
		dc.b $45 ; E
		dc.b $DC
		dc.b $5B ; [
		dc.b $F5
		dc.b $86
		dc.b $5A ; Z
		dc.b $8E
		dc.b $86
		dc.b $F8
		dc.b $B7
		dc.b $62 ; b
		dc.b $6F ; o
		dc.b $EC
		dc.b $69 ; i
		dc.b $EF
		dc.b $77 ; w
		dc.b $64 ; d
		dc.b $F6
		dc.b $24 ; $
		dc.b $5C ; \
		dc.b $DD
		dc.b $9B
		dc.b $DC
		dc.b $4E ; N
		dc.b $6A ; j
		dc.b $A5
		dc.b $51 ; Q
		dc.b $C4
		dc.b $6E ; n
		dc.b $4A ; J
		dc.b $A5
		dc.b $48 ; H
		dc.b $DC
		dc.b $9B
		dc.b $E9
		dc.b   6
		dc.b $9F
		dc.b $FB
		dc.b $D2
		dc.b $2E ; .
		dc.b $4D ; M
		dc.b $98
		dc.b $47 ; G
		dc.b $14
		dc.b $AA
		dc.b $34 ; 4
		dc.b $5A ; Z
		dc.b $A9
		dc.b $8C
		dc.b $EE
		dc.b $C5
		dc.b $2A ; *
		dc.b $95
		dc.b $9D
		dc.b $52 ; R
		dc.b $A9
		dc.b $B1
		dc.b $39 ; 9
		dc.b $B9
		dc.b $BB
		dc.b $38 ; 8
		dc.b $FA
		dc.b $F1
		dc.b $4D ; M
		dc.b $E9
		dc.b $16
		dc.b $4E ; N
		dc.b $B4
		dc.b $FF
		dc.b $7A ; z
		dc.b $7F ; 
		dc.b $BE
		dc.b $7C ; |
		dc.b $DC
		dc.b $DD
		dc.b $FC
		dc.b $23 ; #
		dc.b $FA
		dc.b $B4
		dc.b $C7
		dc.b   8
		dc.b $BB
		dc.b $AD
		dc.b $1A
		dc.b $3D ; =
		dc.b $73 ; s
		dc.b $6E ; n
		dc.b $F9
		dc.b $FF
		dc.b $BD
		dc.b $3B ; ;
		dc.b $E7
		dc.b $D6
		dc.b $95
		dc.b $4F ; O
		dc.b $E4
		dc.b $59 ; Y
		dc.b $A8
		dc.b $BF
		dc.b $77 ; w
		dc.b $C7
		dc.b $F7
		dc.b $71 ; q
		dc.b $4E ; N
		dc.b $2D ; -
		dc.b $AA
		dc.b $3C ; <
		dc.b $FC
		dc.b $5D ; ]
		dc.b $16
		dc.b $46 ; F
		dc.b $46 ; F
		dc.b $FD
		dc.b $67 ; g
		dc.b $AB
		dc.b $46 ; F
		dc.b $7B ; {
		dc.b $11
		dc.b $A2
		dc.b $9B
		dc.b $C9
		dc.b $D1
		dc.b $E0
		dc.b $E8
		dc.b $E1
		dc.b $BD
		dc.b $23 ; #
		dc.b $85
		dc.b $52 ; R
		dc.b $AC
		dc.b $8C
		dc.b $91
		dc.b $48 ; H
		dc.b $FA
		dc.b $D5
		dc.b $2B ; +
		dc.b $3A ; :
		dc.b $A5
		dc.b $53 ; S
		dc.b $99
		dc.b $2B ; +
		dc.b $3A ; :
		dc.b $CD
		dc.b $92
		dc.b $EE
		dc.b $85
		dc.b   2
		dc.b $9B
		dc.b $39 ; 9
		dc.b $ED
		dc.b $1D
		dc.b $F8
		dc.b $32 ; 2
		dc.b $55 ; U
		dc.b $37 ; 7
		dc.b $CF
		dc.b $62 ; b
		dc.b $55 ; U
		dc.b $1A
		dc.b $BE
		dc.b $B7
		dc.b $27 ; '
		dc.b $F3
		dc.b $48 ; H
		dc.b $D9
		dc.b $2E ; .
		dc.b $24 ; $
		dc.b $C4
		dc.b $C8
		dc.b $6E ; n
		dc.b $79 ; y
		dc.b $5A ; Z
		dc.b $46 ; F
		dc.b   8
		dc.b $31 ; 1
		dc.b $1F
		dc.b $4B ; K
		dc.b $9C
		dc.b $65 ; e
		dc.b $63 ; c
		dc.b $19
		dc.b $38 ; 8
		dc.b $13
		dc.b $C8
		dc.b $E8
		dc.b $61 ; a
		dc.b $85
		dc.b $B7
		dc.b $15
		dc.b $58 ; X
		dc.b $B9
		dc.b $B5
		dc.b $90
		dc.b $38 ; 8
		dc.b $BD
		dc.b $6C ; l
		dc.b $38 ; 8
		dc.b $85
		dc.b $7C ; |
		dc.b $43 ; C
		dc.b $8F
		dc.b $A1
		dc.b   7
		dc.b   2
		dc.b $E9
		dc.b $4F ; O
		dc.b $67 ; g
		dc.b $73 ; s
		dc.b $8F
		dc.b $D5
		dc.b $A5
		dc.b $51 ; Q
		dc.b $8A
		dc.b $C7
		dc.b $1C
		dc.b $4E ; N
		dc.b $24 ; $
		dc.b $77 ; w
		dc.b $40 ; @
		dc.b $E3
		dc.b $C9
		dc.b $D6
		dc.b $94
		dc.b $23 ; #
		dc.b $CA
		dc.b $2E ; .
		dc.b $E2
		dc.b $E2
		dc.b $8F
		dc.b $23 ; #
		dc.b $20
		dc.b $E1
		dc.b $FA
		dc.b $B9
		dc.b $BB
		dc.b $86
		dc.b $CE
		dc.b $1B
		dc.b $F5
		dc.b $26 ; &
		dc.b $A4
		dc.b $C5
		dc.b $A3
		dc.b   9
		dc.b $EC
		dc.b $32 ; 2
		dc.b $E4
		dc.b $9B
		dc.b $1C
		dc.b $71 ; q
		dc.b $82
		dc.b $6C ; l
		dc.b $84
		dc.b $79 ; y
		dc.b $61 ; a
		dc.b $5E ; ^
		dc.b $51 ; Q
		dc.b $84
		dc.b $61 ; a
		dc.b $3A ; :
		dc.b $A7
		dc.b $2E ; .
		dc.b $30 ; 0
		dc.b $4D ; M
		dc.b $89
		dc.b $CA
		dc.b $29 ; )
		dc.b $FE
		dc.b $F9
		dc.b $9D
		dc.b $94
		dc.b $85
		dc.b $53 ; S
		dc.b $B8
		dc.b $53 ; S
		dc.b $13
		dc.b $D2
		dc.b $CC
		dc.b $50 ; P
		dc.b $68 ; h
		dc.b $17
		dc.b $14
		dc.b $B1
		dc.b $46 ; F
		dc.b $28 ; (
		dc.b $76 ; v
		dc.b $2D ; -
		dc.b $52 ; R
		dc.b $D1
		dc.b $A0
		dc.b $D8
		dc.b $96
		dc.b $85
		dc.b $87
		dc.b $45 ; E
		dc.b   5
		dc.b $FA
		dc.b $A2
		dc.b $7E ; ~
		dc.b $8F
		dc.b $28 ; (
		dc.b $53 ; S
		dc.b $FE
		dc.b $EF
		dc.b $D3
		dc.b $59 ; Y
		dc.b $85
		dc.b $16
		dc.b $91
		dc.b $92
		dc.b $EB
		dc.b $B4
		dc.b $B5
		dc.b $AF
		dc.b $B5
		dc.b  $F
		dc.b $70 ; p
		dc.b $FD
		dc.b $C4
		dc.b $F7
		dc.b   3
		dc.b $29 ; )
		dc.b $82
		dc.b $3F ; ?
		dc.b $DC
		dc.b $40 ; @
		dc.b $81
		dc.b  $A
		dc.b $18
		dc.b $F4
		dc.b $BC
		dc.b $AF
		dc.b $2B ; +
		dc.b $41 ; A
		dc.b $FE
		dc.b $5B ; [
		dc.b $59 ; Y
		dc.b $3D ; =
		dc.b $4A ; J
		dc.b $FB
		dc.b $7F ; 
		dc.b $94
		dc.b $50 ; P
		dc.b $99
		dc.b $41 ; A
		dc.b $20
		dc.b $E8
		dc.b $7F ; 
		dc.b $F9
		dc.b $A7
		dc.b $BD
		dc.b  $F
		dc.b  $D
		dc.b $F4
		dc.b $F5
		dc.b $A9
		dc.b $EE
		dc.b $46 ; F
		dc.b $4A ; J
		dc.b $99
		dc.b  $D
		dc.b $D3
		dc.b $68 ; h
		dc.b $11
		dc.b $C1
		dc.b $D4
		dc.b $B4
		dc.b $9C
		dc.b $5F ; _
		dc.b $AB
		dc.b $37 ; 7
		dc.b $5B ; [
		dc.b  $D
		dc.b $45 ; E
		dc.b $38 ; 8
		dc.b $7E ; ~
		dc.b $EC
		dc.b $E6
		dc.b $E9
		dc.b $B8
		dc.b $8D
		dc.b $2B ; +
		dc.b $81
		dc.b $19
		dc.b $63 ; c
		dc.b $84
		dc.b $29 ; )
		dc.b $FE
		dc.b $E0
		dc.b $40 ; @
		dc.b $85
		dc.b $E0
		dc.b $AF
		dc.b $27 ; '
		dc.b $D1
		dc.b $F4
		dc.b $30 ; 0
		dc.b $40 ; @
		dc.b $9F
		dc.b $78 ; x
		dc.b $20
		dc.b $40 ; @
		dc.b $81
		dc.b $6B ; k
		dc.b $BC
		dc.b $9E
		dc.b $42 ; B
		dc.b $F2
		dc.b   4
		dc.b   8
		dc.b $13
		dc.b $D4
		dc.b $5F ; _
		dc.b $61 ; a
		dc.b $3C ; <
		dc.b $9E
		dc.b $47 ; G
		dc.b $65 ; e
		dc.b $E0
		dc.b $81
		dc.b  $B
		dc.b $FF
		dc.b $EE
		dc.b $15
		dc.b $E5
		dc.b $62 ; b
		dc.b $EB
		dc.b $A1
		dc.b $EB
		dc.b $27 ; '
		dc.b $90
		dc.b $BE
		dc.b $CB
		dc.b $F5
		dc.b $DF
		dc.b $D1
		dc.b $5F ; _
		dc.b $FD
		dc.b $31 ; 1
		dc.b $A7
		dc.b $F4
		dc.b $D7
		dc.b $F8
		dc.b $7A ; z
		dc.b $7F ; 
		dc.b  $F
		dc.b $BB
		dc.b $F8
		dc.b $62 ; b
		dc.b $4A ; J
		dc.b $3C ; <
		dc.b $96
		dc.b $4A ; J
		dc.b $F9
		dc.b $2E ; .
		dc.b $75 ; u
		dc.b $7F ; 
		dc.b $76 ; v
		dc.b $75 ; u
		dc.b $CE
		dc.b $A3
		dc.b $F7
		dc.b $20
		dc.b $DE
		dc.b $60 ; `
		dc.b $AD
		dc.b $23 ; #
		dc.b $5D ; ]
		dc.b $64 ; d
		dc.b $6F ; o
		dc.b $25 ; %
		dc.b $B2
		dc.b $D5
		dc.b $B0
		dc.b $BD
		dc.b $AF
		dc.b $B2
		dc.b $56 ; V
		dc.b $28 ; (
		dc.b $95
		dc.b $99
		dc.b $D7
		dc.b $C8
		dc.b $1F
		dc.b $42 ; B
		dc.b $FF
		dc.b $BB
		dc.b $AD
		dc.b $B0
		dc.b $C1
		dc.b $58 ; X
		dc.b $4F ; O
		dc.b $20
		dc.b $7A ; z
		dc.b $C8
		dc.b $13
		dc.b $F3
		dc.b $D8
		dc.b $52 ; R
		dc.b $B2
		dc.b $40 ; @
		dc.b $87
		dc.b $F0
		dc.b $FD
		dc.b $94
		dc.b $4B ; K
		dc.b $42 ; B
		dc.b $D7
		dc.b $A0
		dc.b $71 ; q
		dc.b $82
		dc.b $1E
		dc.b $47 ; G
		dc.b   2
		dc.b $32 ; 2
		dc.b  $B
		dc.b $2A ; *
		dc.b   2
		dc.b $30 ; 0
		dc.b $B2
		dc.b $31 ; 1
		dc.b $43 ; C
		dc.b $19
		dc.b $DE
		dc.b $4E ; N
		dc.b $2C ; ,
		dc.b $FE
		dc.b $D9
		dc.b $CD
		dc.b $EA
		dc.b $40 ; @
		dc.b $8C
		dc.b $96
		dc.b $41 ; A
		dc.b $45 ; E
		dc.b $1C
		dc.b $33 ; 3
		dc.b $82
		dc.b $B3
		dc.b $CB
		dc.b $5F ; _
		dc.b $F4
		dc.b $D6
		dc.b $D9
		dc.b $3F ; ?
		dc.b $D2
		dc.b $E3
		dc.b $6F ; o
		dc.b $53 ; S
		dc.b $4A ; J
		dc.b $CE
		dc.b $A9
		dc.b $54 ; T
		dc.b $E9
		dc.b $DD
		dc.b $67 ; g
		dc.b $F1
		dc.b $42 ; B
		dc.b $BF
		dc.b $47 ; G
		dc.b $FF
		dc.b $15
		dc.b $DA
		dc.b   9
		dc.b $28 ; (
		dc.b $57 ; W
		dc.b $45 ; E
		dc.b $C7
		dc.b $61 ; a
		dc.b $BA
		dc.b $6C ; l
		dc.b $E3
		dc.b $D5
		dc.b $14
		dc.b $AC
		dc.b $5C ; \
		dc.b $1D
		dc.b $14
		dc.b $C5
		dc.b $42 ; B
		dc.b $BD
		dc.b $41 ; A
		dc.b $AB
		dc.b $CE
		dc.b $C3
		dc.b   6
		dc.b $EB
		dc.b $87
		dc.b $EE
		dc.b $5A ; Z
		dc.b $6F ; o
		dc.b $3C ; <
		dc.b $52 ; R
		dc.b $A8
		dc.b $60 ; `
		dc.b $F0
		dc.b $AA
		dc.b $1B
		dc.b $F8
		dc.b $62 ; b
		dc.b $FD
		dc.b $F3
		dc.b $63 ; c
		dc.b $6F ; o
		dc.b $F7
		dc.b $37 ; 7
		dc.b  $C
		dc.b $52 ; R
		dc.b $EE
		dc.b $B4
		dc.b $BB
		dc.b $BC
		dc.b $F0
		dc.b $DE
		dc.b $6D ; m
		dc.b $86
		dc.b $C3
		dc.b $E1
		dc.b $B2
		dc.b $EC
		dc.b $36 ; 6
		dc.b $36 ; 6
		dc.b $1B
		dc.b $11
		dc.b $91
		dc.b $93
		dc.b $7A ; z
		dc.b $34 ; 4
		dc.b $F6
		dc.b $25 ; %
		dc.b $7F ; 
		dc.b $DD
		dc.b $8C
		dc.b $DA
		dc.b $B3
		dc.b $DF
		dc.b $83
		dc.b $6F ; o
		dc.b $48 ; H
		dc.b $B4
		dc.b $53 ; S
		dc.b $64 ; d
		dc.b $E2
		dc.b $75 ; u
		dc.b $C2
		dc.b $EB
		dc.b $7F ; 
		dc.b $BD
		dc.b $77 ; w
		dc.b $FB
		dc.b $AA
		dc.b $95
		dc.b $4E ; N
		dc.b $79 ; y
		dc.b $F3
		dc.b $98
		dc.b $B5
		dc.b $A3
		dc.b $E8
		dc.b $FF
		dc.b $EC
		dc.b $82
		dc.b $7B ; {
		dc.b $BD
		dc.b   6
		dc.b $EB
		dc.b $CE
		dc.b $E7
		dc.b $1F
		dc.b $E5
		dc.b $99
		dc.b $2B ; +
		dc.b $37 ; 7
		dc.b $18
		dc.b $EB
		dc.b $43 ; C
		dc.b  $D
		dc.b $3A ; :
		dc.b $CD
		dc.b $C3
		dc.b $FB
		dc.b $A6
		dc.b $B7
		dc.b $FF
		dc.b $24 ; $
		dc.b $1D
		dc.b $E3
		dc.b $F2
		dc.b $DA
		dc.b $FF
		dc.b $71 ; q
		dc.b $FE
		dc.b $72 ; r
		dc.b $7A ; z
		dc.b $BE
		dc.b $F0
		dc.b $4F ; O
		dc.b $23 ; #
		dc.b  $B
		dc.b $78 ; x
		dc.b $51 ; Q
		dc.b $7E ; ~
		dc.b $B2
		dc.b $E8
		dc.b $7A ; z
		dc.b $ED
		dc.b $E8
		dc.b $7A ; z
		dc.b $82
		dc.b $8D
		dc.b $58 ; X
		dc.b $59 ; Y
		dc.b $FA
		dc.b $BB
		dc.b $81
		dc.b $83
		dc.b $53 ; S
		dc.b   6
		dc.b $F3
		dc.b   6
		dc.b  $E
		dc.b $FE
		dc.b $86
		dc.b $FF
		dc.b $CB
		dc.b  $B
		dc.b $EC
		dc.b $B4
		dc.b $1D
		dc.b $E0
		dc.b $DF
		dc.b $E8
		dc.b  $D
		dc.b $D6
		dc.b $A7
		dc.b $F6
		dc.b $E2
		dc.b $D1
		dc.b $74 ; t
		dc.b $5C ; \
		dc.b $4E ; N
		dc.b $63 ; c
		dc.b   7
		dc.b $D1
		dc.b $4C ; L
		dc.b $5E ; ^
		dc.b $2D ; -
		dc.b $70 ; p
		dc.b $BC
		dc.b $5A ; Z
		dc.b $E4
		dc.b $6B ; k
		dc.b $C1
		dc.b $B9
		dc.b $92
		dc.b $A8
		dc.b $6E ; n
		dc.b $39 ; 9
		dc.b $EC
		dc.b $72 ; r
		dc.b $36 ; 6
		dc.b $F4
		dc.b $69 ; i
		dc.b $E2
		dc.b $8D
		dc.b $C2
		dc.b $A9
		dc.b $74 ; t
		dc.b $7F ; 
		dc.b $56 ; V
		dc.b $1D
		dc.b $63 ; c
		dc.b $99
		dc.b $D1
		dc.b $D4
		dc.b $63 ; c
		dc.b $D5
		dc.b $C6
		dc.b $EA
		dc.b $A5
		dc.b $7F ; 
		dc.b $FC
		dc.b $C8
		dc.b $EB
		dc.b $92
		dc.b $2E ; .
		dc.b $8B
		dc.b $AD
		dc.b $72 ; r
		dc.b $47 ; G
		dc.b $57 ; W
		dc.b $A0
		dc.b $D5
		dc.b $6B ; k
		dc.b $CC
		dc.b $1D
		dc.b $96
		dc.b $F4
		dc.b $30 ; 0
		dc.b $E1
		dc.b $E8
		dc.b $1C
		dc.b $6E ; n
		dc.b $B5
		dc.b $1A
		dc.b $6D ; m
		dc.b $3A ; :
		dc.b $A3
		dc.b $70 ; p
		dc.b $6A ; j
		dc.b $FE
		dc.b $EE
		dc.b $E7
		dc.b $35 ; 5
		dc.b $A3
		dc.b $F7
		dc.b $2E ; .
		dc.b   7
		dc.b $61 ; a
		dc.b $AF
		dc.b $FD
		dc.b $C3
		dc.b $9F
		dc.b $AA
		dc.b $C4
		dc.b $64 ; d
		dc.b $67 ; g
		dc.b $33 ; 3
		dc.b $82
		dc.b $62 ; b
		dc.b $8C
		dc.b $8E
		dc.b $1B
		dc.b $E6
		dc.b $CE
		dc.b $FD
		dc.b $EB
		dc.b $AE
		dc.b $D4
		dc.b $5A ; Z
		dc.b $8D
		dc.b $BF
		dc.b $56 ; V
		dc.b $CE
		dc.b $FD
		dc.b $EB
		dc.b $9E
		dc.b $42 ; B
		dc.b $80
		dc.b $BF
		dc.b $EF
		dc.b $AD
		dc.b $7D ; }
		dc.b $A4
		dc.b $24 ; $
		dc.b $AF
		dc.b $57 ; W
		dc.b $AB
		dc.b $D4
		dc.b $BA
		dc.b $69 ; i
		dc.b $4D ; M
		dc.b $6A ; j
		dc.b $1B
		dc.b $51 ; Q
		dc.b $7F ; 
		dc.b $DF
		dc.b $A1
		dc.b $6B ; k
		dc.b $57 ; W
		dc.b $AF
		dc.b $FD
		dc.b $E4
		dc.b $16
		dc.b $43 ; C
		dc.b $4F ; O
		dc.b $FB
		dc.b $A8
		dc.b $50 ; P
		dc.b $BA
		dc.b $D6
		dc.b $4F ; O
		dc.b $93
		dc.b $D5
		dc.b $FD
		dc.b $D2
		dc.b $FF
		dc.b $39 ; 9
		dc.b $D8
		dc.b $AF
		dc.b $3F ; ?
		dc.b $FB
		dc.b $D9
		dc.b $21 ; !
		dc.b $A7
		dc.b $FD
		dc.b $EC
		dc.b $90
		dc.b $50 ; P
		dc.b $AF
		dc.b $93
		dc.b $D6
		dc.b $C5
		dc.b $3B ; ;
		dc.b $9C
		dc.b $7A ; z
		dc.b $CD
		dc.b $CD
		dc.b $3C ; <
		dc.b $41 ; A
		dc.b $F1
		dc.b $E0
		dc.b $62 ; b
		dc.b $D9
		dc.b $F1
		dc.b $7D ; }
		dc.b $B7
		dc.b $4C ; L
		dc.b $C5
		dc.b $AD
		dc.b $13
		dc.b $60 ; `
		dc.b $62 ; b
		dc.b $D8
		dc.b $34 ; 4
		dc.b $6C ; l
		dc.b $37 ; 7
		dc.b $B8
		dc.b $F5
		dc.b $98
		dc.b $37 ; 7
		dc.b $56 ; V
		dc.b $7D ; }
		dc.b $78 ; x
		dc.b $47 ; G
		dc.b $FB
		dc.b $D1
		dc.b $9C
		dc.b $51 ; Q
		dc.b $A7
		dc.b $16
		dc.b $46 ; F
		dc.b $48 ; H
		dc.b $9A
		dc.b $45 ; E
		dc.b $8E
		dc.b $E4
		dc.b $8B
		dc.b $1F
		dc.b $1B
		dc.b $62 ; b
		dc.b $71 ; q
		dc.b $63 ; c
		dc.b $63 ; c
		dc.b $BB
		dc.b $F7
		dc.b $3C ; <
		dc.b $4D ; M
		dc.b $DC
		dc.b $DC
		dc.b $31 ; 1
		dc.b $9B
		dc.b $4F ; O
		dc.b $AE
		dc.b $3C ; <
		dc.b $23 ; #
		dc.b $3E ; >
		dc.b $29 ; )
		dc.b $14
		dc.b $E3
		dc.b $5F ; _
		dc.b $DE
		dc.b $6A ; j
		dc.b $E2
		dc.b $C6
		dc.b $E3
		dc.b $8B
		dc.b $45 ; E
		dc.b $D1
		dc.b $3D ; =
		dc.b $51 ; Q
		dc.b $FD
		dc.b $5F ; _
		dc.b $7A ; z
		dc.b $55 ; U
		dc.b $37 ; 7
		dc.b $A6
		dc.b $29 ; )
		dc.b $DF
		dc.b $C2
		dc.b $A9
		dc.b $5F ; _
		dc.b $5A ; Z
		dc.b $A5
		dc.b $59 ; Y
		dc.b $38 ; 8
		dc.b $A4
		dc.b $53 ; S
		dc.b $FF
		dc.b $9C
		dc.b $53 ; S
		dc.b $B1
		dc.b $D1
		dc.b $9D
		dc.b $70 ; p
		dc.b $68 ; h
		dc.b $CF
		dc.b $67 ; g
		dc.b $1E
		dc.b $79 ; y
		dc.b $D7
		dc.b $F5
		dc.b $8C
		dc.b $97
		dc.b $27 ; '
		dc.b $EF
		dc.b $3F ; ?
		dc.b $7B ; {
		dc.b $FA
		dc.b $CB
		dc.b $93
		dc.b $9F
		dc.b $8C
		dc.b $F9
		dc.b $D2
		dc.b $B3
		dc.b $6C ; l
		dc.b $31 ; 1
		dc.b $4E ; N
		dc.b $FC
		dc.b $2E ; .
		dc.b $46 ; F
		dc.b $AC
		dc.b $DB
		dc.b $9B
		dc.b $7A ; z
		dc.b $7F ; 
		dc.b $BD
		dc.b $A7
		dc.b $D7
		dc.b $77 ; w
		dc.b $5A ; Z
		dc.b $5C ; \
		dc.b $9B
		dc.b $30 ; 0
		dc.b $FD
		dc.b $EF
		dc.b  $E
		dc.b $6E ; n
		dc.b $6E ; n
		dc.b $6E ; n
		dc.b $6A ; j
		dc.b $A6
		dc.b $F9
		dc.b $D7
		dc.b  $A
		dc.b $F0
		dc.b $8C
		dc.b $EB
		dc.b $36 ; 6
		dc.b $E1
		dc.b $54 ; T
		dc.b $8F
		dc.b $37 ; 7
		dc.b $7A ; z
		dc.b $77 ; w
		dc.b $A6
		dc.b $29 ; )
		dc.b $B1
		dc.b $22 ; "
		dc.b $95
		dc.b $9E
		dc.b $29 ; )
		dc.b $8F
		dc.b   8
		dc.b $EF
		dc.b $48 ; H
		dc.b $CE
		dc.b $BE
		dc.b $B1
		dc.b $9C
		dc.b $67 ; g
		dc.b $8C
		dc.b $C8
		dc.b $10
		dc.b $D8
		dc.b $8C
		dc.b $2F ; /
		dc.b $1B
		dc.b $D2
		dc.b $E1
		dc.b $BD
		dc.b $2E ; .
		dc.b $1D
		dc.b $68 ; h
		dc.b $D0
		dc.b $EB
		dc.b $4B ; K
		dc.b $A7
		dc.b $B2
		dc.b $6D ; m
		dc.b $FD
		dc.b $E6
		dc.b $20
		dc.b $6F ; o
		dc.b $37 ; 7
		dc.b $25 ; %
		dc.b $4C ; L
		dc.b $9F
		dc.b $47 ; G
		dc.b $21 ; !
		dc.b $3C ; <
		dc.b $81
		dc.b $82
		dc.b   7
		dc.b $47 ; G
		dc.b $52 ; R
		dc.b $D2
		dc.b $3F ; ?
		dc.b $E4
		dc.b $40 ; @
		dc.b $8E
		dc.b $86
		dc.b $4C ; L
		dc.b $47 ; G
		dc.b $46 ; F
		dc.b $23 ; #
		dc.b $61 ; a
		dc.b $43 ; C
		dc.b $2E ; .
		dc.b $7E ; ~
		dc.b $9F
		dc.b $B3
		dc.b $5D ; ]
		dc.b $7F ; 
		dc.b $B3
		dc.b $D1
		dc.b $EB
		dc.b $FC
		dc.b $35 ; 5
		dc.b $1F
		dc.b $E3
		dc.b $59 ; Y
		dc.b $2F ; /
		dc.b $FC
		dc.b $FF
		dc.b $E7
		dc.b $FF
		dc.b $3F ; ?
		dc.b $F9
		dc.b $FF
		dc.b $CF
		dc.b $FE
		dc.b $7F ; 
		dc.b $F3
		dc.b $FF
		dc.b $9F
		dc.b $FC
		dc.b $FF
		dc.b $E7
		dc.b $FF
		dc.b $3C ; <
		dc.b $FE
		dc.b $DE
		dc.b $41 ; A
		dc.b $42 ; B
		dc.b $8C
		dc.b $E1
		dc.b $46 ; F
		dc.b $83
		dc.b $3F ; ?
		dc.b $70 ; p
		dc.b $57 ; W
		dc.b $A8
		dc.b $25 ; %
		dc.b $1A
		dc.b $48 ; H
		dc.b $50 ; P
		dc.b $77 ; w
		dc.b $3F ; ?
		dc.b $51 ; Q
		dc.b   5
		dc.b $79 ; y
		dc.b $6A ; j
		dc.b $25 ; %
		dc.b $CE
		dc.b $F5
		dc.b $F2
		dc.b $34 ; 4
		dc.b $7F ; 
		dc.b $91
		dc.b $CE
		dc.b $43 ; C
		dc.b $3D ; =
		dc.b $EC
		dc.b $95
		dc.b $D3
		dc.b $3B ; ;
		dc.b $93
		dc.b $1F
		dc.b $23 ; #
		dc.b $9E
		dc.b $39 ; 9
		dc.b $EF
		dc.b $39 ; 9
		dc.b $E3
		dc.b $2B ; +
		dc.b $CE
		dc.b $E4
		dc.b $64 ; d
		dc.b $BC
		dc.b $DB
		dc.b $D6
		dc.b $2D ; -
		dc.b $17
		dc.b $45 ; E
		dc.b $36 ; 6
		dc.b $45 ; E
		dc.b $DC
		dc.b $53 ; S
		dc.b $64 ; d
		dc.b $5B ; [
		dc.b $54 ; T
		dc.b $77 ; w
		dc.b $C4
		dc.b $3A ; :
		dc.b $29 ; )
		dc.b $B1
		dc.b $D6
		dc.b $C6
		dc.b $78 ; x
		dc.b $B5
		dc.b $AE
		dc.b $8A
		dc.b $63 ; c
		dc.b $16
		dc.b $16
		dc.b $C6
		dc.b $A9
		dc.b $56 ; V
		dc.b $B6
		dc.b $2D ; -
		dc.b $B1
		dc.b $2A ; *
		dc.b $8C
		dc.b $3A ; :
		dc.b $E6
		dc.b $DB
		dc.b $13
		dc.b $64 ; d
		dc.b $3B ; ;
		dc.b $D1
		dc.b $BB
		dc.b $D2
		dc.b $3D ; =
		dc.b $E8
		dc.b $EE
		dc.b $F4
		dc.b $8A
		dc.b $55 ; U
		dc.b $31 ; 1
		dc.b $48 ; H
		dc.b $B1
		dc.b $B7
		dc.b $F7
		dc.b $8D
		dc.b $BF
		dc.b $BC
		dc.b $E8
		dc.b $CF
		dc.b $14
		dc.b $A9
		dc.b $B5
		dc.b $67 ; g
		dc.b $B2
		dc.b   7
		dc.b $1E
		dc.b $B6
		dc.b $73 ; s
		dc.b $26 ; &
		dc.b $F8
		dc.b $5A ; Z
		dc.b $C9
		dc.b $B3
		dc.b $55 ; U
		dc.b $AD
		dc.b $14
		dc.b $AA
		dc.b $75 ; u
		dc.b $A3
		dc.b $27 ; '
		dc.b $5C ; \
		dc.b $FF
		dc.b $DE
		dc.b $9D
		dc.b $F3
		dc.b $EF
		dc.b $9E
		dc.b $FC
		dc.b $1B
		dc.b $7F ; 
		dc.b $AE
		dc.b $C9
		dc.b $DD
		dc.b $1D
		dc.b $47 ; G
		dc.b $B9
		dc.b $DF
		dc.b $AC
		dc.b $E4
		dc.b $EB
		dc.b $AB
		dc.b $16
		dc.b $8E
		dc.b $A9
		dc.b $D5
		dc.b $22 ; "
		dc.b $D0
		dc.b $DD
		dc.b $36 ; 6
		dc.b $B4
		dc.b $10
		dc.b $E7
		dc.b $30 ; 0
		dc.b $40 ; @
		dc.b $AE
		dc.b $75 ; u
		dc.b $A2
		dc.b $8C
		dc.b $E3
		dc.b $D4
		dc.b  $A
		dc.b $1F
		dc.b $BB
		dc.b $2B ; +
		dc.b $36 ; 6
		dc.b $23 ; #
		dc.b $A8
		dc.b $2A ; *
		dc.b $D5
		dc.b $9E
		dc.b $AA
		dc.b $38 ; 8
		dc.b $A1
		dc.b $84
		dc.b $28 ; (
		dc.b $29 ; )
		dc.b   9
		dc.b $FE
		dc.b $E1
		dc.b $31 ; 1
		dc.b $42 ; B
		dc.b $87
		dc.b   8
		dc.b $D6
		dc.b $1C
		dc.b $61 ; a
		dc.b $19
		dc.b $D7
		dc.b $FC
		dc.b $EE
		dc.b $B2
		dc.b $96
		dc.b $42 ; B
		dc.b $9C
		dc.b $B7
		dc.b $4E ; N
		dc.b $30 ; 0
		dc.b $FD
		dc.b $61 ; a
		dc.b $56 ; V
		dc.b $7B ; {
		dc.b $12
		dc.b $3B ; ;
		dc.b $13
		dc.b $9B
		dc.b $9B
		dc.b $78 ; x
		dc.b $70 ; p
		dc.b $74 ; t
		dc.b $49 ; I
		dc.b $CD
		dc.b $66 ; f
		dc.b $A2
		dc.b $73 ; s
		dc.b $74 ; t
		dc.b $A3
		dc.b $8B
		dc.b $A7
		dc.b $F2
		dc.b   7
		dc.b $EE
		dc.b $12
		dc.b $30 ; 0
		dc.b $DC
		dc.b  $B
		dc.b $67 ; g
		dc.b $2D ; -
		dc.b $D5
		dc.b $C2
		dc.b $1B
		dc.b $92
		dc.b $28 ; (
		dc.b $D3
		dc.b $D4
		dc.b $D1
		dc.b $48 ; H
		dc.b $B4
		dc.b $5C ; \
		dc.b $71 ; q
		dc.b $77 ; w
		dc.b $1D
		dc.b $46 ; F
		dc.b $EA
		dc.b $7F ; 
		dc.b $2C ; ,
		dc.b $6E ; n
		dc.b $D4
		dc.b $DA
		dc.b $9E
		dc.b $4E ; N
		dc.b $69 ; i
		dc.b $B0
		dc.b $2D ; -
		dc.b $6E ; n
		dc.b $79 ; y
		dc.b $FB
		dc.b $1B
		dc.b $9E
		dc.b $60 ; `
		dc.b $C1
		dc.b $AD
		dc.b $8E
		dc.b  $E
		dc.b  $E
		dc.b  $A
		dc.b $F7
		dc.b $23 ; #
		dc.b $F5
		dc.b $32 ; 2
		dc.b $55 ; U
		dc.b $1E
		dc.b $E6
		dc.b $C1
		dc.b $BF
		dc.b $97
		dc.b $47 ; G
		dc.b   7
		dc.b   7
		dc.b $28 ; (
		dc.b $2B ; +
		dc.b $28 ; (
		dc.b $EA
		dc.b  $D
		dc.b $43 ; C
		dc.b $50 ; P
		dc.b $30 ; 0
		dc.b $E6
		dc.b $73 ; s
		dc.b $6A ; j
		dc.b $7D ; }
		dc.b $78 ; x
		dc.b $6A ; j
		dc.b   8
		dc.b $C9
		dc.b $54 ; T
		dc.b $6F ; o
		dc.b $E5
		dc.b $C7
		dc.b $F5
		dc.b $68 ; h
		dc.b $E8
		dc.b $88
		dc.b $BF
		dc.b $53 ; S
		dc.b $CB
		dc.b $59 ; Y
		dc.b $58 ; X
		dc.b $A5
		dc.b $63 ; c
		dc.b $BF
		dc.b $DA
		dc.b $6E ; n
		dc.b $B9
		dc.b $D7
		dc.b $44 ; D
		dc.b $1A
		dc.b $9C
		dc.b $6E ; n
		dc.b $47 ; G
		dc.b $3C ; <
		dc.b $A3
		dc.b $86
		dc.b $A2
		dc.b $E3
		dc.b $83
		dc.b $A8
		dc.b   9
		dc.b $C0
		dc.b $EC
		dc.b $27 ; '
		dc.b $EA
		dc.b $79 ; y
		dc.b $28 ; (
		dc.b $20
		dc.b $5C ; \
		dc.b $EE
		dc.b $2B ; +
		dc.b $22 ; "
		dc.b $91
		dc.b $6D ; m
		dc.b $46 ; F
		dc.b $49 ; I
		dc.b $54 ; T
		dc.b $AC
		dc.b $DC
		dc.b $9D
		dc.b $69 ; i
		dc.b $5E ; ^
		dc.b $1B
		dc.b $D0
		dc.b $E2
		dc.b $91
		dc.b $74 ; t
		dc.b $E2
		dc.b $E3
		dc.b $FE
		dc.b $DB
		dc.b $CC
		dc.b $18
		dc.b $30 ; 0
		dc.b $56 ; V
		dc.b $10
		dc.b $5B ; [
		dc.b $77 ; w
		dc.b $6B ; k
		dc.b $38 ; 8
		dc.b $5B ; [
		dc.b $62 ; b
		dc.b $E1
		dc.b $C8
		dc.b $C8
		dc.b $70 ; p
		dc.b $74 ; t
		dc.b  $C
		dc.b $A3
		dc.b $C3
		dc.b $91
		dc.b $EA
		dc.b $E3
		dc.b $84
		dc.b $6D ; m
		dc.b $D5
		dc.b $1C
		dc.b  $D
		dc.b $B5
		dc.b $1C
		dc.b $81
		dc.b $BC
		dc.b $D7
		dc.b $3E ; >
		dc.b $B5
		dc.b $12
		dc.b $51 ; Q
		dc.b $2B ; +
		dc.b $16
		dc.b $4B ; K
		dc.b $20
		dc.b $7D ; }
		dc.b $16
		dc.b $40 ; @
		dc.b $81
		dc.b $59 ; Y
		dc.b $2A ; *
		dc.b $3C ; <
		dc.b $9E
		dc.b $B1
		dc.b $3A ; :
		dc.b $3D ; =
		dc.b $6C ; l
		dc.b $37 ; 7
		dc.b $9F
		dc.b $B1
		dc.b $83
		dc.b $7A ; z
		dc.b $BD
		dc.b $41 ; A
		dc.b $FF
		dc.b $DC
		dc.b $28 ; (
		dc.b $92
		dc.b $9D
		dc.b $9A
		dc.b $58 ; X
		dc.b $6A ; j
		dc.b $72 ; r
		dc.b $D3
		dc.b $A6
		dc.b $8F
		dc.b $D1
		dc.b $EC
		dc.b $71 ; q
		dc.b $AF
		dc.b   6
		dc.b $36 ; 6
		dc.b $9B
		dc.b $62 ; b
		dc.b $1C
		dc.b $6C ; l
		dc.b $6C ; l
		dc.b $8D
		dc.b $6C ; l
		dc.b $6E ; n
		dc.b $3B ; ;
		dc.b $AD
		dc.b $1F
		dc.b $B9
		dc.b $67 ; g
		dc.b $98
		dc.b $70 ; p
		dc.b $38 ; 8
		dc.b $A9
		dc.b $8F
		dc.b $E4
		dc.b $D8
		dc.b $60 ; `
		dc.b $C3
		dc.b $92
		dc.b $B1
		dc.b $AA
		dc.b $71 ; q
		dc.b $4A ; J
		dc.b $CF
		dc.b $F7
		dc.b $93
		dc.b $AA
		dc.b $57 ; W
		dc.b $83
		dc.b $4D ; M
		dc.b $92
		dc.b $33 ; 3
		dc.b $36 ; 6
		dc.b $E3
		dc.b $84
		dc.b $58 ; X
		dc.b $DB
		dc.b $8F
		dc.b $67 ; g
		dc.b $11
		dc.b $AA
		dc.b $11
		dc.b $77 ; w
		dc.b $1B
		dc.b $68 ; h
		dc.b $E3
		dc.b $8B
		dc.b $A3
		dc.b $EB
		dc.b $8F
		dc.b $FB
		dc.b $BB
		dc.b $27 ; '
		dc.b $54 ; T
		dc.b $C7
		dc.b $D6
		dc.b $A9
		dc.b $B2
		dc.b $75 ; u
		dc.b $4D ; M
		dc.b $F3
		dc.b $EF
		dc.b $EC
		dc.b $4E ; N
		dc.b $F9
		dc.b $F7
		dc.b $E1
		dc.b $D7
		dc.b $D9
		dc.b $3E ; >
		dc.b $B4
		dc.b $EC
		dc.b $EF
		dc.b $9F
		dc.b $37 ; 7
		dc.b $FB
		dc.b $D3
		dc.b $7A ; z
		dc.b $63 ; c
		dc.b $C3
		dc.b $9B
		dc.b $BF
		dc.b   6
		dc.b $4D ; M
		dc.b $F8
		dc.b $36 ; 6
		dc.b $FE
		dc.b $1D
		dc.b $F8
		dc.b $75 ; u
		dc.b $A7
		dc.b $37 ; 7
		dc.b $37 ; 7
		dc.b $35 ; 5
		dc.b $53 ; S
		dc.b $9D
		dc.b $1A
		dc.b $7A ; z
		dc.b $BF
		dc.b $78 ; x
		dc.b $EE
		dc.b $78 ; x
		dc.b $EA
		dc.b $8B
		dc.b $99
		dc.b $19
		dc.b $1D
		dc.b $1B
		dc.b $B8
		dc.b $32 ; 2
		dc.b $46 ; F
		dc.b $75 ; u
		dc.b $9C
		dc.b $67 ; g
		dc.b $14
		dc.b $C6
		dc.b $7F ; 
		dc.b $AC
		dc.b $4D ; M
		dc.b $E9
		dc.b $14
		dc.b $8B
		dc.b $4E ; N
		dc.b $38 ; 8
		dc.b $32 ; 2
		dc.b $34 ; 4
		dc.b $F1
		dc.b $4A ; J
		dc.b $B6
		dc.b $1B
		dc.b $30 ; 0
		dc.b $AA
		dc.b $6F ; o
		dc.b $9F
		dc.b $7C ; |
		dc.b $FB
		dc.b $E7
		dc.b $8A
		dc.b $6C ; l
		dc.b $C2
		dc.b $A9
		dc.b $B2
		dc.b $E4
		dc.b $83
		dc.b $61 ; a
		dc.b $54 ; T
		dc.b $68 ; h
		dc.b $36 ; 6
		dc.b $15
		dc.b $4A ; J
		dc.b $A1
		dc.b $36 ; 6
		dc.b $15
		dc.b $4A ; J
		dc.b $C0
		dc.b $AE
		dc.b $4C ; L
		dc.b $51 ; Q
		dc.b $A0
		dc.b $1B
		dc.b $66 ; f
		dc.b $10
		dc.b $1B
		dc.b $30 ; 0
		dc.b $E4
		dc.b $95
		dc.b $9E
		dc.b $31 ; 1
		dc.b $83
		dc.b $CE
		dc.b   5
		dc.b $CE
		dc.b $80
		dc.b $AD
		dc.b $83
		dc.b $41 ; A
		dc.b   9
		dc.b $F4
		dc.b $83
		dc.b $23 ; #
		dc.b $59 ; Y
		dc.b $6B ; k
		dc.b $98
		dc.b $10
		dc.b $FC
		dc.b $B0
		dc.b $3E ; >
		dc.b $77 ; w
		dc.b $DE
		dc.b   8
		dc.b $25 ; %
		dc.b   7
		dc.b $E5
		dc.b $81
		dc.b $21 ; !
		dc.b  $F
		dc.b $D3
		dc.b  $F
		dc.b $E1
		dc.b $BD
		dc.b $6C ; l
		dc.b $5D ; ]
		dc.b $64 ; d
		dc.b   8
		dc.b $C1
		dc.b $B8
		dc.b $C1
		dc.b $6A ; j
		dc.b $30 ; 0
		dc.b $6E ; n
		dc.b $1F
		dc.b $BB
		dc.b $7D ; }
		dc.b $A0
		dc.b $BD
		dc.b $17
		dc.b $FE
		dc.b $FA
		dc.b $E4
		dc.b $24 ; $
		dc.b $A2
		dc.b $4B ; K
		dc.b $9C
		dc.b $4B ; K
		dc.b $A4
		dc.b $9F
		dc.b $21 ; !
		dc.b $6D ; m
		dc.b $92
		dc.b $51 ; Q
		dc.b $AA
		dc.b $D1
		dc.b $20
		dc.b $BF
		dc.b $AB
		dc.b $B5
		dc.b $EA
		dc.b $60 ; `
		dc.b $DC
		dc.b $16
		dc.b $4B ; K
		dc.b $D1
		dc.b $73 ; s
		dc.b $E9
		dc.b $E4
		dc.b $B9
		dc.b $C6
		dc.b $E1
		dc.b $E5
		dc.b $AF
		dc.b $C9
		dc.b $EA
		dc.b $33 ; 3
		dc.b $E8
		dc.b $62 ; b
		dc.b $5A ; Z
		dc.b $67 ; g
		dc.b $50 ; P
		dc.b $B2
		dc.b $D3
		dc.b $C9
		dc.b $7F ; 
		dc.b $E7
		dc.b $FF
		dc.b $3F ; ?
		dc.b $F9
		dc.b $9B
		dc.b $26 ; &
		dc.b $F4
		dc.b $6C ; l
		dc.b $37 ; 7
		dc.b $B9
		dc.b $B0
		dc.b $D8
		dc.b $EB
		dc.b $A7
		dc.b $B0
		dc.b $DC
		dc.b $D3
		dc.b $D8
		dc.b  $D
		dc.b $DC
		dc.b $2A ; *
		dc.b $A1
		dc.b $DC
		dc.b $F3
		dc.b $57 ; W
		dc.b $9F
		dc.b $EA
		dc.b $EE
		dc.b $4A ; J
		dc.b $A6
		dc.b $F4
		dc.b $6E ; n
		dc.b $11
		dc.b $4C ; L
		dc.b $53 ; S
		dc.b $19
		dc.b $B7
		dc.b $7F ; 
		dc.b  $A
		dc.b $CF
		dc.b $14
		dc.b $C5
		dc.b $31 ; 1
		dc.b $4C ; L
		dc.b $7F ; 
		dc.b $FD
		dc.b $FB
		dc.b $D4
		dc.b $6E ; n
		dc.b $1C
		dc.b $4D ; M
		dc.b $C8
		dc.b $DC
		dc.b $59 ; Y
		dc.b $C7
		dc.b $14
		dc.b $AB
		dc.b $8D
		dc.b $8F
		dc.b $54 ; T
		dc.b $51 ; Q
		dc.b $A3
		dc.b $6E ; n
		dc.b $A6
		dc.b $8A
		dc.b $33 ; 3
		dc.b $9A
		dc.b $DB
		dc.b $AA
		dc.b $91
		dc.b $67 ; g
		dc.b $1B
		dc.b $3B ; ;
		dc.b $14
		dc.b $8B
		dc.b $44 ; D
		dc.b $DD
		dc.b $54 ; T
		dc.b $AC
		dc.b $F5
		dc.b $5C ; \
		dc.b $8D
		dc.b $83
		dc.b $1D
		dc.b $67 ; g
		dc.b $1B
		dc.b $A1
		dc.b $1D
		dc.b $ED
		dc.b $16
		dc.b $72 ; r
		dc.b $6C ; l
		dc.b $8B
		dc.b $45 ; E
		dc.b $D1
		dc.b $AA
		dc.b $55 ; U
		dc.b $1A
		dc.b  $E
		dc.b $68 ; h
		dc.b $A5
		dc.b $78 ; x
		dc.b $BA
		dc.b $2E ; .
		dc.b $FD
		dc.b $E3
		dc.b $99
		dc.b $CD
		dc.b $FC
		dc.b $B4
		dc.b $FD
		dc.b $65 ; e
		dc.b $AE
		dc.b $8C
		dc.b $EE
		dc.b $37 ; 7
		dc.b $1B
		dc.b $9A
		dc.b $2C ; ,
		dc.b $E8
		dc.b $C2
		dc.b $D8
		dc.b $B4
		dc.b $19
		dc.b $C6
		dc.b $E3
		dc.b $E7
		dc.b $87
		dc.b $EE
		dc.b $5C ; \
		dc.b $D1
		dc.b $83
		dc.b $6A ; j
		dc.b $B5
		dc.b $8F
		dc.b $54 ; T
		dc.b $79 ; y
		dc.b $33 ; 3
		dc.b $A0
		dc.b $EB
		dc.b $8F
		dc.b $91
		dc.b $E1
		dc.b $14
		dc.b $8D
		dc.b $D1
		dc.b $48 ; H
		dc.b $A7
		dc.b $EF
		dc.b $52 ; R
		dc.b $2D ; -
		dc.b $16
		dc.b $8B
		dc.b $89
		dc.b $A2
		dc.b $D1
		dc.b $2B ; +
		dc.b $9C
		dc.b $49 ; I
		dc.b $CE
		dc.b $47 ; G
		dc.b $FA
		dc.b $C6
		dc.b $26 ; &
		dc.b $8D
		dc.b $D1
		dc.b $BA
		dc.b $24 ; $
		dc.b $EE
		dc.b $78 ; x
		dc.b $B4
		dc.b $5B ; [
		dc.b $F5
		dc.b $8E
		dc.b $30 ; 0
		dc.b $4E ; N
		dc.b $FD
		dc.b $C3
		dc.b $8D
		dc.b $C4
		dc.b $28 ; (
		dc.b $D1
		dc.b $23 ; #
		dc.b   4
		dc.b $F6
		dc.b  $E
		dc.b $23 ; #
		dc.b  $E
		dc.b $37 ; 7
		dc.b $44 ; D
		dc.b $8C
		dc.b $9C
		dc.b $FD
		dc.b $C7
		dc.b $47 ; G
		dc.b $94
		dc.b $4A ; J
		dc.b $D7
		dc.b $10
		dc.b $37 ; 7
		dc.b $46 ; F
		dc.b $DF
		dc.b $EC
		dc.b $43 ; C
		dc.b $8E
		dc.b $20
		dc.b $E8
		dc.b $E8
		dc.b $A5
		dc.b $6D ; m
		dc.b $FE
		dc.b $5A ; Z
		dc.b   3
		dc.b $16
		dc.b $EA
		dc.b $8D
		dc.b   1
		dc.b $19
		dc.b   7
		dc.b $10
		dc.b $A3
		dc.b $C8
		dc.b $13
		dc.b $F7
		dc.b $58 ; X
		dc.b $56 ; V
		dc.b $10
		dc.b $2E ; .
		dc.b $6E ; n
		dc.b $69 ; i
		dc.b $F7
		dc.b $A4
		dc.b $67 ; g
		dc.b $BC
		dc.b $E2
		dc.b $EE
		dc.b $29 ; )
		dc.b $1A
		dc.b $9B
		dc.b $DC
		dc.b $1D
		dc.b $C6
		dc.b $96
		dc.b $82
		dc.b $D4
		dc.b   8
		dc.b $1B
		dc.b $C8
		dc.b $63 ; c
		dc.b $C5
		dc.b $21 ; !
		dc.b $4C ; L
		dc.b $79 ; y
		dc.b $46 ; F
		dc.b $71 ; q
		dc.b $D9
		dc.b  $A
		dc.b $42 ; B
		dc.b $3B ; ;
		dc.b $E3
		dc.b $A8
		dc.b $BA
		dc.b $F8
		dc.b $9A
		dc.b $77 ; w
		dc.b $C5
		dc.b $D1
		dc.b $4E ; N
		dc.b $B1
		dc.b $A9
		dc.b $22 ; "
		dc.b $98
		dc.b $97
		dc.b $B6
		dc.b $E0
		dc.b $40 ; @
		dc.b $B5
		dc.b $46 ; F
		dc.b $86
		dc.b $F2
		dc.b $77 ; w
		dc.b $EE
		dc.b  $E
		dc.b $C7
		dc.b $7F ; 
		dc.b $64 ; d
		dc.b $7E ; ~
		dc.b $EF
		dc.b $5F ; _
		dc.b $EF
		dc.b $35 ; 5
		dc.b $5B ; [
		dc.b $D7
		dc.b $1D
		dc.b $54 ; T
		dc.b $72 ; r
		dc.b $5C ; \
		dc.b $E2
		dc.b $BB
		dc.b   6
		dc.b $4F ; O
		dc.b $D5
		dc.b $93
		dc.b $B7
		dc.b $38 ; 8
		dc.b $81
		dc.b   2
		dc.b $FF
		dc.b $BF
		dc.b $FD
		dc.b $FF
		dc.b $EF
		dc.b $61 ; a
		dc.b $FF
		dc.b $9E
		dc.b $9E
		dc.b $C4
		dc.b $EA
		dc.b $3D ; =
		dc.b $45 ; E
		dc.b   1
		dc.b $7B ; {
		dc.b $2B ; +
		dc.b $D4
		dc.b $2E ; .
		dc.b $B5
		dc.b  $A
		dc.b $5A ; Z
		dc.b $E9
		dc.b $A9
		dc.b $47 ; G
		dc.b $F1
		dc.b $75 ; u
		dc.b $A8
		dc.b $50 ; P
		dc.b $BD
		dc.b   9
		dc.b $75 ; u
		dc.b $AD
		dc.b $84
		dc.b $17
		dc.b $DA
		dc.b $8E
		dc.b $50 ; P
		dc.b $AF
		dc.b $24 ; $
		dc.b $27 ; '
		dc.b $2D ; -
		dc.b $93
		dc.b $D4
		dc.b $B4
		dc.b   4
		dc.b $E2
		dc.b $71 ; q
		dc.b   5
		dc.b $1A
		dc.b  $E
		dc.b $EB
		dc.b  $A
		dc.b $C3
		dc.b   6
		dc.b   9
		dc.b $E6
		dc.b  $F
		dc.b $FE
		dc.b $E7
		dc.b $62 ; b
		dc.b $83
		dc.b $20
		dc.b $BA
		dc.b $E8
		dc.b $F5
		dc.b $B1
		dc.b $5E ; ^
		dc.b $BD
		dc.b $34 ; 4
		dc.b  $A
		dc.b $F5
		dc.b $B3
		dc.b $D1
		dc.b $DF
		dc.b $BC
		dc.b   6
		dc.b $3D ; =
		dc.b $35 ; 5
		dc.b $52 ; R
		dc.b $D0
		dc.b $6E ; n
		dc.b $3B ; ;
		dc.b $3F ; ?
		dc.b $78 ; x
		dc.b $F2
		dc.b $30 ; 0
		dc.b $71 ; q
		dc.b $98
		dc.b $20
		dc.b $60 ; `
		dc.b $F8
		dc.b $BC
		dc.b $87
		dc.b $A4
		dc.b $7F ; 
		dc.b $EE
		dc.b $90
		dc.b $DD
		dc.b $67 ; g
		dc.b $EB
		dc.b  $E
		dc.b $8F
		dc.b $B5
		dc.b $DC
		dc.b $68 ; h
		dc.b $3F ; ?
		dc.b $B2
		dc.b $F8
		dc.b $8F
		dc.b $42 ; B
		dc.b   5
		dc.b $C4
		dc.b $C5
		dc.b $A4
		dc.b $FB
		dc.b $47 ; G
		dc.b $A1
		dc.b $1B
		dc.b $CC
		dc.b $5A ; Z
		dc.b $F5
		dc.b $90
		dc.b $51 ; Q
		dc.b $21 ; !
		dc.b $DC
		dc.b $F5
		dc.b  $A
		dc.b $F9
		dc.b $69 ; i
		dc.b $7D ; }
		dc.b $9F
		dc.b $B5
		dc.b $CF
		dc.b $AF
		dc.b $F6
		dc.b $AF
		dc.b $50 ; P
		dc.b $B2
		dc.b $5E ; ^
		dc.b $8A
		dc.b $3B ; ;
		dc.b $88
		dc.b $48 ; H
		dc.b $69 ; i
		dc.b $25 ; %
		dc.b  $A
		dc.b $60 ; `
		dc.b $DE
		dc.b $76 ; v
		dc.b $18
		dc.b $B4
		dc.b $2D ; -
		dc.b $86
		dc.b $2D ; -
		dc.b $97
		dc.b $4B ; K
		dc.b $64 ; d
		dc.b $14
		dc.b $1B
		dc.b $CD
		dc.b $42 ; B
		dc.b $BC
		dc.b $FD
		dc.b $97
		dc.b $5A ; Z
		dc.b $D8
		dc.b $A6
		dc.b $1C
		dc.b  $A
		dc.b $D7
		dc.b $1B
		dc.b $1D
		dc.b   5
		dc.b $AE
		dc.b $23 ; #
		dc.b $1B
		dc.b $AD
		dc.b $6D ; m
		dc.b $C0
		dc.b $8C
		dc.b $76 ; v
		dc.b $15
		dc.b $F6
		dc.b $8A
		dc.b $30 ; 0
		dc.b $B4
		dc.b $BD
		dc.b   8
		dc.b $E8
		dc.b   8
		dc.b $C3
		dc.b $3E ; >
		dc.b $DF
		dc.b $DC
		dc.b $76 ; v
		dc.b $4F ; O
		dc.b $7A ; z
		dc.b $57 ; W
		dc.b  $C
		dc.b $52 ; R
		dc.b $BD
		dc.b $95
		dc.b $9E
		dc.b $F4
		dc.b $C5
		dc.b $2B ; +
		dc.b $3D ; =
		dc.b $89
		dc.b $8E
		dc.b $1D
		dc.b $89
		dc.b $54 ; T
		dc.b $AA
		dc.b $63 ; c
		dc.b $D9
		dc.b $54 ; T
		dc.b $EB
		dc.b $6E ; n
		dc.b $6D ; m
		dc.b $F1
		dc.b $9F
		dc.b $5A ; Z
		dc.b $45 ; E
		dc.b $3A ; :
		dc.b $F0
		dc.b $EF
		dc.b $9F
		dc.b $FB
		dc.b $D3
		dc.b $9B
		dc.b $9B
		dc.b $9A
		dc.b $33 ; 3
		dc.b $EB
		dc.b $E1
		dc.b $BF
		dc.b $8E
		dc.b $1B
		dc.b $23 ; #
		dc.b $C3
		dc.b $67 ; g
		dc.b $14
		dc.b $8F
		dc.b $FF
		dc.b $A7
		dc.b $59 ; Y
		dc.b $C5
		dc.b $38 ; 8
		dc.b $E1
		dc.b $54 ; T
		dc.b $E3
		dc.b $38 ; 8
		dc.b $A6
		dc.b $33 ; 3
		dc.b $C5
		dc.b $23 ; #
		dc.b $8E
		dc.b $18
		dc.b $B6
		dc.b $CE
		dc.b  $D
		dc.b $8E
		dc.b $11
		dc.b $FF
		dc.b $75 ; u
		dc.b $52 ; R
		dc.b $33 ; 3
		dc.b $DF
		dc.b $14
		dc.b $D9
		dc.b $87
		dc.b $EB
		dc.b $30 ; 0
		dc.b $E2
		dc.b $91
		dc.b $85
		dc.b $3F ; ?
		dc.b $6C ; l
		dc.b $39 ; 9
		dc.b $7F ; 
		dc.b $18
		dc.b $72 ; r
		dc.b $2F ; /
		dc.b $CB
		dc.b $59 ; Y
		dc.b $FA
		dc.b $A2
		dc.b $BE
		dc.b $C8
		dc.b $C1
		dc.b $D4
		dc.b   4
		dc.b $1A
		dc.b  $E
		dc.b $81
		dc.b   2
		dc.b  $C
		dc.b $EE
		dc.b $5F ; _
		dc.b $96
		dc.b   4
		dc.b $DA
		dc.b $A0
		dc.b $5F ; _
		dc.b $96
		dc.b $30 ; 0
		dc.b   0
unk_EE88:       dc.b   9		; DATA XREF: sub_1988↑o
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   1
		dc.b $F7
		dc.b $DF
		dc.b $7D ; }
		dc.b $F7
		dc.b $DF
		dc.b $7D ; }
		dc.b $F7
		dc.b $DF
		dc.b $7D ; }
		dc.b $F7
		dc.b $D3
		dc.b   5
		dc.b $F7
		dc.b $D4
		dc.b   1
		dc.b $50 ; P
		dc.b $DF
		dc.b $68 ; h
		dc.b   5
		dc.b   8
		dc.b $7D ; }
		dc.b $10
		dc.b $93
		dc.b   5
		dc.b $13
		dc.b $91
		dc.b  $D
		dc.b $41 ; A
		dc.b $13
		dc.b   1
		dc.b   3
		dc.b $D1
		dc.b $11
		dc.b $21 ; !
		dc.b $D0
		dc.b   6
		dc.b   4
		dc.b $8A
		dc.b $79 ; y
		dc.b $E7
		dc.b $9E
		dc.b $4A ; J
		dc.b   7
		dc.b $9E
		dc.b $79 ; y
		dc.b $E7
		dc.b $9E
		dc.b $79 ; y
		dc.b $E7
		dc.b $9E
		dc.b $7A ; z
		dc.b $E1
		dc.b $C0
		dc.b $31 ; 1
		dc.b $4F ; O
		dc.b $21 ; !
		dc.b $73 ; s
		dc.b $C7
		dc.b $82
		dc.b $62 ; b
		dc.b $86
		dc.b $BF
		dc.b $F0
unk_EECE:       dc.b   0		; DATA XREF: sub_1684+4E↑o
		dc.b $18
		dc.b $81
		dc.b   7
		dc.b $7A ; z
		dc.b $82
		dc.b   6
		dc.b $36 ; 6
		dc.b $18
		dc.b $F6
		dc.b $27 ; '
		dc.b $76 ; v
		dc.b $83
		dc.b   5
		dc.b $12
		dc.b $16
		dc.b $32 ; 2
		dc.b $28 ; (
		dc.b $F7
		dc.b $37 ; 7
		dc.b $71 ; q
		dc.b $84
		dc.b   5
		dc.b  $C
		dc.b $16
		dc.b $2A ; *
		dc.b $26 ; &
		dc.b $2B ; +
		dc.b $38 ; 8
		dc.b $F8
		dc.b $85
		dc.b   3
		dc.b   1
		dc.b $16
		dc.b $39 ; 9
		dc.b $86
		dc.b   4
		dc.b   5
		dc.b $15
		dc.b  $F
		dc.b $27 ; '
		dc.b $6A ; j
		dc.b $87
		dc.b   4
		dc.b   4
		dc.b $15
		dc.b $10
		dc.b $26 ; &
		dc.b $2D ; -
		dc.b $88
		dc.b   6
		dc.b $27 ; '
		dc.b $16
		dc.b $26 ; &
		dc.b $27 ; '
		dc.b $6B ; k
		dc.b $37 ; 7
		dc.b $67 ; g
		dc.b $89
		dc.b   5
		dc.b  $D
		dc.b $27 ; '
		dc.b $77 ; w
		dc.b $8A
		dc.b   6
		dc.b $2E ; .
		dc.b $16
		dc.b $2C ; ,
		dc.b $37 ; 7
		dc.b $78 ; x
		dc.b $8B
		dc.b   5
		dc.b  $E
		dc.b $17
		dc.b $6F ; o
		dc.b $8C
		dc.b   6
		dc.b $31 ; 1
		dc.b $8D
		dc.b   6
		dc.b $2F ; /
		dc.b $8E
		dc.b   5
		dc.b $14
		dc.b $17
		dc.b $70 ; p
		dc.b $27 ; '
		dc.b $74 ; t
		dc.b $8F
		dc.b   3
		dc.b   0
		dc.b $15
		dc.b $11
		dc.b $26 ; &
		dc.b $30 ; 0
		dc.b $36 ; 6
		dc.b $34 ; 4
		dc.b $47 ; G
		dc.b $75 ; u
		dc.b $57 ; W
		dc.b $66 ; f
		dc.b $67 ; g
		dc.b $79 ; y
		dc.b $77 ; w
		dc.b $6E ; n
		dc.b $FF
		dc.b $E9
		dc.b $D7
		dc.b $7B ; {
		dc.b $78 ; x
		dc.b $60 ; `
		dc.b $D4
		dc.b $FD
		dc.b $DD
		dc.b   7
		dc.b $E6
		dc.b $60 ; `
		dc.b $D7
		dc.b $70 ; p
		dc.b $EE
		dc.b $8D
		dc.b $DF
		dc.b $47 ; G
		dc.b $23 ; #
		dc.b $53 ; S
		dc.b $4B ; K
		dc.b $D2
		dc.b $3C ; <
		dc.b $6F ; o
		dc.b $15
		dc.b $FB
		dc.b $F5
		dc.b $A3
		dc.b $4E ; N
		dc.b $6A ; j
		dc.b $27 ; '
		dc.b $96
		dc.b $F9
		dc.b $BE
		dc.b $9D
		dc.b $69 ; i
		dc.b $7E ; ~
		dc.b $6B ; k
		dc.b $DB
		dc.b $DB
		dc.b $F2
		dc.b $38 ; 8
		dc.b $4B ; K
		dc.b $B7
		dc.b $A8
		dc.b $B1
		dc.b $39 ; 9
		dc.b $87
		dc.b $28 ; (
		dc.b $60 ; `
		dc.b $6D ; m
		dc.b $FD
		dc.b $AA
		dc.b $14
		dc.b $36 ; 6
		dc.b $94
		dc.b $30 ; 0
		dc.b $36 ; 6
		dc.b $98
		dc.b $18
		dc.b $6E ; n
		dc.b $67 ; g
		dc.b $1F
		dc.b $6A ; j
		dc.b $F8
		dc.b $ED
		dc.b $FC
		dc.b $7E ; ~
		dc.b $FF
		dc.b $B7
		dc.b $6A ; j
		dc.b $1F
		dc.b $E3
		dc.b $94
		dc.b $FD
		dc.b $2C ; ,
		dc.b  $C
		dc.b $1B
		dc.b $FF
		dc.b $73 ; s
		dc.b $A5
		dc.b $A3
		dc.b $6F ; o
		dc.b $C8
		dc.b $84
		dc.b $8B
		dc.b $3D ; =
		dc.b $BD
		dc.b $46 ; F
		dc.b $BF
		dc.b $E4
		dc.b $A7
		dc.b $E6
		dc.b $6D ; m
		dc.b $EF
		dc.b $BD
		dc.b $3B ; ;
		dc.b $A7
		dc.b $FA
		dc.b $53 ; S
		dc.b $F3
		dc.b $2E ; .
		dc.b $2E ; .
		dc.b $29 ; )
		dc.b $FB
		dc.b $9D
		dc.b $DC
		dc.b $7B ; {
		dc.b $7A ; z
		dc.b $67 ; g
		dc.b $1E
		dc.b $D4
		dc.b $BF
		dc.b $F9
		dc.b $CE
		dc.b $6B ; k
		dc.b $BF
		dc.b $BD
		dc.b $BE
		dc.b $FE
		dc.b $82
		dc.b $9F
		dc.b $AB
		dc.b $E1
		dc.b $87
		dc.b $7E ; ~
		dc.b $9A
		dc.b $35 ; 5
		dc.b $DD
		dc.b   7
		dc.b $A1
		dc.b $DD
		dc.b $C2
		dc.b $5E ; ^
		dc.b $83
		dc.b $5C ; \
		dc.b $D1
		dc.b $96
		dc.b $FF
		dc.b $EB
		dc.b $F0
		dc.b $B4
		dc.b $C0
		dc.b $70 ; p
		dc.b $72 ; r
		dc.b $18
		dc.b $47 ; G
		dc.b $84
		dc.b  $A
		dc.b $61 ; a
		dc.b $44 ; D
		dc.b $30 ; 0
		dc.b $D1
		dc.b $D6
		dc.b $CB
		dc.b $B0
		dc.b $30 ; 0
		dc.b $CB
		dc.b $B0
		dc.b $B4
		dc.b $A1
		dc.b $B4
		dc.b $FF
		dc.b $1C
		dc.b $C0
		dc.b $DB
		dc.b $CA
		dc.b $72 ; r
		dc.b $86
		dc.b $D3
		dc.b $FE
		dc.b $73 ; s
		dc.b $69 ; i
		dc.b $4E ; N
		dc.b $53 ; S
		dc.b $98
		dc.b $72 ; r
		dc.b $86
		dc.b $D3
		dc.b  $F
		dc.b $D2
		dc.b $DE
		dc.b $2B ; +
		dc.b $D1
		dc.b $EC
		dc.b $15
		dc.b $48 ; H
		dc.b $3C ; <
		dc.b $7C ; |
		dc.b   7
		dc.b $85
		dc.b $AA
		dc.b $33 ; 3
		dc.b $A8
		dc.b $7D ; }
		dc.b $42 ; B
		dc.b $65 ; e
		dc.b  $F
		dc.b $60 ; `
		dc.b $D6
		dc.b $B8
		dc.b $34 ; 4
		dc.b $6B ; k
		dc.b $D5
		dc.b $E5
		dc.b $7D ; }
		dc.b $FD
		dc.b $83
		dc.b $F8
		dc.b $EC
		dc.b $1F
		dc.b $9A
		dc.b $75 ; u
		dc.b $AA
		dc.b $58 ; X
		dc.b $4D ; M
		dc.b $5C ; \
		dc.b $A3
		dc.b $30 ; 0
		dc.b $AE
		dc.b $42 ; B
		dc.b $65 ; e
		dc.b $15
		dc.b $8B
		dc.b $A7
		dc.b $AB
		dc.b $32 ; 2
		dc.b $8A
		dc.b $FD
		dc.b $C2
		dc.b $FC
		dc.b $64 ; d
		dc.b $1E
		dc.b $CE
		dc.b $BA
		dc.b $BE
		dc.b   7
		dc.b $ED
		dc.b $AB
		dc.b $DC
		dc.b $26 ; &
		dc.b $FD
		dc.b $B3
		dc.b $3A ; :
		dc.b $AD
		dc.b $52 ; R
		dc.b $F6
		dc.b $1A
		dc.b $86
		dc.b $5B ; [
		dc.b   7
		dc.b $85
		dc.b $D2
		dc.b $75 ; u
		dc.b  $B
		dc.b $94
		dc.b $66 ; f
		dc.b  $A
		dc.b $C9
		dc.b $46 ; F
		dc.b $60 ; `
		dc.b $BA
		dc.b $4C ; L
		dc.b $27 ; '
		dc.b $AA
		dc.b $37 ; 7
		dc.b $4E ; N
		dc.b $27 ; '
		dc.b $DD
		dc.b $5F ; _
		dc.b $1D
		dc.b $BE
		dc.b $38 ; 8
		dc.b $AB
		dc.b $33 ; 3
		dc.b $3C ; <
		dc.b $57 ; W
		dc.b $93
		dc.b $C7
		dc.b $C4
		dc.b $9F
		dc.b $D5
		dc.b $93
		dc.b $A8
		dc.b $7B ; {
		dc.b   3
		dc.b $22 ; "
		dc.b $D7
		dc.b $34 ; 4
		dc.b $32 ; 2
		dc.b $5B ; [
		dc.b   6
		dc.b $EF
		dc.b $15
		dc.b $6C ; l
		dc.b $1A
		dc.b $E1
		dc.b $5C ; \
		dc.b $77 ; w
		dc.b $85
		dc.b $60 ; `
		dc.b $90
		dc.b $6B ; k
		dc.b $83
		dc.b $C4
		dc.b $83
		dc.b $86
		dc.b $A1
		dc.b $20
		dc.b $E1
		dc.b $3A ; :
		dc.b $85
		dc.b $60 ; `
		dc.b $68 ; h
		dc.b $98
		dc.b $2F ; /
		dc.b $BF
		dc.b $B0
		dc.b $43 ; C
		dc.b $84
		dc.b $B6
		dc.b  $D
		dc.b $41 ; A
		dc.b $21 ; !
		dc.b $96
		dc.b $C1
		dc.b $B5
		dc.b $48 ; H
		dc.b $64 ; d
		dc.b $1D
		dc.b $58 ; X
		dc.b $C8
		dc.b $3A ; :
		dc.b $B1
		dc.b $EE
		dc.b $16
		dc.b $B1
		dc.b $90
		dc.b $51 ; Q
		dc.b $50 ; P
		dc.b $64 ; d
		dc.b $87
		dc.b $F5
		dc.b $53 ; S
		dc.b $F6
		dc.b $A9
		dc.b $FB
		dc.b $54 ; T
		dc.b $FE
		dc.b $2A ; *
		dc.b $1B
		dc.b $DB
		dc.b   3
		dc.b   3
		dc.b $46 ; F
		dc.b $94
		dc.b $30 ; 0
		dc.b $34 ; 4
		dc.b $73 ; s
		dc.b $53 ; S
		dc.b $94
		dc.b $22 ; "
		dc.b $8E
		dc.b $FD
		dc.b $B9
		dc.b $8D
		dc.b $13
		dc.b $94
		dc.b $2D ; -
		dc.b $BC
		dc.b $6B ; k
		dc.b $7E ; ~
		dc.b $69 ; i
		dc.b $D4
		dc.b $7E ; ~
		dc.b $AB
		dc.b $38 ; 8
		dc.b $F1
		dc.b $AF
		dc.b $70 ; p
		dc.b $FC
		dc.b $E7
		dc.b $89
		dc.b $C7
		dc.b $EB
		dc.b $3C ; <
		dc.b $6E ; n
		dc.b $78 ; x
		dc.b $A8
		dc.b $58 ; X
		dc.b $F1
		dc.b $50 ; P
		dc.b $B1
		dc.b $E1
		dc.b $58 ; X
		dc.b $2C ; ,
		dc.b $9C
		dc.b $6A ; j
		dc.b $18
		dc.b $DC
		dc.b $27 ; '
		dc.b $78 ; x
		dc.b $68 ; h
		dc.b $C7
		dc.b $5A ; Z
		dc.b $87
		dc.b  $C
		dc.b $66 ; f
		dc.b $8D
		dc.b $FB
		dc.b $F0
		dc.b $E1
		dc.b $7B ; {
		dc.b $BF
		dc.b $32 ; 2
		dc.b $35 ; 5
		dc.b $FE
		dc.b $D8
		dc.b $6B ; k
		dc.b $EB
		dc.b $76 ; v
		dc.b $77 ; w
		dc.b $DC
		dc.b $2E ; .
		dc.b $CE
		dc.b $B6
		dc.b $66 ; f
		dc.b $C7
		dc.b $C6
		dc.b $B1
		dc.b $8F
		dc.b $89
		dc.b $93
		dc.b $CD
		dc.b $51 ; Q
		dc.b $B0
		dc.b $4F ; O
		dc.b $A5
		dc.b $82
		dc.b $77 ; w
		dc.b $B0
		dc.b $58 ; X
		dc.b $2E ; .
		dc.b $D4
		dc.b $31 ; 1
		dc.b $B3
		dc.b $36 ; 6
		dc.b $36 ; 6
		dc.b $4E ; N
		dc.b $F8
		dc.b $FE
		dc.b $72 ; r
		dc.b $E9
		dc.b $97
		dc.b $4C ; L
		dc.b $74 ; t
		dc.b $E8
		dc.b $26 ; &
		dc.b $1A
		dc.b $83
		dc.b $26 ; &
		dc.b $8B
		dc.b $C3
		dc.b $33 ; 3
		dc.b $BC
		dc.b $2D ; -
		dc.b $D9
		dc.b $D4
		dc.b $2F ; /
		dc.b $95
		dc.b $FD
		dc.b $56 ; V
		dc.b $75 ; u
		dc.b $F1
		dc.b $9F
		dc.b $73 ; s
		dc.b $23 ; #
		dc.b $AC
		dc.b $2B ; +
		dc.b $23 ; #
		dc.b $74 ; t
		dc.b $E2
		dc.b $66 ; f
		dc.b $46 ; F
		dc.b $C1
		dc.b $32 ; 2
		dc.b $8F
		dc.b $D5
		dc.b   9
		dc.b $94
		dc.b $63 ; c
		dc.b $70 ; p
		dc.b $B0
		dc.b $3F ; ?
		dc.b $F3
		dc.b $82
		dc.b $C0
		dc.b $FC
		dc.b $46 ; F
		dc.b $36 ; 6
		dc.b $6E ; n
		dc.b  $A
		dc.b $15
		dc.b $82
		dc.b $A9
		dc.b $60 ; `
		dc.b $AC
		dc.b $15
		dc.b $4F ; O
		dc.b $FB
		dc.b $61 ; a
		dc.b $54 ; T
		dc.b $DA
		dc.b $85
		dc.b $5E ; ^
		dc.b $59 ; Y
		dc.b $9F
		dc.b $F6
		dc.b $D7
		dc.b $67 ; g
		dc.b $D5
		dc.b $BA
		dc.b $34 ; 4
		dc.b $72 ; r
		dc.b $18
		dc.b $61 ; a
		dc.b $47 ; G
		dc.b $14
		dc.b $22 ; "
		dc.b $83
		dc.b $84
		dc.b  $B
		dc.b $30 ; 0
		dc.b $A3
		dc.b $4A ; J
		dc.b $30 ; 0
		dc.b $50 ; P
		dc.b $51 ; Q
		dc.b $C8
		dc.b $58 ; X
		dc.b $3F ; ?
		dc.b $7C ; |
		dc.b $D2
		dc.b $AC
		dc.b $1D
		dc.b $1C
		dc.b $70 ; p
		dc.b $E8
		dc.b $E4
		dc.b   0
		dc.b   0
unk_F15E:       dc.b   5		; DATA XREF: sub_1988+24↑o
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $3C ; <
		dc.b $7F ; 
		dc.b $E0
		dc.b   0
unk_F168:       dc.b   0		; DATA XREF: sub_1A06+38↑o
		dc.b $22 ; "
		dc.b $80
		dc.b   5
		dc.b $1D
		dc.b $14
		dc.b  $D
		dc.b $25 ; %
		dc.b $1C
		dc.b $34 ; 4
		dc.b  $C
		dc.b $44 ; D
		dc.b  $B
		dc.b $54 ; T
		dc.b  $A
		dc.b $66 ; f
		dc.b $3C ; <
		dc.b $72 ; r
		dc.b   0
		dc.b $81
		dc.b   3
		dc.b   3
		dc.b $13
		dc.b   4
		dc.b $27 ; '
		dc.b $7D ; }
		dc.b $36 ; 6
		dc.b $3D ; =
		dc.b $82
		dc.b   3
		dc.b   2
		dc.b $17
		dc.b $7C ; |
		dc.b $FF
		dc.b  $E
		dc.b $35 ; 5
		dc.b $E7
		dc.b $B6
		dc.b $A0
		dc.b $F8
		dc.b $BE
		dc.b $F7
		dc.b $FC
		dc.b $25 ; %
		dc.b $BD
		dc.b $4F ; O
		dc.b $1F
		dc.b $67 ; g
		dc.b $5E ; ^
		dc.b $CE
		dc.b $4D ; M
		dc.b $78 ; x
		dc.b $F9
		dc.b $EE
		dc.b $7C ; |
		dc.b $68 ; h
		dc.b   0
		dc.b $E3
		dc.b $F1
		dc.b $D4
		dc.b $B8
		dc.b $80
		dc.b $B6
		dc.b $4F ; O
		dc.b $10
		dc.b   1
		dc.b $BF
		dc.b $3E ; >
		dc.b $F7
		dc.b $EF
		dc.b $62 ; b
		dc.b $EB
		dc.b $5B ; [
		dc.b $2E ; .
		dc.b $2B ; +
		dc.b $68 ; h
		dc.b   0
		dc.b $35 ; 5
		dc.b $52 ; R
		dc.b $74 ; t
		dc.b $CD
		dc.b $7E ; ~
		dc.b $4B ; K
		dc.b $4F ; O
		dc.b $8B
		dc.b $7F ; 
		dc.b $C3
		dc.b $D7
		dc.b $BE
		dc.b $DC
		dc.b $57 ; W
		dc.b   0
		dc.b $F1
		dc.b $40 ; @
		dc.b $33 ; 3
		dc.b $D2
		dc.b $D3
		dc.b $E7
		dc.b $CF
		dc.b $BD
		dc.b $FE
		dc.b  $A
		dc.b $C9
		dc.b $52 ; R
		dc.b $BF
		dc.b $E3
		dc.b $3F ; ?
		dc.b $44 ; D
		dc.b $C0
		dc.b   1
		dc.b $78 ; x
		dc.b $C0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $C7
		dc.b $8F
		dc.b $53 ; S
		dc.b   0
		dc.b $31 ; 1
		dc.b $F9
		dc.b $2A ; *
		dc.b   6
		dc.b $BA
		dc.b $4E ; N
		dc.b $A5
		dc.b $A9
		dc.b $72 ; r
		dc.b $D3
		dc.b $A6
		dc.b $1C
		dc.b $66 ; f
		dc.b $BC
		dc.b $FE
		dc.b  $E
		dc.b $7B ; {
		dc.b $71 ; q
		dc.b $5C ; \
		dc.b $38 ; 8
		dc.b $C3
		dc.b $B2
		dc.b $97
		dc.b $A9
		dc.b $EA
		dc.b $74 ; t
		dc.b $9D
		dc.b $27 ; '
		dc.b $8D
		dc.b $54 ; T
		dc.b $A9
		dc.b $53 ; S
		dc.b $8A
		dc.b $26 ; &
		dc.b $BF
		dc.b $A2
		dc.b $B1
		dc.b $A6
		dc.b $B1
		dc.b $A6
		dc.b $B1
		dc.b $F3
		dc.b $E6
		dc.b $CA
		dc.b $94
		dc.b $D5
		dc.b $CA
		dc.b $6A ; j
		dc.b $DA
		dc.b $C4
		dc.b $D0
		dc.b   0
		dc.b   1
		dc.b $E4
		dc.b $59 ; Y
		dc.b $F7
		dc.b $1F
		dc.b $C7
		dc.b $A9
		dc.b $EA
		dc.b $74 ; t
		dc.b $9D
		dc.b $27 ; '
		dc.b $49 ; I
		dc.b $80
		dc.b $1D
		dc.b $74 ; t
		dc.b $D6
		dc.b $26 ; &
		dc.b $19
		dc.b $2E ; .
		dc.b $27 ; '
		dc.b $C9
		dc.b $A9
		dc.b $EA
		dc.b $C9
		dc.b $4A ; J
		dc.b $54 ; T
		dc.b  $B
		dc.b $60 ; `
		dc.b   7
		dc.b $5D ; ]
		dc.b $A6
		dc.b $8E
		dc.b $26 ; &
		dc.b $AE
		dc.b $5C ; \
		dc.b $B9
		dc.b $72 ; r
		dc.b $90
		dc.b $18
		dc.b $9A
		dc.b   0
		dc.b $3C ; <
		dc.b $66 ; f
		dc.b $CA
		dc.b $95
		dc.b $2D ; -
		dc.b $35 ; 5
		dc.b $72 ; r
		dc.b $E5
		dc.b $20
		dc.b $E4
		dc.b $4E ; N
		dc.b $D0
		dc.b $17
		dc.b $EA
		dc.b $C4
		dc.b $D1
		dc.b $D4
		dc.b $D4
		dc.b $E4
		dc.b $A9
		dc.b $52 ; R
		dc.b $A5
		dc.b $35 ; 5
		dc.b $ED
		dc.b $FE
		dc.b $88
		dc.b $C4
		dc.b $F6
		dc.b $72 ; r
		dc.b $76 ; v
		dc.b $72 ; r
		dc.b   0
		dc.b $6A ; j
		dc.b $CF
		dc.b $8D
		dc.b $72 ; r
		dc.b $54 ; T
		dc.b $A6
		dc.b $AD
		dc.b $35 ; 5
		dc.b $72 ; r
		dc.b $E5
		dc.b $B5
		dc.b $48 ; H
		dc.b $D6
		dc.b   7
		dc.b $1D
		dc.b $4B ; K
		dc.b $6B ; k
		dc.b $13
		dc.b $47 ; G
		dc.b $13
		dc.b $57 ; W
		dc.b $2E ; .
		dc.b $53 ; S
		dc.b   0
		dc.b $35 ; 5
		dc.b $F8
		dc.b $E9
		dc.b $7D ; }
		dc.b $4F ; O
		dc.b $7E ; ~
		dc.b   0
		dc.b $63 ; c
		dc.b $58 ; X
		dc.b $FA
		dc.b $D6
		dc.b $3E ; >
		dc.b $A6
		dc.b $BD
		dc.b $4D ; M
		dc.b $67 ; g
		dc.b $C6
		dc.b $AA
		dc.b $54 ; T
		dc.b $A9
		dc.b $40 ; @
		dc.b   0
unk_F28A:       dc.b   0		; DATA XREF: sub_1A06+56↑o
		dc.b $28 ; (
		dc.b $80
		dc.b   4
		dc.b  $C
		dc.b $15
		dc.b $1B
		dc.b $25 ; %
		dc.b $1E
		dc.b $35 ; 5
		dc.b $1D
		dc.b $45 ; E
		dc.b $1C
		dc.b $54 ; T
		dc.b  $A
		dc.b $64 ; d
		dc.b  $B
		dc.b $73 ; s
		dc.b   4
		dc.b $81
		dc.b   2
		dc.b   0
		dc.b $15
		dc.b $1A
		dc.b $27 ; '
		dc.b $7C ; |
		dc.b $38 ; 8
		dc.b $FB
		dc.b $82
		dc.b   2
		dc.b   1
		dc.b $18
		dc.b $FA
		dc.b $FF
		dc.b $9E
		dc.b $2D ; -
		dc.b $29 ; )
		dc.b $1A
		dc.b $1A
		dc.b $1A
		dc.b $1A
		dc.b $24 ; $
		dc.b $92
		dc.b $49 ; I
		dc.b $24 ; $
		dc.b $E8
		dc.b $D2
		dc.b $34 ; 4
		dc.b $38 ; 8
		dc.b $74 ; t
		dc.b $71 ; q
		dc.b $D6
		dc.b $CF
		dc.b $26 ; &
		dc.b $C9
		dc.b $86
		dc.b $1B
		dc.b $1C
		dc.b $30 ; 0
		dc.b $DE
		dc.b $AC
		dc.b $B3
		dc.b   7
		dc.b $7F ; 
		dc.b $78 ; x
		dc.b $6D ; m
		dc.b $C2
		dc.b $C9
		dc.b $B1
		dc.b $BD
		dc.b $4B ; K
		dc.b $28 ; (
		dc.b $7A ; z
		dc.b $D9
		dc.b $43 ; C
		dc.b $B2
		dc.b $69 ; i
		dc.b $E7
		dc.b $CE
		dc.b  $C
		dc.b $92
		dc.b $BE
		dc.b $33 ; 3
		dc.b $C5
		dc.b $95
		dc.b $AE
		dc.b $69 ; i
		dc.b $EA
		dc.b $3C ; <
		dc.b $28 ; (
		dc.b $68 ; h
		dc.b $EB
		dc.b $65 ; e
		dc.b $B2
		dc.b $51 ; Q
		dc.b $6C ; l
		dc.b $9B
		dc.b $1A
		dc.b $D5
		dc.b $96
		dc.b $5F ; _
		dc.b $CD
		dc.b $FD
		dc.b $E3
		dc.b $BF
		dc.b $AC
		dc.b $2C ; ,
		dc.b $DE
		dc.b $A4
		dc.b $BF
		dc.b $A3
		dc.b $BF
		dc.b $58 ; X
		dc.b $96
		dc.b $33 ; 3
		dc.b $DF
		dc.b $3A ; :
		dc.b $E0
		dc.b $F3
		dc.b $5E ; ^
		dc.b $77 ; w
		dc.b $AC
		dc.b $33 ; 3
		dc.b $E3
		dc.b $89
		dc.b $D3
		dc.b $35 ; 5
		dc.b $DF
		dc.b $98
		dc.b $FB
		dc.b $E6
		dc.b $7D ; }
		dc.b $FD
		dc.b $14
		dc.b $DB
		dc.b $63 ; c
		dc.b $AE
		dc.b $B6
		dc.b $DB
		dc.b $63 ; c
		dc.b $F3
		dc.b $A3
		dc.b $3E ; >
		dc.b $AC
		dc.b $6B ; k
		dc.b $5B ; [
		dc.b $3D ; =
		dc.b $F6
		dc.b $FF
		dc.b   7
		dc.b $C8
		dc.b $95
		dc.b $AA
		dc.b $37 ; 7
		dc.b $A9
		dc.b $42 ; B
		dc.b $3C ; <
		dc.b $12
		dc.b $49 ; I
		dc.b $5F ; _
		dc.b $24 ; $
		dc.b $E7
		dc.b $C4
		dc.b $4F ; O
		dc.b $D9
		dc.b $60 ; `
		dc.b $D0
		dc.b $D0
		dc.b $8F
		dc.b $47 ; G
		dc.b  $E
		dc.b $8E
		dc.b $33 ; 3
		dc.b $11
		dc.b $EF
		dc.b $C6
		dc.b $4F ; O
		dc.b $11
		dc.b $B1
		dc.b $93
		dc.b   6
		dc.b $92
		dc.b $CB
		dc.b $33 ; 3
		dc.b $FE
		dc.b $3B ; ;
		dc.b $FA
		dc.b $1C
		dc.b $1B
		dc.b $24 ; $
		dc.b $B3
		dc.b   7
		dc.b $A8
		dc.b $9C
		dc.b $2C ; ,
		dc.b $AF
		dc.b $AA
		dc.b $24 ; $
		dc.b $92
		dc.b $49 ; I
		dc.b $24 ; $
		dc.b $93
		dc.b  $B
		dc.b $4B ; K
		dc.b $1A
		dc.b $19
		dc.b $85
		dc.b $96
		dc.b $58 ; X
		dc.b $D2
		dc.b $5E ; ^
		dc.b $9A
		dc.b $49 ; I
		dc.b $38 ; 8
		dc.b $D9
		dc.b $5F ; _
		dc.b $5C ; \
		dc.b $4F ; O
		dc.b $7D ; }
		dc.b $6B ; k
		dc.b $BA
		dc.b $65 ; e
		dc.b $16
		dc.b $59 ; Y
		dc.b $8F
		dc.b  $C
		dc.b $36 ; 6
		dc.b $99
		dc.b $A7
		dc.b $13
		dc.b $69 ; i
		dc.b $B4
		dc.b $F1
		dc.b $E4
		dc.b $9B
		dc.b $2C ; ,
		dc.b $AD
		dc.b $73 ; s
		dc.b $E5
		dc.b $E9
		dc.b $EA
		dc.b $60 ; `
		dc.b $EF
		dc.b $5B ; [
		dc.b $49 ; I
		dc.b $C3
		dc.b $63 ; c
		dc.b $E3
		dc.b  $E
		dc.b $69 ; i
		dc.b $E6
		dc.b $A8
		dc.b $69 ; i
		dc.b $9B
		dc.b $49 ; I
		dc.b $E4
		dc.b $B1
		dc.b $A1
		dc.b $E2
		dc.b $3C ; <
		dc.b $1E
		dc.b $A3
		dc.b $D1
		dc.b $93
		dc.b   6
		dc.b $CB
		dc.b $4B ; K
		dc.b $D5
		dc.b $EA
		dc.b $92
		dc.b $92
		dc.b $C9
		dc.b $24 ; $
		dc.b $B1
		dc.b $B2
		dc.b $D9
		dc.b $B3
		dc.b   7
		dc.b $BA
		dc.b $E6
		dc.b $BA
		dc.b $98
		dc.b $75 ; u
		dc.b $D9
		dc.b $8F
		dc.b $84
		dc.b $DF
		dc.b $D6
		dc.b $F5
		dc.b $38 ; 8
		dc.b $96
		dc.b $34 ; 4
		dc.b $34 ; 4
		dc.b $3C ; <
		dc.b $4E ; N
		dc.b  $C
		dc.b $94
		dc.b $98
		dc.b $F5
		dc.b $33 ; 3
		dc.b $EF
		dc.b $E8
		dc.b $A4
		dc.b $D9
		dc.b $E4
		dc.b $DA
		dc.b $6D ; m
		dc.b $3D ; =
		dc.b $AC
		dc.b $4F ; O
		dc.b $3B ; ;
		dc.b $4E ; N
		dc.b $38 ; 8
		dc.b $3C ; <
		dc.b $1F
		dc.b $9D
		dc.b $1A
		dc.b $1A
		dc.b $1A
		dc.b $1A
		dc.b $1E
		dc.b $69 ; i
		dc.b $B3
		dc.b $11
		dc.b $F7
		dc.b $CE
		dc.b $12
		dc.b $49 ; I
		dc.b $9F
		dc.b $5A ; Z
		dc.b $98
		dc.b $EA
		dc.b $91
		dc.b $A1
		dc.b $E2
		dc.b $3C ; <
		dc.b $4E ; N
		dc.b $BA
		dc.b $E0
		dc.b $C9
		dc.b $B1
		dc.b $A1
		dc.b $A1
		dc.b $A1
		dc.b $A1
		dc.b $A1
		dc.b $AD
		dc.b $56 ; V
		dc.b $B7
		dc.b $A9
		dc.b $24 ; $
		dc.b $92
		dc.b $4E ; N
		dc.b $A6
		dc.b $22 ; "
		dc.b $3A ; :
		dc.b $75 ; u
		dc.b $D7
		dc.b $54 ; T
		dc.b $97
		dc.b $AB
		dc.b $7E ; ~
		dc.b $7D ; }
		dc.b $4A ; J
		dc.b $30 ; 0
		dc.b $E1
		dc.b $83
		dc.b $DD
		dc.b $52 ; R
		dc.b $59 ; Y
		dc.b $6C ; l
		dc.b $9B
		dc.b $6C ; l
		dc.b $A1
		dc.b $EB
		dc.b $85
		dc.b $6A ; j
		dc.b $86
		dc.b $4B ; K
		dc.b $D5
		dc.b $6B ; k
		dc.b $88
		dc.b $D3
		dc.b $24 ; $
		dc.b $94
		dc.b   0
unk_F40C:       dc.b   0		; DATA XREF: sub_1A06+74↑o
		dc.b $38 ; 8
		dc.b $80
		dc.b   5
		dc.b $1B
		dc.b $15
		dc.b $1A
		dc.b $25 ; %
		dc.b $1D
		dc.b $35 ; 5
		dc.b $1C
		dc.b $44 ; D
		dc.b  $C
		dc.b $53 ; S
		dc.b   4
		dc.b $64 ; d
		dc.b  $B
		dc.b $73 ; s
		dc.b   3
		dc.b $81
		dc.b   3
		dc.b   2
		dc.b $14
		dc.b  $A
		dc.b $25 ; %
		dc.b $1E
		dc.b $38 ; 8
		dc.b $FA
		dc.b $82
		dc.b   2
		dc.b   0
		dc.b $17
		dc.b $7C ; |
		dc.b $FF
		dc.b $6D ; m
		dc.b $F5
		dc.b $5F ; _
		dc.b $F0
		dc.b $70 ; p
		dc.b $43 ; C
		dc.b $6D ; m
		dc.b $BF
		dc.b $9E
		dc.b $EA
		dc.b $DD
		dc.b $1C
		dc.b $F6
		dc.b $51 ; Q
		dc.b $CA
		dc.b $1B
		dc.b $EA
		dc.b $82
		dc.b $32 ; 2
		dc.b $B0
		dc.b $F7
		dc.b $2B ; +
		dc.b $28 ; (
		dc.b $E5
		dc.b  $D
		dc.b $BC
		dc.b $33 ; 3
		dc.b $C7
		dc.b $3C ; <
		dc.b $65 ; e
		dc.b $44 ; D
		dc.b $36 ; 6
		dc.b $DB
		dc.b $78 ; x
		dc.b $AC
		dc.b $FA
		dc.b $10
		dc.b $DB
		dc.b $6D ; m
		dc.b $B4
		dc.b $78 ; x
		dc.b $E2
		dc.b $B1
		dc.b $11
		dc.b $10
		dc.b $50 ; P
		dc.b $50 ; P
		dc.b $50 ; P
		dc.b $A3
		dc.b $82
		dc.b $DD
		dc.b $36 ; 6
		dc.b $DB
		dc.b $83
		dc.b $4D ; M
		dc.b $E8
		dc.b $BA
		dc.b $36 ; 6
		dc.b $B8
		dc.b $8D
		dc.b $8B
		dc.b $A8
		dc.b $D2
		dc.b $EA
		dc.b $3F ; ?
		dc.b $C2
		dc.b $77 ; w
		dc.b $E6
		dc.b $D0
		dc.b $FA
		dc.b $AC
		dc.b $56 ; V
		dc.b $9C
		dc.b $44 ; D
		dc.b $16
		dc.b $29 ; )
		dc.b $4F ; O
		dc.b $4A ; J
		dc.b   8
		dc.b $CA
		dc.b $E9
		dc.b $B3
		dc.b $FA
		dc.b $25 ; %
		dc.b $6B ; k
		dc.b $C2
		dc.b $3B ; ;
		dc.b $5B ; [
		dc.b $38 ; 8
		dc.b $86
		dc.b $DC
		dc.b $4E ; N
		dc.b $AD
		dc.b $36 ; 6
		dc.b $DB
		dc.b $BF
		dc.b $92
		dc.b $B3
		dc.b $E4
		dc.b $51 ; Q
		dc.b  $D
		dc.b $F1
		dc.b $3F ; ?
		dc.b $AC
		dc.b $36 ; 6
		dc.b $A5
		dc.b $60 ; `
		dc.b $A7
		dc.b $D5
		dc.b $D4
		dc.b $5A ; Z
		dc.b $47 ; G
		dc.b $7D ; }
		dc.b $B5
		dc.b $D4
		dc.b $EE
		dc.b $B8
		dc.b $2F ; /
		dc.b $8B
		dc.b $54 ; T
		dc.b $70 ; p
		dc.b $50 ; P
		dc.b $5C ; \
		dc.b $5B ; [
		dc.b $16
		dc.b $7D ; }
		dc.b $1C
		dc.b $14
		dc.b $14
		dc.b $14
		dc.b $16
		dc.b $8B
		dc.b $3C ; <
		dc.b $21 ; !
		dc.b $15
		dc.b $A1
		dc.b $68 ; h
		dc.b $5A ; Z
		dc.b $16
		dc.b $85
		dc.b $A1
		dc.b $68 ; h
		dc.b $A1
		dc.b  $B
		dc.b $62 ; b
		dc.b $D0
		dc.b $B4
		dc.b $2D ; -
		dc.b   9
		dc.b $EC
		dc.b $AE
		dc.b $2D ; -
		dc.b $A3
		dc.b $86
		dc.b $D1
		dc.b $C3
		dc.b $68 ; h
		dc.b $C1
		dc.b $11
		dc.b $11
		dc.b  $D
		dc.b $E2
		dc.b $B4
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $DB
		dc.b $7D ; }
		dc.b $56 ; V
		dc.b $7B ; {
		dc.b $3F ; ?
		dc.b $44 ; D
		dc.b $DB
		dc.b $7A ; z
		dc.b $FD
		dc.b $12
		dc.b $11
		dc.b $5B ; [
		dc.b $11
		dc.b $BA
		dc.b $D2
		dc.b $31 ; 1
		dc.b $45 ; E
		dc.b $69 ; i
		dc.b $BD
		dc.b $23 ; #
		dc.b $75 ; u
		dc.b $CA
		dc.b $B1
		dc.b $B6
		dc.b $DB
		dc.b $A1
		dc.b   8
		dc.b $5F ; _
		dc.b $36 ; 6
		dc.b $88
		dc.b $88
		dc.b $84
		dc.b $71 ; q
		dc.b $1B
		dc.b $47 ; G
		dc.b $51 ; Q
		dc.b $B1
		dc.b $31 ; 1
		dc.b $19
		dc.b $43 ; C
		dc.b $7D ; }
		dc.b $4D ; M
		dc.b $5F ; _
		dc.b $C6
		dc.b $F6
		dc.b $88
		dc.b $2B ; +
		dc.b $5D ; ]
		dc.b $5D ; ]
		dc.b $5B ; [
		dc.b $A3
		dc.b $F8
		dc.b $3D ; =
		dc.b $11
		dc.b $B4
		dc.b $5A ; Z
		dc.b $6E ; n
		dc.b $D6
		dc.b $8E
		dc.b  $B
		dc.b $6B ; k
		dc.b $15
		dc.b $A9
		dc.b $F2
		dc.b $26 ; &
		dc.b $DB
		dc.b $7B ; {
		dc.b $56 ; V
		dc.b $36 ; 6
		dc.b $DB
		dc.b $6D ; m
		dc.b $5A ; Z
		dc.b $22 ; "
		dc.b $1B
		dc.b $C5
		dc.b $2B ; +
		dc.b $11
		dc.b $88
		dc.b $E0
		dc.b $9B
		dc.b $E5
		dc.b $44 ; D
		dc.b $2B ; +
		dc.b $15
		dc.b $D4
		dc.b $2A ; *
		dc.b $53 ; S
		dc.b $7D ; }
		dc.b $F9
		dc.b $A4
		dc.b $5D ; ]
		dc.b $5A ; Z
		dc.b $95
		dc.b $95
		dc.b $95
		dc.b $C1
		dc.b  $F
		dc.b $B5
		dc.b $11
		dc.b $13
		dc.b $6D ; m
		dc.b $B7
		dc.b $FB
		dc.b $26 ; &
		dc.b $DB
		dc.b $6D ; m
		dc.b $DF
		dc.b $C6
		dc.b $DB
		dc.b $6D ; m
		dc.b $E0
		dc.b $B6
		dc.b $2E ; .
		dc.b $8B
		dc.b $4B ; K
		dc.b $A2
		dc.b $82
		dc.b $82
		dc.b $95
		dc.b $29 ; )
		dc.b $F5
		dc.b $5A ; Z
		dc.b $8A
		dc.b $D5
		dc.b $A8
		dc.b $9B
		dc.b $7C ; |
		dc.b $46 ; F
		dc.b $D6
		dc.b $CD
		dc.b $23 ; #
		dc.b $55 ; U
		dc.b $A4
		dc.b $68 ; h
		dc.b $EA
		dc.b $22 ; "
		dc.b $39 ; 9
		dc.b $F2
		dc.b $A5
		dc.b $37 ; 7
		dc.b $FA
		dc.b $26 ; &
		dc.b $AD
		dc.b $12
		dc.b $9B
		dc.b $E0
		dc.b $9E
		dc.b $D1
		dc.b $BA
		dc.b $E7
		dc.b $8C
		dc.b $AC
		dc.b $AC
		dc.b $AC
		dc.b $A8
		dc.b $36 ; 6
		dc.b $DB
		dc.b $E1
		dc.b $65 ; e
		dc.b $41 ; A
		dc.b $37 ; 7
		dc.b $CA
		dc.b $CA
		dc.b $CA
		dc.b $E1
		dc.b $59 ; Y
		dc.b $50 ; P
		dc.b $6D ; m
		dc.b $F6
		dc.b $B3
		dc.b $E3
		dc.b $D8
		dc.b $B0
		dc.b $52 ; R
		dc.b $A0
		dc.b $AC
		dc.b $4F ; O
		dc.b $5E ; ^
		dc.b $35 ; 5
		dc.b $EB
		dc.b $56 ; V
		dc.b $9B
		dc.b $DF
		dc.b $CD
		dc.b   8
		dc.b $F3
		dc.b $85
		dc.b $1A
		dc.b $FA
		dc.b $CF
		dc.b $41 ; A
		dc.b $41 ; A
		dc.b $41 ; A
		dc.b $67 ; g
		dc.b $C5
		dc.b $2B ; +
		dc.b $A2
		dc.b $D0
		dc.b $B5
		dc.b $E1
		dc.b  $B
		dc.b   5
		dc.b   5
		dc.b   5
		dc.b   5
		dc.b $2A ; *
		dc.b $56 ; V
		dc.b $91
		dc.b $85
		dc.b $36 ; 6
		dc.b $DB
		dc.b $78 ; x
		dc.b $AD
		dc.b $5A ; Z
		dc.b $B4
		dc.b $41 ; A
		dc.b $61 ; a
		dc.b $BA
		dc.b $FD
		dc.b $15
		dc.b $68 ; h
		dc.b $F0
		dc.b $DE
		dc.b $8B
		dc.b $53 ; S
		dc.b $E4
		dc.b $4D ; M
		dc.b $B6
		dc.b $88
		dc.b $89
		dc.b $50 ; P
		dc.b $44 ; D
		dc.b $FE
		dc.b   9
		dc.b $D3
		dc.b $E9
		dc.b $B6
		dc.b $DB
		dc.b $6D ; m
		dc.b $BE
		dc.b $A3
		dc.b $4B ; K
		dc.b $A8
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $95
		dc.b $2B ; +
		dc.b $A9
		dc.b $B8
		dc.b $5A ; Z
		dc.b $B1
		dc.b $B7
		dc.b $82
		dc.b $D8
		dc.b $84
		dc.b $7F ; 
		dc.b   7
		dc.b $85
		dc.b $5A ; Z
		dc.b $BA
		dc.b $B3
		dc.b $DF
		dc.b $1C
		dc.b $56 ; V
		dc.b $B4
		dc.b $72 ; r
		dc.b $A0
		dc.b $AE
		dc.b $A0
		dc.b $9B
		dc.b $D9
		dc.b $6A ; j
		dc.b $23 ; #
		dc.b $9F
		dc.b $15
		dc.b $AB
		dc.b $1B
		dc.b $BA
		dc.b $95
		dc.b $11
		dc.b   6
		dc.b $DB
		dc.b $B0
unk_F5F2:       dc.b $80		; DATA XREF: sub_1A06+4↑o
		dc.b  $F
		dc.b $80
		dc.b   3
		dc.b   2
		dc.b $14
		dc.b   9
		dc.b $24 ; $
		dc.b  $A
		dc.b $34 ; 4
		dc.b  $B
		dc.b $46 ; F
		dc.b $3E ; >
		dc.b $55 ; U
		dc.b $1E
		dc.b $65 ; e
		dc.b $1C
		dc.b $73 ; s
		dc.b   0
		dc.b $81
		dc.b   3
		dc.b   1
		dc.b $14
		dc.b  $C
		dc.b $23 ; #
		dc.b   3
		dc.b $35 ; 5
		dc.b $1A
		dc.b $45 ; E
		dc.b $1B
		dc.b $82
		dc.b   4
		dc.b   8
		dc.b $83
		dc.b   5
		dc.b $1D
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   4
		dc.b $6A ; j
		dc.b $26 ; &
		dc.b $35 ; 5
		dc.b   8
		dc.b $FA
		dc.b $3B ; ;
		dc.b $EE
		dc.b $C0
		dc.b $1E
		dc.b $EC
		dc.b $7A ; z
		dc.b $3B ; ;
		dc.b $C3
		dc.b $17
		dc.b   5
		dc.b $42 ; B
		dc.b $C5
		dc.b $1D
		dc.b $85
		dc.b $A5
		dc.b $1D
		dc.b $B3
		dc.b $C3
		dc.b $7A ; z
		dc.b $51 ; Q
		dc.b $D8
		dc.b $58 ; X
		dc.b $A3
		dc.b $B0
		dc.b $B4
		dc.b $8A
		dc.b $8C
		dc.b $9E
		dc.b $DE
		dc.b $F8
		dc.b $6B ; k
		dc.b $5F ; _
		dc.b $6A ; j
		dc.b $8F
		dc.b $37 ; 7
		dc.b $6E ; n
		dc.b $77 ; w
		dc.b $25 ; %
		dc.b $69 ; i
		dc.b $60 ; `
		dc.b $4F ; O
		dc.b $E6
		dc.b $3E ; >
		dc.b $D2
		dc.b $FF
		dc.b  $C
		dc.b $BB
		dc.b $29 ; )
		dc.b $CB
		dc.b $92
		dc.b $B1
		dc.b $10
		dc.b $B2
		dc.b $5A ; Z
		dc.b $35 ; 5
		dc.b $BF
		dc.b $34 ; 4
		dc.b $40 ; @
		dc.b $A2
		dc.b   0
		dc.b $1C
		dc.b $20
		dc.b $D6
		dc.b $AB
		dc.b $62 ; b
		dc.b $B5
		dc.b $F3
		dc.b $B3
		dc.b $45 ; E
		dc.b $15
		dc.b $FE
		dc.b $19
		dc.b $74 ; t
		dc.b $E4
		dc.b $AD
		dc.b $8A
		dc.b $D7
		dc.b $CE
		dc.b $CF
		dc.b $C5
		dc.b $6E ; n
		dc.b $DD
		dc.b $1F
		dc.b $1E
		dc.b $10
		dc.b   7
		dc.b  $A
		dc.b $3F ; ?
		dc.b $3E ; >
		dc.b $1A
		dc.b $20
		dc.b   1
		dc.b $58 ; X
		dc.b $B2
		dc.b $DF
		dc.b $88
		dc.b $17
		dc.b $92
		dc.b $56 ; V
		dc.b $E7
		dc.b $16
		dc.b $51 ; Q
		dc.b $97
		dc.b $6F ; o
		dc.b $D9
		dc.b $27 ; '
		dc.b $E3
		dc.b $E3
		dc.b $C2
		dc.b   0
		dc.b $E1
		dc.b $46 ; F
		dc.b $4C ; L
		dc.b $B9
		dc.b $34 ; 4
		dc.b $EF
		dc.b $60 ; `
		dc.b   1
		dc.b $5B ; [
		dc.b $B7
		dc.b $20
		dc.b   0
unk_F69C:       dc.b   0		; DATA XREF: sub_573C+50↑o
		dc.b  $E
		dc.b $80
		dc.b   3
		dc.b   1
		dc.b $17
		dc.b $7A ; z
		dc.b $26 ; &
		dc.b $37 ; 7
		dc.b $36 ; 6
		dc.b $3B ; ;
		dc.b $76 ; v
		dc.b $3C ; <
		dc.b $83
		dc.b   4
		dc.b   6
		dc.b $16
		dc.b $32 ; 2
		dc.b $36 ; 6
		dc.b $38 ; 8
		dc.b $58 ; X
		dc.b $FA
		dc.b $76 ; v
		dc.b $3A ; :
		dc.b $84
		dc.b   3
		dc.b   2
		dc.b $14
		dc.b   7
		dc.b $25 ; %
		dc.b $16
		dc.b $35 ; 5
		dc.b $14
		dc.b $58 ; X
		dc.b $FB
		dc.b $75 ; u
		dc.b $15
		dc.b $85
		dc.b   5
		dc.b $13
		dc.b $16
		dc.b $33 ; 3
		dc.b $27 ; '
		dc.b $7B ; {
		dc.b $36 ; 6
		dc.b $34 ; 4
		dc.b $76 ; v
		dc.b $35 ; 5
		dc.b $86
		dc.b   3
		dc.b   0
		dc.b $15
		dc.b $12
		dc.b $25 ; %
		dc.b $17
		dc.b $46 ; F
		dc.b $39 ; 9
		dc.b $75 ; u
		dc.b $18
		dc.b $88
		dc.b   4
		dc.b   8
		dc.b $16
		dc.b $36 ; 6
		dc.b $37 ; 7
		dc.b $7C ; |
		dc.b $FF
		dc.b $F0
		dc.b $FF
		dc.b $94
		dc.b $BC
		dc.b $94
		dc.b $8B
		dc.b $29 ; )
		dc.b $58 ; X
		dc.b $FF
		dc.b $8C
		dc.b $D0
		dc.b $39 ; 9
		dc.b $D0
		dc.b $66 ; f
		dc.b $7F ; 
		dc.b $CC
		dc.b $67 ; g
		dc.b $F4
		dc.b $5B ; [
		dc.b $EC
		dc.b $B3
		dc.b $B5
		dc.b $CD
		dc.b $9A
		dc.b $E7
		dc.b $FC
		dc.b $85
		dc.b $BE
		dc.b $CA
		dc.b $FE
		dc.b $A9
		dc.b  $B
		dc.b $27 ; '
		dc.b $1D
		dc.b $E6
		dc.b $3F ; ?
		dc.b $CA
		dc.b $10
		dc.b $A7
		dc.b $BF
		dc.b $F2
		dc.b $4F ; O
		dc.b $AA
		dc.b $EB
		dc.b $8E
		dc.b $AB
		dc.b $F5
		dc.b $2F ; /
		dc.b $A9
		dc.b $56 ; V
		dc.b $BA
		dc.b $E3
		dc.b $19
		dc.b $FE
		dc.b $DF
		dc.b $35 ; 5
		dc.b $FA
		dc.b $3A ; :
		dc.b $63 ; c
		dc.b $AA
		dc.b $49 ; I
		dc.b $F5
		dc.b $C7
		dc.b $55 ; U
		dc.b  $C
		dc.b $87
		dc.b   1
		dc.b $97
		dc.b $35 ; 5
		dc.b $AE
		dc.b $BF
		dc.b $E6
		dc.b $53 ; S
		dc.b $19
		dc.b $F6
		dc.b $86
		dc.b $63 ; c
		dc.b $7F ; 
		dc.b $68 ; h
		dc.b $6F ; o
		dc.b $3B ; ;
		dc.b   4
		dc.b $C7
		dc.b $80
		dc.b $98
		dc.b $C9
		dc.b $C6
		dc.b $47 ; G
		dc.b $DC
		dc.b $9C
		dc.b $FF
		dc.b $59 ; Y
		dc.b $1E
		dc.b $26 ; &
		dc.b $11
		dc.b $A3
		dc.b   4
		dc.b $58 ; X
		dc.b $58 ; X
		dc.b $23 ; #
		dc.b $2B ; +
		dc.b   4
		dc.b $7F ; 
		dc.b $88
		dc.b $11
		dc.b $A3
		dc.b $6F ; o
		dc.b $A2
		dc.b $DD
		dc.b $64 ; d
		dc.b $87
		dc.b $9F
		dc.b $C0
		dc.b $98
		dc.b $D0
		dc.b $CD
		dc.b  $A
		dc.b $14
		dc.b $C3
		dc.b $83
		dc.b $90
		dc.b $6B ; k
		dc.b $16
		dc.b $5C ; \
		dc.b $97
		dc.b $1F
		dc.b  $B
		dc.b $88
		dc.b $B9
		dc.b $71 ; q
		dc.b $F0
		dc.b $B8
		dc.b $89
		dc.b $41 ; A
		dc.b $71 ; q
		dc.b $17
		dc.b $DF
		dc.b $92
		dc.b $E2
		dc.b $86
		dc.b $68 ; h
		dc.b $B5
		dc.b $BD
		dc.b $4C ; L
		dc.b $E4
		dc.b $9B
		dc.b $BD
		dc.b $3C ; <
		dc.b $D6
		dc.b $BD
		dc.b $57 ; W
		dc.b $17
		dc.b $DA
		dc.b $5B ; [
		dc.b   8
		dc.b $94
		dc.b  $D
		dc.b $87
		dc.b $C1
		dc.b $12
		dc.b $89
		dc.b $40 ; @
		dc.b $D8
		dc.b $44 ; D
		dc.b $A0
		dc.b $46 ; F
		dc.b $2B ; +
		dc.b $54 ; T
		dc.b $DF
		dc.b $7A ; z
		dc.b $F9
		dc.b $A0
		dc.b $9F
		dc.b $AA
		dc.b   5
		dc.b $33 ; 3
		dc.b $C0
		dc.b $64 ; d
		dc.b $6C ; l
		dc.b $C3
		dc.b $23 ; #
		dc.b $CA
		dc.b $63 ; c
		dc.b $78 ; x
		dc.b  $E
		dc.b $60 ; `
		dc.b $6C ; l
		dc.b $1C
		dc.b $88
		dc.b $10
		dc.b $1C
		dc.b $DE
		dc.b   3
		dc.b $9B
		dc.b $C0
		dc.b $73 ; s
		dc.b $CB
		dc.b $9A
		dc.b   7
		dc.b $34 ; 4
		dc.b $2A ; *
		dc.b $66 ; f
		dc.b $86
		dc.b $7E ; ~
		dc.b $B4
		dc.b $EC
		dc.b   0
unk_F7AE:       dc.b   1		; DATA XREF: sub_573C+64↑o
		dc.b $62 ; b
		dc.b $80
		dc.b   4
		dc.b   9
		dc.b $14
		dc.b  $A
		dc.b $24 ; $
		dc.b  $C
		dc.b $35 ; 5
		dc.b $1B
		dc.b $45 ; E
		dc.b $1A
		dc.b $54 ; T
		dc.b  $B
		dc.b $65 ; e
		dc.b $1D
		dc.b $74 ; t
		dc.b   8
		dc.b $81
		dc.b   3
		dc.b   2
		dc.b $13
		dc.b   3
		dc.b $25 ; %
		dc.b $1C
		dc.b $36 ; 6
		dc.b $3D ; =
		dc.b $48 ; H
		dc.b $F8
		dc.b $58 ; X
		dc.b $FA
		dc.b $68 ; h
		dc.b $F9
		dc.b $82
		dc.b   2
		dc.b   0
		dc.b $16
		dc.b $3C ; <
		dc.b $FF
		dc.b $8D
		dc.b $72 ; r
		dc.b $DD
		dc.b $2C ; ,
		dc.b $72 ; r
		dc.b $7D ; }
		dc.b $4F ; O
		dc.b $3C ; <
		dc.b $44 ; D
		dc.b $F9
		dc.b $4F ; O
		dc.b $42 ; B
		dc.b $34 ; 4
		dc.b $F4
		dc.b $23 ; #
		dc.b $4F ; O
		dc.b $43 ; C
		dc.b $D8
		dc.b $E5
		dc.b $6C ; l
		dc.b $54 ; T
		dc.b $EC
		dc.b $5D ; ]
		dc.b $22 ; "
		dc.b  $A
		dc.b $50 ; P
		dc.b $E9
		dc.b $92
		dc.b $CA
		dc.b $17
		dc.b $8C
		dc.b $A7
		dc.b $2C ; ,
		dc.b $A7
		dc.b $23 ; #
		dc.b $91
		dc.b $C8
		dc.b $E4
		dc.b $45 ; E
		dc.b $22 ; "
		dc.b $59 ; Y
		dc.b $B1
		dc.b $E8
		dc.b $46 ; F
		dc.b $99
		dc.b $A7
		dc.b $68 ; h
		dc.b $88
		dc.b $CE
		dc.b $5B ; [
		dc.b $A5
		dc.b $8E
		dc.b $4F ; O
		dc.b $A9
		dc.b $E7
		dc.b $88
		dc.b $9F
		dc.b $29 ; )
		dc.b $E8
		dc.b $46 ; F
		dc.b $9E
		dc.b $84
		dc.b $69 ; i
		dc.b $E8
		dc.b $7B ; {
		dc.b $1C
		dc.b $AD
		dc.b $8A
		dc.b $9D
		dc.b $8B
		dc.b $A4
		dc.b $5A ; Z
		dc.b $93
		dc.b $14
		dc.b $8B
		dc.b $62 ; b
		dc.b $38 ; 8
		dc.b $48 ; H
		dc.b $B0
		dc.b $5E ; ^
		dc.b $4A ; J
		dc.b $29 ; )
		dc.b $C8
		dc.b $8A
		dc.b $72 ; r
		dc.b $39 ; 9
		dc.b $1C
		dc.b $8E
		dc.b $44 ; D
		dc.b $52 ; R
		dc.b $25 ; %
		dc.b $9B
		dc.b $1E
		dc.b $84
		dc.b $69 ; i
		dc.b $9A
		dc.b $76 ; v
		dc.b $88
		dc.b $84
		dc.b $5B ; [
		dc.b $34 ; 4
		dc.b $CD
		dc.b $3C ; <
		dc.b $54 ; T
		dc.b $F4
		dc.b $3D ; =
		dc.b $33 ; 3
		dc.b $4C ; L
		dc.b $95
		dc.b $8E
		dc.b $56 ; V
		dc.b $DC
		dc.b $AD
		dc.b $FB
		dc.b $44 ; D
		dc.b $F0
		dc.b $92
		dc.b $B8
		dc.b $4A ; J
		dc.b $A1
		dc.b $D2
		dc.b $C4
		dc.b $62 ; b
		dc.b $8A
		dc.b $65 ; e
		dc.b $BB
		dc.b $79 ; y
		dc.b $FF
		dc.b $1F
		dc.b $3E ; >
		dc.b  $C
		dc.b $76 ; v
		dc.b $ED
		dc.b $DB
		dc.b $B7
		dc.b $8C
		dc.b $7A ; z
		dc.b $19
		dc.b $AF
		dc.b $71 ; q
		dc.b $9F
		dc.b $45 ; E
		dc.b $38 ; 8
		dc.b $88
		dc.b $8B
		dc.b $2F ; /
		dc.b $9B
		dc.b $17
		dc.b $92
		dc.b $A4
		dc.b $46 ; F
		dc.b $7B ; {
		dc.b $B1
		dc.b $9A
		dc.b $F2
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $36 ; 6
		dc.b $BA
		dc.b $2E ; .
		dc.b $BB
		dc.b $1D
		dc.b $8E
		dc.b $C6
		dc.b $68 ; h
		dc.b $E6
		dc.b $84
		dc.b $5F ; _
		dc.b $91
		dc.b $11
		dc.b $16
		dc.b $F6
		dc.b $CD
		dc.b $B9
		dc.b $58 ; X
		dc.b $2C ; ,
		dc.b $54 ; T
		dc.b $F1
		dc.b $48 ; H
		dc.b $8C
		dc.b $52 ; R
		dc.b $F0
		dc.b $52 ; R
		dc.b $F1
		dc.b $12
		dc.b $E8
		dc.b $54 ; T
		dc.b $E9
		dc.b $14
		dc.b $70 ; p
		dc.b $D8
		dc.b $88
		dc.b $88
		dc.b $8C
		dc.b $E1
		dc.b $67 ; g
		dc.b $2C ; ,
		dc.b $76 ; v
		dc.b $2E ; .
		dc.b $BB
		dc.b $76 ; v
		dc.b $ED
		dc.b $DA
		dc.b $34 ; 4
		dc.b $F4
		dc.b $CD
		dc.b $B3
		dc.b $17
		dc.b $91
		dc.b $12
		dc.b $CB
		dc.b $72 ; r
		dc.b $B6
		dc.b $EB
		dc.b $EB
		dc.b $4C ; L
		dc.b $D3
		dc.b $37 ; 7
		dc.b $EE
		dc.b $33 ; 3
		dc.b $6C ; l
		dc.b $D2
		dc.b $31 ; 1
		dc.b $5B ; [
		dc.b $D0
		dc.b $AD
		dc.b $D8
		dc.b $EF
		dc.b $C8
		dc.b $8C
		dc.b $37 ; 7
		dc.b $E9
		dc.b $8A
		dc.b $23 ; #
		dc.b $16
		dc.b $23 ; #
		dc.b $1D
		dc.b $79 ; y
		dc.b $EF
		dc.b $9C
		dc.b $FD
		dc.b $14
		dc.b $FB
		dc.b $B2
		dc.b $5D ; ]
		dc.b $A2
		dc.b $37 ; 7
		dc.b $F0
		dc.b $57 ; W
		dc.b $D4
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $42 ; B
		dc.b $85
		dc.b $D2
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $21 ; !
		dc.b $75 ; u
		dc.b $DB
		dc.b $B1
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $43 ; C
		dc.b $D2
		dc.b $A5
		dc.b $B5
		dc.b $4B ; K
		dc.b $4E ; N
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $79 ; y
		dc.b $8F
		dc.b $4E ; N
		dc.b $F9
		dc.b $AE
		dc.b $1A
		dc.b $71 ; q
		dc.b $14
		dc.b $BA
		dc.b $BA
		dc.b $A3
		dc.b $AA
		dc.b $DD
		dc.b $BE
		dc.b $A8
		dc.b $E7
		dc.b $47 ; G
		dc.b $7C ; |
		dc.b $D7
		dc.b $36 ; 6
		dc.b $73 ; s
		dc.b  $E
		dc.b $63 ; c
		dc.b $34 ; 4
		dc.b $74 ; t
		dc.b $E9
		dc.b $1D
		dc.b $5D ; ]
		dc.b $76 ; v
		dc.b $ED
		dc.b $44 ; D
		dc.b $5A ; Z
		dc.b $EA
		dc.b $97
		dc.b $B5
		dc.b $3F ; ?
		dc.b $32 ; 2
		dc.b $F6
		dc.b $A5
		dc.b $ED
		dc.b $4B ; K
		dc.b $DA
		dc.b $97
		dc.b $82
		dc.b $97
		dc.b $8E
		dc.b $5D ; ]
		dc.b $3A ; :
		dc.b $72 ; r
		dc.b $8C
		dc.b $E1
		dc.b $B7
		dc.b $6E ; n
		dc.b $DC
		dc.b $69 ; i
		dc.b $DA
		dc.b $2D ; -
		dc.b $60 ; `
		dc.b $E7
		dc.b $FE
		dc.b $2B ; +
		dc.b $7E ; ~
		dc.b $ED
		dc.b $8B
		dc.b $6E ; n
		dc.b $51 ; Q
		dc.b $8E
		dc.b $99
		dc.b $2E ; .
		dc.b $86
		dc.b $3C ; <
		dc.b $10
		dc.b $ED
		dc.b $E7
		dc.b $C6
		dc.b $CE
		dc.b $68 ; h
		dc.b $51 ; Q
		dc.b $6F ; o
		dc.b $3E ; >
		dc.b $76 ; v
		dc.b $E3
		dc.b $7F ; 
		dc.b $54 ; T
		dc.b $ED
		dc.b $CF
		dc.b $29 ; )
		dc.b $CA
		dc.b $95
		dc.b $4E ; N
		dc.b $79 ; y
		dc.b $4E ; N
		dc.b $56 ; V
		dc.b $DC
		dc.b $F2
		dc.b $91
		dc.b $2A ; *
		dc.b $55 ; U
		dc.b $2A ; *
		dc.b $E4
		dc.b $8A
		dc.b $D4
		dc.b $43 ; C
		dc.b $94
		dc.b $4F ; O
		dc.b $FC
		dc.b $69 ; i
		dc.b $DA
		dc.b $A7
		dc.b $3F ; ?
		dc.b $12
		dc.b $E9
		dc.b $6B ; k
		dc.b $98
		dc.b $B1
		dc.b $D2
		dc.b $96
		dc.b $29 ; )
		dc.b $74 ; t
		dc.b $A5
		dc.b $4A ; J
		dc.b $25 ; %
		dc.b $CF
		dc.b $34 ; 4
		dc.b $39 ; 9
		dc.b $E4
		dc.b $B2
		dc.b $55 ; U
		dc.b $39 ; 9
		dc.b $E4
		dc.b $A3
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $1B
		dc.b $11
		dc.b $62 ; b
		dc.b $34 ; 4
		dc.b $23 ; #
		dc.b $4C ; L
		dc.b $D2
		dc.b $34 ; 4
		dc.b $CD
		dc.b $23 ; #
		dc.b $48 ; H
		dc.b $D2
		dc.b $34 ; 4
		dc.b $A2
		dc.b $23 ; #
		dc.b $6B ; k
		dc.b $4A ; J
		dc.b $45 ; E
		dc.b $B1
		dc.b  $B
		dc.b $62 ; b
		dc.b $DA
		dc.b $85
		dc.b $D1
		dc.b $75 ; u
		dc.b $D8
		dc.b $8B
		dc.b $76 ; v
		dc.b $23 ; #
		dc.b $42 ; B
		dc.b $34 ; 4
		dc.b $3B ; ;
		dc.b $F2
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $25 ; %
		dc.b $52 ; R
		dc.b $D8
		dc.b $A4
		dc.b $59 ; Y
		dc.b $E4
		dc.b $F9
		dc.b $12
		dc.b $75 ; u
		dc.b $5B ; [
		dc.b $D8
		dc.b $8C
		dc.b $64 ; d
		dc.b $44 ; D
		dc.b $45 ; E
		dc.b $2E ; .
		dc.b $9D
		dc.b $2C ; ,
		dc.b $56 ; V
		dc.b $FC
		dc.b $C4
		dc.b $48 ; H
		dc.b $89
		dc.b $58 ; X
		dc.b $3D ; =
		dc.b $3B ; ;
		dc.b $45 ; E
		dc.b $91
		dc.b $6B ; k
		dc.b $6B ; k
		dc.b $F4
		dc.b $51 ; Q
		dc.b $10
		dc.b $BA
		dc.b $F7
		dc.b $E7
		dc.b $FC
		dc.b $51 ; Q
		dc.b $B1
		dc.b $1A
		dc.b $16
		dc.b $87
		dc.b $AE
		dc.b $6C ; l
		dc.b $7B ; {
		dc.b $1E
		dc.b $C4
		dc.b $6D ; m
		dc.b $9B
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $4A ; J
		dc.b $31 ; 1
		dc.b $57 ; W
		dc.b $CD
		dc.b $3F ; ?
		dc.b $1D
		dc.b $AE
		dc.b $91
		dc.b $11
		dc.b $11
		dc.b $65 ; e
		dc.b $A3
		dc.b $68 ; h
		dc.b $88
		dc.b $88
		dc.b $93
		dc.b $FE
		dc.b $31 ; 1
		dc.b $5E ; ^
		dc.b $62 ; b
		dc.b $AE
		dc.b $4A ; J
		dc.b $29 ; )
		dc.b $9A
		dc.b $7A ; z
		dc.b $11
		dc.b $A7
		dc.b $A1
		dc.b $5A ; Z
		dc.b $88
		dc.b $88
		dc.b $8E
		dc.b $AE
		dc.b $BB
		dc.b $76 ; v
		dc.b $A2
		dc.b $25 ; %
		dc.b $52 ; R
		dc.b $D8
		dc.b $A4
		dc.b $59 ; Y
		dc.b $E4
		dc.b $F9
		dc.b $11
		dc.b  $B
		dc.b $42 ; B
		dc.b $31 ; 1
		dc.b $91
		dc.b $11
		dc.b $16
		dc.b $8B
		dc.b $F7
		dc.b $4C ; L
		dc.b $89
		dc.b $F2
		dc.b $C4
		dc.b $68 ; h
		dc.b $7B ; {
		dc.b $1E
		dc.b $99
		dc.b $A4
		dc.b $46 ; F
		dc.b $96
		dc.b $D7
		dc.b $E8
		dc.b $A2
		dc.b $3A ; :
		dc.b $BA
		dc.b $A3
		dc.b $FE
		dc.b $26 ; &
		dc.b $85
		dc.b $62 ; b
		dc.b $D0
		dc.b $F5
		dc.b $CD
		dc.b $8F
		dc.b $63 ; c
		dc.b $D8
		dc.b $8D
		dc.b $B3
		dc.b $68 ; h
		dc.b $88
		dc.b $B7
		dc.b $5E ; ^
		dc.b $D2
		dc.b $A1
		dc.b $14
		dc.b $B1
		dc.b  $F
		dc.b $68 ; h
		dc.b $B4
		dc.b $3D ; =
		dc.b $A1
		dc.b $69 ; i
		dc.b $79 ; y
		dc.b $A7
		dc.b $68 ; h
		dc.b $B4
		dc.b $5A ; Z
		dc.b $2D ; -
		dc.b $16
		dc.b $8D
		dc.b   8
		dc.b $DF
		dc.b $B1
		dc.b $F1
		dc.b $FA
		dc.b $2D ; -
		dc.b $F8
		dc.b $EF
		dc.b $CE
		dc.b $9D
		dc.b $3A ; :
		dc.b $68 ; h
		dc.b $F9
		dc.b $FD
		dc.b $14
		dc.b $88
		dc.b $B1
		dc.b $16
		dc.b $22 ; "
		dc.b $C4
		dc.b $58 ; X
		dc.b $8B
		dc.b $1D
		dc.b $A8
		dc.b $83
		dc.b $A8
		dc.b $B7
		dc.b $6E ; n
		dc.b $D1
		dc.b $65 ; e
		dc.b $9D
		dc.b $5D ; ]
		dc.b $57 ; W
		dc.b $E5
		dc.b $A2
		dc.b $D5
		dc.b $F9
		dc.b $26 ; &
		dc.b $D1
		dc.b $2C ; ,
		dc.b $9F
		dc.b $62 ; b
		dc.b $46 ; F
		dc.b $6F ; o
		dc.b $D3
		dc.b $15
		dc.b $3A ; :
		dc.b $F2
		dc.b $9D
		dc.b $22 ; "
		dc.b $84
		dc.b $4A ; J
		dc.b $DB
		dc.b $93
		dc.b $6E ; n
		dc.b $7E ; ~
		dc.b $4B ; K
		dc.b $76 ; v
		dc.b $EC
		dc.b $5D ; ]
		dc.b $5D ; ]
		dc.b $5D ; ]
		dc.b $2D ; -
		dc.b $C6
		dc.b $F8
		dc.b $6B ; k
		dc.b $9A
		dc.b $E6
		dc.b $90
		dc.b $B4
		dc.b $A5
		dc.b $69 ; i
		dc.b $4A ; J
		dc.b $D2
		dc.b $93
		dc.b $4B ; K
		dc.b $AB
		dc.b $AA
		dc.b $8D
		dc.b $AA
		dc.b $5B ; [
		dc.b $54 ; T
		dc.b $8C
		dc.b $54 ; T
		dc.b $F1
		dc.b $57 ; W
		dc.b $27 ; '
		dc.b $91
		dc.b  $A
		dc.b $C5
		dc.b $62 ; b
		dc.b $34 ; 4
		dc.b $3D ; =
		dc.b $92
		dc.b $F6
		dc.b $A5
		dc.b $ED
		dc.b $4B ; K
		dc.b $2B ; +
		dc.b $C9
		dc.b $E5
		dc.b $2A ; *
		dc.b $E5
		dc.b $2A ; *
		dc.b $42 ; B
		dc.b $9F
		dc.b $29 ; )
		dc.b $4A ; J
		dc.b $16
		dc.b $29 ; )
		dc.b $E6
		dc.b $29 ; )
		dc.b $11
		dc.b $8A
		dc.b $96
		dc.b $38 ; 8
		dc.b $5E ; ^
		dc.b $69 ; i
		dc.b $16
		dc.b $8B
		dc.b $45 ; E
		dc.b $A2
		dc.b $D1
		dc.b $68 ; h
		dc.b $B4
		dc.b $5A ; Z
		dc.b $2D ; -
		dc.b $16
		dc.b $8B
		dc.b $45 ; E
		dc.b $A2
		dc.b $D1
		dc.b $6C ; l
		dc.b $88
		dc.b $DA
		dc.b $88
		dc.b $94
		dc.b $5F ; _
		dc.b $CD
		dc.b $3F ; ?
		dc.b $25 ; %
		dc.b $75 ; u
		dc.b $58 ; X
		dc.b $AD
		dc.b $E9
		dc.b $E9
		dc.b $E9
		dc.b $C9
		dc.b $4F ; O
		dc.b $6B ; k
		dc.b $A4
		dc.b $43 ; C
		dc.b $BE
		dc.b $69 ; i
		dc.b $9A
		dc.b $65 ; e
		dc.b  $A
		dc.b $7F ; 
		dc.b $E2
		dc.b $E8
		dc.b $F4
		dc.b $C6
		dc.b $2C ; ,
		dc.b $1E
		dc.b $84
		dc.b $69 ; i
		dc.b $9B
		dc.b $1E
		dc.b $99
		dc.b $87
		dc.b $33 ; 3
		dc.b $DD
		dc.b $F2
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $D1
		dc.b $7F ; 
		dc.b $34 ; 4
		dc.b $BF
		dc.b $85
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $F3
		dc.b $3F ; ?
		dc.b $C2
		dc.b $E4
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $43 ; C
		dc.b $2D ; -
		dc.b $9A
		dc.b $66 ; f
		dc.b $91
		dc.b $68 ; h
		dc.b $B4
		dc.b $2D ; -
		dc.b $7C ; |
		dc.b $62 ; b
		dc.b $24 ; $
		dc.b $E4
		dc.b $A2
		dc.b $87
		dc.b $28 ; (
		dc.b $C1
		dc.b $4B ; K
		dc.b $D9
		dc.b $2E ; .
		dc.b $DD
		dc.b $BE
		dc.b $A8
		dc.b $8B
		dc.b $65 ; e
		dc.b $B3
		dc.b $4C ; L
		dc.b $D3
		dc.b $B7
		dc.b $6E ; n
		dc.b $DE
		dc.b $D4
		dc.b $BD
		dc.b $AA
		dc.b $5B ; [
		dc.b $22 ; "
		dc.b $CE
		dc.b $AB
		dc.b $7B ; {
		dc.b $44 ; D
		dc.b $45 ; E
		dc.b $32 ; 2
		dc.b $D9
		dc.b $A6
		dc.b $69 ; i
		dc.b $DB
		dc.b $B7
		dc.b $A1
		dc.b $CA
		dc.b $A4
		dc.b $39 ; 9
		dc.b $14
		dc.b $8C
		dc.b $9F
		dc.b $24 ; $
		dc.b $76 ; v
		dc.b $ED
		dc.b $45 ; E
		dc.b $9A
		dc.b $64 ; d
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $74 ; t
		dc.b $88
		dc.b $CF
		dc.b $31 ; 1
		dc.b $50 ; P
		dc.b $8A
		dc.b $28 ; (
		dc.b $7B ; {
		dc.b $1E
		dc.b $99
		dc.b $B6
		dc.b $6D ; m
		dc.b $11
		dc.b $11
		dc.b   4
		dc.b $22 ; "
		dc.b $C4
		dc.b $5B ; [
		dc.b $A4
		dc.b $51 ; Q
		dc.b $82
		dc.b $2D ; -
		dc.b $D9
		dc.b $11
		dc.b $16
		dc.b $8D
		dc.b $8A
		dc.b $57 ; W
		dc.b $9C
		dc.b $24 ; $
		dc.b $7E ; ~
		dc.b $45 ; E
		dc.b $AD
		dc.b $29 ; )
		dc.b $16
		dc.b $C4
		dc.b $2D ; -
		dc.b $8A
		dc.b $22 ; "
		dc.b $24 ; $
		dc.b $E9
		dc.b $6A ; j
		dc.b $D1
		dc.b $A4
		dc.b $6C ; l
		dc.b $46 ; F
		dc.b $91
		dc.b $11
		dc.b $11
		dc.b $A5
		dc.b $8B
		dc.b $15
		dc.b $7D ; }
		dc.b $4F ; O
		dc.b $25 ; %
		dc.b $79 ; y
		dc.b $22 ; "
		dc.b $25 ; %
		dc.b $9B
		dc.b $1E
		dc.b $99
		dc.b $B6
		dc.b $6D ; m
		dc.b $11
		dc.b $DF
		dc.b $8E
		dc.b $AE
		dc.b $AE
		dc.b $A9
		dc.b $F9
		dc.b $85
		dc.b $D5
		dc.b $B7
		dc.b $3F ; ?
		dc.b $F1
		dc.b $97
		dc.b $43 ; C
		dc.b $97
		dc.b $4E ; N
		dc.b $9D
		dc.b $2C ; ,
		dc.b $16
		dc.b $2A ; *
		dc.b $3E ; >
		dc.b $30 ; 0
		dc.b $E1
		dc.b $83
		dc.b $CF
		dc.b $AA
		dc.b $5D ; ]
		dc.b $5D ; ]
		dc.b $58 ; X
		dc.b $39 ; 9
		dc.b $FF
		dc.b $8C
		dc.b $5B ; [
		dc.b $EA
		dc.b $A5
		dc.b $B3
		dc.b $3E ; >
		dc.b $22 ; "
		dc.b $94
		dc.b $7C ; |
		dc.b $46 ; F
		dc.b $B9
		dc.b $4B ; K
		dc.b $AB
		dc.b $A8
		dc.b $B1
		dc.b $9A
		dc.b $F8
		dc.b $D0
		dc.b $E0
		dc.b $EA
		dc.b $C3
		dc.b $3E ; >
		dc.b  $A
		dc.b $76 ; v
		dc.b $F0
		dc.b $A3
		dc.b $E0
		dc.b $9E
		dc.b $5B ; [
		dc.b $D7
		dc.b $BB
		dc.b $F3
		dc.b $9A
		dc.b $11
		dc.b $11
		dc.b $8C
		dc.b $D7
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $2D ; -
		dc.b $17
		dc.b $F3
		dc.b $4F ; O
		dc.b $C8
		dc.b $88
		dc.b $88
		dc.b $89
		dc.b $2D ; -
		dc.b $ED
		dc.b $94
		dc.b $BF
		dc.b $45 ; E
		dc.b $11
		dc.b $2B ; +
		dc.b $4A ; J
		dc.b $45 ; E
		dc.b $B1
		dc.b  $B
		dc.b $3C ; <
		dc.b $55 ; U
		dc.b $F3
		dc.b $B3
		dc.b $9B
		dc.b $1E
		dc.b $C6
		dc.b $6F ; o
		dc.b $9B
		dc.b $1E
		dc.b $C7
		dc.b $A4
		dc.b $59 ; Y
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b  $E
		dc.b $C6
		dc.b $72 ; r
		dc.b $9D
		dc.b $BB
		dc.b $76 ; v
		dc.b $2B ; +
		dc.b $15
		dc.b $8A
		dc.b $C5
		dc.b $AF
		dc.b $16
		dc.b $BC
		dc.b $5E ; ^
		dc.b $3A ; :
		dc.b $14
		dc.b $44 ; D
		dc.b $47 ; G
		dc.b $7C ; |
		dc.b $73 ; s
		dc.b $FF
		dc.b $1D
		dc.b  $F
		dc.b $42 ; B
		dc.b $34 ; 4
		dc.b $2B ; +
		dc.b $45 ; E
		dc.b $A2
		dc.b $D1
		dc.b $68 ; h
		dc.b $D0
		dc.b $89
		dc.b $F9
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $8D
		dc.b $AA
		dc.b $5B ; [
		dc.b $14
		dc.b $8B
		dc.b $3C ; <
		dc.b $9F
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $C5
		dc.b $B6
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $67 ; g
		dc.b $96
		dc.b $23 ; #
		dc.b $43 ; C
		dc.b $D8
		dc.b $F4
		dc.b $CD
		dc.b $B3
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $63 ; c
		dc.b $B1
		dc.b $E8
		dc.b $E6
		dc.b  $C
		dc.b $DB
		dc.b $36 ; 6
		dc.b $8D
		dc.b $28 ; (
		dc.b $88
		dc.b $D1
		dc.b $6F ; o
		dc.b $6C ; l
		dc.b $A5
		dc.b $FA
		dc.b $28 ; (
		dc.b $88
		dc.b $8B
		dc.b $F1
		dc.b $57 ; W
		dc.b $CE
		dc.b $CE
		dc.b $6C ; l
		dc.b $7B ; {
		dc.b $19
		dc.b $BE
		dc.b $6C ; l
		dc.b $7B ; {
		dc.b $1E
		dc.b $91
		dc.b $64 ; d
		dc.b $44 ; D
		dc.b $45 ; E
		dc.b $33 ; 3
		dc.b $4E ; N
		dc.b $55 ; U
		dc.b $7C ; |
		dc.b $E9
		dc.b $9A
		dc.b $66 ; f
		dc.b $C4
		dc.b $69 ; i
		dc.b $12
		dc.b $B1
		dc.b $CB
		dc.b $AF
		dc.b $71 ; q
		dc.b $4B ; K
		dc.b $95
		dc.b $B7
		dc.b $2F ; /
		dc.b $1C
		dc.b $BC
		dc.b $76 ; v
		dc.b $ED
		dc.b $D2
		dc.b $8D
		dc.b $8E
		dc.b $7F ; 
		dc.b $E3
		dc.b $4E ; N
		dc.b $9D
		dc.b $3A ; :
		dc.b $74 ; t
		dc.b $E9
		dc.b $D3
		dc.b $A7
		dc.b $4E ; N
		dc.b $9C
		dc.b $8E
		dc.b $9C
		dc.b $88
		dc.b $A7
		dc.b $2F ; /
		dc.b $1C
		dc.b $BC
		dc.b $72 ; r
		dc.b $F1
		dc.b $88
		dc.b $FA
		dc.b $28 ; (
		dc.b $E1
		dc.b $B1
		dc.b $46 ; F
		dc.b $39 ; 9
		dc.b $78 ; x
		dc.b $E7
		dc.b $93
		dc.b $F3
		dc.b $4E ; N
		dc.b $5E ; ^
		dc.b $7C ; |
		dc.b $63 ; c
		dc.b $97
		dc.b $8E
		dc.b $5E ; ^
		dc.b $7C ; |
		dc.b $63 ; c
		dc.b $97
		dc.b $5F ; _
		dc.b $34 ; 4
		dc.b $BC
		dc.b $D3
		dc.b $97
		dc.b $8E
		dc.b $59 ; Y
		dc.b $4B ; K
		dc.b $1C
		dc.b $AD
		dc.b $A2
		dc.b $25 ; %
		dc.b $12
		dc.b $3A ; :
		dc.b $FF
		dc.b $8B
		dc.b $AE
		dc.b $4B ; K
		dc.b $A6
		dc.b $4F ; O
		dc.b $D5
		dc.b $3A ; :
		dc.b $74 ; t
		dc.b $E9
		dc.b $D3
		dc.b $A7
		dc.b $27 ; '
		dc.b $D4
		dc.b $8E
		dc.b $9C
		dc.b $B2
		dc.b $9C
		dc.b $BC
		dc.b $72 ; r
		dc.b $8F
		dc.b $89
		dc.b $28 ; (
		dc.b $E6
		dc.b $85
		dc.b $16
		dc.b $EF
		dc.b $9A
		dc.b $66 ; f
		dc.b $9D
		dc.b $BD
		dc.b  $F
		dc.b $5C ; \
		dc.b $D7
		dc.b $36 ; 6
		dc.b $73 ; s
		dc.b $7E ; ~
		dc.b $ED
		dc.b $4B ; K
		dc.b $C5
		dc.b $4E ; N
		dc.b $DD
		dc.b $BB
		dc.b $71 ; q
		dc.b $4E ; N
		dc.b $F9
		dc.b $A6
		dc.b $62 ; b
		dc.b $97
		dc.b $9F
		dc.b $15
		dc.b $F5
		dc.b $3C ; <
		dc.b $27 ; '
		dc.b $9E
		dc.b $63 ; c
		dc.b $B7
		dc.b $6E ; n
		dc.b $DE
		dc.b $B9
		dc.b $B5
		dc.b $2F ; /
		dc.b $1C
		dc.b $FF
		dc.b $C6
		dc.b $7E ; ~
		dc.b $88
		dc.b $A7
		dc.b $4B ; K
		dc.b   7
		dc.b $4A ; J
		dc.b $87
		dc.b $4B ; K
		dc.b   5
		dc.b $B7
		dc.b $63 ; c
		dc.b $A1
		dc.b $48 ; H
		dc.b $E5
		dc.b $4A ; J
		dc.b $A2
		dc.b $51 ; Q
		dc.b $2B ; +
		dc.b $1D
		dc.b $2A ; *
		dc.b $65 ; e
		dc.b $29 ; )
		dc.b $E6
		dc.b $29 ; )
		dc.b $1E
		dc.b $2A ; *
		dc.b $65 ; e
		dc.b $2A ; *
		dc.b $65 ; e
		dc.b $2A ; *
		dc.b $16
		dc.b $28 ; (
		dc.b $A7
		dc.b $2E ; .
		dc.b $49 ; I
		dc.b $73 ; s
		dc.b $EC
		dc.b $FA
		dc.b $4A ; J
		dc.b $9E
		dc.b $69 ; i
		dc.b $C8
		dc.b $A7
		dc.b $FE
		dc.b $2B ; +
		dc.b $6C ; l
		dc.b $F9
		dc.b $95
		dc.b $B7
		dc.b $2B ; +
		dc.b $6E ; n
		dc.b $7E ; ~
		dc.b $65 ; e
		dc.b $6D ; m
		dc.b $CA
		dc.b $DB
		dc.b $95
		dc.b $5E ; ^
		dc.b $CA
		dc.b $C1
		dc.b $44 ; D
		dc.b $4A ; J
		dc.b $EA
		dc.b $EA
		dc.b $AF
		dc.b $AE
		dc.b $AE
		dc.b $A9
		dc.b $F9
		dc.b $D7
		dc.b $35 ; 5
		dc.b $CD
		dc.b $73 ; s
		dc.b $62 ; b
		dc.b $34 ; 4
		dc.b $8D
		dc.b $FD
		dc.b $57 ; W
		dc.b $D6
		dc.b $38 ; 8
		dc.b $C7
		dc.b $68 ; h
		dc.b $B5
		dc.b $43 ; C
		dc.b $AF
		dc.b $99
		dc.b $5D ; ]
		dc.b $58 ; X
		dc.b $39 ; 9
		dc.b $FF
		dc.b $89
		dc.b $D5
		dc.b $12
		dc.b $A1
		dc.b $F7
		dc.b $93
		dc.b $E9
		dc.b $C3
		dc.b $7C ; |
		dc.b $D0
		dc.b $88
		dc.b $88
		dc.b $94
		dc.b $5F ; _
		dc.b $CD
		dc.b $3F ; ?
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $23 ; #
		dc.b $11
		dc.b $7F ; 
		dc.b $34 ; 4
		dc.b $FC
		dc.b $88
		dc.b $8E
		dc.b $8A
		dc.b $7F ; 
		dc.b $E3
		dc.b $B3
		dc.b $9A
		dc.b $66 ; f
		dc.b $9D
		dc.b $A2
		dc.b $D1
		dc.b $68 ; h
		dc.b $B4
		dc.b $68 ; h
		dc.b $46 ; F
		dc.b $84
		dc.b $4F ; O
		dc.b $D1
		dc.b $BF
		dc.b $1C
		dc.b $46 ; F
		dc.b $32 ; 2
		dc.b $D9
		dc.b $A6
		dc.b $69 ; i
		dc.b $16
		dc.b $8B
		dc.b $45 ; E
		dc.b $AF
		dc.b $D9
		dc.b $62 ; b
		dc.b $2D ; -
		dc.b $16
		dc.b $8B
		dc.b $76 ; v
		dc.b $70 ; p
		dc.b $D9
		dc.b $C8
		dc.b $8D
		dc.b $3D ; =
		dc.b $2A ; *
		dc.b $5B ; [
		dc.b $54 ; T
		dc.b $B4
		dc.b $F4
		dc.b $F6
		dc.b $7B ; {
		dc.b $27 ; '
		dc.b $3C ; <
		dc.b $AF
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $2F ; /
		dc.b $F6
		dc.b $5C ; \
		dc.b $9F
		dc.b $F8
		dc.b $C4
		dc.b $6F ; o
		dc.b $9A
		dc.b $44 ; D
		dc.b $94
		dc.b $8A
		dc.b $15
		dc.b  $A
		dc.b $47 ; G
		dc.b $88
		dc.b $5A ; Z
		dc.b $15
		dc.b $2A ; *
		dc.b $FA
		dc.b $AF
		dc.b $18
		dc.b $B6
		dc.b $E4
		dc.b $A4
		dc.b $73 ; s
		dc.b $3D ; =
		dc.b $95
		dc.b $22 ; "
		dc.b $1C
		dc.b $A9
		dc.b $72 ; r
		dc.b $E5
		dc.b $4A ; J
		dc.b $A7
		dc.b $6E ; n
		dc.b $36 ; 6
		dc.b $23 ; #
		dc.b $4E ; N
		dc.b $90
		dc.b $A7
		dc.b $E6
		dc.b $55 ; U
		dc.b  $E
		dc.b $54 ; T
		dc.b $A9
		dc.b $46 ; F
		dc.b $D9
		dc.b $44 ; D
		dc.b $F0
		dc.b $A6
		dc.b $48 ; H
		dc.b $89
		dc.b $5B ; [
		dc.b $19
		dc.b $48 ; H
		dc.b $97
		dc.b $B7
		dc.b $46 ; F
		dc.b  $A
		dc.b $94
		dc.b $88
		dc.b $C5
		dc.b $43 ; C
		dc.b $B1
		dc.b $11
		dc.b $19
		dc.b $F5
		dc.b $11
		dc.b $1D
		dc.b $5D ; ]
		dc.b $5D ; ]
		dc.b $5D ; ]
		dc.b $5D ; ]
		dc.b $5D ; ]
		dc.b $5D ; ]
		dc.b $5B ; [
		dc.b $F7
		dc.b $43 ; C
		dc.b $B1
		dc.b $46 ; F
		dc.b $3C ; <
		dc.b $FA
		dc.b $BE
		dc.b $6F ; o
		dc.b $E2
		dc.b $9F
		dc.b $94
		dc.b $BC
		dc.b $D2
		dc.b $EA
		dc.b $EA
		dc.b $EA
		dc.b $EA
		dc.b $EA
		dc.b $EA
		dc.b $EA
		dc.b $88
		dc.b $88
		dc.b $CF
		dc.b $1D
		dc.b $70 ; p
		dc.b $95
		dc.b $B6
		dc.b $2D ; -
		dc.b $21 ; !
		dc.b $4F ; O
		dc.b $CE
		dc.b $D8
		dc.b $B1
		dc.b $92
		dc.b $A9
		dc.b $E2
		dc.b $95
		dc.b $3F ; ?
		dc.b $18
		dc.b $E9
		dc.b $67 ; g
		dc.b $C6
		dc.b $3A ; :
		dc.b $59 ; Y
		dc.b $F1
		dc.b $88
		dc.b $8C
		dc.b $F1
		dc.b $99
		dc.b $F0
		dc.b $52 ; R
		dc.b $A4
		dc.b $62 ; b
		dc.b $96
		dc.b $63 ; c
		dc.b $29 ; )
		dc.b $13
		dc.b $F2
		dc.b $29 ; )
		dc.b $7B ; {
		dc.b $54 ; T
		dc.b $3A ; :
		dc.b $30 ; 0
		dc.b $FF
		dc.b $88
		dc.b $A5
		dc.b $53 ; S
		dc.b $2B ; +
		dc.b $E3
		dc.b $15
		dc.b $3C ; <
		dc.b $F8
		dc.b $B4
		dc.b $45 ; E
		dc.b $A2
		dc.b $FE
		dc.b $31 ; 1
		dc.b $DB
		dc.b $B7
		dc.b $7F ; 
		dc.b $19
		dc.b $E6
		dc.b $FE
		dc.b $76 ; v
		dc.b $3D ; =
		dc.b $7B ; {
		dc.b $9C
		dc.b $D0
		dc.b $E2
		dc.b $25 ; %
		dc.b $44 ; D
		dc.b $63 ; c
		dc.b $CF
		dc.b $AD
		dc.b $33 ; 3
		dc.b $4E ; N
		dc.b $DE
		dc.b $7C ; |
		dc.b $5F ; _
		dc.b $E8
		dc.b $94
		dc.b $FF
		dc.b $C7
		dc.b $1E
		dc.b $7D ; }
		dc.b $6B ; k
		dc.b $9A
		dc.b $66 ; f
		dc.b $C7
		dc.b $9F
		dc.b $18
		dc.b $72 ; r
		dc.b $22 ; "
		dc.b $85
		dc.b $6F ; o
		dc.b $5C ; \
		dc.b $D8
		dc.b $8D
		dc.b $88
		dc.b $DA
		dc.b $27 ; '
		dc.b $96
		dc.b $F4
		dc.b $3C ; <
		dc.b $18
		dc.b $A5
		dc.b $F8
		dc.b $ED
		dc.b $DB
		dc.b $B7
		dc.b $7C ; |
		dc.b $D2
		dc.b $22 ; "
		dc.b $57 ; W
		dc.b $4C ; L
		dc.b $15
		dc.b $7C ; |
		dc.b $EF
		dc.b $DC
		dc.b $F7
		dc.b $38 ; 8
		dc.b $63 ; c
		dc.b $34 ; 4
		dc.b $6D ; m
		dc.b $CF
		dc.b $FC
		dc.b $74 ; t
		dc.b $CD
		dc.b $3B ; ;
		dc.b $76 ; v
		dc.b $E7
		dc.b $E6
		dc.b $D1
		dc.b $1B
		dc.b $65 ; e
		dc.b $F3
		dc.b $42 ; B
		dc.b $2B ; +
		dc.b $E6
		dc.b $29 ; )
		dc.b $14
		dc.b $EB
		dc.b $EA
		dc.b $9D
		dc.b $3A ; :
		dc.b $FA
		dc.b $A7
		dc.b $4E ; N
		dc.b $BE
		dc.b $A9
		dc.b $D3
		dc.b $A7
		dc.b $4E ; N
		dc.b $9C
		dc.b $F2
		dc.b $91
		dc.b $48 ; H
		dc.b $8A
		dc.b $39 ; 9
		dc.b $BE
		dc.b $69 ; i
		dc.b $12
		dc.b $29 ; )
		dc.b $FF
		dc.b $8C
		dc.b $52 ; R
		dc.b $25 ; %
		dc.b $CA
		dc.b $97
		dc.b $3C ; <
		dc.b $25 ; %
		dc.b $CB
		dc.b $29 ; )
		dc.b $CB
		dc.b $C7
		dc.b $2F ; /
		dc.b $1C
		dc.b $BC
		dc.b $72 ; r
		dc.b $F1
		dc.b $12
		dc.b $F5
		dc.b $CB
		dc.b $44 ; D
		dc.b $42 ; B
		dc.b $EA
		dc.b $EA
		dc.b $9F
		dc.b $9E
		dc.b $AE
		dc.b $AE
		dc.b $AB
		dc.b $15
		dc.b $BD
		dc.b  $F
		dc.b $4C ; L
		dc.b $DB
		dc.b $36 ; 6
		dc.b $F4
		dc.b $8D
		dc.b $11
		dc.b $6E ; n
		dc.b $D1
		dc.b $6B ; k
		dc.b   4
		dc.b $4F ; O
		dc.b $C8
		dc.b $BA
		dc.b $8B
		dc.b $45 ; E
		dc.b $F9
		dc.b $7F ; 
		dc.b $A2
		dc.b $D1
		dc.b $28 ; (
		dc.b $B1
		dc.b $17
		dc.b $CD
		dc.b $1E
		dc.b $EC
		dc.b $66 ; f
		dc.b $BC
		dc.b $8E
		dc.b $BE
		dc.b $AA
		dc.b $5B ; [
		dc.b $33 ; 3
		dc.b $E2
		dc.b $29 ; )
		dc.b $47 ; G
		dc.b $C4
		dc.b $6B ; k
		dc.b $94
		dc.b $75 ; u
		dc.b $75 ; u
		dc.b $16
		dc.b $33 ; 3
		dc.b $5F ; _
		dc.b $1A
		dc.b $1C
		dc.b $1D
		dc.b $58 ; X
		dc.b $67 ; g
		dc.b $C1
		dc.b $4E ; N
		dc.b $DE
		dc.b $14
		dc.b $7C ; |
		dc.b $13
		dc.b $CB
		dc.b $7A ; z
		dc.b $F7
		dc.b $7E ; ~
		dc.b $73 ; s
		dc.b $42 ; B
		dc.b $22 ; "
		dc.b $31 ; 1
		dc.b $9A
		dc.b $E4
		dc.b $46 ; F
		dc.b $3E ; >
		dc.b $AE
		dc.b $94
		dc.b $B6
		dc.b $B3
		dc.b $D2
		dc.b $22 ; "
		dc.b $35 ; 5
		dc.b $CA
		dc.b $3A ; :
		dc.b $BA
		dc.b $8B
		dc.b $19
		dc.b $AF
		dc.b $8D
		dc.b  $E
		dc.b  $E
		dc.b $AE
		dc.b $A2
		dc.b $91
		dc.b $5F ; _
		dc.b $44 ; D
		dc.b $BB
		dc.b $11
		dc.b $6E ; n
		dc.b $D9
		dc.b $BF
		dc.b $77 ; w
		dc.b $E7
		dc.b $34 ; 4
		dc.b $22 ; "
		dc.b $23 ; #
		dc.b $19
		dc.b $AE
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $22 ; "
		dc.b $FE
		dc.b $36 ; 6
		dc.b $BC
		dc.b $A4
		dc.b $5F ; _
		dc.b $CD
		dc.b $2F ; /
		dc.b $28 ; (
		dc.b $E9
		dc.b $D5
		dc.b $D5
		dc.b $6F ; o
		dc.b $4C ; L
		dc.b $DB
		dc.b $31 ; 1
		dc.b $79 ; y
		dc.b $11
		dc.b $2B ; +
		dc.b $4A ; J
		dc.b $45 ; E
		dc.b $B1
		dc.b $1F
		dc.b $12
		dc.b $A2
		dc.b $C7
		dc.b $3F ; ?
		dc.b $F1
		dc.b $7B ; {
		dc.b $F1
		dc.b $DA
		dc.b $2D ; -
		dc.b $74 ; t
		dc.b $88
		dc.b $88
		dc.b $88
		dc.b $8C
		dc.b $76 ; v
		dc.b $3D ; =
		dc.b $1C
		dc.b $C1
		dc.b $9B
		dc.b $66 ; f
		dc.b $D1
		dc.b $28 ; (
		dc.b $A5
		dc.b $B7
		dc.b $D5
		dc.b $1D
		dc.b $2D ; -
		dc.b $ED
		dc.b $94
		dc.b $BF
		dc.b $45 ; E
		dc.b $11
		dc.b $11
		dc.b $7E ; ~
		dc.b $2A ; *
		dc.b $F9
		dc.b $D9
		dc.b $CD
		dc.b $8F
		dc.b $63 ; c
		dc.b $28 ; (
		dc.b $9E
		dc.b $67 ; g
		dc.b $BB
		dc.b $E1
		dc.b $BF
		dc.b $4C ; L
		dc.b $F3
		dc.b $9A
		dc.b $64 ; d
		dc.b $46 ; F
		dc.b $D4
		dc.b $B9
		dc.b $72 ; r
		dc.b $A5
		dc.b $12
		dc.b $8A
		dc.b $11
		dc.b $BF
		dc.b $9C
		dc.b $5E ; ^
		dc.b $6D ; m
		dc.b $88
		dc.b $A5
		dc.b $28 ; (
		dc.b $94
		dc.b $67 ; g
		dc.b $96
		dc.b $E4
		dc.b $53 ; S
		dc.b $F3
		dc.b $42 ; B
		dc.b $A4
		dc.b $62 ; b
		dc.b $97
		dc.b $B1
		dc.b $98
		dc.b $2F ; /
		dc.b $11
		dc.b $28 ; (
		dc.b $C7
		dc.b $14
		dc.b $CD
		dc.b $33 ; 3
		dc.b $6C ; l
		dc.b $A4
		dc.b $4F ; O
		dc.b $CC
		dc.b $A2
		dc.b $84
		dc.b $32 ; 2
		dc.b $98
		dc.b $A5
		dc.b $52 ; R
		dc.b $31 ; 1
		dc.b $48 ; H
		dc.b $8C
		dc.b $52 ; R
		dc.b $E9
		dc.b $48 ; H
		dc.b $CD
		dc.b $88
		dc.b $D0
		dc.b $F6
		dc.b $C7
		dc.b $4E ; N
		dc.b $8E
		dc.b $1B
		dc.b $1C
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $47 ; G
		dc.b $FC
		dc.b $7F ; 
		dc.b $E3
		dc.b $FF
		dc.b $2F ; /
		dc.b $F9
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $42 ; B
		dc.b $EF
		dc.b $35 ; 5
		dc.b $EE
		dc.b $FE
		dc.b $AB
		dc.b $FE
		dc.b $3F ; ?
		dc.b $F2
		dc.b $FE
		dc.b $12
		dc.b $AF
		dc.b $D1
		dc.b $2D ; -
		dc.b $88
		dc.b $D2
		dc.b $88
		dc.b $88
		dc.b $89
		dc.b $E6
		dc.b $9E
		dc.b $BE
		dc.b $65 ; e
		dc.b $4B ; K
		dc.b $97
		dc.b $8E
		dc.b $5C ; \
		dc.b $FC
		dc.b $E3
		dc.b $97
		dc.b $8E
		dc.b $5C ; \
		dc.b $FC
		dc.b $C6
		dc.b $1D
		dc.b $52 ; R
		dc.b $F1
		dc.b $C8
		dc.b $E4
		dc.b $72 ; r
		dc.b $39 ; 9
		dc.b $65 ; e
		dc.b $28 ; (
		dc.b $8D
		dc.b $8E
		dc.b $BE
		dc.b $69 ; i
		dc.b $CB
		dc.b $C7
		dc.b $3C ; <
		dc.b $9F
		dc.b $F8
		dc.b $CB
		dc.b $97
		dc.b $8E
		dc.b $79 ; y
		dc.b $3F ; ?
		dc.b $F1
		dc.b $85
		dc.b $8B
		dc.b $6E ; n
		dc.b $9D
		dc.b $72 ; r
		dc.b $79 ; y
		dc.b $4E ; N
		dc.b $9D
		dc.b $22 ; "
		dc.b $91
		dc.b $11
		dc.b $11
		dc.b $D5
		dc.b $6F ; o
		dc.b $4F ; O
		dc.b $62 ; b
		dc.b $D3
		dc.b $2C ; ,
		dc.b $70 ; p
		dc.b $FA
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $47 ; G
		dc.b  $D
		dc.b $70 ; p
		dc.b $CF
		dc.b $76 ; v
		dc.b $CD
		dc.b $11
		dc.b $11
		dc.b $1D
		dc.b $5D ; ]
		dc.b $E5
		dc.b $FB
		dc.b $AF
		dc.b $75 ; u
		dc.b $CB
		dc.b $51 ; Q
		dc.b  $C
		dc.b $B7
		dc.b $2B ; +
		dc.b $6E ; n
		dc.b $BE
		dc.b $B4
		dc.b $CD
		dc.b $33 ; 3
		dc.b $7C ; |
		dc.b $DB
		dc.b $36 ; 6
		dc.b $CD
		dc.b $22 ; "
		dc.b $23 ; #
		dc.b $15
		dc.b $AE
		dc.b $8B
		dc.b $A4
		dc.b $46 ; F
		dc.b $1B
		dc.b $F4
		dc.b $C5
		dc.b $15
		dc.b $ED
		dc.b $2F ; /
		dc.b $D1
		dc.b $73 ; s
		dc.b $62 ; b
		dc.b $36 ; 6
		dc.b $2B ; +
		dc.b $76 ; v
		dc.b $F0
		dc.b $F7
		dc.b  $A
		dc.b $E1
		dc.b $B4
		dc.b $32 ; 2
		dc.b $85
		dc.b $E7
		dc.b $C1
		dc.b $44 ; D
		dc.b $67 ; g
		dc.b  $D
		dc.b  $E
		dc.b $DD
		dc.b $BB
		dc.b $72 ; r
		dc.b $B0
		dc.b $E6
		dc.b $CE
		dc.b $6C ; l
		dc.b $66 ; f
		dc.b $C6
		dc.b $68 ; h
		dc.b $51 ; Q
		dc.b $11
		dc.b $1D
		dc.b $E4
		dc.b $44 ; D
		dc.b $F0
		dc.b $C4
		dc.b $53 ; S
		dc.b $A3
		dc.b $68 ; h
		dc.b $B7
		dc.b $6E ; n
		dc.b $DD
		dc.b $BD
		dc.b  $F
		dc.b $5C ; \
		dc.b $D3
		dc.b $37 ; 7
		dc.b $CD
		dc.b $F3
		dc.b   6
		dc.b $6D ; m
		dc.b $11
		dc.b $1B
		dc.b $7D ; }
		dc.b $52 ; R
		dc.b $B4
		dc.b $AB
		dc.b $EB
		dc.b $AB
		dc.b  $C
		dc.b $54 ; T
		dc.b $8C
		dc.b $59 ; Y
		dc.b $F1
		dc.b $D5
		dc.b $D5
		dc.b $87
		dc.b $B4
		dc.b $2C ; ,
		dc.b $54 ; T
		dc.b $B6
		dc.b $A9
		dc.b $14
		dc.b $2C ; ,
		dc.b $F1
		dc.b $90
		dc.b $75 ; u
		dc.b $52 ; R
		dc.b $33 ; 3
		dc.b $E0
		dc.b $A5
		dc.b $D5
		dc.b $D5
		dc.b $28 ; (
		dc.b $DF
		dc.b $A6
		dc.b $2E ; .
		dc.b $AE
		dc.b $AE
		dc.b $BF
		dc.b $37 ; 7
		dc.b $E9
		dc.b $8A
		dc.b $79 ; y
		dc.b $85
		dc.b  $A
		dc.b $22 ; "
		dc.b $29 ; )
		dc.b $44 ; D
		dc.b $AE
		dc.b $9F
		dc.b $54 ; T
		dc.b $CE
		dc.b $FB
		dc.b $8E
		dc.b $8C
		dc.b $76 ; v
		dc.b $EC
		dc.b $72 ; r
		dc.b $6C ; l
		dc.b $E7
		dc.b $4E ; N
		dc.b $AD
		dc.b $32 ; 2
		dc.b $9F
		dc.b $91
		dc.b $48 ; H
		dc.b $B7
		dc.b $6F ; o
		dc.b $11
		dc.b $3F ; ?
		dc.b $F1
		dc.b $76 ; v
		dc.b $ED
		dc.b $DB
		dc.b $B6
		dc.b $69 ; i
		dc.b $9A
		dc.b $66 ; f
		dc.b $9D
		dc.b $A2
		dc.b $C8
		dc.b $88
		dc.b $CE
		dc.b $69 ; i
		dc.b $12
		dc.b $52 ; R
		dc.b $28 ; (
		dc.b $54 ; T
		dc.b $29 ; )
		dc.b $1E
		dc.b $21 ; !
		dc.b $68 ; h
		dc.b $54 ; T
		dc.b $AB
		dc.b $EA
		dc.b $BC
		dc.b $62 ; b
		dc.b $DB
		dc.b $92
		dc.b $91
		dc.b $CC
		dc.b $F6
		dc.b $54 ; T
		dc.b $88
		dc.b $72 ; r
		dc.b $A5
		dc.b $CB
		dc.b $95
		dc.b $2A ; *
		dc.b $9D
		dc.b $B8
		dc.b $D8
		dc.b $8D
		dc.b $3A ; :
		dc.b $42 ; B
		dc.b $9F
		dc.b $99
		dc.b $54 ; T
		dc.b $39 ; 9
		dc.b $52 ; R
		dc.b $A5
		dc.b $1B
		dc.b $65 ; e
		dc.b $13
		dc.b $C2
		dc.b $99
		dc.b $22 ; "
		dc.b $25 ; %
		dc.b $6C ; l
		dc.b $65 ; e
		dc.b $22 ; "
		dc.b $5E ; ^
		dc.b $DD
		dc.b $18
		dc.b $2A ; *
		dc.b $52 ; R
		dc.b $23 ; #
		dc.b $15
		dc.b  $E
		dc.b $C4
		dc.b $46 ; F
		dc.b $99
		dc.b $6E ; n
		dc.b $96
		dc.b $72 ; r
		dc.b $4F ; O
		dc.b $AA
		dc.b $44 ; D
		dc.b $B3
		dc.b $4C ; L
		dc.b $D7
		dc.b $37 ; 7
		dc.b $CD
		dc.b $A1
		dc.b $E3
		dc.b $1D
		dc.b   8
		dc.b $97
		dc.b $8A
		dc.b $9D
		dc.b $BB
		dc.b $76 ; v
		dc.b $88
		dc.b $88
		dc.b $95
		dc.b $D2
		dc.b  $E
		dc.b $15
		dc.b $F3
		dc.b $26 ; &
		dc.b $D9
		dc.b $6E ; n
		dc.b $DD
		dc.b $BD
		dc.b  $F
		dc.b $4C ; L
		dc.b $C1
		dc.b $94
		dc.b $FC
		dc.b $88
		dc.b $EB
		dc.b $2D ; -
		dc.b $9A
		dc.b $66 ; f
		dc.b $9D
		dc.b $BB
		dc.b $76 ; v
		dc.b $ED
		dc.b $DB
		dc.b $B7
		dc.b $6E ; n
		dc.b $DD
		dc.b $B3
		dc.b $43 ; C
		dc.b $B1
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $74 ; t
		dc.b $B1
		dc.b $68 ; h
		dc.b $46 ; F
		dc.b  $C
		dc.b $9F
		dc.b $82
		dc.b $B8
		dc.b $44 ; D
		dc.b $4F ; O
		dc.b $2D ; -
		dc.b $D2
		dc.b $C7
		dc.b $9F
		dc.b $1A
		dc.b $11
		dc.b $A7
		dc.b $A1
		dc.b $1A
		dc.b $7A ; z
		dc.b $11
		dc.b $A7
		dc.b $A1
		dc.b $14
		dc.b $A4
		dc.b $78 ; x
		dc.b $A5
		dc.b $96
		dc.b $A2
		dc.b $23 ; #
		dc.b $44 ; D
		dc.b $A3
		dc.b $7E ; ~
		dc.b $98
		dc.b $44 ; D
		dc.b $9C
		dc.b $2B ; +
		dc.b $E8
		dc.b $D2
		dc.b $34 ; 4
		dc.b $A3
		dc.b $14
		dc.b $74 ; t
		dc.b $EF
		dc.b $C1
		dc.b $87
		dc.b $A4
		dc.b $44 ; D
		dc.b $2A ; *
		dc.b $F3
		dc.b $15
		dc.b $32 ; 2
		dc.b $95
		dc.b $3C ; <
		dc.b $54 ; T
		dc.b $F1
		dc.b $53 ; S
		dc.b $C5
		dc.b $5F ; _
		dc.b $54 ; T
		dc.b $8C
		dc.b $52 ; R
		dc.b $8D
		dc.b $A9
		dc.b $66 ; f
		dc.b $29 ; )
		dc.b $7B ; {
		dc.b $52 ; R
		dc.b $F6
		dc.b $A5
		dc.b $ED
		dc.b $4F ; O
		dc.b $CC
		dc.b $A2
		dc.b $34 ; 4
		dc.b $75 ; u
		dc.b $15
		dc.b $E5
		dc.b $2C ; ,
		dc.b $64 ; d
		dc.b $AC
		dc.b $74 ; t
		dc.b $B1
		dc.b $D2
		dc.b $C7
		dc.b $5F ; _
		dc.b $54 ; T
		dc.b $B1
		dc.b $14
		dc.b $B6
		dc.b $89
		dc.b $5B ; [
		dc.b $62 ; b
		dc.b $DB
		dc.b $95
		dc.b $B7
		dc.b $2B ; +
		dc.b $6E ; n
		dc.b $7E ; ~
		dc.b $6D ; m
		dc.b $11
		dc.b  $B
		dc.b $AA
		dc.b $BE
		dc.b $A9
		dc.b $6D ; m
		dc.b $63 ; c
		dc.b $A5
		dc.b $B7
		dc.b $2B ; +
		dc.b $7E ; ~
		dc.b $4A ; J
		dc.b $9F
		dc.b $9B
		dc.b $7A ; z
		dc.b $1E
		dc.b $B9
		dc.b $B7
		dc.b $2B ; +
		dc.b $1D
		dc.b $2A ; *
		dc.b $46 ; F
		dc.b $29 ; )
		dc.b $5A ; Z
		dc.b $50 ; P
		dc.b $75 ; u
		dc.b $18
		dc.b $57 ; W
		dc.b $D1
		dc.b $2A ; *
		dc.b $9E
		dc.b $2A ; *
		dc.b $E5
		dc.b $29 ; )
		dc.b $11
		dc.b $8A
		dc.b $56 ; V
		dc.b $13
		dc.b $F2
		dc.b $22 ; "
		dc.b $DD
		dc.b $A9
		dc.b $5A ; Z
		dc.b $52 ; R
		dc.b $F6
		dc.b $AB
		dc.b $94
		dc.b $B3
		dc.b $D3
		dc.b $6E ; n
		dc.b $23 ; #
		dc.b $6C ; l
		dc.b $B7
		dc.b $6F ; o
		dc.b $15
		dc.b $39 ; 9
		dc.b $27 ; '
		dc.b $E8
		dc.b $A3
		dc.b $96
		dc.b $E4
		dc.b $DB
		dc.b $B7
		dc.b $6E ; n
		dc.b $DD
		dc.b $B3
		dc.b $47 ; G
		dc.b $35 ; 5
		dc.b $E2
		dc.b $89
		dc.b $65 ; e
		dc.b $BB
		dc.b $77 ; w
		dc.b $E9
		dc.b $3F ; ?
		dc.b $25 ; %
		dc.b $3B ; ;
		dc.b $76 ; v
		dc.b $F7
		dc.b $EE
		dc.b $99
		dc.b $64 ; d
		dc.b $46 ; F
		dc.b $BE
		dc.b  $A
		dc.b $FA
		dc.b $8E
		dc.b $B2
		dc.b $DD
		dc.b $BB
		dc.b $7A ; z
		dc.b $1E
		dc.b $9D
		dc.b $BD
		dc.b $1C
		dc.b $DF
		dc.b $34 ; 4
		dc.b $F4
		dc.b $CD
		dc.b $3D ; =
		dc.b $73 ; s
		dc.b $4C ; L
		dc.b $B5
		dc.b $11
		dc.b $B5
		dc.b $D5
		dc.b $11
		dc.b $11
		dc.b $D7
		dc.b $63 ; c
		dc.b $B7
		dc.b $6E ; n
		dc.b $DE
		dc.b $D4
		dc.b $BC
		dc.b $55 ; U
		dc.b $C1
		dc.b $E7
		dc.b $B1
		dc.b $A7
		dc.b $4B ; K
		dc.b $38 ; 8
		dc.b $29 ; )
		dc.b $F9
		dc.b $C7
		dc.b $4B ; K
		dc.b $1D
		dc.b $2C ; ,
		dc.b $F8
		dc.b $9F
		dc.b $89
		dc.b $53 ; S
		dc.b $ED
		dc.b $29 ; )
		dc.b $F6
		dc.b $94
		dc.b $A9
		dc.b $74 ; t
		dc.b $B1
		dc.b $D2
		dc.b $C7
		dc.b $6F ; o
		dc.b $7E ; ~
		dc.b $E8
		dc.b $51 ; Q
		dc.b $B4
		dc.b $50 ; P
		dc.b $E7
		dc.b $FE
		dc.b $2A ; *
		dc.b $5C ; \
		dc.b $FB
		dc.b $2E ; .
		dc.b $58 ; X
		dc.b $A5
		dc.b $CB
		dc.b $9F
		dc.b $99
		dc.b $52 ; R
		dc.b $E5
		dc.b $CA
		dc.b $97
		dc.b $2E ; .
		dc.b $54 ; T
		dc.b $B9
		dc.b $73 ; s
		dc.b $F3
		dc.b $24 ; $
		dc.b $B9
		dc.b $46 ; F
		dc.b $3B ; ;
		dc.b $76 ; v
		dc.b $ED
		dc.b $11
		dc.b $1A
		dc.b $5D ; ]
		dc.b $3E ; >
		dc.b $A9
		dc.b $91
		dc.b $11
		dc.b $4B ; K
		dc.b $AA
		dc.b $C5
		dc.b $6E ; n
		dc.b $DF
		dc.b $57 ; W
		dc.b $48 ; H
		dc.b $88
		dc.b $83
		dc.b $E0
		dc.b $96
		dc.b $53 ; S
		dc.b $33 ; 3
		dc.b $E2
		dc.b $59 ; Y
		dc.b $B4
		dc.b $59 ; Y
		dc.b $11
		dc.b $1D
		dc.b $3A ; :
		dc.b $8B
		dc.b $E1
		dc.b $B3
		dc.b $D3
		dc.b $67 ; g
		dc.b $22 ; "
		dc.b $33 ; 3
		dc.b $E7
		dc.b $AB
		dc.b $AB
		dc.b $AB
		dc.b $AB
		dc.b $AB
		dc.b $AB
		dc.b $AB
		dc.b $AB
		dc.b $AB
		dc.b $AB
		dc.b $AB
		dc.b $AB
		dc.b $AA
		dc.b $36 ; 6
		dc.b $22 ; "
		dc.b $7E ; ~
		dc.b $45 ; E
		dc.b $D5
		dc.b $DE
		dc.b $69 ; i
		dc.b $4F ; O
		dc.b $31 ; 1
		dc.b $57 ; W
		dc.b $29 ; )
		dc.b $50 ; P
		dc.b $E9
		dc.b $67 ; g
		dc.b $94
		dc.b $BA
		dc.b $BA
		dc.b $BA
		dc.b $BA
		dc.b $BA
		dc.b $44 ; D
		dc.b $69 ; i
		dc.b $F5
		dc.b $74 ; t
		dc.b $A5
		dc.b $B5
		dc.b $9E
		dc.b $91
		dc.b $11
		dc.b $AE
		dc.b $51 ; Q
		dc.b $D5
		dc.b $D4
		dc.b $58 ; X
		dc.b $CD
		dc.b $7C ; |
		dc.b $68 ; h
		dc.b $70 ; p
		dc.b $75 ; u
		dc.b $75 ; u
		dc.b $14
		dc.b $8A
		dc.b $FA
		dc.b $25 ; %
		dc.b $D8
		dc.b $8B
		dc.b $76 ; v
		dc.b $CD
		dc.b $FB
		dc.b $BF
		dc.b $39 ; 9
		dc.b $A1
		dc.b $11
		dc.b $18
		dc.b $CD
		dc.b $72 ; r
		dc.b $22 ; "
		dc.b $D9
		dc.b $6C ; l
		dc.b $D3
		dc.b $34 ; 4
		dc.b $ED
		dc.b $DB
		dc.b $B7
		dc.b $62 ; b
		dc.b $29 ; )
		dc.b $50 ; P
		dc.b $8A
		dc.b $58 ; X
		dc.b $E5
		dc.b $18
		dc.b $70 ; p
		dc.b $C3
		dc.b $9A
		dc.b $E5
		dc.b $A2
		dc.b $22 ; "
		dc.b $31 ; 1
		dc.b $43 ; C
		dc.b $B1
		dc.b $D8
		dc.b $F4
		dc.b $3B ; ;
		dc.b $E6
		dc.b $B9
		dc.b $A1
		dc.b $DF
		dc.b $91
		dc.b $11
		dc.b $11
		dc.b $6F ; o
		dc.b $AB
		dc.b $AB
		dc.b $AB
		dc.b $AB
		dc.b $AB
		dc.b $AB
		dc.b $AB
		dc.b $AB
		dc.b $AB
		dc.b  $F
		dc.b $68 ; h
		dc.b $58 ; X
		dc.b $A9
		dc.b $6D ; m
		dc.b $52 ; R
		dc.b $28 ; (
		dc.b $59 ; Y
		dc.b $E3
		dc.b $20
		dc.b $EA
		dc.b $EA
		dc.b $EA
		dc.b $A4
		dc.b $67 ; g
		dc.b $C1
		dc.b $4B ; K
		dc.b $CD
		dc.b $2E ; .
		dc.b $AE
		dc.b $AE
		dc.b $AE
		dc.b $BF
		dc.b $37 ; 7
		dc.b $E9
		dc.b $8A
		dc.b $79 ; y
		dc.b $85
		dc.b  $A
		dc.b $22 ; "
		dc.b $2D ; -
		dc.b $16
		dc.b $7B ; {
		dc.b $B1
		dc.b $44 ; D
		dc.b $49 ; I
		dc.b $6F ; o
		dc.b $67 ; g
		dc.b $33 ; 3
		dc.b $86
		dc.b $33 ; 3
		dc.b $5E ; ^
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $50 ; P
		dc.b $A2
		dc.b  $E
		dc.b $18
		dc.b $AB
		dc.b $9B
		dc.b $66 ; f
		dc.b  $C
		dc.b $DA
		dc.b $2C ; ,
		dc.b $EF
		dc.b $A5
		dc.b $8F
		dc.b $AE
		dc.b $C4
		dc.b $68 ; h
		dc.b $46 ; F
		dc.b $C6
		dc.b $51 ; Q
		dc.b $C2
		dc.b $79 ; y
		dc.b $E4
		dc.b $46 ; F
		dc.b $D7
		dc.b $4F ; O
		dc.b $AA
		dc.b $64 ; d
		dc.b $44 ; D
		dc.b $52 ; R
		dc.b $EA
		dc.b $B1
		dc.b $5B ; [
		dc.b $B7
		dc.b $D5
		dc.b $D2
		dc.b $22 ; "
		dc.b $20
		dc.b $F8
		dc.b $25 ; %
		dc.b $94
		dc.b $CC
		dc.b $F8
		dc.b $96
		dc.b $6D ; m
		dc.b $1B
		dc.b $52 ; R
		dc.b $62 ; b
		dc.b $91
		dc.b $6C ; l
		dc.b $42 ; B
		dc.b $D8
		dc.b $A2
		dc.b $8E
		dc.b $A2
		dc.b $F8
		dc.b $6C ; l
		dc.b $F4
		dc.b $D9
		dc.b $C8
		dc.b $EF
		dc.b $35 ; 5
		dc.b $CD
		dc.b $8C
		dc.b $DB
		dc.b $D2
		dc.b $34 ; 4
		dc.b $8D
		dc.b $23 ; #
		dc.b $E2
		dc.b $2B ; +
		dc.b $EA
		dc.b $22 ; "
		dc.b $23 ; #
		dc.b $A4
		dc.b $43 ; C
		dc.b $B1
		dc.b $74 ; t
		dc.b $45 ; E
		dc.b $F0
		dc.b $D7
		dc.b $C4
		dc.b $88
		dc.b $E4
		dc.b $FB
		dc.b $E2
		dc.b $C1
		dc.b $E7
		dc.b $D6
		dc.b $C6
		dc.b $6D ; m
		dc.b $9B
		dc.b $E6
		dc.b $C6
		dc.b $6F ; o
		dc.b $9A
		dc.b $64 ; d
		dc.b $45 ; E
		dc.b $32 ; 2
		dc.b $DC
		dc.b $AD
		dc.b $BA
		dc.b $FA
		dc.b $B7
		dc.b $6F ; o
		dc.b $5C ; \
		dc.b $C3
		dc.b $DA
		dc.b $11
		dc.b $2E ; .
		dc.b $9D
		dc.b  $A
		dc.b $5E ; ^
		dc.b  $A
		dc.b $5E ; ^
		dc.b $D4
		dc.b $BD
		dc.b $AA
		dc.b $74 ; t
		dc.b $F3
		dc.b $91
		dc.b $14
		dc.b $62 ; b
		dc.b $28 ; (
		dc.b $F8
		dc.b $23 ; #
		dc.b $16
		dc.b $BD
		dc.b $DF
		dc.b $9C
		dc.b $36 ; 6
		dc.b $A4
		dc.b $74 ; t
		dc.b $2A ; *
		dc.b $11
		dc.b $22 ; "
		dc.b $C6
		dc.b $2D ; -
		dc.b $FB
		dc.b $BE
		dc.b $18
		dc.b $23 ; #
		dc.b $6C ; l
		dc.b $C6
		dc.b $44 ; D
		dc.b $5A ; Z
		dc.b $2C ; ,
		dc.b $F7
		dc.b $62 ; b
		dc.b $88
		dc.b $92
		dc.b $DE
		dc.b $CE
		dc.b $67 ; g
		dc.b  $C
		dc.b $66 ; f
		dc.b $BC
		dc.b $8A
		dc.b $7A ; z
		dc.b $5D ; ]
		dc.b $50 ; P
		dc.b $28 ; (
		dc.b $83
		dc.b $86
		dc.b $2A ; *
		dc.b $E6
		dc.b $D9
		dc.b $83
		dc.b $36 ; 6
		dc.b $8B
		dc.b $3B ; ;
		dc.b $E9
		dc.b $63 ; c
		dc.b $EB
		dc.b $B1
		dc.b   8
		dc.b $C1
		dc.b $1C
		dc.b $91
		dc.b $92
		dc.b $C6
		dc.b $4F ; O
		dc.b $A4
		dc.b $44 ; D
		dc.b $BE
		dc.b $AA
		dc.b $5B ; [
		dc.b $33 ; 3
		dc.b $E2
		dc.b $29 ; )
		dc.b $47 ; G
		dc.b $C4
		dc.b $6B ; k
		dc.b $94
		dc.b $75 ; u
		dc.b $75 ; u
		dc.b $16
		dc.b $33 ; 3
		dc.b $5F ; _
		dc.b $1A
		dc.b $1C
		dc.b $1A
		dc.b $52 ; R
		dc.b $B1
		dc.b $49 ; I
		dc.b $EC
		dc.b $88
		dc.b $E5
		dc.b  $A
		dc.b $9E
		dc.b $14
		dc.b $7C ; |
		dc.b $13
		dc.b $CB
		dc.b $7A ; z
		dc.b $F7
		dc.b $7E ; ~
		dc.b $73 ; s
		dc.b $42 ; B
		dc.b $22 ; "
		dc.b $31 ; 1
		dc.b $9A
		dc.b $E4
		dc.b $45 ; E
		dc.b $73 ; s
		dc.b $5C ; \
		dc.b $D8
		dc.b $CD
		dc.b $BD
		dc.b $23 ; #
		dc.b $48 ; H
		dc.b $D2
		dc.b $3E ; >
		dc.b $3A ; :
		dc.b $BA
		dc.b $BA
		dc.b $AB
		dc.b $EB
		dc.b $AB
		dc.b $AB
		dc.b $AA
		dc.b $7E ; ~
		dc.b $61 ; a
		dc.b $D8
		dc.b $BA
		dc.b $22 ; "
		dc.b $F8
		dc.b $6B ; k
		dc.b $E2
		dc.b $44 ; D
		dc.b $72 ; r
		dc.b $7D ; }
		dc.b $F1
		dc.b $4A ; J
		dc.b $EA
		dc.b $EA
		dc.b $A4
		dc.b $67 ; g
		dc.b $C1
		dc.b $4B ; K
		dc.b $AB
		dc.b $AB
		dc.b $68 ; h
		dc.b $9F
		dc.b $92
		dc.b $33 ; 3
		dc.b $9A
		dc.b $73 ; s
		dc.b $E4
		dc.b $FC
		dc.b $D2
		dc.b $C7
		dc.b $4E ; N
		dc.b $44 ; D
		dc.b $50 ; P
		dc.b $A5
		dc.b $15
		dc.b $F3
		dc.b $12
		dc.b $8C
		dc.b $44 ; D
		dc.b $FC
		dc.b $CB
		dc.b $C7
		dc.b $2F ; /
		dc.b $1C
		dc.b $BC
		dc.b $73 ; s
		dc.b $F3
		dc.b $28 ; (
		dc.b $CF
		dc.b $22 ; "
		dc.b $51 ; Q
		dc.b $4E ; N
		dc.b $BF
		dc.b $E2
		dc.b $F1
		dc.b $CB
		dc.b $C4
		dc.b $4B ; K
		dc.b $A4
		dc.b $53 ; S
		dc.b $A5
		dc.b $5C ; \
		dc.b $A3
		dc.b $1E
		dc.b $14
		dc.b $F1
		dc.b $53 ; S
		dc.b $DA
		dc.b $9E
		dc.b $50 ; P
		dc.b $A5
		dc.b $CA
		dc.b $97
		dc.b $2E ; .
		dc.b $B9
		dc.b $2E ; .
		dc.b $9D
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $7D ; }
		dc.b $BF
		dc.b $22 ; "
		dc.b $56 ; V
		dc.b $C5
		dc.b $27 ; '
		dc.b $D5
		dc.b $32 ; 2
		dc.b $22 ; "
		dc.b $8B
		dc.b $16
		dc.b $84
		dc.b $6C ; l
		dc.b $46 ; F
		dc.b $D9
		dc.b $BE
		dc.b $6C ; l
		dc.b $66 ; f
		dc.b $91
		dc.b $1B
		dc.b $76 ; v
		dc.b $C8
		dc.b $D7
		dc.b $A6
		dc.b $12
		dc.b $33 ; 3
		dc.b   6
		dc.b $60 ; `
		dc.b $8D
		dc.b $22 ; "
		dc.b $FF
		dc.b $45 ; E
		dc.b $A1
		dc.b $96
		dc.b $ED
		dc.b $DB
		dc.b $BF
		dc.b $83
		dc.b $3E ; >
		dc.b $22 ; "
		dc.b $3A ; :
		dc.b $A2
		dc.b $25 ; %
		dc.b $17
		dc.b $F3
		dc.b $4F ; O
		dc.b $C8
		dc.b $B5
		dc.b $62 ; b
		dc.b $D0
		dc.b $8D
		dc.b $F2
		dc.b $54 ; T
		dc.b $92
		dc.b $C9
		dc.b $1D
		dc.b $18
		dc.b $2E ; .
		dc.b $91
		dc.b $6A ; j
		dc.b $51 ; Q
		dc.b $4A ; J
		dc.b $4E ; N
		dc.b $12
		dc.b $23 ; #
		dc.b $84
		dc.b $8A
		dc.b $91
		dc.b $82
		dc.b $9F
		dc.b $F8
		dc.b $A2
		dc.b $8F
		dc.b $4B ; K
		dc.b $44 ; D
		dc.b $AD
		dc.b $A2
		dc.b $47 ; G
		dc.b $48 ; H
		dc.b $AE
		dc.b $4A ; J
		dc.b $28 ; (
		dc.b $F4
		dc.b $C1
		dc.b   8
		dc.b $D9
		dc.b $2A ; *
		dc.b $22 ; "
		dc.b $23 ; #
		dc.b $17
		dc.b $44 ; D
		dc.b $5B ; [
		dc.b $34 ; 4
		dc.b $3D ; =
		dc.b   8
		dc.b $B2
		dc.b $22 ; "
		dc.b $23 ; #
		dc.b $11
		dc.b $D5
		dc.b $E3
		dc.b $C1
		dc.b $F9
		dc.b $11
		dc.b $11
		dc.b $11
		dc.b $1D
		dc.b $3A ; :
		dc.b $5A ; Z
		dc.b $B4
		dc.b $69 ; i
		dc.b $1B
		dc.b $11
		dc.b $83
		dc.b $36 ; 6
		dc.b $88
		dc.b $88
		dc.b $EA
		dc.b $2F ; /
		dc.b $E6
		dc.b $5D ; ]
		dc.b $B9
		dc.b $F6
		dc.b $5D ; ]
		dc.b $B9
		dc.b $62 ; b
		dc.b $97
		dc.b $2F ; /
		dc.b $1C
		dc.b $BC
		dc.b $72 ; r
		dc.b $F1
		dc.b $CF
		dc.b $B2
		dc.b $E5
		dc.b $E3
		dc.b $94
		dc.b $63 ; c
		dc.b $B7
		dc.b $11
		dc.b $12
		dc.b $39 ; 9
		dc.b $FF
		dc.b $8C
		dc.b $8A
		dc.b $BE
		dc.b $89
		dc.b $66 ; f
		dc.b $9C
		dc.b $F0
		dc.b $97
		dc.b $8C
		dc.b $78 ; x
		dc.b $E5
		dc.b $E3
		dc.b $97
		dc.b $3E ; >
		dc.b $CB
		dc.b $C7
		dc.b $2F ; /
		dc.b $3E ; >
		dc.b $36 ; 6
		dc.b $73 ; s
		dc.b $42 ; B
		dc.b $8B
		dc.b $65 ; e
		dc.b $B3
		dc.b $4C ; L
		dc.b $D3
		dc.b $B7
		dc.b $6E ; n
		dc.b $DD
		dc.b $BB
		dc.b $76 ; v
		dc.b $ED
		dc.b $DB
		dc.b $B6
		dc.b $68 ; h
		dc.b $76 ; v
		dc.b $28 ; (
		dc.b $B5
		dc.b $A5
		dc.b $22 ; "
		dc.b $D8
		dc.b $85
		dc.b $B1
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $49 ; I
		dc.b $62 ; b
		dc.b $D0
		dc.b $8C
		dc.b $19
		dc.b $3F ; ?
		dc.b   5
		dc.b $70 ; p
		dc.b $88
		dc.b $65 ; e
		dc.b $B3
		dc.b $4C ; L
		dc.b $D3
		dc.b $B7
		dc.b $62 ; b
		dc.b $B1
		dc.b $EF
		dc.b $86
		dc.b $33 ; 3
		dc.b $62 ; b
		dc.b $B5
		dc.b $D4
		dc.b $58 ; X
		dc.b $BC
		dc.b $D1
		dc.b $EE
		dc.b $BC
		dc.b $51 ; Q
		dc.b $11
		dc.b $18
		dc.b $A1
		dc.b $E1
		dc.b $F1
		dc.b $3F ; ?
		dc.b $44 ; D
		dc.b $91
		dc.b $11
		dc.b $11
		dc.b $DF
		dc.b $AA
		dc.b $FA
		dc.b $23 ; #
		dc.b $6C ; l
		dc.b $D7
		dc.b $C6
		dc.b $3B ; ;
		dc.b $76 ; v
		dc.b $EF
		dc.b $E3
		dc.b $1D
		dc.b $BB
		dc.b $77 ; w
		dc.b $F1
		dc.b $43 ; C
		dc.b $D0
		dc.b $F4
		dc.b $CD
		dc.b $8F
		dc.b $48 ; H
		dc.b $88
		dc.b $91
		dc.b $CF
		dc.b $FC
		dc.b $5E ; ^
		dc.b $7C ; |
		dc.b $63 ; c
		dc.b $1E
		dc.b $39 ; 9
		dc.b $F9
		dc.b $97
		dc.b $8E
		dc.b $5E ; ^
		dc.b $39 ; 9
		dc.b $78 ; x
		dc.b $E7
		dc.b $E6
		dc.b $5E ; ^
		dc.b $39 ; 9
		dc.b $78 ; x
		dc.b $E7
		dc.b $E6
		dc.b $5C ; \
		dc.b $9C
		dc.b $97
		dc.b $42 ; B
		dc.b $88
		dc.b $8C
		dc.b $45 ; E
		dc.b $22 ; "
		dc.b $84
		dc.b $48 ; H
		dc.b $89
		dc.b $1C
		dc.b $8E
		dc.b $9D
		dc.b $38 ; 8
		dc.b $88
		dc.b $88
		dc.b $E9
		dc.b $6F ; o
		dc.b $6C ; l
		dc.b $A5
		dc.b $FA
		dc.b $28 ; (
		dc.b $88
		dc.b $B6
		dc.b $68 ; h
		dc.b $E6
		dc.b $CE
		dc.b $6C ; l
		dc.b $7A ; z
		dc.b $66 ; f
		dc.b $C7
		dc.b $A6
		dc.b $6C ; l
		dc.b $7B ; {
		dc.b $1E
		dc.b $91
		dc.b $64 ; d
		dc.b $44 ; D
		dc.b $44 ; D
		dc.b $63 ; c
		dc.b $2D ; -
		dc.b $9A
		dc.b $66 ; f
		dc.b $9D
		dc.b $BB
		dc.b $7A ; z
		dc.b $1E
		dc.b $84
		dc.b $69 ; i
		dc.b $9A
		dc.b $7A ; z
		dc.b $1E
		dc.b $9E
		dc.b $9E
		dc.b $91
		dc.b $11
		dc.b $6C ; l
		dc.b $B6
		dc.b $69 ; i
		dc.b $9A
		dc.b $76 ; v
		dc.b $ED
		dc.b $DB
		dc.b $B7
		dc.b $8A
		dc.b $9E
		dc.b $2A ; *
		dc.b $74 ; t
		dc.b $8A
		dc.b $72 ; r
		dc.b $F3
		dc.b $D3
		dc.b $38 ; 8
		dc.b $6C ; l
		dc.b $46 ; F
		dc.b   0
unk_10588:      dc.b   0		; DATA XREF: sub_48D0+6↑o
		dc.b $44 ; D
		dc.b   0
		dc.b $4E ; N
		dc.b   0
		dc.b $58 ; X
		dc.b   0
		dc.b $62 ; b
		dc.b   0
		dc.b $66 ; f
		dc.b   0
		dc.b $70 ; p
		dc.b   0
		dc.b $78 ; x
		dc.b   0
		dc.b $80
		dc.b   0
		dc.b $88
		dc.b   0
		dc.b $90
		dc.b   0
		dc.b $A2
		dc.b   0
		dc.b $B4
		dc.b   0
		dc.b $B8
		dc.b   0
		dc.b $D2
		dc.b   0
		dc.b $D8
		dc.b   0
		dc.b $E4
		dc.b   0
		dc.b $F8
		dc.b   1
		dc.b   8
		dc.b   1
		dc.b $1A
		dc.b   1
		dc.b $22 ; "
		dc.b   1
		dc.b $38 ; 8
		dc.b   1
		dc.b $44 ; D
		dc.b   1
		dc.b $54 ; T
		dc.b   1
		dc.b $64 ; d
		dc.b   1
		dc.b $6C ; l
		dc.b   1
		dc.b $74 ; t
		dc.b   1
		dc.b $80
		dc.b   1
		dc.b $8E
		dc.b   1
		dc.b $A6
		dc.b   1
		dc.b $B8
		dc.b   1
		dc.b $C2
		dc.b   1
		dc.b $CE
		dc.b   1
		dc.b $D8
		dc.b   1
		dc.b $E8
		dc.b   0
		dc.b  $B
		dc.b   0
		dc.b  $C
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   4
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b $2C ; ,
		dc.b   0
		dc.b $22 ; "
		dc.b   0
		dc.b $31 ; 1
		dc.b   0
		dc.b   9
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b $16
		dc.b   0
		dc.b $30 ; 0
		dc.b   0
		dc.b $17
		dc.b   0
		dc.b $18
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b  $E
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b  $C
		dc.b   0
		dc.b  $D
		dc.b   0
		dc.b   1
		dc.b   0
		dc.b   4
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   6
		dc.b   0
		dc.b  $F
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b   1
		dc.b   0
		dc.b   6
		dc.b   0
		dc.b  $F
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   6
		dc.b   0
		dc.b $10
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b   1
		dc.b   0
		dc.b   6
		dc.b   0
		dc.b $10
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $2F ; /
		dc.b   0
		dc.b $19
		dc.b   0
		dc.b $2F ; /
		dc.b   0
		dc.b   1
		dc.b   0
		dc.b   5
		dc.b   0
		dc.b $11
		dc.b   0
		dc.b $30 ; 0
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b   1
		dc.b   0
		dc.b $2F ; /
		dc.b   0
		dc.b $19
		dc.b   0
		dc.b $2F ; /
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   5
		dc.b   0
		dc.b $11
		dc.b   0
		dc.b $30 ; 0
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b $12
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b   7
		dc.b   0
		dc.b $31 ; 1
		dc.b   0
		dc.b $32 ; 2
		dc.b   0
		dc.b $33 ; 3
		dc.b   0
		dc.b   8
		dc.b   0
		dc.b $23 ; #
		dc.b   0
		dc.b $16
		dc.b   0
		dc.b $30 ; 0
		dc.b   0
		dc.b $17
		dc.b   0
		dc.b   4
		dc.b   0
		dc.b $25 ; %
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b $1A
		dc.b   0
		dc.b   9
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b $34 ; 4
		dc.b   0
		dc.b $3B ; ;
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b  $A
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b   4
		dc.b   0
		dc.b $26 ; &
		dc.b   0
		dc.b $36 ; 6
		dc.b   0
		dc.b $26 ; &
		dc.b   0
		dc.b $26 ; &
		dc.b   0
		dc.b $26 ; &
		dc.b   0
		dc.b $36 ; 6
		dc.b   0
		dc.b $36 ; 6
		dc.b   0
		dc.b $27 ; '
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b   3
		dc.b   0
		dc.b $1B
		dc.b   0
		dc.b $37 ; 7
		dc.b   0
		dc.b $35 ; 5
		dc.b   0
		dc.b $1C
		dc.b   0
		dc.b   9
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b $28 ; (
		dc.b   0
		dc.b $17
		dc.b   0
		dc.b $29 ; )
		dc.b   0
		dc.b   7
		dc.b   0
		dc.b $1F
		dc.b   0
		dc.b $34 ; 4
		dc.b   0
		dc.b $20
		dc.b   0
		dc.b   9
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b  $B
		dc.b   0
		dc.b  $C
		dc.b   0
		dc.b   4
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b $13
		dc.b   0
		dc.b $26 ; &
		dc.b   0
		dc.b $26 ; &
		dc.b   0
		dc.b $14
		dc.b   0
		dc.b $26 ; &
		dc.b   0
		dc.b $26 ; &
		dc.b   0
		dc.b $26 ; &
		dc.b   0
		dc.b $26 ; &
		dc.b   0
		dc.b $26 ; &
		dc.b   0
		dc.b $15
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b   7
		dc.b   0
		dc.b $10
		dc.b   0
		dc.b $34 ; 4
		dc.b   0
		dc.b $3B ; ;
		dc.b   0
		dc.b   9
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b $21 ; !
		dc.b   0
		dc.b $34 ; 4
		dc.b   0
		dc.b $36 ; 6
		dc.b   0
		dc.b $22 ; "
		dc.b   0
		dc.b $31 ; 1
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b  $A
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b $10
		dc.b   0
		dc.b   3
		dc.b   0
		dc.b $1B
		dc.b   0
		dc.b $37 ; 7
		dc.b   0
		dc.b $35 ; 5
		dc.b   0
		dc.b $1C
		dc.b   0
		dc.b   9
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b  $C
		dc.b   0
		dc.b  $D
		dc.b   0
		dc.b   4
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b $16
		dc.b   0
		dc.b $30 ; 0
		dc.b   0
		dc.b $17
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b   3
		dc.b   0
		dc.b $38 ; 8
		dc.b   0
		dc.b $31 ; 1
		dc.b   0
		dc.b $24 ; $
		dc.b   0
		dc.b $39 ; 9
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b $11
		dc.b   0
		dc.b $30 ; 0
		dc.b   0
		dc.b $1D
		dc.b   0
		dc.b $35 ; 5
		dc.b   0
		dc.b $1E
		dc.b   0
		dc.b   9
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b $2A ; *
		dc.b   0
		dc.b $14
		dc.b   0
		dc.b   6
		dc.b   0
		dc.b $16
		dc.b   0
		dc.b $30 ; 0
		dc.b   0
		dc.b $17
		dc.b   0
		dc.b   3
		dc.b   0
		dc.b $3A ; :
		dc.b   0
		dc.b $37 ; 7
		dc.b   0
		dc.b $3B ; ;
		dc.b   0
		dc.b   9
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b $11
		dc.b   0
		dc.b $30 ; 0
		dc.b   0
		dc.b   3
		dc.b   0
		dc.b $1B
		dc.b   0
		dc.b $37 ; 7
		dc.b   0
		dc.b $35 ; 5
		dc.b   0
		dc.b $1C
		dc.b   0
		dc.b   9
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b $34 ; 4
		dc.b   0
		dc.b $20
		dc.b   0
		dc.b   9
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b $3A ; :
		dc.b   0
		dc.b $37 ; 7
		dc.b   0
		dc.b $35 ; 5
		dc.b   0
		dc.b $1E
		dc.b   0
		dc.b   9
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b  $C
		dc.b   0
		dc.b $2D ; -
		dc.b   0
		dc.b $30 ; 0
		dc.b   0
		dc.b $2E ; .
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b   7
		dc.b   0
		dc.b $11
		dc.b   0
		dc.b $30 ; 0
		dc.b   0
		dc.b $34 ; 4
		dc.b   0
		dc.b $35 ; 5
		dc.b   0
		dc.b $31 ; 1
		dc.b   0
		dc.b   9
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b  $F
		dc.b   0
		dc.b   3
		dc.b   0
		dc.b $1D
		dc.b   0
		dc.b $35 ; 5
		dc.b   0
		dc.b $1E
		dc.b   0
		dc.b   9
		dc.b $FF
		dc.b $FF
unk_1077E:      dc.b   0		; DATA XREF: sub_48D0+C↑o
		dc.b   4
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   3
		dc.b   0
		dc.b   8
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b  $E
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b $12
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b $16
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b $1A
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b $1E
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b $22 ; "
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b $26 ; &
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b $2A ; *
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b $2E ; .
		dc.b   0
		dc.b   4
		dc.b   0
		dc.b $32 ; 2
		dc.b   0
		dc.b $11
		dc.b   0
		dc.b $3A ; :
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b $5C ; \
		dc.b   0
		dc.b  $C
		dc.b   0
		dc.b $70 ; p
		dc.b   0
		dc.b   6
		dc.b   0
		dc.b $88
		dc.b   0
		dc.b   4
		dc.b   0
		dc.b $94
		dc.b   0
		dc.b   4
		dc.b   0
		dc.b $9C
		dc.b   0
		dc.b   4
		dc.b   0
		dc.b $A4
		dc.b   0
		dc.b   4
		dc.b   0
		dc.b $AC
		dc.b   0
		dc.b   4
		dc.b   0
		dc.b $B4
		dc.b   0
		dc.b   6
		dc.b   0
		dc.b $BC
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b $C8
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b $CC
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b $D0
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b $D4
		dc.b   0
		dc.b  $C
		dc.b   0
		dc.b $D8
		dc.b   0
		dc.b   4
		dc.b   0
		dc.b $F0
		dc.b   0
		dc.b   4
		dc.b   0
		dc.b $F8
		dc.b   0
		dc.b   4
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b   4
		dc.b   1
		dc.b   8
		dc.b   0
		dc.b   2
		dc.b   1
		dc.b $10
		dc.b   0
		dc.b   8
		dc.b   1
		dc.b $14
		dc.b   0
		dc.b   4
		dc.b   1
		dc.b $24 ; $
		dc.b   0
		dc.b   2
		dc.b   1
		dc.b $2C ; ,
		dc.b   0
		dc.b   6
		dc.b   1
		dc.b $30 ; 0
		dc.b   0
		dc.b   2
		dc.b   1
		dc.b $3C ; <
		dc.b   0
		dc.b   4
		dc.b   1
		dc.b $40 ; @
		dc.b   0
		dc.b   2
		dc.b   1
		dc.b $48 ; H
		dc.b   0
		dc.b   2
		dc.b   1
		dc.b $4C ; L
		dc.b   0
		dc.b   2
		dc.b   1
		dc.b $50 ; P
		dc.b   0
		dc.b   2
		dc.b   1
		dc.b $54 ; T
		dc.b   0
		dc.b   4
		dc.b   1
		dc.b $58 ; X
		dc.b   0
		dc.b   2
		dc.b   1
		dc.b $60 ; `
		dc.b   0
		dc.b   2
		dc.b   1
		dc.b $64 ; d
		dc.b   0
		dc.b   2
		dc.b   1
		dc.b $68 ; h
		dc.b   0
		dc.b   2
		dc.b   1
		dc.b $6C ; l
		dc.b   0
		dc.b   1
		dc.b   1
		dc.b $48 ; H
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b $60 ; `
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b $EC
		dc.b   0
		dc.b   2
		dc.b   1
		dc.b $38 ; 8
		dc.b   0
		dc.b   2
		dc.b   1
		dc.b $60 ; `
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b $F8
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b $E8
		dc.b   0
		dc.b   2
		dc.b   1
		dc.b $20
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b $E4
		dc.b   0
		dc.b   4
		dc.b   0
		dc.b $BC
		dc.b   0
		dc.b   2
		dc.b   1
		dc.b $14
		dc.b   0
		dc.b   2
		dc.b   1
		dc.b $34 ; 4
		dc.b   0
		dc.b   4
		dc.b   0
		dc.b $E8
		dcb.b $792,$FF
z80_11000:      dc.b $F3		; DATA XREF: sounddriverload+22↑o
		dc.b $F3
		dc.b $ED
		dc.b $56 ; V
		dc.b $18
		dc.b $5D ; ]
		dc.b   0
		dc.b   0
		dc.b $3A ; :
		dc.b   0
		dc.b $40 ; @
		dc.b $CB
		dc.b $7F ; 
		dc.b $20
		dc.b $F9
		dc.b $C9
		dc.b $DD
		dc.b $CB
		dc.b   1
		dc.b $7E ; ~
		dc.b $C0
		dc.b $C3
		dc.b $58 ; X
		dc.b   4
		dc.b $C3
		dc.b $66 ; f
		dc.b   4
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $2A ; *
		dc.b   2
		dc.b $1C
		dc.b   6
		dc.b   0
		dc.b $C3
		dc.b $32 ; 2
		dc.b   4
		dc.b $4F ; O
		dc.b   6
		dc.b   0
		dc.b   9
		dc.b   9
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $7E ; ~
		dc.b $23 ; #
		dc.b $66 ; f
		dc.b $6F ; o
		dc.b $C9
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $F3
		dc.b $F5
		dc.b $C5
		dc.b $D5
		dc.b $E5
		dc.b $21 ; !
		dc.b $FF
		dc.b $1F
		dc.b $7E ; ~
		dc.b $B7
		dc.b $28 ; (
		dc.b   3
		dc.b $35 ; 5
		dc.b $18
		dc.b $17
		dc.b $3E ; >
		dc.b $80
		dc.b $32 ; 2
		dc.b   7
		dc.b $1C
		dc.b  $E
		dc.b   0
		dc.b $3E ; >
		dc.b $25 ; %
		dc.b $DF
		dc.b  $E
		dc.b $92
		dc.b $3E ; >
		dc.b $24 ; $
		dc.b $DF
		dc.b  $E
		dc.b $1F
		dc.b $3E ; >
		dc.b $27 ; '
		dc.b $DF
		dc.b $CD
		dc.b $A3
		dc.b   0
		dc.b $E1
		dc.b $D1
		dc.b $C1
		dc.b $F1
		dc.b $C9
		dc.b $21 ; !
		dc.b   0
		dc.b $13
		dc.b $22 ; "
		dc.b   2
		dc.b $1C
		dc.b $31 ; 1
		dc.b $FD
		dc.b $1F
		dc.b $3E ; >
		dc.b   3
		dc.b $32 ; 2
		dc.b $FF
		dc.b $1F
		dc.b $FB
		dc.b $3A ; :
		dc.b $FF
		dc.b $1F
		dc.b $B7
		dc.b $C2
		dc.b $71 ; q
		dc.b   0
		dc.b $CD
		dc.b $A5
		dc.b   7
		dc.b $CD
		dc.b $CA
		dc.b   6
		dc.b $21 ; !
		dc.b   0
		dc.b $13
		dc.b $22 ; "
		dc.b   2
		dc.b $1C
		dc.b $FB
		dc.b $CD
		dc.b $3D ; =
		dc.b   8
		dc.b $3A ; :
		dc.b   7
		dc.b $1C
		dc.b $B7
		dc.b $28 ; (
		dc.b $F7
		dc.b $CD
		dc.b $3D ; =
		dc.b   8
		dc.b $3A ; :
		dc.b   0
		dc.b $40 ; @
		dc.b $CB
		dc.b $47 ; G
		dc.b $28 ; (
		dc.b $ED
		dc.b $AF
		dc.b $32 ; 2
		dc.b   7
		dc.b $1C
		dc.b $CD
		dc.b $A3
		dc.b   0
		dc.b $FB
		dc.b $18
		dc.b $E3
		dc.b $CD
		dc.b $DD
		dc.b   6
		dc.b $CD
		dc.b $24 ; $
		dc.b   8
		dc.b $CD
		dc.b $59 ; Y
		dc.b   7
		dc.b $CD
		dc.b $C4
		dc.b   4
		dc.b $CD
		dc.b $C9
		dc.b   0
		dc.b $AF
		dc.b $32 ; 2
		dc.b $19
		dc.b $1C
		dc.b $DD
		dc.b $21 ; !
		dc.b $40 ; @
		dc.b $1C
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $7E ; ~
		dc.b $C4
		dc.b $39 ; 9
		dc.b   9
		dc.b   6
		dc.b   9
		dc.b $DD
		dc.b $21 ; !
		dc.b $70 ; p
		dc.b $1C
		dc.b $18
		dc.b $19
		dc.b $3E ; >
		dc.b   1
		dc.b $32 ; 2
		dc.b $19
		dc.b $1C
		dc.b $DD
		dc.b $21 ; !
		dc.b $80
		dc.b $1E
		dc.b   6
		dc.b   6
		dc.b $CD
		dc.b $E2
		dc.b   0
		dc.b $3E ; >
		dc.b $80
		dc.b $32 ; 2
		dc.b $19
		dc.b $1C
		dc.b   6
		dc.b   2
		dc.b $DD
		dc.b $21 ; !
		dc.b $20
		dc.b $1E
		dc.b $C5
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $7E ; ~
		dc.b $C4
		dc.b $F3
		dc.b   0
		dc.b $11
		dc.b $30 ; 0
		dc.b   0
		dc.b $DD
		dc.b $19
		dc.b $C1
		dc.b $10
		dc.b $F0
		dc.b $C9
		dc.b $DD
		dc.b $CB
		dc.b   1
		dc.b $7E ; ~
		dc.b $C2
		dc.b $BC
		dc.b  $E
		dc.b $CD
		dc.b $BE
		dc.b   2
		dc.b $20
		dc.b $17
		dc.b $CD
		dc.b $90
		dc.b   1
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $66 ; f
		dc.b $C0
		dc.b $CD
		dc.b $F5
		dc.b   2
		dc.b $CD
		dc.b $EC
		dc.b   3
		dc.b $CD
		dc.b $20
		dc.b   3
		dc.b $CD
		dc.b $38 ; 8
		dc.b   1
		dc.b $C3
		dc.b $C5
		dc.b   3
		dc.b $CD
		dc.b $A8
		dc.b   2
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $66 ; f
		dc.b $C0
		dc.b $CD
		dc.b $C6
		dc.b   2
		dc.b $DD
		dc.b $7E ; ~
		dc.b $1E
		dc.b $B7
		dc.b $28 ; (
		dc.b   6
		dc.b $DD
		dc.b $35 ; 5
		dc.b $1E
		dc.b $CA
		dc.b $DC
		dc.b   3
		dc.b $CD
		dc.b $EC
		dc.b   3
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $76 ; v
		dc.b $C0
		dc.b $CD
		dc.b $20
		dc.b   3
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $56 ; V
		dc.b $C0
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $46 ; F
		dc.b $C2
		dc.b $4D ; M
		dc.b   1
		dc.b $3E ; >
		dc.b $A4
		dc.b $4C ; L
		dc.b $D7
		dc.b $3E ; >
		dc.b $A0
		dc.b $4D ; M
		dc.b $D7
		dc.b $C9
		dc.b $DD
		dc.b $7E ; ~
		dc.b   1
		dc.b $FE
		dc.b   2
		dc.b $20
		dc.b $F0
		dc.b $CD
		dc.b $80
		dc.b   1
		dc.b $D9
		dc.b $21 ; !
		dc.b $7C ; |
		dc.b   1
		dc.b   6
		dc.b   4
		dc.b $7E ; ~
		dc.b $F5
		dc.b $23 ; #
		dc.b $D9
		dc.b $EB
		dc.b $4E ; N
		dc.b $23 ; #
		dc.b $46 ; F
		dc.b $23 ; #
		dc.b $EB
		dc.b $DD
		dc.b $6E ; n
		dc.b  $D
		dc.b $DD
		dc.b $66 ; f
		dc.b  $E
		dc.b   9
		dc.b $F1
		dc.b $F5
		dc.b $4C ; L
		dc.b $DF
		dc.b $F1
		dc.b $D6
		dc.b   4
		dc.b $4D ; M
		dc.b $DF
		dc.b $D9
		dc.b $10
		dc.b $E3
		dc.b $D9
		dc.b $C9
		dc.b $AD
		dc.b $AE
		dc.b $AC
		dc.b $A6
		dc.b $11
		dc.b $2A ; *
		dc.b $1C
		dc.b $3A ; :
		dc.b $19
		dc.b $1C
		dc.b $B7
		dc.b $C8
		dc.b $11
		dc.b $1A
		dc.b $1C
		dc.b $F0
		dc.b $11
		dc.b $22 ; "
		dc.b $1C
		dc.b $C9
		dc.b $DD
		dc.b $5E ; ^
		dc.b   3
		dc.b $DD
		dc.b $56 ; V
		dc.b   4
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $8E
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $A6
		dc.b $1A
		dc.b $13
		dc.b $FE
		dc.b $E0
		dc.b $D2
		dc.b $2F ; /
		dc.b  $B
		dc.b   8
		dc.b $CD
		dc.b $DC
		dc.b   3
		dc.b $CD
		dc.b $62 ; b
		dc.b   2
		dc.b   8
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $5E ; ^
		dc.b $C2
		dc.b  $A
		dc.b   2
		dc.b $B7
		dc.b $F2
		dc.b $30 ; 0
		dc.b   2
		dc.b $D6
		dc.b $81
		dc.b $F2
		dc.b $C2
		dc.b   1
		dc.b $CD
		dc.b $63 ; c
		dc.b  $F
		dc.b $18
		dc.b $2E ; .
		dc.b $DD
		dc.b $86
		dc.b   5
		dc.b $21 ; !
		dc.b $97
		dc.b   8
		dc.b $F5
		dc.b $EF
		dc.b $F1
		dc.b $DD
		dc.b $CB
		dc.b   1
		dc.b $7E ; ~
		dc.b $20
		dc.b $19
		dc.b $D5
		dc.b $16
		dc.b   8
		dc.b $1E
		dc.b  $C
		dc.b   8
		dc.b $AF
		dc.b   8
		dc.b $93
		dc.b $38 ; 8
		dc.b   5
		dc.b   8
		dc.b $82
		dc.b $18
		dc.b $F8
		dc.b   8
		dc.b $83
		dc.b $21 ; !
		dc.b $21 ; !
		dc.b   9
		dc.b $EF
		dc.b   8
		dc.b $B4
		dc.b $67 ; g
		dc.b $D1
		dc.b $DD
		dc.b $75 ; u
		dc.b  $D
		dc.b $DD
		dc.b $74 ; t
		dc.b  $E
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $6E ; n
		dc.b $20
		dc.b  $D
		dc.b $1A
		dc.b $B7
		dc.b $F2
		dc.b $2F ; /
		dc.b   2
		dc.b $DD
		dc.b $7E ; ~
		dc.b  $C
		dc.b $DD
		dc.b $77 ; w
		dc.b  $B
		dc.b $18
		dc.b $33 ; 3
		dc.b $1A
		dc.b $13
		dc.b $DD
		dc.b $77 ; w
		dc.b $10
		dc.b $18
		dc.b $24 ; $
		dc.b $67 ; g
		dc.b $1A
		dc.b $13
		dc.b $6F ; o
		dc.b $B4
		dc.b $28 ; (
		dc.b  $C
		dc.b $DD
		dc.b $7E ; ~
		dc.b   5
		dc.b   6
		dc.b   0
		dc.b $B7
		dc.b $F2
		dc.b $1B
		dc.b   2
		dc.b   5
		dc.b $4F ; O
		dc.b   9
		dc.b $DD
		dc.b $75 ; u
		dc.b  $D
		dc.b $DD
		dc.b $74 ; t
		dc.b  $E
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $6E ; n
		dc.b $28 ; (
		dc.b   5
		dc.b $1A
		dc.b $13
		dc.b $DD
		dc.b $77 ; w
		dc.b $10
		dc.b $1A
		dc.b $13
		dc.b $CD
		dc.b $58 ; X
		dc.b   2
		dc.b $DD
		dc.b $77 ; w
		dc.b  $C
		dc.b $DD
		dc.b $73 ; s
		dc.b   3
		dc.b $DD
		dc.b $72 ; r
		dc.b   4
		dc.b $DD
		dc.b $7E ; ~
		dc.b  $C
		dc.b $DD
		dc.b $77 ; w
		dc.b  $B
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $4E ; N
		dc.b $C0
		dc.b $AF
		dc.b $DD
		dc.b $77 ; w
		dc.b $25 ; %
		dc.b $DD
		dc.b $77 ; w
		dc.b $22 ; "
		dc.b $DD
		dc.b $77 ; w
		dc.b $17
		dc.b $DD
		dc.b $7E ; ~
		dc.b $1F
		dc.b $DD
		dc.b $77 ; w
		dc.b $1E
		dc.b $C9
		dc.b $DD
		dc.b $46 ; F
		dc.b   2
		dc.b   5
		dc.b $C8
		dc.b $4F ; O
		dc.b $81
		dc.b $10
		dc.b $FD
		dc.b $C9
		dc.b $DD
		dc.b $7E ; ~
		dc.b $11
		dc.b $3D ; =
		dc.b $F8
		dc.b $20
		dc.b $3B ; ;
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $4E ; N
		dc.b $C0
		dc.b $DD
		dc.b $35 ; 5
		dc.b $16
		dc.b $C0
		dc.b $D9
		dc.b $DD
		dc.b $7E ; ~
		dc.b $15
		dc.b $DD
		dc.b $77 ; w
		dc.b $16
		dc.b $DD
		dc.b $7E ; ~
		dc.b $12
		dc.b $21 ; !
		dc.b $B0
		dc.b   2
		dc.b $EF
		dc.b $DD
		dc.b $5E ; ^
		dc.b $13
		dc.b $DD
		dc.b $34 ; 4
		dc.b $13
		dc.b $DD
		dc.b $7E ; ~
		dc.b $14
		dc.b $3D ; =
		dc.b $BB
		dc.b $20
		dc.b  $E
		dc.b $DD
		dc.b $35 ; 5
		dc.b $13
		dc.b $DD
		dc.b $7E ; ~
		dc.b $11
		dc.b $FE
		dc.b   2
		dc.b $28 ; (
		dc.b   4
		dc.b $DD
		dc.b $36 ; 6
		dc.b $13
		dc.b   0
		dc.b $16
		dc.b   0
		dc.b $19
		dc.b $EB
		dc.b $CD
		dc.b $27 ; '
		dc.b  $D
		dc.b $D9
		dc.b $C9
		dc.b $AF
		dc.b $DD
		dc.b $77 ; w
		dc.b $13
		dc.b $DD
		dc.b $7E ; ~
		dc.b $11
		dc.b $D6
		dc.b   2
		dc.b $F8
		dc.b $18
		dc.b $BE
		dc.b $B8
		dc.b   2
		dc.b $B9
		dc.b   2
		dc.b $BA
		dc.b   2
		dc.b $BB
		dc.b   2
		dc.b $C0
		dc.b $80
		dc.b $C0
		dc.b $40 ; @
		dc.b $80
		dc.b $C0
		dc.b $DD
		dc.b $7E ; ~
		dc.b  $B
		dc.b $3D ; =
		dc.b $DD
		dc.b $77 ; w
		dc.b  $B
		dc.b $C9
		dc.b $DD
		dc.b $7E ; ~
		dc.b $18
		dc.b $B7
		dc.b $C8
		dc.b $F8
		dc.b $3D ; =
		dc.b  $E
		dc.b  $A
		dc.b $E7
		dc.b $EF
		dc.b $CD
		dc.b $32 ; 2
		dc.b  $F
		dc.b $DD
		dc.b $66 ; f
		dc.b $1D
		dc.b $DD
		dc.b $6E ; n
		dc.b $1C
		dc.b $11
		dc.b $97
		dc.b   4
		dc.b   6
		dc.b   4
		dc.b $DD
		dc.b $4E ; N
		dc.b $19
		dc.b $F5
		dc.b $CB
		dc.b $29 ; )
		dc.b $C5
		dc.b $30 ; 0
		dc.b   6
		dc.b $86
		dc.b $E6
		dc.b $7F ; 
		dc.b $4F ; O
		dc.b $1A
		dc.b $D7
		dc.b $C1
		dc.b $13
		dc.b $23 ; #
		dc.b $F1
		dc.b $10
		dc.b $EE
		dc.b $C9
		dc.b $DD
		dc.b $CB
		dc.b   7
		dc.b $7E ; ~
		dc.b $C8
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $4E ; N
		dc.b $C0
		dc.b $DD
		dc.b $5E ; ^
		dc.b $20
		dc.b $DD
		dc.b $56 ; V
		dc.b $21 ; !
		dc.b $DD
		dc.b $E5
		dc.b $E1
		dc.b   6
		dc.b   0
		dc.b  $E
		dc.b $24 ; $
		dc.b   9
		dc.b $EB
		dc.b $ED
		dc.b $A0
		dc.b $ED
		dc.b $A0
		dc.b $ED
		dc.b $A0
		dc.b $7E ; ~
		dc.b $CB
		dc.b $3F ; ?
		dc.b $12
		dc.b $AF
		dc.b $DD
		dc.b $77 ; w
		dc.b $22 ; "
		dc.b $DD
		dc.b $77 ; w
		dc.b $23 ; #
		dc.b $C9
		dc.b $DD
		dc.b $7E ; ~
		dc.b   7
		dc.b $B7
		dc.b $C8
		dc.b $FE
		dc.b $80
		dc.b $20
		dc.b $48 ; H
		dc.b $DD
		dc.b $35 ; 5
		dc.b $24 ; $
		dc.b $C0
		dc.b $DD
		dc.b $34 ; 4
		dc.b $24 ; $
		dc.b $E5
		dc.b $DD
		dc.b $6E ; n
		dc.b $22 ; "
		dc.b $DD
		dc.b $66 ; f
		dc.b $23 ; #
		dc.b $DD
		dc.b $35 ; 5
		dc.b $25 ; %
		dc.b $20
		dc.b $20
		dc.b $DD
		dc.b $5E ; ^
		dc.b $20
		dc.b $DD
		dc.b $56 ; V
		dc.b $21 ; !
		dc.b $D5
		dc.b $FD
		dc.b $E1
		dc.b $FD
		dc.b $7E ; ~
		dc.b   1
		dc.b $DD
		dc.b $77 ; w
		dc.b $25 ; %
		dc.b $DD
		dc.b $7E ; ~
		dc.b $26 ; &
		dc.b $4F ; O
		dc.b $E6
		dc.b $80
		dc.b   7
		dc.b $ED
		dc.b $44 ; D
		dc.b $47 ; G
		dc.b   9
		dc.b $DD
		dc.b $75 ; u
		dc.b $22 ; "
		dc.b $DD
		dc.b $74 ; t
		dc.b $23 ; #
		dc.b $C1
		dc.b   9
		dc.b $DD
		dc.b $35 ; 5
		dc.b $27 ; '
		dc.b $C0
		dc.b $FD
		dc.b $7E ; ~
		dc.b   3
		dc.b $DD
		dc.b $77 ; w
		dc.b $27 ; '
		dc.b $DD
		dc.b $7E ; ~
		dc.b $26 ; &
		dc.b $ED
		dc.b $44 ; D
		dc.b $DD
		dc.b $77 ; w
		dc.b $26 ; &
		dc.b $C9
		dc.b $3D ; =
		dc.b $EB
		dc.b  $E
		dc.b   8
		dc.b $E7
		dc.b $EF
		dc.b $18
		dc.b   3
		dc.b $DD
		dc.b $77 ; w
		dc.b $25 ; %
		dc.b $E5
		dc.b $DD
		dc.b $4E ; N
		dc.b $25 ; %
		dc.b $CD
		dc.b $37 ; 7
		dc.b   4
		dc.b $E1
		dc.b $CB
		dc.b $7F ; 
		dc.b $CA
		dc.b $B6
		dc.b   3
		dc.b $FE
		dc.b $82
		dc.b $28 ; (
		dc.b $12
		dc.b $FE
		dc.b $80
		dc.b $28 ; (
		dc.b $12
		dc.b $FE
		dc.b $84
		dc.b $28 ; (
		dc.b $11
		dc.b $26 ; &
		dc.b $FF
		dc.b $30 ; 0
		dc.b $1F
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $F6
		dc.b $E1
		dc.b $C9
		dc.b   3
		dc.b  $A
		dc.b $18
		dc.b $D6
		dc.b $AF
		dc.b $18
		dc.b $D3
		dc.b   3
		dc.b  $A
		dc.b $DD
		dc.b $86
		dc.b $22 ; "
		dc.b $DD
		dc.b $77 ; w
		dc.b $22 ; "
		dc.b $DD
		dc.b $34 ; 4
		dc.b $25 ; %
		dc.b $DD
		dc.b $34 ; 4
		dc.b $25 ; %
		dc.b $18
		dc.b $C6
		dc.b $26 ; &
		dc.b   0
		dc.b $6F ; o
		dc.b $DD
		dc.b $46 ; F
		dc.b $22 ; "
		dc.b   4
		dc.b $EB
		dc.b $19
		dc.b $10
		dc.b $FD
		dc.b $DD
		dc.b $34 ; 4
		dc.b $25 ; %
		dc.b $C9
		dc.b $DD
		dc.b $7E ; ~
		dc.b  $D
		dc.b $DD
		dc.b $B6
		dc.b  $E
		dc.b $C8
		dc.b $DD
		dc.b $7E ; ~
		dc.b   0
		dc.b $E6
		dc.b   6
		dc.b $C0
		dc.b $DD
		dc.b $7E ; ~
		dc.b   1
		dc.b $F6
		dc.b $F0
		dc.b $4F ; O
		dc.b $3E ; >
		dc.b $28 ; (
		dc.b $DF
		dc.b $C9
		dc.b $DD
		dc.b $7E ; ~
		dc.b   0
		dc.b $E6
		dc.b   6
		dc.b $C0
		dc.b $DD
		dc.b $4E ; N
		dc.b   1
		dc.b $CB
		dc.b $79 ; y
		dc.b $C0
		dc.b $3E ; >
		dc.b $28 ; (
		dc.b $DF
		dc.b $C9
		dc.b   6
		dc.b   0
		dc.b $DD
		dc.b $7E ; ~
		dc.b $10
		dc.b $B7
		dc.b $F2
		dc.b $F6
		dc.b   3
		dc.b   5
		dc.b $DD
		dc.b $66 ; f
		dc.b  $E
		dc.b $DD
		dc.b $6E ; n
		dc.b  $D
		dc.b $4F ; O
		dc.b   9
		dc.b $DD
		dc.b $CB
		dc.b   1
		dc.b $7E ; ~
		dc.b $20
		dc.b $22 ; "
		dc.b $EB
		dc.b $3E ; >
		dc.b   7
		dc.b $A2
		dc.b $47 ; G
		dc.b $4B ; K
		dc.b $B7
		dc.b $21 ; !
		dc.b $83
		dc.b   2
		dc.b $ED
		dc.b $42 ; B
		dc.b $38 ; 8
		dc.b   6
		dc.b $21 ; !
		dc.b $85
		dc.b $FA
		dc.b $19
		dc.b $18
		dc.b  $E
		dc.b $B7
		dc.b $21 ; !
		dc.b   8
		dc.b   5
		dc.b $ED
		dc.b $42 ; B
		dc.b $30 ; 0
		dc.b   5
		dc.b $21 ; !
		dc.b $7C ; |
		dc.b   5
		dc.b $19
		dc.b $EB
		dc.b $EB
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $6E ; n
		dc.b $C8
		dc.b $DD
		dc.b $74 ; t
		dc.b  $E
		dc.b $DD
		dc.b $75 ; u
		dc.b  $D
		dc.b $C9
		dc.b   9
		dc.b   8
		dc.b $F7
		dc.b   8
		dc.b $C9
		dc.b   6
		dc.b   0
		dc.b   9
		dc.b $4D ; M
		dc.b $44 ; D
		dc.b  $A
		dc.b $C9
		dc.b $2A ; *
		dc.b $37 ; 7
		dc.b $1C
		dc.b $3A ; :
		dc.b $19
		dc.b $1C
		dc.b $B7
		dc.b $28 ; (
		dc.b   6
		dc.b $DD
		dc.b $6E ; n
		dc.b $2A ; *
		dc.b $DD
		dc.b $66 ; f
		dc.b $2B ; +
		dc.b $AF
		dc.b $B0
		dc.b $28 ; (
		dc.b   6
		dc.b $11
		dc.b $19
		dc.b   0
		dc.b $19
		dc.b $10
		dc.b $FD
		dc.b $C9
		dc.b $DD
		dc.b $CB
		dc.b   1
		dc.b $56 ; V
		dc.b $20
		dc.b $11
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $56 ; V
		dc.b $C0
		dc.b $DD
		dc.b $86
		dc.b   1
		dc.b $32 ; 2
		dc.b   0
		dc.b $40 ; @
		dc.b $CF
		dc.b $79 ; y
		dc.b $32 ; 2
		dc.b   1
		dc.b $40 ; @
		dc.b $C9
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $56 ; V
		dc.b $C0
		dc.b $DD
		dc.b $86
		dc.b   1
		dc.b $D6
		dc.b   4
		dc.b $32 ; 2
		dc.b   2
		dc.b $40 ; @
		dc.b $CF
		dc.b $79 ; y
		dc.b $32 ; 2
		dc.b   3
		dc.b $40 ; @
		dc.b $C9
		dc.b $B0
		dc.b $30 ; 0
		dc.b $38 ; 8
		dc.b $34 ; 4
		dc.b $3C ; <
		dc.b $50 ; P
		dc.b $58 ; X
		dc.b $54 ; T
		dc.b $5C ; \
		dc.b $60 ; `
		dc.b $68 ; h
		dc.b $64 ; d
		dc.b $6C ; l
		dc.b $70 ; p
		dc.b $78 ; x
		dc.b $74 ; t
		dc.b $7C ; |
		dc.b $80
		dc.b $88
		dc.b $84
		dc.b $8C
		dc.b $40 ; @
		dc.b $48 ; H
		dc.b $44 ; D
		dc.b $4C ; L
		dc.b $90
		dc.b $98
		dc.b $94
		dc.b $9C
		dc.b $11
		dc.b $82
		dc.b   4
		dc.b $DD
		dc.b $4E ; N
		dc.b  $A
		dc.b $3E ; >
		dc.b $B4
		dc.b $D7
		dc.b $CD
		dc.b $BE
		dc.b   4
		dc.b $DD
		dc.b $77 ; w
		dc.b $1B
		dc.b   6
		dc.b $14
		dc.b $CD
		dc.b $BE
		dc.b   4
		dc.b $10
		dc.b $FB
		dc.b $DD
		dc.b $75 ; u
		dc.b $1C
		dc.b $DD
		dc.b $74 ; t
		dc.b $1D
		dc.b $C3
		dc.b $41 ; A
		dc.b  $D
		dc.b $1A
		dc.b $13
		dc.b $4E ; N
		dc.b $23 ; #
		dc.b $D7
		dc.b $C9
		dc.b $3A ; :
		dc.b   9
		dc.b $1C
		dc.b $CB
		dc.b $7F ; 
		dc.b $CA
		dc.b $A5
		dc.b   7
		dc.b $FE
		dc.b $90
		dc.b $DA
		dc.b $14
		dc.b   5
		dc.b $FE
		dc.b $D0
		dc.b $DA
		dc.b $BE
		dc.b   5
		dc.b $FE
		dc.b $E0
		dc.b $DA
		dc.b $B5
		dc.b   5
		dc.b $FE
		dc.b $F9
		dc.b $D2
		dc.b $A5
		dc.b   7
		dc.b $D6
		dc.b $E0
		dc.b $21 ; !
		dc.b $EB
		dc.b   4
		dc.b $EF
		dc.b $AF
		dc.b $32 ; 2
		dc.b $18
		dc.b $1C
		dc.b $E9
		dc.b $36 ; 6
		dc.b   7
		dc.b $A5
		dc.b   7
		dc.b  $D
		dc.b   8
		dc.b $F3
		dc.b   4
		dc.b $DD
		dc.b $21 ; !
		dc.b $20
		dc.b $1E
		dc.b   6
		dc.b   2
		dc.b $3E ; >
		dc.b $80
		dc.b $32 ; 2
		dc.b $19
		dc.b $1C
		dc.b $C5
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $7E ; ~
		dc.b $C4
		dc.b  $F
		dc.b   5
		dc.b $11
		dc.b $30 ; 0
		dc.b   0
		dc.b $DD
		dc.b $19
		dc.b $C1
		dc.b $10
		dc.b $F0
		dc.b $C9
		dc.b $E5
		dc.b $E5
		dc.b $C3
		dc.b $DE
		dc.b  $D
		dc.b $D6
		dc.b $81
		dc.b $F8
		dc.b $F5
		dc.b $CD
		dc.b $A5
		dc.b   7
		dc.b $F1
		dc.b  $E
		dc.b   4
		dc.b $E7
		dc.b $EF
		dc.b $E5
		dc.b $E5
		dc.b $F7
		dc.b $22 ; "
		dc.b $37 ; 7
		dc.b $1C
		dc.b $E1
		dc.b $FD
		dc.b $E1
		dc.b $FD
		dc.b $7E ; ~
		dc.b   5
		dc.b $32 ; 2
		dc.b $13
		dc.b $1C
		dc.b $32 ; 2
		dc.b $14
		dc.b $1C
		dc.b $11
		dc.b   6
		dc.b   0
		dc.b $19
		dc.b $22 ; "
		dc.b $33 ; 3
		dc.b $1C
		dc.b $21 ; !
		dc.b $A1
		dc.b   5
		dc.b $22 ; "
		dc.b $35 ; 5
		dc.b $1C
		dc.b $11
		dc.b $40 ; @
		dc.b $1C
		dc.b $FD
		dc.b $46 ; F
		dc.b   2
		dc.b $FD
		dc.b $7E ; ~
		dc.b   4
		dc.b $C5
		dc.b $2A ; *
		dc.b $35 ; 5
		dc.b $1C
		dc.b $ED
		dc.b $A0
		dc.b $ED
		dc.b $A0
		dc.b $12
		dc.b $13
		dc.b $22 ; "
		dc.b $35 ; 5
		dc.b $1C
		dc.b $2A ; *
		dc.b $33 ; 3
		dc.b $1C
		dc.b $ED
		dc.b $A0
		dc.b $ED
		dc.b $A0
		dc.b $ED
		dc.b $A0
		dc.b $ED
		dc.b $A0
		dc.b $22 ; "
		dc.b $33 ; 3
		dc.b $1C
		dc.b $CD
		dc.b $80
		dc.b   6
		dc.b $C1
		dc.b $10
		dc.b $DF
		dc.b $FD
		dc.b $7E ; ~
		dc.b   3
		dc.b $B7
		dc.b $CA
		dc.b $9B
		dc.b   5
		dc.b $47 ; G
		dc.b $21 ; !
		dc.b $AF
		dc.b   5
		dc.b $22 ; "
		dc.b $35 ; 5
		dc.b $1C
		dc.b $11
		dc.b $90
		dc.b $1D
		dc.b $FD
		dc.b $7E ; ~
		dc.b   4
		dc.b $C5
		dc.b $2A ; *
		dc.b $35 ; 5
		dc.b $1C
		dc.b $ED
		dc.b $A0
		dc.b $ED
		dc.b $A0
		dc.b $12
		dc.b $13
		dc.b $22 ; "
		dc.b $35 ; 5
		dc.b $1C
		dc.b $2A ; *
		dc.b $33 ; 3
		dc.b $1C
		dc.b   1
		dc.b   6
		dc.b   0
		dc.b $ED
		dc.b $B0
		dc.b $22 ; "
		dc.b $33 ; 3
		dc.b $1C
		dc.b $CD
		dc.b $87
		dc.b   6
		dc.b $C1
		dc.b $10
		dc.b $E2
		dc.b $3E ; >
		dc.b $80
		dc.b $32 ; 2
		dc.b   9
		dc.b $1C
		dc.b $C9
		dc.b $80
		dc.b   2
		dc.b $80
		dc.b   0
		dc.b $80
		dc.b   1
		dc.b $80
		dc.b   4
		dc.b $80
		dc.b   5
		dc.b $80
		dc.b   6
		dc.b $80
		dc.b   2
		dc.b $80
		dc.b $80
		dc.b $80
		dc.b $A0
		dc.b $80
		dc.b $C0
		dc.b $D6
		dc.b $D0
		dc.b   8
		dc.b $3E ; >
		dc.b $80
		dc.b  $E
		dc.b   2
		dc.b $18
		dc.b   6
		dc.b $D6
		dc.b $90
		dc.b   8
		dc.b $AF
		dc.b  $E
		dc.b   6
		dc.b $32 ; 2
		dc.b $19
		dc.b $1C
		dc.b   8
		dc.b $E7
		dc.b $EF
		dc.b $E5
		dc.b $F7
		dc.b $22 ; "
		dc.b $39 ; 9
		dc.b $1C
		dc.b $AF
		dc.b $32 ; 2
		dc.b $15
		dc.b $1C
		dc.b $E1
		dc.b $E5
		dc.b $FD
		dc.b $E1
		dc.b $FD
		dc.b $7E ; ~
		dc.b   2
		dc.b $32 ; 2
		dc.b $3B ; ;
		dc.b $1C
		dc.b $11
		dc.b   4
		dc.b   0
		dc.b $19
		dc.b $FD
		dc.b $46 ; F
		dc.b   3
		dc.b $C5
		dc.b $E5
		dc.b $23 ; #
		dc.b $4E ; N
		dc.b $CD
		dc.b $47 ; G
		dc.b   6
		dc.b $CB
		dc.b $D6
		dc.b $DD
		dc.b $E5
		dc.b $3A ; :
		dc.b $19
		dc.b $1C
		dc.b $B7
		dc.b $28 ; (
		dc.b   3
		dc.b $E1
		dc.b $FD
		dc.b $E5
		dc.b $D1
		dc.b $E1
		dc.b $ED
		dc.b $A0
		dc.b $1A
		dc.b $FE
		dc.b   2
		dc.b $CC
		dc.b $CF
		dc.b   7
		dc.b $ED
		dc.b $A0
		dc.b $3A ; :
		dc.b $3B ; ;
		dc.b $1C
		dc.b $12
		dc.b $13
		dc.b $ED
		dc.b $A0
		dc.b $ED
		dc.b $A0
		dc.b $ED
		dc.b $A0
		dc.b $ED
		dc.b $A0
		dc.b $CD
		dc.b $80
		dc.b   6
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $7E ; ~
		dc.b $28 ; (
		dc.b  $C
		dc.b $DD
		dc.b $7E ; ~
		dc.b   1
		dc.b $FD
		dc.b $BE
		dc.b   1
		dc.b $20
		dc.b   4
		dc.b $FD
		dc.b $CB
		dc.b   0
		dc.b $D6
		dc.b $E5
		dc.b $2A ; *
		dc.b $39 ; 9
		dc.b $1C
		dc.b $3A ; :
		dc.b $19
		dc.b $1C
		dc.b $B7
		dc.b $28 ; (
		dc.b   4
		dc.b $FD
		dc.b $E5
		dc.b $DD
		dc.b $E1
		dc.b $DD
		dc.b $75 ; u
		dc.b $2A ; *
		dc.b $DD
		dc.b $74 ; t
		dc.b $2B ; +
		dc.b $CD
		dc.b $DC
		dc.b   3
		dc.b $CD
		dc.b $DB
		dc.b   7
		dc.b $E1
		dc.b $C1
		dc.b $10
		dc.b $A0
		dc.b $C3
		dc.b $9B
		dc.b   5
		dc.b $CB
		dc.b $79 ; y
		dc.b $20
		dc.b   5
		dc.b $79 ; y
		dc.b $D6
		dc.b   2
		dc.b $18
		dc.b $16
		dc.b $3E ; >
		dc.b $1F
		dc.b $CD
		dc.b $6C ; l
		dc.b  $F
		dc.b $3E ; >
		dc.b $FF
		dc.b $32 ; 2
		dc.b $11
		dc.b $7F ; 
		dc.b $79 ; y
		dc.b $CB
		dc.b $3F ; ?
		dc.b $CB
		dc.b $3F ; ?
		dc.b $CB
		dc.b $3F ; ?
		dc.b $CB
		dc.b $3F ; ?
		dc.b $CB
		dc.b $3F ; ?
		dc.b $3C ; <
		dc.b $32 ; 2
		dc.b $32 ; 2
		dc.b $1C
		dc.b $F5
		dc.b $21 ; !
		dc.b $AA
		dc.b   6
		dc.b $EF
		dc.b $E5
		dc.b $DD
		dc.b $E1
		dc.b $F1
		dc.b $F5
		dc.b $21 ; !
		dc.b $9A
		dc.b   6
		dc.b $EF
		dc.b $E5
		dc.b $FD
		dc.b $E1
		dc.b $F1
		dc.b $21 ; !
		dc.b $BA
		dc.b   6
		dc.b $EF
		dc.b $C9
		dc.b   8
		dc.b $AF
		dc.b $12
		dc.b $13
		dc.b $12
		dc.b $13
		dc.b   8
		dc.b $EB
		dc.b $36 ; 6
		dc.b $30 ; 0
		dc.b $23 ; #
		dc.b $36 ; 6
		dc.b $C0
		dc.b $23 ; #
		dc.b $36 ; 6
		dc.b   1
		dc.b   6
		dc.b $24 ; $
		dc.b $23 ; #
		dc.b $36 ; 6
		dc.b   0
		dc.b $10
		dc.b $FB
		dc.b $23 ; #
		dc.b $EB
		dc.b $C9
		dc.b $20
		dc.b $1E
		dc.b $20
		dc.b $1E
		dc.b $20
		dc.b $1E
		dc.b $20
		dc.b $1E
		dc.b $50 ; P
		dc.b $1E
		dc.b $20
		dc.b $1E
		dc.b $20
		dc.b $1E
		dc.b $50 ; P
		dc.b $1E
		dc.b $80
		dc.b $1E
		dc.b $B0
		dc.b $1E
		dc.b $B0
		dc.b $1E
		dc.b $B0
		dc.b $1E
		dc.b $E0
		dc.b $1E
		dc.b $10
		dc.b $1F
		dc.b $40 ; @
		dc.b $1F
		dc.b $70 ; p
		dc.b $1F
		dc.b $60 ; `
		dc.b $1D
		dc.b   0
		dc.b $1D
		dc.b   0
		dc.b $1D
		dc.b   0
		dc.b $1D
		dc.b $30 ; 0
		dc.b $1D
		dc.b $90
		dc.b $1D
		dc.b $C0
		dc.b $1D
		dc.b $F0
		dc.b $1D
		dc.b $3A ; :
		dc.b   1
		dc.b $1C
		dc.b   7
		dc.b $32 ; 2
		dc.b   0
		dc.b $60 ; `
		dc.b   6
		dc.b   8
		dc.b $3A ; :
		dc.b   0
		dc.b $1C
		dc.b $32 ; 2
		dc.b   0
		dc.b $60 ; `
		dc.b  $F
		dc.b $10
		dc.b $FA
		dc.b $C9
		dc.b $21 ; !
		dc.b $10
		dc.b $1C
		dc.b $7E ; ~
		dc.b $B7
		dc.b $C8
		dc.b $FA
		dc.b $EE
		dc.b   6
		dc.b $D1
		dc.b $3D ; =
		dc.b $C0
		dc.b $36 ; 6
		dc.b   2
		dc.b $C3
		dc.b $E2
		dc.b   7
		dc.b $AF
		dc.b $77 ; w
		dc.b $3A ; :
		dc.b  $D
		dc.b $1C
		dc.b $B7
		dc.b $C2
		dc.b $A5
		dc.b   7
		dc.b $DD
		dc.b $21 ; !
		dc.b $70 ; p
		dc.b $1C
		dc.b   6
		dc.b   6
		dc.b $3A ; :
		dc.b $11
		dc.b $1C
		dc.b $B7
		dc.b $20
		dc.b   6
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $7E ; ~
		dc.b $28 ; (
		dc.b   6
		dc.b $DD
		dc.b $4E ; N
		dc.b  $A
		dc.b $3E ; >
		dc.b $B4
		dc.b $D7
		dc.b $11
		dc.b $30 ; 0
		dc.b   0
		dc.b $DD
		dc.b $19
		dc.b $10
		dc.b $E7
		dc.b $DD
		dc.b $21 ; !
		dc.b $20
		dc.b $1E
		dc.b   6
		dc.b   8
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $7E ; ~
		dc.b $28 ; (
		dc.b  $C
		dc.b $DD
		dc.b $CB
		dc.b   1
		dc.b $7E ; ~
		dc.b $20
		dc.b   6
		dc.b $DD
		dc.b $4E ; N
		dc.b  $A
		dc.b $3E ; >
		dc.b $B4
		dc.b $D7
		dc.b $11
		dc.b $30 ; 0
		dc.b   0
		dc.b $DD
		dc.b $19
		dc.b $10
		dc.b $E7
		dc.b $C9
		dc.b $3E ; >
		dc.b $28 ; (
		dc.b $32 ; 2
		dc.b  $D
		dc.b $1C
		dc.b $3E ; >
		dc.b   6
		dc.b $32 ; 2
		dc.b  $F
		dc.b $1C
		dc.b $32 ; 2
		dc.b  $E
		dc.b $1C
		dc.b $AF
		dc.b $32 ; 2
		dc.b $40 ; @
		dc.b $1C
		dc.b $32 ; 2
		dc.b $60 ; `
		dc.b $1D
		dc.b $32 ; 2
		dc.b $F0
		dc.b $1D
		dc.b $32 ; 2
		dc.b $90
		dc.b $1D
		dc.b $32 ; 2
		dc.b $C0
		dc.b $1D
		dc.b $CD
		dc.b  $D
		dc.b   8
		dc.b $C3
		dc.b $9B
		dc.b   5
		dc.b $21 ; !
		dc.b  $D
		dc.b $1C
		dc.b $7E ; ~
		dc.b $B7
		dc.b $C8
		dc.b $FC
		dc.b $43 ; C
		dc.b   7
		dc.b $CB
		dc.b $BE
		dc.b $3A ; :
		dc.b  $F
		dc.b $1C
		dc.b $3D ; =
		dc.b $28 ; (
		dc.b   4
		dc.b $32 ; 2
		dc.b  $F
		dc.b $1C
		dc.b $C9
		dc.b $3A ; :
		dc.b  $E
		dc.b $1C
		dc.b $32 ; 2
		dc.b  $F
		dc.b $1C
		dc.b $3A ; :
		dc.b  $D
		dc.b $1C
		dc.b $3D ; =
		dc.b $32 ; 2
		dc.b  $D
		dc.b $1C
		dc.b $28 ; (
		dc.b $28 ; (
		dc.b $DD
		dc.b $21 ; !
		dc.b $40 ; @
		dc.b $1C
		dc.b   6
		dc.b   6
		dc.b $DD
		dc.b $34 ; 4
		dc.b   6
		dc.b $F2
		dc.b $8E
		dc.b   7
		dc.b $DD
		dc.b $35 ; 5
		dc.b   6
		dc.b $18
		dc.b  $F
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $7E ; ~
		dc.b $28 ; (
		dc.b   9
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $56 ; V
		dc.b $20
		dc.b   3
		dc.b $CD
		dc.b $41 ; A
		dc.b  $D
		dc.b $11
		dc.b $30 ; 0
		dc.b   0
		dc.b $DD
		dc.b $19
		dc.b $10
		dc.b $DF
		dc.b $C9
		dc.b $21 ; !
		dc.b   9
		dc.b $1C
		dc.b $11
		dc.b  $A
		dc.b $1C
		dc.b   1
		dc.b $96
		dc.b   3
		dc.b $36 ; 6
		dc.b   0
		dc.b $ED
		dc.b $B0
		dc.b $DD
		dc.b $21 ; !
		dc.b $A1
		dc.b   5
		dc.b   6
		dc.b   6
		dc.b $C5
		dc.b $CD
		dc.b $79 ; y
		dc.b   8
		dc.b $CD
		dc.b $DB
		dc.b   7
		dc.b $DD
		dc.b $23 ; #
		dc.b $DD
		dc.b $23 ; #
		dc.b $C1
		dc.b $10
		dc.b $F2
		dc.b   6
		dc.b   7
		dc.b $AF
		dc.b $32 ; 2
		dc.b  $D
		dc.b $1C
		dc.b $CD
		dc.b  $D
		dc.b   8
		dc.b $3E ; >
		dc.b  $F
		dc.b $32 ; 2
		dc.b $12
		dc.b $1C
		dc.b $4F ; O
		dc.b $3E ; >
		dc.b $27 ; '
		dc.b $DF
		dc.b $C3
		dc.b $9B
		dc.b   5
		dc.b $3E ; >
		dc.b $90
		dc.b  $E
		dc.b   0
		dc.b $C3
		dc.b $8D
		dc.b   8
		dc.b $CD
		dc.b  $D
		dc.b   8
		dc.b $C5
		dc.b $F5
		dc.b   6
		dc.b   3
		dc.b $3E ; >
		dc.b $B4
		dc.b  $E
		dc.b   0
		dc.b $F5
		dc.b $DF
		dc.b $F1
		dc.b $3C ; <
		dc.b $10
		dc.b $FA
		dc.b   6
		dc.b   3
		dc.b $3E ; >
		dc.b $B4
		dc.b $F5
		dc.b $CD
		dc.b $79 ; y
		dc.b   4
		dc.b $F1
		dc.b $3C ; <
		dc.b $10
		dc.b $F8
		dc.b  $E
		dc.b   0
		dc.b   6
		dc.b   7
		dc.b $3E ; >
		dc.b $28 ; (
		dc.b $F5
		dc.b $DF
		dc.b  $C
		dc.b $F1
		dc.b $10
		dc.b $FA
		dc.b $F1
		dc.b $C1
		dc.b $E5
		dc.b $C5
		dc.b $21 ; !
		dc.b $20
		dc.b   8
		dc.b   6
		dc.b   4
		dc.b $7E ; ~
		dc.b $32 ; 2
		dc.b $11
		dc.b $7F ; 
		dc.b $23 ; #
		dc.b $10
		dc.b $F9
		dc.b $C1
		dc.b $E1
		dc.b $C3
		dc.b $9B
		dc.b   5
		dc.b $9F
		dc.b $BF
		dc.b $DF
		dc.b $FF
		dc.b $21 ; !
		dc.b $13
		dc.b $1C
		dc.b $7E ; ~
		dc.b $B7
		dc.b $C8
		dc.b $35 ; 5
		dc.b $C0
		dc.b $3A ; :
		dc.b $14
		dc.b $1C
		dc.b $77 ; w
		dc.b $21 ; !
		dc.b $4B ; K
		dc.b $1C
		dc.b $11
		dc.b $30 ; 0
		dc.b   0
		dc.b   6
		dc.b  $A
		dc.b $34 ; 4
		dc.b $19
		dc.b $10
		dc.b $FC
		dc.b $C9
		dc.b $ED
		dc.b $5F ; _
		dc.b $32 ; 2
		dc.b $17
		dc.b $1C
		dc.b $11
		dc.b  $A
		dc.b $1C
		dc.b $CD
		dc.b $4B ; K
		dc.b   8
		dc.b $CD
		dc.b $4B ; K
		dc.b   8
		dc.b $1A
		dc.b $CB
		dc.b $7F ; 
		dc.b $C8
		dc.b  $E
		dc.b   0
		dc.b $FE
		dc.b $90
		dc.b $38 ; 8
		dc.b   4
		dc.b $D6
		dc.b  $F
		dc.b  $E
		dc.b $10
		dc.b $D6
		dc.b $81
		dc.b $2A ; *
		dc.b   2
		dc.b $1C
		dc.b $E7
		dc.b $4F ; O
		dc.b   6
		dc.b   0
		dc.b   9
		dc.b $3A ; :
		dc.b $18
		dc.b $1C
		dc.b $BE
		dc.b $28 ; (
		dc.b   2
		dc.b $30 ; 0
		dc.b  $A
		dc.b $1A
		dc.b $32 ; 2
		dc.b   9
		dc.b $1C
		dc.b $7E ; ~
		dc.b $E6
		dc.b $7F ; 
		dc.b $32 ; 2
		dc.b $18
		dc.b $1C
		dc.b $AF
		dc.b $12
		dc.b $13
		dc.b $C9
		dc.b $CD
		dc.b $89
		dc.b   8
		dc.b $3E ; >
		dc.b $40 ; @
		dc.b  $E
		dc.b $7F ; 
		dc.b $CD
		dc.b $8D
		dc.b   8
		dc.b $DD
		dc.b $4E ; N
		dc.b   1
		dc.b $C3
		dc.b $E8
		dc.b   3
		dc.b $3E ; >
		dc.b $80
		dc.b  $E
		dc.b $FF
		dc.b   6
		dc.b   4
		dc.b $F5
		dc.b $D7
		dc.b $F1
		dc.b $C6
		dc.b   4
		dc.b $10
		dc.b $F9
		dc.b $C9
		dc.b $56 ; V
		dc.b   3
		dc.b $26 ; &
		dc.b   3
		dc.b $F9
		dc.b   2
		dc.b $CE
		dc.b   2
		dc.b $A5
		dc.b   2
		dc.b $80
		dc.b   2
		dc.b $5C ; \
		dc.b   2
		dc.b $3A ; :
		dc.b   2
		dc.b $1A
		dc.b   2
		dc.b $FB
		dc.b   1
		dc.b $DF
		dc.b   1
		dc.b $C4
		dc.b   1
		dc.b $AB
		dc.b   1
		dc.b $93
		dc.b   1
		dc.b $7D ; }
		dc.b   1
		dc.b $67 ; g
		dc.b   1
		dc.b $53 ; S
		dc.b   1
		dc.b $40 ; @
		dc.b   1
		dc.b $2E ; .
		dc.b   1
		dc.b $1D
		dc.b   1
		dc.b  $D
		dc.b   1
		dc.b $FE
		dc.b   0
		dc.b $EF
		dc.b   0
		dc.b $E2
		dc.b   0
		dc.b $D6
		dc.b   0
		dc.b $C9
		dc.b   0
		dc.b $BE
		dc.b   0
		dc.b $B4
		dc.b   0
		dc.b $A9
		dc.b   0
		dc.b $A0
		dc.b   0
		dc.b $97
		dc.b   0
		dc.b $8F
		dc.b   0
		dc.b $87
		dc.b   0
		dc.b $7F ; 
		dc.b   0
		dc.b $78 ; x
		dc.b   0
		dc.b $71 ; q
		dc.b   0
		dc.b $6B ; k
		dc.b   0
		dc.b $65 ; e
		dc.b   0
		dc.b $5F ; _
		dc.b   0
		dc.b $5A ; Z
		dc.b   0
		dc.b $55 ; U
		dc.b   0
		dc.b $50 ; P
		dc.b   0
		dc.b $4B ; K
		dc.b   0
		dc.b $47 ; G
		dc.b   0
		dc.b $43 ; C
		dc.b   0
		dc.b $40 ; @
		dc.b   0
		dc.b $3C ; <
		dc.b   0
		dc.b $39 ; 9
		dc.b   0
		dc.b $36 ; 6
		dc.b   0
		dc.b $33 ; 3
		dc.b   0
		dc.b $30 ; 0
		dc.b   0
		dc.b $2D ; -
		dc.b   0
		dc.b $2B ; +
		dc.b   0
		dc.b $28 ; (
		dc.b   0
		dc.b $26 ; &
		dc.b   0
		dc.b $24 ; $
		dc.b   0
		dc.b $22 ; "
		dc.b   0
		dc.b $20
		dc.b   0
		dc.b $1F
		dc.b   0
		dc.b $1D
		dc.b   0
		dc.b $1B
		dc.b   0
		dc.b $1A
		dc.b   0
		dc.b $18
		dc.b   0
		dc.b $17
		dc.b   0
		dc.b $16
		dc.b   0
		dc.b $15
		dc.b   0
		dc.b $13
		dc.b   0
		dc.b $12
		dc.b   0
		dc.b $11
		dc.b   0
		dc.b $84
		dc.b   2
		dc.b $AB
		dc.b   2
		dc.b $D3
		dc.b   2
		dc.b $FE
		dc.b   2
		dc.b $2D ; -
		dc.b   3
		dc.b $5C ; \
		dc.b   3
		dc.b $8F
		dc.b   3
		dc.b $C5
		dc.b   3
		dc.b $FF
		dc.b   3
		dc.b $3C ; <
		dc.b   4
		dc.b $7C ; |
		dc.b   4
		dc.b $C0
		dc.b   4
		dc.b $CD
		dc.b $BE
		dc.b   2
		dc.b $CC
		dc.b $40 ; @
		dc.b   9
		dc.b $C9
		dc.b $DD
		dc.b $5E ; ^
		dc.b   3
		dc.b $DD
		dc.b $56 ; V
		dc.b   4
		dc.b $1A
		dc.b $13
		dc.b $FE
		dc.b $E0
		dc.b $D2
		dc.b $ED
		dc.b   9
		dc.b $B7
		dc.b $FA
		dc.b $55 ; U
		dc.b   9
		dc.b $1B
		dc.b $DD
		dc.b $7E ; ~
		dc.b  $D
		dc.b $DD
		dc.b $77 ; w
		dc.b  $D
		dc.b $FE
		dc.b $80
		dc.b $CA
		dc.b $D7
		dc.b   9
		dc.b $D5
		dc.b $21 ; !
		dc.b $60 ; `
		dc.b $1D
		dc.b $CB
		dc.b $56 ; V
		dc.b $20
		dc.b $44 ; D
		dc.b $E6
		dc.b  $F
		dc.b $28 ; (
		dc.b $40 ; @
		dc.b   8
		dc.b $CD
		dc.b $DC
		dc.b   3
		dc.b   8
		dc.b $11
		dc.b $E7
		dc.b   9
		dc.b $EB
		dc.b $ED
		dc.b $A0
		dc.b $ED
		dc.b $A0
		dc.b $ED
		dc.b $A0
		dc.b $3D ; =
		dc.b $21 ; !
		dc.b $11
		dc.b  $A
		dc.b $EF
		dc.b   1
		dc.b   6
		dc.b   0
		dc.b $ED
		dc.b $B0
		dc.b $CD
		dc.b $87
		dc.b   6
		dc.b $21 ; !
		dc.b $65 ; e
		dc.b $1D
		dc.b $DD
		dc.b $7E ; ~
		dc.b   5
		dc.b $86
		dc.b $77 ; w
		dc.b $3A ; :
		dc.b $68 ; h
		dc.b $1D
		dc.b $21 ; !
		dc.b $25 ; %
		dc.b  $A
		dc.b $EF
		dc.b $3A ; :
		dc.b $66 ; f
		dc.b $1D
		dc.b $DD
		dc.b $5E ; ^
		dc.b   6
		dc.b $D5
		dc.b $83
		dc.b $DD
		dc.b $77 ; w
		dc.b   6
		dc.b $CD
		dc.b $9F
		dc.b   4
		dc.b $D1
		dc.b $DD
		dc.b $73 ; s
		dc.b   6
		dc.b $CD
		dc.b $CF
		dc.b   7
		dc.b $21 ; !
		dc.b $F0
		dc.b $1D
		dc.b $CB
		dc.b $56 ; V
		dc.b $20
		dc.b $26 ; &
		dc.b $DD
		dc.b $7E ; ~
		dc.b  $D
		dc.b $E6
		dc.b $70 ; p
		dc.b $28 ; (
		dc.b $1F
		dc.b $11
		dc.b $EA
		dc.b   9
		dc.b $EB
		dc.b $ED
		dc.b $A0
		dc.b $ED
		dc.b $A0
		dc.b $ED
		dc.b $A0
		dc.b $CB
		dc.b $3F ; ?
		dc.b $CB
		dc.b $3F ; ?
		dc.b $CB
		dc.b $3F ; ?
		dc.b $CB
		dc.b $3F ; ?
		dc.b $3D ; =
		dc.b $21 ; !
		dc.b $F7
		dc.b   9
		dc.b $EF
		dc.b   1
		dc.b   6
		dc.b   0
		dc.b $ED
		dc.b $B0
		dc.b $CD
		dc.b $87
		dc.b   6
		dc.b $D1
		dc.b $1A
		dc.b $13
		dc.b $B7
		dc.b $F2
		dc.b $30 ; 0
		dc.b   2
		dc.b $1B
		dc.b $DD
		dc.b $7E ; ~
		dc.b  $C
		dc.b $DD
		dc.b $77 ; w
		dc.b  $B
		dc.b $C3
		dc.b $36 ; 6
		dc.b   2
		dc.b $80
		dc.b   2
		dc.b   1
		dc.b $80
		dc.b $C0
		dc.b   1
		dc.b $21 ; !
		dc.b $F3
		dc.b   9
		dc.b $C3
		dc.b $32 ; 2
		dc.b  $B
		dc.b $13
		dc.b $C3
		dc.b $46 ; F
		dc.b   9
		dc.b $FB
		dc.b   9
		dc.b   6
		dc.b  $A
		dc.b   1
		dc.b  $A
		dc.b   0
		dc.b   4
		dc.b   0
		dc.b   1
		dc.b $F3
		dc.b $E7
		dc.b $C2
		dc.b   8
		dc.b $F2
		dc.b  $C
		dc.b  $A
		dc.b   0
		dc.b   6
		dc.b   0
		dc.b   2
		dc.b $F3
		dc.b $E7
		dc.b $C5
		dc.b   8
		dc.b $F2
		dc.b $31 ; 1
		dc.b  $A
		dc.b $53 ; S
		dc.b  $A
		dc.b $77 ; w
		dc.b  $A
		dc.b $80
		dc.b  $A
		dc.b $94
		dc.b  $A
		dc.b $B6
		dc.b  $A
		dc.b $8B
		dc.b  $A
		dc.b $D8
		dc.b  $A
		dc.b $E1
		dc.b  $A
		dc.b   8
		dc.b  $B
		dc.b $3A ; :
		dc.b  $A
		dc.b $5E ; ^
		dc.b  $A
		dc.b $9D
		dc.b  $A
		dc.b $BF
		dc.b  $A
		dc.b $EF
		dc.b  $A
		dc.b $16
		dc.b  $B
		dc.b $37 ; 7
		dc.b  $A
		dc.b   0
		dc.b   6
		dc.b   0
		dc.b   0
		dc.b $B4
		dc.b $10
		dc.b $F2
		dc.b $3C ; <
		dc.b  $F
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $1F
		dc.b $1A
		dc.b $18
		dc.b $1C
		dc.b $17
		dc.b $11
		dc.b $1A
		dc.b  $E
		dc.b   0
		dc.b  $F
		dc.b $14
		dc.b $10
		dc.b $1F
		dc.b $EC
		dc.b $FF
		dc.b $FF
		dc.b   7
		dc.b $80
		dc.b $16
		dc.b $80
		dc.b $59 ; Y
		dc.b  $A
		dc.b   0
		dc.b  $C
		dc.b   1
		dc.b   1
		dc.b $E0
		dc.b $80
		dc.b $B6
		dc.b  $A
		dc.b $F2
		dc.b $3E ; >
		dc.b $60 ; `
		dc.b $30 ; 0
		dc.b $30 ; 0
		dc.b $30 ; 0
		dc.b $19
		dc.b $1F
		dc.b $1F
		dc.b $1F
		dc.b $15
		dc.b $11
		dc.b $11
		dc.b  $C
		dc.b $10
		dc.b  $A
		dc.b   6
		dc.b   9
		dc.b $4F ; O
		dc.b $5F ; _
		dc.b $AF
		dc.b $8F
		dc.b   0
		dc.b $82
		dc.b $83
		dc.b $80
		dc.b $7D ; }
		dc.b  $A
		dc.b   0
		dc.b  $C
		dc.b   1
		dc.b   1
		dc.b $B3
		dc.b  $A
		dc.b $F2
		dc.b $86
		dc.b  $A
		dc.b   0
		dc.b  $C
		dc.b   1
		dc.b   1
		dc.b $E0
		dc.b $40 ; @
		dc.b $B0
		dc.b  $A
		dc.b $F2
		dc.b $91
		dc.b  $A
		dc.b   0
		dc.b  $C
		dc.b   1
		dc.b   1
		dc.b $B2
		dc.b  $A
		dc.b $F2
		dc.b $9A
		dc.b  $A
		dc.b   0
		dc.b  $A
		dc.b   1
		dc.b   2
		dc.b $8F
		dc.b   8
		dc.b $F2
		dc.b $3C ; <
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $1F
		dc.b $1F
		dc.b $1F
		dc.b $1F
		dc.b   0
		dc.b $16
		dc.b  $F
		dc.b  $F
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $F
		dc.b $AF
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b $85
		dc.b  $A
		dc.b $80
		dc.b $BC
		dc.b  $A
		dc.b   0
		dc.b   6
		dc.b   1
		dc.b   3
		dc.b $B0
		dc.b $16
		dc.b $F2
		dc.b $72 ; r
		dc.b $9E
		dc.b $5B ; [
		dc.b $42 ; B
		dc.b $22 ; "
		dc.b $96
		dc.b $96
		dc.b $9E
		dc.b $96
		dc.b $16
		dc.b $18
		dc.b $16
		dc.b $18
		dc.b $10
		dc.b $17
		dc.b $11
		dc.b $18
		dc.b $4F ; O
		dc.b $5F ; _
		dc.b $4F ; O
		dc.b $4F ; O
		dc.b   0
		dc.b   0
		dc.b $10
		dc.b $80
		dc.b $DE
		dc.b  $A
		dc.b   0
		dc.b  $E
		dc.b   1
		dc.b   1
		dc.b $B9
		dc.b $10
		dc.b $F2
		dc.b $E7
		dc.b  $A
		dc.b $F7
		dc.b  $A
		dc.b   0
		dc.b   4
		dc.b $FE
		dc.b   3
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $95
		dc.b $20
		dc.b $F2
		dc.b $3C ; <
		dc.b  $A
		dc.b $50 ; P
		dc.b $70 ; p
		dc.b   0
		dc.b $1F
		dc.b $17
		dc.b $19
		dc.b $1D
		dc.b $1D
		dc.b $15
		dc.b $1A
		dc.b $17
		dc.b   6
		dc.b $18
		dc.b   7
		dc.b $19
		dc.b  $F
		dc.b $5F ; _
		dc.b $6F ; o
		dc.b $1F
		dc.b  $C
		dc.b $95
		dc.b   0
		dc.b $8E
		dc.b  $E
		dc.b  $B
		dc.b   0
		dc.b   7
		dc.b   0
		dc.b   5
		dc.b $FE
		dc.b   0
		dc.b   3
		dc.b   0
		dc.b   3
		dc.b $D1
		dc.b   8
		dc.b $F2
		dc.b $3D ; =
		dc.b   0
		dc.b  $F
		dc.b  $F
		dc.b  $F
		dc.b $1F
		dc.b $9F
		dc.b $9F
		dc.b $9F
		dc.b $1F
		dc.b $1F
		dc.b $1F
		dc.b $1F
		dc.b   0
		dc.b  $E
		dc.b $10
		dc.b  $F
		dc.b  $F
		dc.b $4F ; O
		dc.b $4F ; O
		dc.b $4F ; O
		dc.b   0
		dc.b $90
		dc.b $90
		dc.b $85
		dc.b $21 ; !
		dc.b $3B ; ;
		dc.b  $B
		dc.b $E5
		dc.b $D6
		dc.b $E0
		dc.b $21 ; !
		dc.b $46 ; F
		dc.b  $B
		dc.b $EF
		dc.b $1A
		dc.b $E9
		dc.b $13
		dc.b $C3
		dc.b $9E
		dc.b   1
		dc.b $21 ; !
		dc.b $86
		dc.b  $B
		dc.b $EF
		dc.b $13
		dc.b $1A
		dc.b $E9
		dc.b $27 ; '
		dc.b  $D
		dc.b $34 ; 4
		dc.b  $C
		dc.b $49 ; I
		dc.b  $C
		dc.b $7E ; ~
		dc.b  $C
		dc.b $8E
		dc.b  $C
		dc.b $60 ; `
		dc.b  $D
		dc.b $68 ; h
		dc.b  $D
		dc.b $A1
		dc.b  $C
		dc.b $84
		dc.b  $C
		dc.b $38 ; 8
		dc.b  $D
		dc.b $C2
		dc.b  $B
		dc.b $CF
		dc.b  $B
		dc.b $4D ; M
		dc.b  $C
		dc.b $60 ; `
		dc.b  $C
		dc.b $65 ; e
		dc.b  $C
		dc.b $E4
		dc.b  $C
		dc.b $70 ; p
		dc.b  $C
		dc.b $A8
		dc.b  $D
		dc.b $DE
		dc.b  $D
		dc.b $80
		dc.b  $D
		dc.b $B0
		dc.b  $D
		dc.b $9F
		dc.b  $D
		dc.b $B4
		dc.b  $D
		dc.b $A5
		dc.b  $E
		dc.b $78 ; x
		dc.b  $E
		dc.b $92
		dc.b  $E
		dc.b $7C ; |
		dc.b  $D
		dc.b $75 ; u
		dc.b  $D
		dc.b $BA
		dc.b  $D
		dc.b $D0
		dc.b  $D
		dc.b $A7
		dc.b  $C
		dc.b $3F ; ?
		dc.b  $B
		dc.b $BE
		dc.b  $B
		dc.b $41 ; A
		dc.b  $C
		dc.b $E3
		dc.b  $B
		dc.b $EB
		dc.b  $B
		dc.b $26 ; &
		dc.b  $C
		dc.b $AF
		dc.b  $B
		dc.b $96
		dc.b  $B
		dc.b $38 ; 8
		dc.b  $C
		dc.b $DD
		dc.b $36 ; 6
		dc.b $18
		dc.b $80
		dc.b $DD
		dc.b $73 ; s
		dc.b $19
		dc.b $DD
		dc.b $72 ; r
		dc.b $1A
		dc.b $21 ; !
		dc.b $9B
		dc.b   4
		dc.b   6
		dc.b   4
		dc.b $1A
		dc.b $13
		dc.b $4F ; O
		dc.b $7E ; ~
		dc.b $23 ; #
		dc.b $D7
		dc.b $10
		dc.b $F8
		dc.b $1B
		dc.b $C9
		dc.b $D9
		dc.b   6
		dc.b  $A
		dc.b $11
		dc.b $30 ; 0
		dc.b   0
		dc.b $21 ; !
		dc.b $42 ; B
		dc.b $1C
		dc.b $77 ; w
		dc.b $19
		dc.b $10
		dc.b $FC
		dc.b $D9
		dc.b $C9
		dc.b $32 ; 2
		dc.b   7
		dc.b $1C
		dc.b $C9
		dc.b $21 ; !
		dc.b   4
		dc.b $1C
		dc.b $EB
		dc.b $ED
		dc.b $A0
		dc.b $ED
		dc.b $A0
		dc.b $ED
		dc.b $A0
		dc.b $EB
		dc.b $1B
		dc.b $C9
		dc.b $EB
		dc.b $4E ; N
		dc.b $23 ; #
		dc.b $46 ; F
		dc.b $23 ; #
		dc.b $EB
		dc.b $2A ; *
		dc.b   4
		dc.b $1C
		dc.b   9
		dc.b $22 ; "
		dc.b   4
		dc.b $1C
		dc.b $1A
		dc.b $21 ; !
		dc.b   6
		dc.b $1C
		dc.b $86
		dc.b $77 ; w
		dc.b $C9
		dc.b $DD
		dc.b $E5
		dc.b $CD
		dc.b $C7
		dc.b   4
		dc.b $DD
		dc.b $E1
		dc.b $C9
		dc.b $32 ; 2
		dc.b $11
		dc.b $1C
		dc.b $B7
		dc.b $28 ; (
		dc.b $1D
		dc.b $DD
		dc.b $E5
		dc.b $D5
		dc.b $DD
		dc.b $21 ; !
		dc.b $40 ; @
		dc.b $1C
		dc.b   6
		dc.b  $A
		dc.b $11
		dc.b $30 ; 0
		dc.b   0
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $BE
		dc.b $CD
		dc.b $E2
		dc.b   3
		dc.b $DD
		dc.b $19
		dc.b $10
		dc.b $F5
		dc.b $D1
		dc.b $DD
		dc.b $E1
		dc.b $C3
		dc.b  $D
		dc.b   8
		dc.b $DD
		dc.b $E5
		dc.b $D5
		dc.b $DD
		dc.b $21 ; !
		dc.b $40 ; @
		dc.b $1C
		dc.b   6
		dc.b  $A
		dc.b $11
		dc.b $30 ; 0
		dc.b   0
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $FE
		dc.b $DD
		dc.b $19
		dc.b $10
		dc.b $F8
		dc.b $D1
		dc.b $DD
		dc.b $E1
		dc.b $C9
		dc.b $EB
		dc.b $5E ; ^
		dc.b $23 ; #
		dc.b $56 ; V
		dc.b $23 ; #
		dc.b $4E ; N
		dc.b   6
		dc.b   0
		dc.b $23 ; #
		dc.b $EB
		dc.b $ED
		dc.b $B0
		dc.b $1B
		dc.b $C9
		dc.b $DD
		dc.b $77 ; w
		dc.b $10
		dc.b $C9
		dc.b $DD
		dc.b $77 ; w
		dc.b $18
		dc.b $13
		dc.b $1A
		dc.b $DD
		dc.b $77 ; w
		dc.b $19
		dc.b $C9
		dc.b $21 ; !
		dc.b $14
		dc.b $1C
		dc.b $86
		dc.b $77 ; w
		dc.b $2B ; +
		dc.b $77 ; w
		dc.b $C9
		dc.b $32 ; 2
		dc.b $16
		dc.b $1C
		dc.b $C9
		dc.b $DD
		dc.b $CB
		dc.b   1
		dc.b $7E ; ~
		dc.b $C8
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $A6
		dc.b $DD
		dc.b $35 ; 5
		dc.b $17
		dc.b $DD
		dc.b $86
		dc.b   6
		dc.b $DD
		dc.b $77 ; w
		dc.b   6
		dc.b $C9
		dc.b $CD
		dc.b $6A ; j
		dc.b  $C
		dc.b $D7
		dc.b $C9
		dc.b $CD
		dc.b $6A ; j
		dc.b  $C
		dc.b $DF
		dc.b $C9
		dc.b $EB
		dc.b $7E ; ~
		dc.b $23 ; #
		dc.b $4E ; N
		dc.b $EB
		dc.b $C9
		dc.b $DD
		dc.b $73 ; s
		dc.b $20
		dc.b $DD
		dc.b $72 ; r
		dc.b $21 ; !
		dc.b $DD
		dc.b $36 ; 6
		dc.b   7
		dc.b $80
		dc.b $13
		dc.b $13
		dc.b $13
		dc.b $C9
		dc.b $CD
		dc.b $79 ; y
		dc.b   8
		dc.b $C3
		dc.b $DE
		dc.b  $D
		dc.b $CD
		dc.b $58 ; X
		dc.b   2
		dc.b $DD
		dc.b $77 ; w
		dc.b $1E
		dc.b $DD
		dc.b $77 ; w
		dc.b $1F
		dc.b $C9
		dc.b $DD
		dc.b $E5
		dc.b $E1
		dc.b   1
		dc.b $11
		dc.b   0
		dc.b   9
		dc.b $EB
		dc.b   1
		dc.b   5
		dc.b   0
		dc.b $ED
		dc.b $B0
		dc.b $3E ; >
		dc.b   1
		dc.b $12
		dc.b $EB
		dc.b $1B
		dc.b $C9
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $CE
		dc.b $1B
		dc.b $C9
		dc.b $DD
		dc.b $7E ; ~
		dc.b   1
		dc.b $FE
		dc.b   2
		dc.b $20
		dc.b $2A ; *
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $C6
		dc.b $D9
		dc.b $CD
		dc.b $80
		dc.b   1
		dc.b   6
		dc.b   4
		dc.b $C5
		dc.b $D9
		dc.b $1A
		dc.b $13
		dc.b $D9
		dc.b $21 ; !
		dc.b $DC
		dc.b  $C
		dc.b $87
		dc.b $4F ; O
		dc.b   6
		dc.b   0
		dc.b   9
		dc.b $ED
		dc.b $A0
		dc.b $ED
		dc.b $A0
		dc.b $C1
		dc.b $10
		dc.b $EC
		dc.b $D9
		dc.b $1B
		dc.b $3E ; >
		dc.b $4F ; O
		dc.b $32 ; 2
		dc.b $12
		dc.b $1C
		dc.b $4F ; O
		dc.b $3E ; >
		dc.b $27 ; '
		dc.b $DF
		dc.b $C9
		dc.b $13
		dc.b $13
		dc.b $13
		dc.b $C9
		dc.b   0
		dc.b   0
		dc.b $32 ; 2
		dc.b   1
		dc.b $8E
		dc.b   1
		dc.b $E4
		dc.b   1
		dc.b $DD
		dc.b $CB
		dc.b   1
		dc.b $7E ; ~
		dc.b $20
		dc.b $38 ; 8
		dc.b $CD
		dc.b $89
		dc.b   8
		dc.b $1A
		dc.b $DD
		dc.b $77 ; w
		dc.b   8
		dc.b $F5
		dc.b $13
		dc.b $1A
		dc.b $DD
		dc.b $77 ; w
		dc.b  $F
		dc.b $F1
		dc.b $B7
		dc.b $F2
		dc.b $17
		dc.b  $D
		dc.b $D5
		dc.b $21 ; !
		dc.b   0
		dc.b $13
		dc.b  $E
		dc.b   4
		dc.b $DD
		dc.b $7E ; ~
		dc.b  $F
		dc.b $D6
		dc.b $81
		dc.b $CD
		dc.b $23 ; #
		dc.b   0
		dc.b $EF
		dc.b $F7
		dc.b $DD
		dc.b $7E ; ~
		dc.b   8
		dc.b $E6
		dc.b $7F ; 
		dc.b $47 ; G
		dc.b $CD
		dc.b $4D ; M
		dc.b   4
		dc.b $18
		dc.b   6
		dc.b $1B
		dc.b $D5
		dc.b $47 ; G
		dc.b $CD
		dc.b $3E ; >
		dc.b   4
		dc.b $CD
		dc.b $9F
		dc.b   4
		dc.b $D1
		dc.b $C9
		dc.b $1A
		dc.b $B7
		dc.b $F0
		dc.b $13
		dc.b $C9
		dc.b  $E
		dc.b $3F ; ?
		dc.b $DD
		dc.b $7E ; ~
		dc.b  $A
		dc.b $A1
		dc.b $EB
		dc.b $B6
		dc.b $DD
		dc.b $77 ; w
		dc.b  $A
		dc.b $4F ; O
		dc.b $3E ; >
		dc.b $B4
		dc.b $D7
		dc.b $EB
		dc.b $C9
		dc.b $4F ; O
		dc.b $3E ; >
		dc.b $22 ; "
		dc.b $DF
		dc.b $13
		dc.b  $E
		dc.b $C0
		dc.b $18
		dc.b $E8
		dc.b $D9
		dc.b $11
		dc.b $97
		dc.b   4
		dc.b $DD
		dc.b $6E ; n
		dc.b $1C
		dc.b $DD
		dc.b $66 ; f
		dc.b $1D
		dc.b   6
		dc.b   4
		dc.b $7E ; ~
		dc.b $B7
		dc.b $F2
		dc.b $55 ; U
		dc.b  $D
		dc.b $DD
		dc.b $86
		dc.b   6
		dc.b $E6
		dc.b $7F ; 
		dc.b $4F ; O
		dc.b $1A
		dc.b $D7
		dc.b $13
		dc.b $23 ; #
		dc.b $10
		dc.b $EF
		dc.b $D9
		dc.b $C9
		dc.b $13
		dc.b $DD
		dc.b $86
		dc.b   6
		dc.b $DD
		dc.b $77 ; w
		dc.b   6
		dc.b $1A
		dc.b $DD
		dc.b $CB
		dc.b   1
		dc.b $7E ; ~
		dc.b $C0
		dc.b $DD
		dc.b $86
		dc.b   6
		dc.b $DD
		dc.b $77 ; w
		dc.b   6
		dc.b $18
		dc.b $CC
		dc.b $DD
		dc.b $86
		dc.b   5
		dc.b $DD
		dc.b $77 ; w
		dc.b   5
		dc.b $C9
		dc.b $DD
		dc.b $77 ; w
		dc.b   2
		dc.b $C9
		dc.b $DD
		dc.b $CB
		dc.b   1
		dc.b $56 ; V
		dc.b $C0
		dc.b $3E ; >
		dc.b $DF
		dc.b $32 ; 2
		dc.b $11
		dc.b $7F ; 
		dc.b $1A
		dc.b $DD
		dc.b $77 ; w
		dc.b $1A
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $C6
		dc.b $B7
		dc.b $20
		dc.b   6
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $86
		dc.b $3E ; >
		dc.b $FF
		dc.b $32 ; 2
		dc.b $11
		dc.b $7F ; 
		dc.b $C9
		dc.b $DD
		dc.b $CB
		dc.b   1
		dc.b $7E ; ~
		dc.b $C8
		dc.b $DD
		dc.b $77 ; w
		dc.b   8
		dc.b $C9
		dc.b $13
		dc.b $DD
		dc.b $CB
		dc.b   1
		dc.b $7E ; ~
		dc.b $20
		dc.b   1
		dc.b $1A
		dc.b $DD
		dc.b $77 ; w
		dc.b   7
		dc.b $C9
		dc.b $EB
		dc.b $5E ; ^
		dc.b $23 ; #
		dc.b $56 ; V
		dc.b $1B
		dc.b $C9
		dc.b $FE
		dc.b   1
		dc.b $20
		dc.b   5
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $EE
		dc.b $C9
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $8E
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $AE
		dc.b $AF
		dc.b $DD
		dc.b $77 ; w
		dc.b $10
		dc.b $C9
		dc.b $FE
		dc.b   1
		dc.b $20
		dc.b   5
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $DE
		dc.b $C9
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $9E
		dc.b $C9
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $BE
		dc.b $3E ; >
		dc.b $1F
		dc.b $32 ; 2
		dc.b $15
		dc.b $1C
		dc.b $CD
		dc.b $DC
		dc.b   3
		dc.b $DD
		dc.b $4E ; N
		dc.b   1
		dc.b $DD
		dc.b $E5
		dc.b $CD
		dc.b $47 ; G
		dc.b   6
		dc.b $3A ; :
		dc.b $19
		dc.b $1C
		dc.b $B7
		dc.b $28 ; (
		dc.b $69 ; i
		dc.b $AF
		dc.b $32 ; 2
		dc.b $18
		dc.b $1C
		dc.b $FD
		dc.b $CB
		dc.b   0
		dc.b $7E ; ~
		dc.b $28 ; (
		dc.b $12
		dc.b $DD
		dc.b $7E ; ~
		dc.b   1
		dc.b $FD
		dc.b $BE
		dc.b   1
		dc.b $20
		dc.b  $A
		dc.b $FD
		dc.b $E5
		dc.b $FD
		dc.b $6E ; n
		dc.b $2A ; *
		dc.b $FD
		dc.b $66 ; f
		dc.b $2B ; +
		dc.b $18
		dc.b   4
		dc.b $E5
		dc.b $2A ; *
		dc.b $37 ; 7
		dc.b $1C
		dc.b $DD
		dc.b $E1
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $96
		dc.b $DD
		dc.b $CB
		dc.b   1
		dc.b $7E ; ~
		dc.b $20
		dc.b $42 ; B
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $7E ; ~
		dc.b $28 ; (
		dc.b $37 ; 7
		dc.b $3E ; >
		dc.b   2
		dc.b $DD
		dc.b $BE
		dc.b   1
		dc.b $20
		dc.b  $D
		dc.b $3E ; >
		dc.b $4F ; O
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $46 ; F
		dc.b $20
		dc.b   2
		dc.b $E6
		dc.b  $F
		dc.b $CD
		dc.b $D0
		dc.b  $C
		dc.b $DD
		dc.b $7E ; ~
		dc.b   8
		dc.b $B7
		dc.b $F2
		dc.b $4A ; J
		dc.b  $E
		dc.b $CD
		dc.b $FC
		dc.b  $C
		dc.b $18
		dc.b $14
		dc.b $47 ; G
		dc.b $CD
		dc.b $4D ; M
		dc.b   4
		dc.b $CD
		dc.b $9F
		dc.b   4
		dc.b $DD
		dc.b $7E ; ~
		dc.b $18
		dc.b $B7
		dc.b $F2
		dc.b $61 ; a
		dc.b  $E
		dc.b $DD
		dc.b $5E ; ^
		dc.b $19
		dc.b $DD
		dc.b $56 ; V
		dc.b $1A
		dc.b $CD
		dc.b $A0
		dc.b  $B
		dc.b $DD
		dc.b $E1
		dc.b $E1
		dc.b $E1
		dc.b $C9
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $46 ; F
		dc.b $28 ; (
		dc.b $F5
		dc.b $DD
		dc.b $7E ; ~
		dc.b $1A
		dc.b $B7
		dc.b $F2
		dc.b $76 ; v
		dc.b  $E
		dc.b $32 ; 2
		dc.b $11
		dc.b $7F ; 
		dc.b $18
		dc.b $E9
		dc.b $4F ; O
		dc.b $13
		dc.b $1A
		dc.b $47 ; G
		dc.b $C5
		dc.b $DD
		dc.b $E5
		dc.b $E1
		dc.b $DD
		dc.b $35 ; 5
		dc.b   9
		dc.b $DD
		dc.b $4E ; N
		dc.b   9
		dc.b $DD
		dc.b $35 ; 5
		dc.b   9
		dc.b   6
		dc.b   0
		dc.b   9
		dc.b $72 ; r
		dc.b $2B ; +
		dc.b $73 ; s
		dc.b $D1
		dc.b $1B
		dc.b $C9
		dc.b $DD
		dc.b $E5
		dc.b $E1
		dc.b $DD
		dc.b $4E ; N
		dc.b   9
		dc.b   6
		dc.b   0
		dc.b   9
		dc.b $5E ; ^
		dc.b $23 ; #
		dc.b $56 ; V
		dc.b $DD
		dc.b $34 ; 4
		dc.b   9
		dc.b $DD
		dc.b $34 ; 4
		dc.b   9
		dc.b $C9
		dc.b $13
		dc.b $C6
		dc.b $28 ; (
		dc.b $4F ; O
		dc.b   6
		dc.b   0
		dc.b $DD
		dc.b $E5
		dc.b $E1
		dc.b   9
		dc.b $7E ; ~
		dc.b $B7
		dc.b $20
		dc.b   2
		dc.b $1A
		dc.b $77 ; w
		dc.b $13
		dc.b $35 ; 5
		dc.b $C2
		dc.b $B4
		dc.b  $D
		dc.b $13
		dc.b $C9
		dc.b $CD
		dc.b $BE
		dc.b   2
		dc.b $20
		dc.b  $D
		dc.b $CD
		dc.b $90
		dc.b   1
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $66 ; f
		dc.b $C0
		dc.b $CD
		dc.b $F5
		dc.b   2
		dc.b $18
		dc.b  $C
		dc.b $DD
		dc.b $7E ; ~
		dc.b $1E
		dc.b $B7
		dc.b $28 ; (
		dc.b   6
		dc.b $DD
		dc.b $35 ; 5
		dc.b $1E
		dc.b $CA
		dc.b $63 ; c
		dc.b  $F
		dc.b $CD
		dc.b $EC
		dc.b   3
		dc.b $CD
		dc.b $20
		dc.b   3
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $56 ; V
		dc.b $C0
		dc.b $DD
		dc.b $4E ; N
		dc.b   1
		dc.b $7D ; }
		dc.b $E6
		dc.b  $F
		dc.b $B1
		dc.b $32 ; 2
		dc.b $11
		dc.b $7F ; 
		dc.b $7D ; }
		dc.b $E6
		dc.b $F0
		dc.b $B4
		dc.b  $F
		dc.b  $F
		dc.b  $F
		dc.b  $F
		dc.b $32 ; 2
		dc.b $11
		dc.b $7F ; 
		dc.b $DD
		dc.b $7E ; ~
		dc.b   8
		dc.b $B7
		dc.b  $E
		dc.b   0
		dc.b $28 ; (
		dc.b   9
		dc.b $3D ; =
		dc.b  $E
		dc.b  $A
		dc.b $E7
		dc.b $EF
		dc.b $CD
		dc.b $32 ; 2
		dc.b  $F
		dc.b $4F ; O
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $66 ; f
		dc.b $C0
		dc.b $DD
		dc.b $7E ; ~
		dc.b   6
		dc.b $81
		dc.b $CB
		dc.b $67 ; g
		dc.b $28 ; (
		dc.b   2
		dc.b $3E ; >
		dc.b  $F
		dc.b $DD
		dc.b $B6
		dc.b   1
		dc.b $C6
		dc.b $10
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $46 ; F
		dc.b $20
		dc.b   4
		dc.b $32 ; 2
		dc.b $11
		dc.b $7F ; 
		dc.b $C9
		dc.b $C6
		dc.b $20
		dc.b $32 ; 2
		dc.b $11
		dc.b $7F ; 
		dc.b $C9
		dc.b $DD
		dc.b $77 ; w
		dc.b $17
		dc.b $E5
		dc.b $DD
		dc.b $4E ; N
		dc.b $17
		dc.b $CD
		dc.b $37 ; 7
		dc.b   4
		dc.b $E1
		dc.b $CB
		dc.b $7F ; 
		dc.b $28 ; (
		dc.b $21 ; !
		dc.b $FE
		dc.b $83
		dc.b $28 ; (
		dc.b  $C
		dc.b $FE
		dc.b $81
		dc.b $28 ; (
		dc.b $13
		dc.b $FE
		dc.b $80
		dc.b $28 ; (
		dc.b  $C
		dc.b   3
		dc.b  $A
		dc.b $18
		dc.b $E1
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $E6
		dc.b $E1
		dc.b $C3
		dc.b $63 ; c
		dc.b  $F
		dc.b $AF
		dc.b $18
		dc.b $D6
		dc.b $E1
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $E6
		dc.b $C9
		dc.b $DD
		dc.b $34 ; 4
		dc.b $17
		dc.b $C9
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $E6
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $56 ; V
		dc.b $C0
		dc.b $3E ; >
		dc.b $1F
		dc.b $DD
		dc.b $86
		dc.b   1
		dc.b $B7
		dc.b $F0
		dc.b $32 ; 2
		dc.b $11
		dc.b $7F ; 
		dc.b $DD
		dc.b $CB
		dc.b   0
		dc.b $46 ; F
		dc.b $C8
		dc.b $3E ; >
		dc.b $FF
		dc.b $32 ; 2
		dc.b $11
		dc.b $7F ; 
		dc.b $C9
		dc.b   0
z80_11F82:      dc.b  $A		; DATA XREF: sounddriverload+38↑o
		dc.b $10
		dc.b $32 ; 2
		dc.b $10
		dc.b $5C ; \
		dc.b $10
		dc.b $8C
		dc.b $10
		dc.b  $A
		dc.b $10
		dc.b $19
		dc.b $10
		dc.b   1
		dc.b   1
		dc.b $80
		dc.b   6
		dc.b $14
		dc.b $10
		dc.b   0
		dc.b  $C
		dc.b $EF
		dc.b   0
		dc.b $BD
		dc.b   6
		dc.b $F2
		dc.b   1
		dc.b   8
		dc.b   4
		dc.b   2
		dc.b   1
		dc.b $1F
		dc.b $1F
		dc.b $1F
		dc.b $1F
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $F
		dc.b  $F
		dc.b  $F
		dc.b  $F
		dc.b $1E
		dc.b $1E
		dc.b $1E
		dc.b $80
		dc.b $43 ; C
		dc.b $10
		dc.b   1
		dc.b   1
		dc.b $80
		dc.b   6
		dc.b $3C ; <
		dc.b $10
		dc.b   0
		dc.b  $C
		dc.b $EF
		dc.b   0
		dc.b $C9
		dc.b   6
		dc.b $D5
		dc.b  $C
		dc.b $F2
		dc.b   1
		dc.b   8
		dc.b   4
		dc.b   2
		dc.b   1
		dc.b $1F
		dc.b $1F
		dc.b $1F
		dc.b $1F
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b  $F
		dc.b  $F
		dc.b  $F
		dc.b  $F
		dc.b $24 ; $
		dc.b $20
		dc.b $27 ; '
		dc.b $80
		dc.b $73 ; s
		dc.b $10
		dc.b   1
		dc.b   2
		dc.b $80
		dc.b   5
		dc.b $6E ; n
		dc.b $10
		dc.b $FB
		dc.b $11
		dc.b $80
		dc.b   6
		dc.b $6C ; l
		dc.b $10
		dc.b $FB
		dc.b $11
		dc.b $E1
		dc.b  $A
		dc.b $EF
		dc.b   0
		dc.b $B0
		dc.b $28 ; (
		dc.b $F2
		dc.b   3
		dc.b   2
		dc.b   5
		dc.b   4
		dc.b   4
		dc.b $1F
		dc.b $1F
		dc.b $1F
		dc.b $1F
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $2F ; /
		dc.b $1F
		dc.b  $F
		dc.b  $F
		dc.b $12
		dc.b  $F
		dc.b $10
		dc.b $80
		dc.b $B9
		dc.b $10
		dc.b   1
		dc.b   3
		dc.b $80
		dc.b   2
		dc.b $A2
		dc.b $10
		dc.b   0
		dc.b  $B
		dc.b $80
		dc.b   5
		dc.b $A9
		dc.b $10
		dc.b   0
		dc.b  $B
		dc.b $80
		dc.b   6
		dc.b $B0
		dc.b $10
		dc.b   0
		dc.b  $B
		dc.b $EF
		dc.b   0
		dc.b $E0
		dc.b $80
		dc.b $C1
		dc.b $7E ; ~
		dc.b $F2
		dc.b $EF
		dc.b   0
		dc.b $80
		dc.b  $A
		dc.b $C4
		dc.b $73 ; s
		dc.b $F2
		dc.b $EF
		dc.b   0
		dc.b $E0
		dc.b $40 ; @
		dc.b $80
		dc.b $14
		dc.b $C9
		dc.b $69 ; i
		dc.b $F2
		dc.b   4
		dc.b $37 ; 7
		dc.b $72 ; r
		dc.b $77 ; w
		dc.b $49 ; I
		dc.b $1F
		dc.b $1F
		dc.b $1F
		dc.b $1F
		dc.b   7
		dc.b  $A
		dc.b   7
		dc.b  $D
		dc.b   0
		dc.b  $B
		dc.b   0
		dc.b  $B
		dc.b $1F
		dc.b  $F
		dc.b $1F
		dc.b  $F
		dc.b $23 ; #
		dc.b $80
		dc.b $23 ; #
		dc.b $80
z80_12054:      dc.b  $B		; DATA XREF: sounddriverload+4E↑o
		dc.b $15
		dc.b   8
		dc.b $10
		dc.b  $E
		dc.b $15
		dc.b   0
		dc.b $10
		dc.b $14
		dc.b $13
		dc.b $5A ; Z
		dc.b $14
		dc.b $90
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $1C
		dc.b $FF
		dc.b $14
		dc.b $28 ; (
		dc.b $13
		dc.b $34 ; 4
		dc.b $13
		dc.b $40 ; @
		dc.b $13
		dc.b $4B ; K
		dc.b $13
		dc.b $8F
		dc.b $13
		dc.b $C4
		dc.b $13
		dc.b   1
		dc.b $14
		dc.b $1B
		dc.b $14
		dc.b $35 ; 5
		dc.b $14
		dc.b $46 ; F
		dc.b $14
		dc.b $40 ; @
		dc.b $60 ; `
		dc.b $70 ; p
		dc.b $60 ; `
		dc.b $50 ; P
		dc.b $30 ; 0
		dc.b $10
		dc.b $F0
		dc.b $D0
		dc.b $B0
		dc.b $90
		dc.b $83
		dc.b   0
		dc.b   2
		dc.b   4
		dc.b   6
		dc.b   8
		dc.b  $A
		dc.b  $C
		dc.b  $E
		dc.b $10
		dc.b $12
		dc.b $14
		dc.b $81
		dc.b   0
		dc.b   0
		dc.b   1
		dc.b   3
		dc.b   1
		dc.b   0
		dc.b $FF
		dc.b $FD
		dc.b   0
		dc.b $82
		dc.b   2
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   2
		dc.b   4
		dc.b   6
		dc.b   8
		dc.b  $A
		dc.b  $C
		dc.b  $A
		dc.b   8
		dc.b   6
		dc.b   4
		dc.b   2
		dc.b   0
		dc.b $FE
		dc.b $FC
		dc.b $FA
		dc.b $F8
		dc.b $F6
		dc.b $F4
		dc.b $F2
		dc.b $F4
		dc.b $F6
		dc.b $F8
		dc.b $FA
		dc.b $FC
		dc.b $FE
		dc.b   0
		dc.b $82
		dc.b $29 ; )
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   2
		dc.b   4
		dc.b   6
		dc.b   8
		dc.b  $A
		dc.b  $C
		dc.b  $A
		dc.b   8
		dc.b   6
		dc.b   4
		dc.b   2
		dc.b   0
		dc.b $FE
		dc.b $FC
		dc.b $FA
		dc.b $F8
		dc.b $F6
		dc.b $F4
		dc.b $F6
		dc.b $F8
		dc.b $FA
		dc.b $FC
		dc.b $FE
		dc.b $82
		dc.b $1B
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   3
		dc.b   6
		dc.b   3
		dc.b   0
		dc.b $FD
		dc.b $FA
		dc.b $FA
		dc.b $FD
		dc.b   0
		dc.b $82
		dc.b $33 ; 3
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   2
		dc.b   4
		dc.b   2
		dc.b   0
		dc.b $FE
		dc.b $FC
		dc.b $FE
		dc.b   0
		dc.b $82
		dc.b $11
		dc.b $FE
		dc.b $FF
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   1
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b $FF
		dc.b $FF
		dc.b $82
		dc.b $11
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   1
		dc.b   1
		dc.b   1
		dc.b   1
		dc.b   2
		dc.b   2
		dc.b   1
		dc.b   1
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $80
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   1
		dc.b   1
		dc.b   1
		dc.b   1
		dc.b   2
		dc.b   2
		dc.b   1
		dc.b   1
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $84
		dc.b   1
		dc.b $82
		dc.b   4
		dc.b $70 ; p
		dc.b $14
		dc.b $72 ; r
		dc.b $14
		dc.b $79 ; y
		dc.b $14
		dc.b $92
		dc.b $14
		dc.b $9E
		dc.b $14
		dc.b $A9
		dc.b $14
		dc.b $B8
		dc.b $14
		dc.b $C1
		dc.b $14
		dc.b $D2
		dc.b $14
		dc.b $DE
		dc.b $14
		dc.b $F3
		dc.b $14
		dc.b   2
		dc.b $83
		dc.b   0
		dc.b   2
		dc.b   4
		dc.b   6
		dc.b   8
		dc.b $10
		dc.b $83
		dc.b   2
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b   1
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   3
		dc.b   3
		dc.b   3
		dc.b   4
		dc.b   4
		dc.b   4
		dc.b   5
		dc.b $81
		dc.b   0
		dc.b   0
		dc.b   2
		dc.b   3
		dc.b   4
		dc.b   4
		dc.b   5
		dc.b   5
		dc.b   5
		dc.b   6
		dc.b   6
		dc.b $81
		dc.b   3
		dc.b   0
		dc.b   1
		dc.b   1
		dc.b   1
		dc.b   2
		dc.b   3
		dc.b   4
		dc.b   4
		dc.b   5
		dc.b $81
		dc.b   0
		dc.b   0
		dc.b   1
		dc.b   1
		dc.b   2
		dc.b   3
		dc.b   4
		dc.b   5
		dc.b   5
		dc.b   6
		dc.b   8
		dc.b   7
		dc.b   7
		dc.b   6
		dc.b $81
		dc.b   1
		dc.b  $C
		dc.b   3
		dc.b  $F
		dc.b   2
		dc.b   7
		dc.b   3
		dc.b  $F
		dc.b $80
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   2
		dc.b   3
		dc.b   3
		dc.b   4
		dc.b   5
		dc.b   6
		dc.b   7
		dc.b   8
		dc.b   9
		dc.b  $A
		dc.b  $B
		dc.b  $E
		dc.b  $F
		dc.b $83
		dc.b   0
		dc.b   0
		dc.b   1
		dc.b   1
		dc.b   3
		dc.b   3
		dc.b   4
		dc.b   5
		dc.b   5
		dc.b   5
		dc.b $82
		dc.b   4
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   1
		dc.b   1
		dc.b   1
		dc.b   2
		dc.b   2
		dc.b   2
		dc.b   3
		dc.b   3
		dc.b   3
		dc.b   3
		dc.b   4
		dc.b   4
		dc.b   4
		dc.b   5
		dc.b   5
		dc.b $81
		dc.b   5
		dc.b   5
		dc.b   4
		dc.b   4
		dc.b   3
		dc.b   3
		dc.b   2
		dc.b   2
		dc.b   1
		dc.b   1
		dc.b   0
		dc.b $81
		dc.b $7F ; 
		dc.b $7F ; 
		dc.b $7F ; 
		dc.b $7F ; 
		dc.b $7F ; 
		dc.b $7F ; 
		dc.b $7F ; 
		dc.b $7F ; 
		dc.b $7F ; 
		dc.b $7F ; 
		dc.b $7F ; 
		dc.b $7F ; 
		dc.b $80
		dc.b $80
		dc.b $80
		dc.b $14
		dc.b $15
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b $AC
		dc.b $15
		dc.b   7
		dc.b   3
		dc.b   2
		dc.b   0
		dc.b $AB
		dc.b $15
		dc.b   0
		dc.b   0
		dc.b $48 ; H
		dc.b $15
		dc.b   0
		dc.b $24 ; $
		dc.b $4C ; L
		dc.b $15
		dc.b   0
		dc.b $22 ; "
		dc.b $50 ; P
		dc.b $15
		dc.b   0
		dc.b $1E
		dc.b $68 ; h
		dc.b $15
		dc.b   0
		dc.b $2E ; .
		dc.b $6C ; l
		dc.b $15
		dc.b   0
		dc.b $2A ; *
		dc.b $84
		dc.b $15
		dc.b   0
		dc.b $14
		dc.b $94
		dc.b $15
		dc.b   0
		dc.b  $B
		dc.b   0
		dc.b   9
		dc.b $98
		dc.b $15
		dc.b   0
		dc.b   8
		dc.b   0
		dc.b   9
		dc.b $9C
		dc.b $15
		dc.b   0
		dc.b   5
		dc.b   0
		dc.b   9
		dc.b $E1
		dc.b  $A
		dc.b $80
		dc.b   2
		dc.b $E1
		dc.b $F6
		dc.b $80
		dc.b   2
		dc.b $EF
		dc.b   0
		dc.b $F0
		dc.b  $A
		dc.b   1
		dc.b   2
		dc.b   8
		dc.b $B8
		dc.b $24 ; $
		dc.b $80
		dc.b   1
		dc.b $B5
		dc.b $40 ; @
		dc.b $E7
		dc.b $B5
		dc.b   2
		dc.b $E6
		dc.b   4
		dc.b $F7
		dc.b   0
		dc.b   8
		dc.b $5D ; ]
		dc.b $15
		dc.b $F2
		dc.b $80
		dc.b   9
		dc.b $E1
		dc.b  $A
		dc.b $EF
		dc.b   0
		dc.b $F0
		dc.b  $A
		dc.b   1
		dc.b   2
		dc.b   8
		dc.b $B5
		dc.b $24 ; $
		dc.b $80
		dc.b   1
		dc.b $B1
		dc.b $40 ; @
		dc.b $E7
		dc.b $B1
		dc.b   2
		dc.b $E6
		dc.b   4
		dc.b $F7
		dc.b   0
		dc.b   8
		dc.b $79 ; y
		dc.b $15
		dc.b $F2
		dc.b $EF
		dc.b   1
		dc.b $F0
		dc.b   1
		dc.b   1
		dc.b $F8
		dc.b   0
		dc.b $AB
		dc.b $24 ; $
		dc.b $40 ; @
		dc.b $F0
		dc.b  $A
		dc.b   1
		dc.b   2
		dc.b   8
		dc.b $F2
		dc.b $80
		dc.b   2
		dc.b $E1
		dc.b   2
		dc.b $80
		dc.b   2
		dc.b $E1
		dc.b $FE
		dc.b $88
		dc.b $24 ; $
		dc.b $88
		dc.b $40 ; @
		dc.b $E7
		dc.b $88
		dc.b   4
		dc.b $EC
		dc.b   1
		dc.b $F7
		dc.b   0
		dc.b   4
		dc.b $A0
		dc.b $15
		dc.b $F2
		dc.b $F2
		dc.b $22 ; "
		dc.b   1
		dc.b   1
		dc.b   3
		dc.b   1
		dc.b   5
		dc.b $15
		dc.b $14
		dc.b $1B
		dc.b   6
		dc.b   4
		dc.b  $B
		dc.b   0
		dc.b   0
		dc.b  $F
		dc.b   4
		dc.b   0
		dc.b $35 ; 5
		dc.b $25 ; %
		dc.b $15
		dc.b  $A
		dc.b   0
		dc.b  $F
		dc.b  $A
		dc.b $80
		dc.b $3C ; <
		dc.b   1
		dc.b   1
		dc.b   1
		dc.b   1
		dc.b $1F
		dc.b $1F
		dc.b $1F
		dc.b $1F
		dc.b   0
		dc.b $13
		dc.b $11
		dc.b $11
		dc.b   0
		dc.b $11
		dc.b  $F
		dc.b  $F
		dc.b   0
		dc.b $1A
		dc.b $25 ; %
		dc.b $1A
		dc.b  $A
		dc.b $82
		dc.b $24 ; $
		dc.b $80
		dcb.b $CCE,$FF
kos_13000:      dc.b $FF		; DATA XREF: sub_68A+28↑o
		dc.b $3F ; ?
		dc.b $4D ; M
		dc.b $41 ; A
		dc.b $49 ; I
		dc.b $4E ; N
		dc.b $42 ; B
		dc.b $4F ; O
		dc.b $4F ; O
		dc.b $54 ; T
		dc.b $55 ; U
		dc.b $53 ; S
		dc.b $52 ; R
		dc.b   0
		dc.b   0
		dc.b $10
		dc.b $18
		dc.b $FE
		dc.b $FD
		dc.b $FF
		dc.b $F8
		dc.b  $A
		dc.b $20
		dc.b $FD
		dc.b $1D
		dc.b $88
		dc.b   0
		dc.b  $A
		dc.b   0
		dc.b $96
		dc.b $87
		dc.b $1F
		dc.b   0
		dc.b $64 ; d
		dc.b   0
		dc.b $E8
		dc.b $F4
		dc.b $4D ; M
		dc.b $FA
		dc.b $2A ; *
		dc.b $82
		dc.b $42 ; B
		dc.b $6E ; n
		dc.b $F0
		dc.b $E3
		dc.b $F8
		dc.b $FC
		dc.b   4
		dc.b $61 ; a
		dc.b   0
		dc.b   1
		dc.b $2E ; .
		dc.b $FC
		dc.b $82
		dc.b $7F ; 
		dc.b $80
		dc.b   8
		dc.b $B8
		dc.b   0
		dc.b   2
		dc.b $80
		dc.b   3
		dc.b   8
		dc.b $F8
		dc.b $EA
		dc.b $FA
		dc.b $E1
		dc.b  $F
		dc.b $41 ; A
		dc.b $F9
		dc.b $FA
		dc.b $F7
		dc.b   0
		dc.b $30 ; 0
		dc.b $3C ; <
		dc.b   2
		dc.b $3F ; ?
		dc.b $72 ; r
		dc.b $FF
		dc.b $E1
		dc.b $C5
		dc.b $C1
		dc.b $51 ; Q
		dc.b $C8
		dc.b $FF
		dc.b $FC
		dc.b $2F ; /
		dc.b  $E
		dc.b $4E ; N
		dc.b $B9
		dc.b $DB
		dc.b $80
		dc.b   4
		dc.b $FF
		dc.b $1F
		dc.b $2C ; ,
		dc.b $5F ; _
		dc.b $2D ; -
		dc.b $78 ; x
		dc.b $5F ; _
		dc.b $84
		dc.b   0
		dc.b   8
		dc.b $41 ; A
		dc.b $FA
		dc.b   0
		dc.b $9C
		dc.b $21 ; !
		dc.b $C8
		dc.b $7E ; ~
		dc.b $FC
		dc.b $F6
		dc.b $11
		dc.b $FC
		dc.b   0
		dc.b $FF
		dc.b $80
		dc.b $31 ; 1
		dc.b $CA
		dc.b   3
		dc.b $80
		dc.b $33 ; 3
		dc.b $4E ; N
		dc.b $63 ; c
		dc.b $3C ; <
		dc.b $FA
		dc.b   1
		dc.b $AE
		dc.b $A6
		dc.b $28 ; (
		dc.b $B2
		dc.b $80
		dc.b $30 ; 0
		dc.b $2E ; .
		dc.b  $C
		dc.b $38 ; 8
		dc.b $BE
		dc.b $4E ; N
		dc.b $BB
		dc.b $7A ; z
		dc.b $F0
		dc.b $18
		dc.b $52 ; R
		dc.b $86
		dc.b $87
		dc.b $9A
		dc.b $42 ; B
		dc.b $F0
		dc.b   3
		dc.b $4E ; N
		dc.b $75 ; u
		dc.b $60 ; `
		dc.b $EB
		dc.b $30 ; 0
		dc.b $3C ; <
		dc.b $AE
		dc.b $FC
		dc.b $16
		dc.b $BC
		dc.b $FC
		dc.b  $D
		dc.b $4C ; L
		dc.b $4E ; N
		dc.b $71 ; q
		dc.b  $D
		dc.b $8F
		dc.b $F0
		dc.b $29 ; )
		dc.b $E0
		dc.b $D2
		dc.b   0
		dc.b $FE
		dc.b $67 ; g
		dc.b $2A ; *
		dc.b $38 ; 8
		dc.b   0
		dc.b $82
		dc.b $BE
		dc.b $21 ; !
		dc.b $EE
		dc.b $A6
		dc.b $AC
		dc.b $C6
		dc.b $61 ; a
		dc.b $A4
		dc.b $3E ; >
		dc.b $A4
		dc.b $36 ; 6
		dc.b $13
		dc.b $A4
		dc.b $80
		dc.b $FF
		dc.b $E8
		dc.b   3
		dc.b $A2
		dc.b  $F
		dc.b $86
		dc.b $FC
		dc.b $70 ; p
		dc.b $FF
		dc.b   0
		dc.b $3C ; <
		dc.b $F8
		dc.b $C0
		dc.b $DE
		dc.b $CC
		dc.b $AE
		dc.b $29 ; )
		dc.b $C6
		dc.b $A2
		dc.b $FD
		dc.b   4
		dc.b $60 ; `
		dc.b $C2
		dc.b $BA
		dc.b $FC
		dc.b $B1
		dc.b $C3
		dc.b $16
		dc.b $32 ; 2
		dc.b $AE
		dc.b $D6
		dc.b $F4
		dc.b $FC
		dc.b $27 ; '
		dc.b $8C
		dc.b $FA
		dc.b $48 ; H
		dc.b $E3
		dc.b $F8
		dc.b $E7
		dc.b $FF
		dc.b $FE
		dc.b $D8
		dc.b $9E
		dc.b   8
		dc.b $1C
		dc.b   0
		dc.b   6
		dc.b $67 ; g
		dc.b $FC
		dc.b  $F
		dc.b   6
		dc.b $BE
		dc.b   0
		dc.b $4C ; L
		dc.b $DF
		dc.b $7F ; 
		dc.b $FF
		dc.b $4E ; N
		dc.b $73 ; s
		dc.b $41 ; A
		dc.b $70 ; p
		dc.b   8
		dc.b $9C
		dc.b $26 ; &
		dc.b $C0
		dc.b $50 ; P
		dc.b $D0
		dc.b $DA
		dc.b $4A ; J
		dc.b $C7
		dc.b $A1
		dc.b $BA
		dc.b   2
		dc.b $67 ; g
		dc.b   8
		dc.b $66 ; f
		dc.b   2
		dc.b   2
		dc.b $A6
		dc.b $FB
		dc.b $10
		dc.b $E2
		dc.b $F0
		dc.b $FC
		dc.b $FA
		dc.b $50 ; P
		dc.b $E0
		dc.b   3
		dc.b $F6
		dc.b   3
		dc.b $39 ; 9
		dc.b $C6
		dc.b $66 ; f
		dc.b $FA
		dc.b $94
		dc.b $5A ; Z
		dc.b $60 ; `
		dc.b $1C
		dc.b $FC
		dc.b $88
		dc.b $E3
		dc.b $F2
		dc.b $2A ; *
		dc.b $48 ; H
		dc.b  $C
		dc.b $72 ; r
		dc.b $C0
		dc.b $1C
		dc.b $85
		dc.b $61 ; a
		dc.b $42 ; B
		dc.b $98
		dc.b $FE
		dc.b $FC
		dc.b $DE
		dc.b $41 ; A
		dc.b $F8
		dc.b $60 ; `
		dc.b   8
		dc.b $D0
		dc.b   8
		dc.b $C3
		dc.b $E1
		dc.b $45 ; E
		dc.b $EA
		dc.b  $C
		dc.b $43 ; C
		dc.b $F4
		dc.b $10
		dc.b $C5
		dc.b $BF
		dc.b $24 ; $
		dc.b $D9
		dc.b $FE
		dc.b $FC
		dc.b $D2
		dc.b $20
		dc.b $70 ; p
		dc.b   3
		dc.b $22 ; "
		dc.b $D2
		dc.b $42 ; B
		dc.b $9A
		dc.b $27 ; '
		dc.b $63 ; c
		dc.b $C2
		dc.b $F1
		dc.b $FA
		dc.b   8
		dc.b $50 ; P
		dc.b $46 ; F
		dc.b $DA
		dc.b $F1
		dc.b   6
		dc.b $D2
		dc.b $38 ; 8
		dc.b $8F
		dc.b $88
		dc.b $98
		dc.b $F1
		dc.b  $E
		dc.b $66 ; f
		dc.b $F8
		dc.b  $E
		dc.b $F2
		dc.b $10
		dc.b $10
		dc.b $EA
		dc.b $F0
		dc.b   7
		dc.b $F0
		dc.b $B6
		dc.b $BE
		dc.b $FF
		dc.b $BE
		dc.b $2C ; ,
		dc.b $70 ; p
		dc.b $39 ; 9
		dc.b $42 ; B
		dc.b $58 ; X
		dc.b $92
		dc.b $F2
		dc.b $43 ; C
		dc.b $FA
		dc.b   0
		dc.b $22 ; "
		dc.b $26 ; &
		dc.b $49 ; I
		dc.b $20
		dc.b $F0
		dc.b $47 ; G
		dc.b $19
		dc.b $46 ; F
		dc.b $D0
		dc.b $8B
		dc.b $20
		dc.b $C0
		dc.b $60 ; `
		dc.b $F6
		dc.b   8
		dc.b $4C ; L
		dc.b $F8
		dc.b $C3
		dc.b   2
		dc.b $1D
		dc.b $7C ; |
		dc.b   0
		dc.b $FF
		dc.b   0
		dc.b $40 ; @
		dc.b $70 ; p
		dc.b   6
		dc.b $B8
		dc.b   1
		dc.b $C6
		dc.b $5F ; _
		dc.b $1C
		dc.b $D0
		dc.b $EF
		dc.b   2
		dc.b $E0
		dc.b $FC
		dc.b $E8
		dc.b $E8
		dc.b $E4
		dc.b $FC
		dc.b $2E ; .
		dc.b $F1
		dc.b   2
		dc.b $F0
		dc.b $FC
		dc.b $44 ; D
		dc.b $F1
		dc.b   3
		dc.b $E2
		dc.b   3
		dc.b   8
		dc.b $11
		dc.b $F2
		dc.b $40 ; @
		dc.b $40 ; @
		dc.b $6A ; j
		dc.b $1E
		dc.b $70 ; p
		dc.b $8C
		dc.b $16
		dc.b $9E
		dc.b $D6
		dc.b   8
		dc.b $D4
		dc.b $F1
		dc.b $C4
		dc.b $67 ; g
		dc.b $10
		dc.b $70 ; p
		dc.b   5
		dc.b $FE
		dc.b   1
		dc.b $F2
		dc.b $65 ; e
		dc.b   8
		dc.b $4A ; J
		dc.b   0
		dc.b $6B ; k
		dc.b   4
		dc.b $1D
		dc.b $40 ; @
		dc.b $E0
		dc.b $19
		dc.b $FB
		dc.b $86
		dc.b $AA
		dc.b $FA
		dc.b   1
		dc.b $A4
		dc.b $FE
		dc.b $30 ; 0
		dc.b $3C ; <
		dc.b   0
		dc.b $78 ; x
		dc.b $88
		dc.b   4
		dc.b $78 ; x
		dc.b $DE
		dc.b $4E ; N
		dc.b $F8
		dc.b $D6
		dc.b $43 ; C
		dc.b $18
		dc.b  $F
		dc.b $2E ; .
		dc.b $2A ; *
		dc.b $2C ; ,
		dc.b $F0
		dc.b $41 ; A
		dc.b   8
		dc.b $10
		dc.b  $F
		dc.b $78 ; x
		dc.b $5C ; \
		dc.b $66 ; f
		dc.b  $A
		dc.b $4A ; J
		dc.b $51 ; Q
		dc.b $70 ; p
		dc.b $14
		dc.b   7
		dc.b $24 ; $
		dc.b $91
		dc.b $18
		dc.b $C3
		dc.b $26 ; &
		dc.b $60 ; `
		dc.b   6
		dc.b $F2
		dc.b   2
		dc.b $F6
		dc.b $54 ; T
		dc.b   1
		dc.b   2
		dc.b $49 ; I
		dc.b $54 ; T
		dc.b $F7
		dc.b $4E ; N
		dc.b $F4
		dc.b $B2
		dc.b $C6
		dc.b $E1
		dc.b $C4
		dc.b $81
		dc.b $9E
		dc.b $22 ; "
		dc.b $47 ; G
		dc.b $D0
		dc.b $42 ; B
		dc.b $2F ; /
		dc.b $7F ; 
		dc.b $88
		dc.b  $B
		dc.b $32 ; 2
		dc.b $13
		dc.b $36 ; 6
		dc.b $D0
		dc.b $36 ; 6
		dc.b $C1
		dc.b $26 ; &
		dc.b $66 ; f
		dc.b   8
		dc.b $43 ; C
		dc.b   4
		dc.b $FC
		dc.b  $C
		dc.b $16
		dc.b $FC
		dc.b   7
		dc.b $FC
		dc.b $EC
		dc.b $F8
		dc.b $FB
		dc.b $FC
		dc.b $10
		dc.b $26 ; &
		dc.b $A8
		dc.b   0
		dc.b $14
		dc.b $26 ; &
		dc.b $5F ; _
		dc.b $5C ; \
		dc.b $F2
		dc.b   0
		dc.b $60 ; `
		dc.b $2F ; /
		dc.b $3F ; ?
		dc.b $C0
		dc.b   8
		dc.b $61 ; a
		dc.b $C8
		dc.b $20
		dc.b $5F ; _
		dc.b   8
		dc.b $90
		dc.b $45 ; E
		dc.b $2A ; *
		dc.b $30 ; 0
		dc.b $C3
		dc.b $8E
		dc.b $12
		dc.b $80
		dc.b $6A ; j
		dc.b $82
		dc.b $66 ; f
		dc.b $50 ; P
		dc.b $50 ; P
		dc.b $FD
		dc.b $14
		dc.b $12
		dc.b $4F ; O
		dc.b $7D ; }
		dc.b $3C ; <
		dc.b $6B ; k
		dc.b  $E
		dc.b   8
		dc.b $AE
		dc.b $F2
		dc.b $70 ; p
		dc.b $5A ; Z
		dc.b $E9
		dc.b   2
		dc.b $FA
		dc.b $60 ; `
		dc.b $34 ; 4
		dc.b $8C
		dc.b $FF
		dc.b $82
		dc.b   2
		dc.b $FC
		dc.b   3
		dc.b $30 ; 0
		dc.b $1B
		dc.b $34 ; 4
		dc.b $C0
		dc.b $32 ; 2
		dc.b $1B
		dc.b $1F
		dc.b $F1
		dc.b   2
		dc.b $40 ; @
		dc.b $E0
		dc.b   0
		dc.b $66 ; f
		dc.b $16
		dc.b $DE
		dc.b $40 ; @
		dc.b $67 ; g
		dc.b  $E
		dc.b $7F ; 
		dc.b   4
		dc.b $D6
		dc.b $FC
		dc.b   0
		dc.b  $A
		dc.b $34 ; 4
		dc.b $DB
		dc.b $24 ; $
		dc.b $DB
		dc.b $B2
		dc.b $62 ; b
		dc.b $DC
		dc.b   7
		dc.b $F6
		dc.b $54 ; T
		dc.b $4B ; K
		dc.b $FC
		dc.b $FC
		dc.b $4C ; L
		dc.b $DF
		dc.b   6
		dc.b   0
		dc.b $92
		dc.b $63 ; c
		dc.b   8
		dc.b $70 ; p
		dc.b $F1
		dc.b $DC
		dc.b $D6
		dc.b   7
		dc.b $34 ; 4
		dc.b $67 ; g
		dc.b   7
		dc.b $A4
		dc.b $F6
		dc.b $46 ; F
		dc.b $36 ; 6
		dc.b $7C ; |
		dc.b $58 ; X
		dc.b $20
		dc.b $24 ; $
		dc.b $78 ; x
		dc.b $FC
		dc.b $5E ; ^
		dc.b $1C
		dc.b $1C
		dc.b $30 ; 0
		dc.b $11
		dc.b $EA
		dc.b $30 ; 0
		dc.b $42 ; B
		dc.b $59 ; Y
		dc.b $32 ; 2
		dc.b $E1
		dc.b $1F
		dc.b $11
		dc.b $34 ; 4
		dc.b $9F
		dc.b $40 ; @
		dc.b   0
		dc.b $FF
		dc.b $36 ; 6
		dc.b   0
		dc.b $4A ; J
		dc.b   3
		dc.b $6B ; k
		dc.b  $E
		dc.b $DB
		dc.b $88
		dc.b $54 ; T
		dc.b  $C
		dc.b   3
		dc.b $AC
		dc.b $66 ; f
		dc.b  $C
		dc.b $88
		dc.b $F5
		dc.b   2
		dc.b $EA
		dc.b $F2
		dc.b $21 ; !
		dc.b  $C
		dc.b   4
		dc.b $43 ; C
		dc.b $3E ; >
		dc.b $6A ; j
		dc.b $F6
		dc.b $D3
		dc.b  $C
		dc.b $C3
		dc.b $E1
		dc.b $F8
		dc.b   9
		dc.b $62 ; b
		dc.b $DE
		dc.b $E0
		dc.b $D6
		dc.b $43 ; C
		dc.b $FE
		dc.b $4E ; N
		dc.b $FB
		dc.b $1F
		dc.b $C6
		dc.b $30 ; 0
		dc.b   2
		dc.b $60 ; `
		dc.b   0
		dc.b $FE
		dc.b $B2
		dc.b $FC
		dc.b   1
		dc.b $D6
		dc.b $FC
		dc.b $58 ; X
		dc.b $C7
		dc.b $DC
		dc.b $FC
		dc.b $DA
		dc.b $16
		dc.b $EC
		dc.b $CE
		dc.b $EA
		dc.b   0
		dc.b $A6
		dc.b $FC
		dc.b $F6
		dc.b $21 ; !
		dc.b $AC
		dc.b $F0
		dc.b $FD
		dc.b $A8
		dc.b $61 ; a
		dc.b $F1
		dc.b   6
		dc.b $66 ; f
		dc.b $70 ; p
		dc.b  $C
		dc.b $9C
		dc.b $96
		dc.b  $E
		dc.b $1D
		dc.b $C2
		dc.b $BE
		dc.b   2
		dc.b $BA
		dc.b $7F ; 
		dc.b $BE
		dc.b $F8
		dc.b   9
		dc.b   0
		dc.b $B4
		dc.b $63 ; c
		dc.b $8C
		dc.b $FC
		dc.b $72 ; r
		dc.b $FC
		dc.b $C2
		dc.b $FC
		dc.b $B6
		dc.b $31 ; 1
		dc.b $52 ; R
		dc.b $FC
		dc.b $9C
		dc.b $FC
		dc.b $98
		dc.b $FC
		dc.b $BA
		dc.b $90
		dc.b $8C
		dc.b $8D
		dc.b $FC
		dc.b $8C
		dc.b $FC
		dc.b $88
		dc.b $F8
		dc.b $F8
		dc.b  $A
		dc.b $44 ; D
		dc.b $31 ; 1
		dc.b $C6
		dc.b $FC
		dc.b $78 ; x
		dc.b $FC
		dc.b $3C ; <
		dc.b $FC
		dc.b $38 ; 8
		dc.b $FC
		dc.b $18
		dc.b $63 ; c
		dc.b $34 ; 4
		dc.b $FC
		dc.b $30 ; 0
		dc.b $FC
		dc.b $2C ; ,
		dc.b $FC
		dc.b $28 ; (
		dc.b $8C
		dc.b $31 ; 1
		dc.b $FC
		dc.b $24 ; $
		dc.b $FC
		dc.b $20
		dc.b $FC
		dc.b $1C
		dc.b $1E
		dc.b $9B
		dc.b $90
		dc.b $C3
		dc.b $62 ; b
		dc.b $14
		dc.b $92
		dc.b $3F ; ?
		dc.b $92
		dc.b $F8
		dc.b  $A
		dc.b $8E
		dc.b $DC
		dc.b $8F
		dc.b $AA
		dc.b $E6
		dc.b $F2
		dc.b $FE
		dc.b $46 ; F
		dc.b $72 ; r
		dc.b $F1
		dc.b $41 ; A
		dc.b $32 ; 2
		dc.b   2
		dc.b $42 ; B
		dc.b   1
		dc.b $7F ; 
		dc.b $3C ; <
		dc.b $5E ; ^
		dc.b $6A ; j
		dc.b $20
		dc.b $6E ; n
		dc.b   0
		dc.b $66 ; f
		dc.b $60 ; `
		dc.b $1A
		dc.b $FA
		dc.b $6A ; j
		dc.b $60 ; `
		dc.b $14
		dc.b $7E ; ~
		dc.b $3C ; <
		dc.b $C8
		dc.b $21 ; !
		dc.b $67 ; g
		dc.b   8
		dc.b $62 ; b
		dc.b $DA
		dc.b $F2
		dc.b $6E ; n
		dc.b $60 ; `
		dc.b   4
		dc.b $9E
		dc.b $1E
		dc.b $FA
		dc.b $72 ; r
		dc.b $D2
		dc.b $41 ; A
		dc.b $FE
		dc.b $D0
		dc.b $C1
		dc.b $4E ; N
		dc.b $D3
		dc.b $70 ; p
		dc.b $F8
		dc.b $CC
		dc.b $F0
		dc.b $7A ; z
		dc.b $35 ; 5
		dc.b $DE
		dc.b   0
		dc.b $4E ; N
		dc.b $93
		dc.b $55 ; U
		dc.b $2B ; +
		dc.b $87
		dc.b $C1
		dc.b $15
		dc.b $41 ; A
		dc.b $C4
		dc.b $E2
		dc.b $F2
		dc.b $FC
		dc.b $E6
		dc.b $76 ; v
		dc.b $DA
		dc.b $E1
		dc.b $E1
		dc.b $61 ; a
		dc.b $D2
		dc.b $F6
		dc.b $36 ; 6
		dc.b   1
		dc.b   2
		dc.b $81
		dc.b $EC
		dc.b  $F
		dc.b $FF
		dc.b $E1
		dc.b $87
		dc.b   2
		dc.b $83
		dc.b $FA
		dc.b $F0
		dc.b   0
		dc.b $E9
		dc.b $8B
		dc.b   2
		dc.b $82
		dc.b $F8
		dc.b $3F ; ?
		dc.b   4
		dc.b $FF
		dc.b   0
		dc.b $48 ; H
		dc.b $42 ; B
		dc.b $E8
		dc.b $4A ; J
		dc.b $82
		dc.b $FF
		dc.b $83
		dc.b $BA
		dc.b $D8
		dc.b   6
		dc.b $8E
		dc.b $FD
		dc.b $7A ; z
		dc.b $A6
		dc.b $F1
		dc.b $D3
		dc.b $9E
		dc.b $E1
		dc.b $9A
		dc.b $9E
		dc.b $EC
		dc.b $41 ; A
		dc.b $FA
		dc.b $9E
		dc.b $B8
		dc.b $E9
		dc.b $8F
		dc.b $72 ; r
		dc.b   1
		dc.b $EE
		dc.b $40 ; @
		dc.b $D8
		dc.b  $C
		dc.b $1B
		dc.b $3B ; ;
		dc.b $30 ; 0
		dc.b $D8
		dc.b   9
		dc.b  $F
		dc.b $C2
		dc.b $E1
		dc.b   1
		dc.b $F3
		dc.b   2
		dc.b $2D ; -
		dc.b $D9
		dc.b   3
		dc.b $30 ; 0
		dc.b $C4
		dc.b $F6
		dc.b $FC
		dc.b   4
		dc.b $EC
		dc.b $7E ; ~
		dc.b $F0
		dc.b $D9
		dc.b $42 ; B
		dc.b  $C
		dc.b $E9
		dc.b $3D ; =
		dc.b $6A ; j
		dc.b $86
		dc.b $E1
		dc.b $44 ; D
		dc.b $C2
		dc.b $E9
		dc.b   6
		dc.b $F8
		dc.b $67 ; g
		dc.b $2C ; ,
		dc.b $46 ; F
		dc.b   1
		dc.b   0
		dc.b $21 ; !
		dc.b $44 ; D
		dc.b $67 ; g
		dc.b $12
		dc.b $FA
		dc.b   3
		dc.b $FA
		dc.b $18
		dc.b $3A ; :
		dc.b  $E
		dc.b $C3
		dc.b $F4
		dc.b   5
		dc.b $27 ; '
		dc.b $24 ; $
		dc.b $10
		dc.b $E0
		dc.b $5D ; ]
		dc.b $C3
		dc.b $43 ; C
		dc.b $67 ; g
		dc.b   6
		dc.b $B0
		dc.b $FA
		dc.b $4E ; N
		dc.b $66 ; f
		dc.b $18
		dc.b   2
		dc.b $FA
		dc.b $3F ; ?
		dc.b $10
		dc.b $43 ; C
		dc.b $D4
		dc.b $46 ; F
		dc.b $E9
		dc.b $C2
		dc.b $B0
		dc.b $4E ; N
		dc.b $3E ; >
		dc.b $13
		dc.b $FC
		dc.b $22 ; "
		dc.b $E9
		dc.b $EE
		dc.b $C2
		dc.b $EE
		dc.b $70 ; p
		dc.b $19
		dc.b $60 ; `
		dc.b $16
		dc.b $70 ; p
		dc.b $86
		dc.b $F7
		dc.b $15
		dc.b   8
		dc.b $F1
		dc.b $80
		dc.b $F2
		dc.b $60 ; `
		dc.b $12
		dc.b $70 ; p
		dc.b $11
		dc.b $F6
		dc.b $FD
		dc.b   8
		dc.b $70 ; p
		dc.b   8
		dc.b $3F ; ?
		dc.b $12
		dc.b $F6
		dc.b $30 ; 0
		dc.b $3D ; =
		dc.b $42 ; B
		dc.b $AE
		dc.b   0
		dc.b $56 ; V
		dc.b $3D ; =
		dc.b   4
		dc.b $C3
		dc.b $CE
		dc.b $42 ; B
		dc.b $CC
		dc.b $BE
		dc.b $EA
		dc.b $1D
		dc.b   4
		dc.b $5D ; ]
		dc.b $8D
		dc.b $80
		dc.b $30 ; 0
		dc.b $81
		dc.b $E2
		dc.b $E9
		dc.b $22 ; "
		dc.b $44 ; D
		dc.b $2C ; ,
		dc.b $6A ; j
		dc.b $53 ; S
		dc.b $F8
		dc.b $A6
		dc.b $FC
		dc.b $8E
		dc.b $E1
		dc.b $F4
		dc.b $F8
		dc.b   9
		dc.b   6
		dc.b $E0
		dc.b $FD
		dc.b $80
		dc.b $F8
		dc.b $2D ; -
		dc.b $88
		dc.b $31 ; 1
		dc.b $6E ; n
		dc.b $56 ; V
		dc.b $B6
		dc.b $82
		dc.b $E8
		dc.b $14
		dc.b $85
		dc.b $9B
		dc.b $BE
		dc.b $2D ; -
		dc.b $BE
		dc.b $5A ; Z
		dc.b $42 ; B
		dc.b   1
		dc.b $AE
		dc.b $FC
		dc.b $20
		dc.b $67 ; g
		dc.b $87
		dc.b $B6
		dc.b $70 ; p
		dc.b   3
		dc.b $FA
		dc.b $8C
		dc.b $EA
		dc.b $22 ; "
		dc.b $3D ; =
		dc.b $D2
		dc.b $21 ; !
		dc.b $C0
		dc.b $1C
		dc.b $3D ; =
		dc.b $DE
		dc.b $1E
		dc.b $68 ; h
		dc.b $88
		dc.b  $A
		dc.b $F7
		dc.b $1F
		dc.b  $E
		dc.b $42 ; B
		dc.b $6E ; n
		dc.b  $A
		dc.b   2
		dc.b $E1
		dc.b $61 ; a
		dc.b   0
		dc.b $FC
		dc.b $90
		dc.b $4B ; K
		dc.b $F9
		dc.b   0
		dc.b  $C
		dc.b $7E ; ~
		dc.b $F0
		dc.b $26 ; &
		dc.b $3E ; >
		dc.b $2D ; -
		dc.b   3
		dc.b $2C ; ,
		dc.b $49 ; I
		dc.b $EE
		dc.b $E8
		dc.b $88
		dc.b $E2
		dc.b $3C ; <
		dc.b $14
		dc.b  $F
		dc.b $C3
		dc.b $BF
		dc.b $46 ; F
		dc.b   2
		dc.b $46 ; F
		dc.b  $F
		dc.b $12
		dc.b $1E
		dc.b   8
		dc.b $38 ; 8
		dc.b  $A
		dc.b $C6
		dc.b $1C
		dc.b $67 ; g
		dc.b $24 ; $
		dc.b $D2
		dc.b $AC
		dc.b $F6
		dc.b   9
		dc.b $F6
		dc.b $E2
		dc.b $53 ; S
		dc.b $EB
		dc.b $F6
		dc.b  $B
		dc.b $F6
		dc.b   2
		dc.b $98
		dc.b $F2
		dc.b $8E
		dc.b $88
		dc.b $D2
		dc.b $D0
		dc.b $FE
		dc.b $66 ; f
		dc.b  $B
		dc.b   6
		dc.b $34 ; 4
		dc.b   8
		dc.b $14
		dc.b $F4
		dc.b $D1
		dc.b $EE
		dc.b $F6
		dc.b $C9
		dc.b   3
		dc.b $C4
		dc.b $78 ; x
		dc.b $B3
		dc.b $4E ; N
		dc.b   1
		dc.b  $A
		dc.b $1D
		dc.b $66 ; f
		dc.b $C4
		dc.b $E9
		dc.b  $C
		dc.b $44 ; D
		dc.b $31 ; 1
		dc.b $C6
		dc.b $56 ; V
		dc.b $E9
		dc.b $16
		dc.b $CA
		dc.b $94
		dc.b $E8
		dc.b   2
		dc.b $E8
		dc.b $E8
		dc.b $FF
		dc.b   8
		dc.b $B4
		dc.b $4A ; J
		dc.b $D1
		dc.b   2
		dc.b $40 ; @
		dc.b $2B ; +
		dc.b $6E ; n
		dc.b $1A
		dc.b $FA
		dc.b   3
		dc.b $26 ; &
		dc.b $30 ; 0
		dc.b $F0
		dc.b $C3
		dc.b $14
		dc.b $2A ; *
		dc.b $F0
		dc.b $FF
		dc.b $C0
		dc.b $47 ; G
		dc.b   2
		dc.b $54 ; T
		dc.b $B8
		dc.b $81
		dc.b $8F
		dc.b $7F ; 
		dc.b $54 ; T
		dc.b $3B ; ;
		dc.b $54 ; T
		dc.b   3
		dc.b   2
		dc.b $2E ; .
		dc.b $42 ; B
		dc.b $43 ; C
		dc.b $ED
		dc.b   3
		dc.b   4
		dc.b $22 ; "
		dc.b $D8
		dc.b $E3
		dc.b $70 ; p
		dc.b $FE
		dc.b $FC
		dc.b $3B ; ;
		dc.b $4E ; N
		dc.b   3
		dc.b $2A ; *
		dc.b $CE
		dc.b   4
		dc.b $F2
		dc.b $1B
		dc.b $78 ; x
		dc.b $78 ; x
		dc.b $F6
		dc.b $11
		dc.b   3
		dc.b $10
		dc.b $2C ; ,
		dc.b $B8
		dc.b $46 ; F
		dc.b  $C
		dc.b $86
		dc.b $FF
		dc.b $84
		dc.b $17
		dc.b $FF
		dc.b $72 ; r
		dc.b $2B ; +
		dc.b $46 ; F
		dc.b   3
		dc.b   8
		dc.b $76 ; v
		dc.b $D9
		dc.b $3E ; >
		dc.b $1E
		dc.b $66 ; f
		dc.b   8
		dc.b $67 ; g
		dc.b $4C ; L
		dc.b   8
		dc.b   7
		dc.b $FA
		dc.b  $C
		dc.b  $C
		dc.b $53 ; S
		dc.b $5E ; ^
		dc.b $10
		dc.b $11
		dc.b $66 ; f
		dc.b $1A
		dc.b   8
		dc.b $D4
		dc.b $B6
		dc.b $E9
		dc.b $E8
		dc.b $F4
		dc.b $D9
		dc.b $93
		dc.b   8
		dc.b $8E
		dc.b  $E
		dc.b $EC
		dc.b $62 ; b
		dc.b $F3
		dc.b $F2
		dc.b $7C ; |
		dc.b $90
		dc.b $EA
		dc.b $F2
		dc.b  $C
		dc.b   8
		dc.b $94
		dc.b $F2
		dc.b $E2
		dc.b $DA
		dc.b $C8
		dc.b $A1
		dc.b $EE
		dc.b $D2
		dc.b $F4
		dc.b $FC
		dc.b   8
		dc.b $ED
		dc.b $99
		dc.b   3
		dc.b $84
		dc.b $21 ; !
		dc.b $94
		dc.b $D2
		dc.b $B4
		dc.b $C8
		dc.b $20
		dc.b $B4
		dc.b $14
		dc.b $26 ; &
		dc.b   6
		dc.b $EC
		dc.b   2
		dc.b $EC
		dc.b $A6
		dc.b $BA
		dc.b  $F
		dc.b $77 ; w
		dc.b $DE
		dc.b $FD
		dc.b $10
		dc.b $13
		dc.b   2
		dc.b $CF
		dc.b $70 ; p
		dc.b $66 ; f
		dc.b $16
		dc.b $D4
		dc.b $D2
		dc.b $6B ; k
		dc.b $30 ; 0
		dc.b $61 ; a
		dc.b  $C
		dc.b   6
		dc.b $F2
		dc.b $5A ; Z
		dc.b $66 ; f
		dc.b $28 ; (
		dc.b $E2
		dc.b   5
		dc.b $1B
		dc.b $ED
		dc.b $E2
		dc.b $60 ; `
		dc.b $22 ; "
		dc.b $A7
		dc.b $F1
		dc.b $10
		dc.b $C6
		dc.b $EA
		dc.b $FC
		dc.b $12
		dc.b $EA
		dc.b $FC
		dc.b $42 ; B
		dc.b  $C
		dc.b $68 ; h
		dc.b $AD
		dc.b $6C ; l
		dc.b $98
		dc.b $EC
		dc.b $C2
		dc.b $D3
		dc.b   3
		dc.b $38 ; 8
		dc.b  $C
		dc.b $F8
		dc.b $74 ; t
		dc.b   0
		dc.b $14
		dc.b $C0
		dc.b $50 ; P
		dc.b $16
		dc.b $C3
		dc.b $E1
		dc.b $FC
		dc.b $51 ; Q
		dc.b $45 ; E
		dc.b $DC
		dc.b   0
		dc.b $32 ; 2
		dc.b   2
		dc.b $1A
		dc.b $FD
		dc.b $FC
		dc.b   7
		dc.b $FF
		dc.b $38 ; 8
		dc.b   1
		dc.b $4A ; J
		dc.b   4
		dc.b $26 ; &
		dc.b $68 ; h
		dc.b $E9
		dc.b $80
		dc.b $24 ; $
		dc.b $C0
		dc.b $28 ; (
		dc.b   0
		dc.b $B4
		dc.b $CF
		dc.b $1F
		dc.b   3
		dc.b $67 ; g
		dc.b $16
		dc.b $52 ; R
		dc.b $42 ; B
		dc.b $E6
		dc.b $E2
		dc.b $2A ; *
		dc.b   0
		dc.b $C9
		dc.b $41 ; A
		dc.b $FE
		dc.b $C3
		dc.b $F8
		dc.b   5
		dc.b $84
		dc.b $34 ; 4
		dc.b $C0
		dc.b $20
		dc.b   5
		dc.b $60 ; `
		dc.b $DA
		dc.b $20
		dc.b $CA
		dc.b $52 ; R
		dc.b  $E
		dc.b $73 ; s
		dc.b $22 ; "
		dc.b $74 ; t
		dc.b $F1
		dc.b   5
		dc.b $74 ; t
		dc.b $F0
		dc.b $42 ; B
		dc.b $9A
		dc.b $4C ; L
		dc.b  $A
		dc.b $58 ; X
		dc.b $F8
		dc.b $14
		dc.b $4A ; J
		dc.b $13
		dc.b $72 ; r
		dc.b $F1
		dc.b $24 ; $
		dc.b   2
		dc.b $42 ; B
		dc.b $2E ; .
		dc.b  $A
		dc.b $A4
		dc.b $C6
		dc.b $10
		dc.b $4C ; L
		dc.b $38 ; 8
		dc.b $E9
		dc.b $EC
		dc.b $F1
		dc.b $44 ; D
		dc.b $E9
		dc.b $1E
		dc.b $E0
		dc.b $23 ; #
		dc.b $3E ; >
		dc.b   9
		dc.b $67 ; g
		dc.b $18
		dc.b $14
		dc.b $B4
		dc.b   3
		dc.b $2A ; *
		dc.b $1D
		dc.b $41 ; A
		dc.b $20
		dc.b $98
		dc.b $E0
		dc.b $EE
		dc.b $A2
		dc.b $E8
		dc.b $F2
		dc.b   5
		dc.b $51 ; Q
		dc.b $9C
		dc.b $6E ; n
		dc.b $E0
		dc.b $C6
		dc.b $F1
		dc.b $BA
		dc.b $67 ; g
		dc.b   8
		dc.b $1E
		dc.b $20
		dc.b $C8
		dc.b $66 ; f
		dc.b $18
		dc.b $60 ; `
		dc.b   6
		dc.b $F8
		dc.b $79 ; y
		dc.b $66 ; f
		dc.b $80
		dc.b $18
		dc.b $D8
		dc.b $B0
		dc.b   0
		dc.b $FB
		dc.b $BA
		dc.b   4
		dc.b $1D
		dc.b $25 ; %
		dc.b $C0
		dc.b $E0
		dc.b $F4
		dc.b  $B
		dc.b $66 ; f
		dc.b $A8
		dc.b $E0
		dc.b $E1
		dc.b $E2
		dc.b $89
		dc.b $11
		dc.b $64 ; d
		dc.b $C1
		dc.b $F4
		dc.b $E2
		dc.b $F4
		dc.b $4F ; O
		dc.b   8
		dc.b $E2
		dc.b  $F
		dc.b $67 ; g
		dc.b $5C ; \
		dc.b $DC
		dc.b $A2
		dc.b $FF
		dc.b $37 ; 7
		dc.b $FA
		dc.b  $C
		dc.b $67 ; g
		dc.b $50 ; P
		dc.b  $C
		dc.b $6E ; n
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b $46 ; F
		dc.b $67 ; g
		dc.b $48 ; H
		dc.b   8
		dc.b $F1
		dc.b $B0
		dc.b $FE
		dc.b $70 ; p
		dc.b $36 ; 6
		dc.b $18
		dc.b $43 ; C
		dc.b $EE
		dc.b  $A
		dc.b $22 ; "
		dc.b $45 ; E
		dc.b $FC
		dc.b $26 ; &
		dc.b $48 ; H
		dc.b $40 ; @
		dc.b $F8
		dc.b $C7
		dc.b $44 ; D
		dc.b $72 ; r
		dc.b   0
		dc.b $12
		dc.b $2D ; -
		dc.b   3
		dc.b $2F ; /
		dc.b $32 ; 2
		dc.b $81
		dc.b $36 ; 6
		dc.b $7B ; {
		dc.b  $A
		dc.b   8
		dc.b $30 ; 0
		dc.b $11
		dc.b $B6
		dc.b $E1
		dc.b $46 ; F
		dc.b $64 ; d
		dc.b $20
		dc.b $66 ; f
		dc.b $66 ; f
		dc.b $DE
		dc.b $C0
		dc.b $D4
		dc.b $B0
		dc.b $E9
		dc.b   2
		dc.b $92
		dc.b $4A ; J
		dc.b $8C
		dc.b $D1
		dc.b   2
		dc.b $68 ; h
		dc.b $64 ; d
		dc.b $BE
		dc.b $5A ; Z
		dc.b $4A ; J
		dc.b $9A
		dc.b $D9
		dc.b $C6
		dc.b $9C
		dc.b   1
		dc.b $67 ; g
		dc.b $3C ; <
		dc.b $C3
		dc.b $E1
		dc.b $A8
		dc.b $FD
		dc.b $34 ; 4
		dc.b $20
		dc.b $BE
		dc.b $38 ; 8
		dc.b $B0
		dc.b $AE
		dc.b $F6
		dc.b $62 ; b
		dc.b $2A ; *
		dc.b $4D ; M
		dc.b $1F
		dc.b   6
		dc.b $80
		dc.b $30 ; 0
		dc.b $D1
		dc.b   0
		dc.b $F4
		dc.b $63 ; c
		dc.b $1E
		dc.b $70 ; p
		dc.b   0
		dc.b $10
		dc.b $62 ; b
		dc.b $8C
		dc.b $E8
		dc.b $37 ; 7
		dc.b $BC
		dc.b $36 ; 6
		dc.b $FC
		dc.b $38 ; 8
		dc.b $1F
		dc.b $5B ; [
		dc.b $DC
		dc.b $34 ; 4
		dc.b $10
		dc.b   1
		dc.b $22 ; "
		dc.b   0
		dc.b $F8
		dc.b $3C ; <
		dc.b   0
		dc.b $E9
		dc.b $BC
		dc.b $E0
		dc.b $EB
		dc.b $85
		dc.b $EB
		dc.b $6E ; n
		dc.b $E9
		dc.b $C2
		dc.b $B9
		dc.b $B4
		dc.b   4
		dc.b $67 ; g
		dc.b $12
		dc.b $2C ; ,
		dc.b $FC
		dc.b $DA
		dc.b $F3
		dc.b   6
		dc.b $17
		dc.b $50 ; P
		dc.b $53 ; S
		dc.b $6E ; n
		dc.b  $A
		dc.b $1A
		dc.b $B4
		dc.b $C9
		dc.b $BA
		dc.b $E0
		dc.b $CE
		dc.b $E1
		dc.b $B8
		dc.b $80
		dc.b $82
		dc.b $ED
		dc.b   0
		dc.b   7
		dc.b $E8
		dc.b $EB
		dc.b $EE
		dc.b $73 ; s
		dc.b   6
		dc.b $7A ; z
		dc.b $67 ; g
		dc.b $36 ; 6
		dc.b $CE
		dc.b $30 ; 0
		dc.b $CE
		dc.b $C2
		dc.b   1
		dc.b $11
		dc.b $46 ; F
		dc.b $F1
		dc.b   4
		dc.b $60 ; `
		dc.b $D4
		dc.b $87
		dc.b $FB
		dc.b $90
		dc.b $31 ; 1
		dc.b $32 ; 2
		dc.b $F7
		dc.b $41 ; A
		dc.b   0
		dc.b  $F
		dc.b $F8
		dc.b $C9
		dc.b $F0
		dc.b $E6
		dc.b $40 ; @
		dc.b $61 ; a
		dc.b $3C ; <
		dc.b $C0
		dc.b $FC
		dc.b $D0
		dc.b $D0
		dc.b $41 ; A
		dc.b $FA
		dc.b $3C ; <
		dc.b $3D ; =
		dc.b $40 ; @
		dc.b $68 ; h
		dc.b $BB
		dc.b $BA
		dc.b $8E
		dc.b $FE
		dc.b $E4
		dc.b $E1
		dc.b $80
		dc.b $E4
		dc.b $E7
		dc.b $78 ; x
		dc.b $D0
		dc.b $E6
		dc.b   1
		dc.b $4C ; L
		dc.b $38 ; 8
		dc.b $FE
		dc.b $BA
		dc.b $E1
		dc.b  $A
		dc.b   0
		dc.b $6E ; n
		dc.b $F8
		dc.b   1
		dc.b $66 ; f
		dc.b $5C ; \
		dc.b $10
		dc.b $13
		dc.b $25 ; %
		dc.b $5C ; \
		dc.b $6B ; k
		dc.b $58 ; X
		dc.b $40 ; @
		dc.b $F3
		dc.b $98
		dc.b $E8
		dc.b   1
		dc.b $20
		dc.b $FC
		dc.b $F4
		dc.b   7
		dc.b $E8
		dc.b $C0
		dc.b $E1
		dc.b $7E ; ~
		dc.b $4A ; J
		dc.b   4
		dc.b $FA
		dc.b   6
		dc.b $F2
		dc.b $F2
		dc.b $30 ; 0
		dc.b $F0
		dc.b $50 ; P
		dc.b   7
		dc.b $96
		dc.b $40 ; @
		dc.b  $C
		dc.b $66 ; f
		dc.b   6
		dc.b $EA
		dc.b $FB
		dc.b $B0
		dc.b $B9
		dc.b $EC
		dc.b $94
		dc.b $FA
		dc.b $9C
		dc.b $52 ; R
		dc.b $CB
		dc.b $24 ; $
		dc.b $67 ; g
		dc.b $D8
		dc.b $56 ; V
		dc.b $AC
		dc.b $10
		dc.b $DE
		dc.b $68 ; h
		dc.b $E1
		dc.b $DC
		dc.b $C6
		dc.b $FC
		dc.b $D4
		dc.b $FD
		dc.b $DC
		dc.b $78 ; x
		dc.b $5E ; ^
		dc.b $2B ; +
		dc.b $DC
		dc.b $1D
		dc.b $6E ; n
		dc.b   0
		dc.b $5D ; ]
		dc.b $DE
		dc.b $EC
		dc.b $48 ; H
		dc.b $F1
		dc.b $54 ; T
		dc.b $5E ; ^
		dc.b $BA
		dc.b $BE
		dc.b $E3
		dc.b $78 ; x
		dc.b $48 ; H
		dc.b $E2
		dc.b $96
		dc.b $E1
		dc.b   1
		dc.b  $C
		dc.b $34 ; 4
		dc.b $D6
		dc.b $42 ; B
		dc.b $E3
		dc.b $40 ; @
		dc.b $D6
		dc.b   0
		dc.b $82
		dc.b $F2
		dc.b $42 ; B
		dc.b $B2
		dc.b $DE
		dc.b $D8
		dc.b   5
		dc.b $5D ; ]
		dc.b $B4
		dc.b $66 ; f
		dc.b $62 ; b
		dc.b $B1
		dc.b   0
		dc.b $EE
		dc.b $7A ; z
		dc.b $F4
		dc.b $EB
		dc.b $C7
		dc.b $B6
		dc.b $68 ; h
		dc.b $FC
		dc.b   0
		dc.b $88
		dc.b $EC
		dc.b $EC
		dc.b $96
		dc.b $FD
		dc.b $72 ; r
		dc.b $9C
		dc.b $FD
		dc.b $22 ; "
		dc.b $10
		dc.b $B3
		dc.b $5E ; ^
		dc.b $F3
		dc.b $F8
		dc.b  $A
		dc.b $E4
		dc.b $BE
		dc.b $D0
		dc.b $60 ; `
		dc.b $2E ; .
		dc.b $CC
		dc.b $F2
		dc.b $D2
		dc.b $F0
		dc.b $B2
		dc.b $C0
		dc.b $D4
		dc.b $46 ; F
		dc.b $C6
		dc.b $BA
		dc.b $28 ; (
		dc.b $C2
		dc.b $AB
		dc.b $D0
		dc.b $FC
		dc.b $70 ; p
		dc.b $E1
		dc.b  $C
		dc.b $C0
		dc.b $FA
		dc.b $B0
		dc.b $B1
		dc.b $DE
		dc.b $A8
		dc.b $FA
		dc.b $C2
		dc.b $F4
		dc.b $FD
		dc.b $C8
		dc.b $F4
		dc.b $BA
		dc.b $17
		dc.b $A7
		dc.b $A2
		dc.b $F1
		dc.b   6
		dc.b   3
		dc.b   1
		dc.b $D4
		dc.b $F8
		dc.b  $C
		dc.b $14
		dc.b $FA
		dc.b $9E
		dc.b $1A
		dc.b $A8
		dc.b $8B
		dc.b $FA
		dc.b $14
		dc.b $82
		dc.b $F3
		dc.b $86
		dc.b $C9
		dc.b $FB
		dc.b $14
		dc.b  $A
		dc.b $EA
		dc.b $C5
		dc.b $73 ; s
		dc.b $F2
		dc.b   3
		dc.b $58 ; X
		dc.b $F2
		dc.b $E4
		dc.b $D4
		dc.b $65 ; e
		dc.b $1C
		dc.b $7E ; ~
		dc.b   8
		dc.b $A3
		dc.b $58 ; X
		dc.b $78 ; x
		dc.b $EB
		dc.b  $A
		dc.b $D6
		dc.b $58 ; X
		dc.b $E9
		dc.b $E8
		dc.b $A4
		dc.b  $E
		dc.b $C2
		dc.b $AD
		dc.b $E0
		dc.b $F8
		dc.b $DB
		dc.b $7E ; ~
		dc.b $F4
		dc.b $14
		dc.b $DA
		dc.b $E9
		dc.b $30 ; 0
		dc.b $D1
		dc.b $7E ; ~
		dc.b $2A ; *
		dc.b $D1
		dc.b $51 ; Q
		dc.b $DA
		dc.b $87
		dc.b $62 ; b
		dc.b $24 ; $
		dc.b $D1
		dc.b $EA
		dc.b $F2
		dc.b $B0
		dc.b $56 ; V
		dc.b $E1
		dc.b $3B ; ;
		dc.b $40 ; @
		dc.b   4
		dc.b $64 ; d
		dc.b $FA
		dc.b $E1
		dc.b $6F ; o
		dc.b $32 ; 2
		dc.b $2D ; -
		dc.b $FA
		dc.b   6
		dc.b $41 ; A
		dc.b   4
		dc.b $68 ; h
		dc.b $12
		dc.b $35 ; 5
		dc.b $10
		dc.b $28 ; (
		dc.b $F2
		dc.b $FF
		dc.b $98
		dc.b  $F
		dc.b $EE
		dc.b $2F ; /
		dc.b   9
		dc.b $36 ; 6
		dc.b $1E
		dc.b $43 ; C
		dc.b $ED
		dc.b $FF
		dc.b   1
		dc.b $E6
		dc.b $52 ; R
		dc.b $51 ; Q
		dc.b $32 ; 2
		dc.b $11
		dc.b $B2
		dc.b $6D ; m
		dc.b   4
		dc.b $66 ; f
		dc.b $65 ; e
		dc.b $82
		dc.b $C2
		dc.b $FF
		dc.b $EC
		dc.b  $D
		dc.b $66 ; f
		dc.b $42 ; B
		dc.b $51 ; Q
		dc.b $72 ; r
		dc.b   0
		dc.b $60 ; `
		dc.b   8
		dc.b $53 ; S
		dc.b $41 ; A
		dc.b $32 ; 2
		dc.b $F8
		dc.b  $B
		dc.b $81
		dc.b $F8
		dc.b   4
		dc.b $12
		dc.b $31 ; 1
		dc.b $10
		dc.b   4
		dc.b $22 ; "
		dc.b $54 ; T
		dc.b $B9
		dc.b $C4
		dc.b $2F ; /
		dc.b $CE
		dc.b $D4
		dc.b $CA
		dc.b $18
		dc.b $53 ; S
		dc.b $51 ; Q
		dc.b $6A ; j
		dc.b $9C
		dc.b $EA
		dc.b $1C
		dc.b   0
		dc.b $D4
		dc.b  $E
		dc.b $32 ; 2
		dc.b $AD
		dc.b $C8
		dc.b $F2
		dc.b   8
		dc.b   0
		dc.b $C0
		dc.b $DA
		dc.b $D4
		dc.b $D0
		dc.b $28 ; (
		dc.b $1E
		dc.b $CC
		dc.b $D4
		dc.b $30 ; 0
		dc.b $90
		dc.b $52 ; R
		dc.b $40 ; @
		dc.b $B0
		dc.b $B5
		dc.b   7
		dc.b $AC
		dc.b $92
		dc.b $EB
		dc.b $DC
		dc.b $D9
		dc.b $67 ; g
		dc.b $E6
		dc.b $C1
		dc.b $78 ; x
		dc.b   0
		dc.b $7C ; |
		dc.b $5A ; Z
		dc.b $A1
		dc.b $31 ; 1
		dc.b $8E
		dc.b $DC
		dc.b $43 ; C
		dc.b $2C ; ,
		dc.b $16
		dc.b $E3
		dc.b $6A ; j
		dc.b $FA
		dc.b   7
		dc.b $F8
		dc.b $D7
		dc.b $BA
		dc.b $60 ; `
		dc.b $F1
		dc.b $9C
		dc.b $3C ; <
		dc.b $11
		dc.b $38 ; 8
		dc.b $2D ; -
		dc.b   3
		dc.b $FE
		dc.b $E8
		dc.b $E1
		dc.b $3C ; <
		dc.b $EA
		dc.b $FD
		dc.b $A5
		dc.b   6
		dc.b $67 ; g
		dc.b $5C ; \
		dc.b $F1
		dc.b $FF
		dc.b $4A ; J
		dc.b $38 ; 8
		dc.b   1
		dc.b $7A ; z
		dc.b   0
		dc.b $D0
		dc.b $F5
		dc.b $DC
		dc.b   0
		dc.b $1B
		dc.b $88
		dc.b $C0
		dc.b $DA
		dc.b $48 ; H
		dc.b $46 ; F
		dc.b $4A ; J
		dc.b $F1
		dc.b $DA
		dc.b  $E
		dc.b $30 ; 0
		dc.b $F2
		dc.b $F9
		dc.b $98
		dc.b $2C ; ,
		dc.b $62 ; b
		dc.b $F6
		dc.b $CC
		dc.b $18
		dc.b $56 ; V
		dc.b $88
		dc.b  $E
		dc.b $3C ; <
		dc.b $BA
		dc.b $D9
		dc.b $D8
		dc.b $FD
		dc.b $EE
		dc.b $D2
		dc.b $E1
		dc.b  $D
		dc.b $D6
		dc.b $58 ; X
		dc.b $D8
		dc.b $3D ; =
		dc.b $46 ; F
		dc.b  $A
		dc.b $1E
		dc.b  $A
		dc.b $E9
		dc.b $20
		dc.b $A0
		dc.b $3D ; =
		dc.b $AA
		dc.b $7A ; z
		dc.b $C0
		dc.b $BA
		dc.b $D6
		dc.b $F5
		dc.b $18
		dc.b $FE
		dc.b $DB
		dc.b $2A ; *
		dc.b $60 ; `
		dc.b $3A ; :
		dc.b $1C
		dc.b $86
		dc.b $C8
		dc.b  $A
		dc.b $11
		dc.b $2C ; ,
		dc.b $FC
		dc.b $12
		dc.b $2A ; *
		dc.b $FC
		dc.b $58 ; X
		dc.b $80
		dc.b $16
		dc.b $E0
		dc.b $84
		dc.b $E6
		dc.b $B2
		dc.b $58 ; X
		dc.b $90
		dc.b $E1
		dc.b $B1
		dc.b $2D ; -
		dc.b $45 ; E
		dc.b $F0
		dc.b $2B ; +
		dc.b $45 ; E
		dc.b   3
		dc.b  $C
		dc.b $A8
		dc.b $5D ; ]
		dc.b $AA
		dc.b $F1
		dc.b $9C
		dc.b $BA
		dc.b $E8
		dc.b $FC
		dc.b $3C ; <
		dc.b $EB
		dc.b $B6
		dc.b $D9
		dc.b $98
		dc.b $E9
		dc.b $C6
		dc.b $E6
		dc.b $4E ; N
		dc.b  $C
		dc.b $30 ; 0
		dc.b $C1
		dc.b   4
		dc.b $61 ; a
		dc.b $66 ; f
		dc.b   4
		dc.b $BC
		dc.b $C0
		dc.b   0
		dc.b  $B
		dc.b $E4
		dc.b $4A ; J
		dc.b  $C
		dc.b $85
		dc.b $36 ; 6
		dc.b $D2
		dc.b $F0
		dc.b $B4
		dc.b $78 ; x
		dc.b $FD
		dc.b $22 ; "
		dc.b $BD
		dc.b $3D ; =
		dc.b  $C
		dc.b $2D ; -
		dc.b $8E
		dc.b $D1
		dc.b $2E ; .
		dc.b $67 ; g
		dc.b $1A
		dc.b $D4
		dc.b $E9
		dc.b $D0
		dc.b $DA
		dc.b $DB
		dc.b $45 ; E
		dc.b $34 ; 4
		dc.b $C5
		dc.b $60 ; `
		dc.b   5
		dc.b $FC
		dc.b $F2
		dc.b $E8
		dc.b $3A ; :
		dc.b $FD
		dc.b $FC
		dc.b $C8
		dc.b  $A
		dc.b $C6
		dc.b  $A
		dc.b $A0
		dc.b $76 ; v
		dc.b $2D ; -
		dc.b $4E ; N
		dc.b $FC
		dc.b $82
		dc.b $FD
		dc.b $F7
		dc.b  $F
		dc.b  $A
		dc.b $E3
		dc.b $2E ; .
		dc.b $E5
		dc.b $40 ; @
		dc.b $1E
		dc.b $A1
		dc.b  $C
		dc.b $3B ; ;
		dc.b $46 ; F
		dc.b   3
		dc.b $24 ; $
		dc.b $1D
		dc.b $44 ; D
		dc.b $C6
		dc.b $1E
		dc.b $96
		dc.b $C4
		dc.b $9B
		dc.b  $E
		dc.b $FC
		dc.b  $C
		dc.b $FC
		dc.b $FD
		dc.b $28 ; (
		dc.b $2C ; ,
		dc.b   5
		dc.b $C0
		dc.b $BD
		dc.b $B8
		dc.b $EA
		dc.b $84
		dc.b $D9
		dc.b   4
		dc.b $B2
		dc.b $FA
		dc.b $F1
		dc.b $67 ; g
		dc.b $10
		dc.b $52 ; R
		dc.b $87
		dc.b $5B ; [
		dc.b $A6
		dc.b $D1
		dc.b $F8
		dc.b $80
		dc.b $4A ; J
		dc.b $56 ; V
		dc.b   2
		dc.b $60 ; `
		dc.b $1A
		dc.b $F6
		dc.b $99
		dc.b $71 ; q
		dc.b $A2
		dc.b $D2
		dc.b $A0
		dc.b $10
		dc.b $98
		dc.b $FA
		dc.b $32 ; 2
		dc.b $6A ; j
		dc.b $41 ; A
		dc.b $C3
		dc.b $DF
		dc.b $6A ; j
		dc.b   4
		dc.b $F4
		dc.b  $A
		dc.b $1E
		dc.b $22 ; "
		dc.b   6
		dc.b $61 ; a
		dc.b   4
		dc.b $3C ; <
		dc.b $E4
		dc.b $E9
		dc.b $FA
		dc.b $FF
		dc.b $41 ; A
		dc.b $40 ; @
		dc.b $D9
		dc.b $3C ; <
		dc.b $D9
		dc.b $26 ; &
		dc.b $20
		dc.b $C0
		dc.b $22 ; "
		dc.b $C1
		dc.b $53 ; S
		dc.b $48 ; H
		dc.b $53 ; S
		dc.b $49 ; I
		dc.b $44 ; D
		dc.b $FC
		dc.b $87
		dc.b $FF
		dc.b   0
		dc.b   4
		dc.b $81
		dc.b   9
		dc.b $FE
		dc.b $40 ; @
		dc.b $E7
		dc.b $64 ; d
		dc.b   4
		dc.b   4
		dc.b $10
		dc.b   0
		dc.b $40 ; @
		dc.b $A1
		dc.b $1D
		dc.b $46 ; F
		dc.b $DF
		dc.b $F4
		dc.b $30 ; 0
		dc.b $B8
		dc.b $E9
		dc.b $30 ; 0
		dc.b $68 ; h
		dc.b $F1
		dc.b $41 ; A
		dc.b $ED
		dc.b $F6
		dc.b $62 ; b
		dc.b  $F
		dc.b $60 ; `
		dc.b  $E
		dc.b $28 ; (
		dc.b $F1
		dc.b $66 ; f
		dc.b $60 ; `
		dc.b   4
		dc.b $22 ; "
		dc.b $F2
		dc.b $F0
		dc.b $68 ; h
		dc.b $7F ; 
		dc.b $1C
		dc.b   0
		dc.b $DA
		dc.b $42 ; B
		dc.b $51 ; Q
		dc.b $53 ; S
		dc.b $40 ; @
		dc.b $6B ; k
		dc.b $12
		dc.b $7E ; ~
		dc.b $18
		dc.b $C2
		dc.b  $E
		dc.b $1B
		dc.b $C2
		dc.b   6
		dc.b $45 ; E
		dc.b $F5
		dc.b $C9
		dc.b $61 ; a
		dc.b   6
		dc.b $F4
		dc.b $A1
		dc.b $F0
		dc.b $FE
		dc.b $E1
		dc.b $CA
		dc.b $54 ; T
		dc.b $49 ; I
		dc.b $C3
		dc.b  $A
		dc.b $65 ; e
		dc.b $18
		dc.b  $C
		dc.b $11
		dc.b $C9
		dc.b $65 ; e
		dc.b $1A
		dc.b $C3
		dc.b $7F ; 
		dc.b $48 ; H
		dc.b $E7
		dc.b $C0
		dc.b $30 ; 0
		dc.b $11
		dc.b $72 ; r
		dc.b $40 ; @
		dc.b $C1
		dc.b   1
		dc.b $12
		dc.b $80
		dc.b $4C ; L
		dc.b $DF
		dc.b $43 ; C
		dc.b $40 ; @
		dc.b $64 ; d
		dc.b $A9
		dc.b   8
		dc.b $9C
		dc.b   6
		dc.b $E6
		dc.b $9E
		dc.b $70 ; p
		dc.b $D2
		dc.b $DC
		dc.b $18
		dc.b $EA
		dc.b $F8
		dc.b $1C
		dc.b $52 ; R
		dc.b $FE
		dc.b $F8
		dc.b $18
		dc.b $E8
		dc.b $9A
		dc.b $3F ; ?
		dc.b $38 ; 8
		dc.b $30 ; 0
		dc.b $32 ; 2
		dc.b $10
		dc.b $67 ; g
		dc.b  $C
		dc.b $42 ; B
		dc.b $58 ; X
		dc.b $70 ; p
		dc.b $84
		dc.b $B2
		dc.b $4E ; N
		dc.b $FB
		dc.b $D8
		dc.b $E1
		dc.b $98
		dc.b $F2
		dc.b $F2
		dc.b $F3
		dc.b  $E
		dc.b $B1
		dc.b   7
		dc.b $80
		dc.b $FC
		dc.b $FF
		dc.b $F4
		dc.b $87
		dc.b $15
		dc.b $4D ; M
		dc.b $FA
		dc.b $1C
		dc.b $B4
		dc.b $B8
		dc.b $F3
		dc.b $76 ; v
		dc.b $A6
		dc.b $9B
		dc.b $92
		dc.b $C9
		dc.b $5D ; ]
		dc.b $87
		dc.b $F8
		dc.b $3C ; <
		dc.b $91
		dc.b $66 ; f
		dc.b  $E
		dc.b $34 ; 4
		dc.b $94
		dc.b $F2
		dc.b $FC
		dc.b $67 ; g
		dc.b $F8
		dc.b $DE
		dc.b $BE
		dc.b $E0
		dc.b $F4
		dc.b $72 ; r
		dc.b $D1
		dc.b $F4
		dc.b $F8
		dc.b $4A ; J
		dc.b $39 ; 9
		dc.b $66 ; f
		dc.b $C9
		dc.b $F0
		dc.b $88
		dc.b $C9
		dc.b $F7
		dc.b $76 ; v
		dc.b $E8
		dc.b $BC
		dc.b $98
		dc.b $E9
		dc.b $A2
		dc.b $CA
		dc.b $FD
		dc.b $20
		dc.b   8
		dc.b $E8
		dc.b   1
		dc.b $92
		dc.b $91
		dc.b  $E
		dc.b $85
		dc.b $AE
		dc.b $66 ; f
		dc.b $EE
		dc.b $CE
		dc.b $FD
		dc.b $C0
		dc.b $B8
		dc.b $C0
		dc.b $F8
		dc.b   9
		dc.b $66 ; f
		dc.b $F8
		dc.b $40 ; @
		dc.b $9B
		dc.b $DA
		dc.b $8A
		dc.b $DE
		dc.b $8A
		dc.b $E2
		dc.b $F8
		dc.b $14
		dc.b $26 ; &
		dc.b $B9
		dc.b $8E
		dc.b $AC
		dc.b $F1
		dc.b $74 ; t
		dc.b $FE
		dc.b $9A
		dc.b $3E ; >
		dc.b $B5
		dc.b $FE
		dc.b $FF
		dc.b $F6
		dc.b $B8
		dc.b $89
		dc.b  $C
		dc.b $E0
		dc.b $80
		dc.b $42 ; B
		dc.b $A8
		dc.b   0
		dc.b $7C ; |
		dc.b $20
		dc.b $BC
		dc.b   0
		dc.b  $A
		dc.b $FF
		dc.b $FC
		dc.b $15
		dc.b $5F ; _
		dc.b $11
		dc.b $7C ; |
		dc.b $24 ; $
		dc.b $D1
		dc.b $D6
		dc.b $E1
		dc.b $D6
		dc.b $4E ; N
		dc.b $70 ; p
		dc.b $12
		dc.b $30 ; 0
		dc.b $A6
		dc.b $8B
		dc.b $F2
		dc.b $C2
		dc.b $DC
		dc.b $49 ; I
		dc.b $A9
		dc.b $3C ; <
		dc.b $35 ; 5
		dc.b $FF
		dc.b $96
		dc.b $8C
		dc.b $6C ; l
		dc.b   7
		dc.b $68 ; h
		dc.b $F1
		dc.b $C2
		dc.b $64 ; d
		dc.b $8E
		dc.b $B9
		dc.b $F2
		dc.b $5C ; \
		dc.b $91
		dc.b $FA
		dc.b $5A ; Z
		dc.b $61 ; a
		dc.b $18
		dc.b $F7
		dc.b $86
		dc.b $FA
		dc.b $6A ; j
		dc.b $FC
		dc.b $D6
		dc.b $66 ; f
		dc.b   8
		dc.b $D1
		dc.b $F2
		dc.b $4A ; J
		dc.b $F6
		dc.b $FD
		dc.b $66 ; f
		dc.b $F2
		dc.b $C9
		dc.b   6
		dc.b $40 ; @
		dc.b $B9
		dc.b   4
		dc.b $B8
		dc.b $67 ; g
		dc.b $E6
		dc.b  $A
		dc.b $C3
		dc.b $66 ; f
		dc.b $67 ; g
		dc.b $10
		dc.b $7E ; ~
		dc.b $1B
		dc.b $5D ; ]
		dc.b   0
		dc.b $7A ; z
		dc.b   0
		dc.b   4
		dc.b $E9
		dc.b $18
		dc.b $F8
		dc.b $60 ; `
		dc.b $BA
		dc.b $46 ; F
		dc.b $47 ; G
		dc.b $C8
		dc.b $B1
		dc.b $8C
		dc.b $FF
		dc.b $9A
		dc.b $2A ; *
		dc.b $74 ; t
		dc.b $92
		dc.b $4E ; N
		dc.b $93
		dc.b $65 ; e
		dc.b $BE
		dc.b $61 ; a
		dc.b $12
		dc.b $31 ; 1
		dc.b $61 ; a
		dc.b $60 ; `
		dc.b $CE
		dc.b $F4
		dc.b $90
		dc.b $6A ; j
		dc.b $9E
		dc.b $6A ; j
		dc.b $FF
		dc.b   3
		dc.b $50 ; P
		dc.b $A1
		dc.b $86
		dc.b $10
		dc.b $18
		dc.b $66 ; f
		dc.b   6
		dc.b $52 ; R
		dc.b $AE
		dc.b  $A
		dc.b $68 ; h
		dc.b $9A
		dc.b $C6
		dc.b $C6
		dc.b $FA
		dc.b $70 ; p
		dc.b $7B ; {
		dc.b   8
		dc.b $BE
		dc.b $E1
		dc.b  $E
		dc.b $F8
		dc.b $63 ; c
		dc.b $30 ; 0
		dc.b   9
		dc.b $67 ; g
		dc.b   8
		dc.b $EE
		dc.b $6C ; l
		dc.b $E8
		dc.b $F6
		dc.b $A9
		dc.b   0
		dc.b $60 ; `
		dc.b $3F ; ?
		dc.b $DA
		dc.b $EE
		dc.b $26 ; &
		dc.b $18
		dc.b $D1
		dc.b $A8
		dc.b $54 ; T
		dc.b $48 ; H
		dc.b $D0
		dc.b $40 ; @
		dc.b $DC
		dc.b $36 ; 6
		dc.b $FE
		dc.b $4E ; N
		dc.b $FB
		dc.b   0
		dc.b $C2
		dc.b $A2
		dc.b $9A
		dc.b $60 ; `
		dc.b $A5
		dc.b $E8
		dc.b $B6
		dc.b $A5
		dc.b $8A
		dc.b $86
		dc.b $31 ; 1
		dc.b $FC
		dc.b $86
		dc.b $FC
		dc.b   2
		dc.b $2E ; .
		dc.b $F8
		dc.b $7E ; ~
		dc.b $C6
		dc.b $46 ; F
		dc.b $FC
		dc.b $7A ; z
		dc.b $FC
		dc.b $76 ; v
		dc.b $30 ; 0
		dc.b $A5
		dc.b $6E ; n
		dc.b $FC
		dc.b $14
		dc.b $62 ; b
		dc.b $8E
		dc.b $A8
		dc.b $A1
		dc.b $FC
		dc.b $62 ; b
		dc.b $FC
		dc.b $5E ; ^
		dc.b $8C
		dc.b $31 ; 1
		dc.b $FC
		dc.b $5A ; Z
		dc.b $FC
		dc.b $56 ; V
		dc.b $FC
		dc.b $52 ; R
		dc.b $C6
		dc.b $68 ; h
		dc.b $FC
		dc.b $4E ; N
		dc.b $FC
		dc.b $B8
		dc.b $FC
		dc.b $22 ; "
		dc.b $E2
		dc.b $42 ; B
		dc.b $AC
		dc.b $D1
		dc.b $FC
		dc.b $3E ; >
		dc.b $F6
		dc.b $D9
		dc.b $68 ; h
		dc.b $E2
		dc.b $36 ; 6
		dc.b $FC
		dc.b $26 ; &
		dc.b $89
		dc.b $14
		dc.b $63 ; c
		dc.b   0
		dc.b $AC
		dc.b $2A ; *
		dc.b $FC
		dc.b $26 ; &
		dc.b $E8
		dc.b $92
		dc.b $47 ; G
		dc.b   2
		dc.b $FC
		dc.b $FC
		dc.b   0
		dc.b $1A
		dc.b $FC
		dc.b $DC
		dc.b $28 ; (
		dc.b $63 ; c
		dc.b $EC
		dc.b $E8
		dc.b $E4
		dc.b  $A
		dc.b $FC
		dc.b   6
		dc.b $E4
		dc.b $FE
		dc.b $46 ; F
		dc.b $FC
		dc.b $1E
		dc.b $1B
		dc.b $7B ; {
		dc.b $18
		dc.b $1A
		dc.b $18
		dc.b $FA
		dc.b $B9
		dc.b   5
		dc.b $2C ; ,
		dc.b $38 ; 8
		dc.b $BA
		dc.b $F2
		dc.b   3
		dc.b $74 ; t
		dc.b $43 ; C
		dc.b $FF
		dc.b $FF
		dc.b $98
		dc.b $F3
		dc.b $32 ; 2
		dc.b $3C ; <
		dc.b   0
		dc.b $D7
		dc.b $74 ; t
		dc.b $26 ; &
		dc.b $22 ; "
		dc.b $C7
		dc.b $51 ; Q
		dc.b $CA
		dc.b $FF
		dc.b $FC
		dc.b $D2
		dc.b $FC
		dc.b $DF
		dc.b $B0
		dc.b   0
		dc.b $64 ; d
		dc.b $51 ; Q
		dc.b $C9
		dc.b $FF
		dc.b $F2
		dc.b $5E ; ^
		dc.b $E1
		dc.b $4E ; N
		dc.b   1
		dc.b $42 ; B
		dc.b $5A ; Z
		dc.b $FB
		dc.b $23 ; #
		dc.b $72 ; r
		dc.b $F6
		dc.b $E0
		dc.b $80
		dc.b $52 ; R
		dc.b $F4
		dc.b $70 ; p
		dc.b   4
		dc.b $32 ; 2
		dc.b   5
		dc.b $24 ; $
		dc.b   7
		dc.b $C4
		dc.b $C3
		dc.b $14
		dc.b $B0
		dc.b $F6
		dc.b $DE
		dc.b $47 ; G
		dc.b $BC
		dc.b $E0
		dc.b $DE
		dc.b   9
		dc.b $BC
		dc.b $B1
		dc.b $70 ; p
		dc.b   2
		dc.b $70 ; p
		dc.b $9A
		dc.b $F1
		dc.b   3
		dc.b $54 ; T
		dc.b $E8
		dc.b $E3
		dc.b $DF
		dc.b $F8
		dc.b $6E ; n
		dc.b $FC
		dc.b $14
		dc.b $4A ; J
		dc.b $2E ; .
		dc.b  $A
		dc.b $52 ; R
		dc.b $67 ; g
		dc.b $26 ; &
		dc.b $96
		dc.b $D9
		dc.b $E0
		dc.b $F7
		dc.b   1
		dc.b $F8
		dc.b $DC
		dc.b $AA
		dc.b   3
		dc.b $7E ; ~
		dc.b $70 ; p
		dc.b   0
		dc.b $60 ; `
		dc.b $16
		dc.b $D1
		dc.b   3
		dc.b $A4
		dc.b $6D ; m
		dc.b $8C
		dc.b $70 ; p
		dc.b $31 ; 1
		dc.b $6E ; n
		dc.b $F1
		dc.b $F4
		dc.b $3E ; >
		dc.b $C1
		dc.b $80
		dc.b $F2
		dc.b $EC
		dc.b $B1
		dc.b $B9
		dc.b $FC
		dc.b $FA
		dc.b $D4
		dc.b $53 ; S
		dc.b $94
		dc.b $F1
		dc.b $94
		dc.b $D2
		dc.b $53 ; S
		dc.b $2B ; +
		dc.b $1E
		dc.b $9C
		dc.b $CA
		dc.b   3
		dc.b $C2
		dc.b $90
		dc.b $D1
		dc.b $7E ; ~
		dc.b $F1
		dc.b $F6
		dc.b $A2
		dc.b $72 ; r
		dc.b $11
		dc.b $63 ; c
		dc.b $C0
		dc.b $D0
		dc.b $EE
		dc.b $D0
		dc.b $6E ; n
		dc.b $BE
		dc.b $FA
		dc.b $A3
		dc.b $5B ; [
		dc.b   8
		dc.b $70 ; p
		dc.b $14
		dc.b $FA
		dc.b $98
		dc.b $F2
		dc.b $5C ; \
		dc.b $52 ; R
		dc.b $80
		dc.b $B9
		dc.b   3
		dc.b $22 ; "
		dc.b $89
		dc.b $6C ; l
		dc.b $8E
		dc.b $96
		dc.b $32 ; 2
		dc.b $96
		dc.b $FD
		dc.b $12
		dc.b $A2
		dc.b $96
		dc.b $D3
		dc.b $69 ; i
		dc.b $E8
		dc.b  $E
		dc.b $76 ; v
		dc.b $D2
		dc.b $60 ; `
		dc.b $60 ; `
		dc.b $10
		dc.b $CA
		dc.b   1
		dc.b $84
		dc.b $E3
		dc.b $18
		dc.b $DC
		dc.b $B2
		dc.b $76 ; v
		dc.b $E4
		dc.b   2
		dc.b $4E ; N
		dc.b $F6
		dc.b $76 ; v
		dc.b $73 ; s
		dc.b $29 ; )
		dc.b $FC
		dc.b $84
		dc.b $8A
		dc.b $1E
		dc.b $8C
		dc.b $FD
		dc.b $96
		dc.b $4E ; N
		dc.b $52 ; R
		dc.b $8E
		dc.b $8C
		dc.b $5E ; ^
		dc.b $30 ; 0
		dc.b $8E
		dc.b $7C ; |
		dc.b $C3
		dc.b $30 ; 0
		dc.b $F6
		dc.b $CE
		dc.b $30 ; 0
		dc.b $DC
		dc.b $4E ; N
		dc.b $34 ; 4
		dc.b $FC
		dc.b $50 ; P
		dc.b $36 ; 6
		dc.b  $C
		dc.b $FB
		dc.b $FC
		dc.b $54 ; T
		dc.b $38 ; 8
		dc.b $FC
		dc.b $5E ; ^
		dc.b $C6
		dc.b $26 ; &
		dc.b $E1
		dc.b $96
		dc.b $40 ; @
		dc.b   6
		dc.b $87
		dc.b $FF
		dc.b $43 ; C
		dc.b   0
		dc.b  $A
		dc.b $C8
		dc.b $F6
		dc.b  $C
		dc.b $D8
		dc.b $42 ; B
		dc.b   6
		dc.b $44 ; D
		dc.b $FF
		dc.b $FC
		dc.b $33 ; 3
		dc.b $8E
		dc.b  $F
		dc.b $C3
		dc.b $DC
		dc.b $F2
		dc.b $33 ; 3
		dc.b $C4
		dc.b $FA
		dc.b $82
		dc.b $4E ; N
		dc.b $75 ; u
		dc.b $7E ; ~
		dc.b $F7
		dc.b $FF
		dc.b $BC
		dc.b   2
		dc.b $7E ; ~
		dc.b $10
		dc.b $E6
		dc.b $F3
		dc.b   2
		dc.b $D2
		dc.b $C7
		dc.b $7E ; ~
		dc.b   7
		dc.b $12
		dc.b $10
		dc.b $34 ; 4
		dc.b $18
		dc.b $36 ; 6
		dc.b $FB
		dc.b $FF
		dc.b   2
		dc.b $E4
		dc.b   9
		dc.b $BC
		dc.b $BA
		dc.b $E5
		dc.b  $A
		dc.b $E4
		dc.b $4A ; J
		dc.b   2
		dc.b $42 ; B
		dc.b   0
		dc.b $F0
		dc.b $E1
		dc.b $4B ; K
		dc.b   2
		dc.b $FF
		dc.b $DF
		dc.b $43 ; C
		dc.b  $F
		dc.b   0
		dc.b $84
		dc.b $41 ; A
		dc.b $86
		dc.b $42 ; B
		dc.b $32 ; 2
		dc.b $C3
		dc.b $51 ; Q
		dc.b $CF
		dc.b $FF
		dc.b $DE
		dc.b $70 ; p
		dc.b $CA
		dc.b $F1
		dc.b $FD
		dc.b $FF
		dc.b   2
		dc.b $16
		dc.b $5A ; Z
		dc.b $F3
		dc.b   7
		dc.b   2
		dc.b   5
		dc.b   0
		dc.b $30 ; 0
		dc.b $E5
		dc.b $4D ; M
		dc.b $1C
		dc.b $18
		dc.b $8A
		dc.b   6
		dc.b $E8
		dc.b $F8
		dc.b $C7
		dc.b $4D ; M
		dc.b $F4
		dc.b  $F
		dc.b $4A ; J
		dc.b   5
		dc.b $67 ; g
		dc.b  $A
		dc.b $BA
		dc.b $39 ; 9
		dc.b $B2
		dc.b $FA
		dc.b $FF
		dc.b $84
		dc.b $C8
		dc.b $CA
		dc.b $CC
		dc.b $D1
		dc.b $7C ; |
		dc.b $78 ; x
		dc.b  $B
		dc.b $1A
		dc.b $18
		dc.b $E5
		dc.b  $D
		dc.b $76 ; v
		dc.b   5
		dc.b $DA
		dc.b   5
		dc.b $87
		dc.b $FF
		dc.b $65 ; e
		dc.b   4
		dc.b $12
		dc.b $C7
		dc.b $92
		dc.b $12
		dc.b $C6
		dc.b $51 ; Q
		dc.b $CB
		dc.b $FF
		dc.b $F4
		dc.b $43 ; C
		dc.b $E9
		dc.b $1F
		dc.b $8F
		dc.b   1
		dc.b $FA
		dc.b $51 ; Q
		dc.b $CC
		dc.b $FF
		dc.b $E6
		dc.b $DE
		dc.b $E4
		dc.b $70 ; p
		dc.b  $C
		dc.b $DA
		dc.b $61 ; a
		dc.b $40 ; @
		dc.b $AC
		dc.b $B1
		dc.b $B0
		dc.b $F8
		dc.b $24 ; $
		dc.b $2C ; ,
		dc.b $B0
		dc.b $F8
		dc.b  $B
		dc.b $BF
		dc.b $19
		dc.b $B0
		dc.b $BD
		dc.b $19
		dc.b $73 ; s
		dc.b $38 ; 8
		dc.b $B0
		dc.b $F8
		dc.b  $E
		dc.b $94
		dc.b $B0
		dc.b $76 ; v
		dc.b $D2
		dc.b $12
		dc.b $18
		dc.b $10
		dc.b $8E
		dc.b $FD
		dc.b $56 ; V
		dc.b   0
		dc.b $62 ; b
		dc.b $FC
		dc.b $34 ; 4
		dc.b $38 ; 8
		dc.b $DA
		dc.b $E1
		dc.b $49 ; I
		dc.b $D2
		dc.b $81
		dc.b $D1
		dc.b $35 ; 5
		dc.b $D0
		dc.b $81
		dc.b $14
		dc.b $39 ; 9
		dc.b $89
		dc.b $D3
		dc.b $C0
		dc.b $32 ; 2
		dc.b $DA
		dc.b $DC
		dc.b $FF
		dc.b $3E ; >
		dc.b $7E ; ~
		dc.b   1
		dc.b $FC
		dc.b $16
		dc.b $E1
		dc.b $89
		dc.b $D0
		dc.b $41 ; A
		dc.b $98
		dc.b $EC
		dc.b $E2
		dc.b $7B ; {
		dc.b $FF
		dc.b $94
		dc.b   4
		dc.b $D2
		dc.b $E1
		dc.b $75 ; u
		dc.b   2
		dc.b $80
		dc.b $90
		dc.b $D9
		dc.b $3F ; ?
		dc.b $90
		dc.b $6E ; n
		dc.b  $A
		dc.b $56 ; V
		dc.b $6B ; k
		dc.b $F8
		dc.b $1D
		dc.b  $C
		dc.b $E7
		dc.b $33 ; 3
		dc.b $63 ; c
		dc.b  $A
		dc.b   4
		dc.b $40 ; @
		dc.b $56 ; V
		dc.b $89
		dc.b   4
		dc.b   6
		dc.b $37 ; 7
		dc.b $7A ; z
		dc.b $FA
		dc.b $34 ; 4
		dc.b   0
		dc.b $AE
		dc.b $E1
		dc.b $42 ; B
		dc.b $DC
		dc.b $DC
		dc.b $89
		dc.b   0
		dc.b $1F
		dc.b $D2
		dc.b $88
		dc.b $C7
		dc.b $DC
		dc.b $60 ; `
		dc.b $DC
		dc.b   1
		dc.b   0
		dc.b $11
		dc.b $DC
		dc.b   2
		dc.b $1A
		dc.b $41 ; A
		dc.b $26 ; &
		dc.b $E9
		dc.b $DC
		dc.b $FA
		dc.b $A4
		dc.b $D1
		dc.b  $C
		dc.b $5E ; ^
		dc.b $8F
		dc.b $DE
		dc.b $E2
		dc.b $48 ; H
		dc.b $78 ; x
		dc.b   0
		dc.b $C4
		dc.b $8A
		dc.b $46 ; F
		dc.b $D9
		dc.b   8
		dc.b  $C
		dc.b   2
		dc.b $7F ; 
		dc.b $D8
		dc.b $FA
		dc.b   2
		dc.b $78 ; x
		dc.b   1
		dc.b   2
		dc.b $40 ; @
		dc.b $FF
		dc.b $FC
		dc.b $BE
		dc.b $E1
		dc.b $48 ; H
		dc.b $EA
		dc.b $D2
		dc.b $30 ; 0
		dc.b $FC
		dc.b $C4
		dc.b $DA
		dc.b $D8
		dc.b $D4
		dc.b $F8
		dc.b $40 ; @
		dc.b   6
		dc.b $42 ; B
		dc.b   0
		dc.b $60 ; `
		dc.b $87
		dc.b $7F ; 
		dc.b $26 ; &
		dc.b   2
		dc.b   2
		dc.b $42 ; B
		dc.b $54 ; T
		dc.b $E5
		dc.b $9A
		dc.b   2
		dc.b $43 ; C
		dc.b $3F ; ?
		dc.b $FF
		dc.b   0
		dc.b $43 ; C
		dc.b $FC
		dc.b $10
		dc.b $99
		dc.b   3
		dc.b $48 ; H
		dc.b $42 ; B
		dc.b $82
		dc.b $44 ; D
		dc.b $BC
		dc.b $3F ; ?
		dc.b $EC
		dc.b $F3
		dc.b $EF
		dc.b $46 ; F
		dc.b $FD
		dc.b $34 ; 4
		dc.b $FA
		dc.b $E1
		dc.b $22 ; "
		dc.b $C7
		dc.b $32 ; 2
		dc.b $C7
		dc.b  $C
		dc.b $CA
		dc.b $37 ; 7
		dc.b $FA
		dc.b $FF
		dc.b $F6
		dc.b $34 ; 4
		dc.b $1F
		dc.b $70 ; p
		dc.b $7A ; z
		dc.b $70 ; p
		dc.b $20
		dc.b $42 ; B
		dc.b $FD
		dc.b $C1
		dc.b $74 ; t
		dc.b  $B
		dc.b $B6
		dc.b $10
		dc.b $76 ; v
		dc.b $DA
		dc.b $E2
		dc.b $CB
		dc.b $74 ; t
		dc.b $71 ; q
		dc.b $E9
		dc.b $DA
		dc.b $E1
		dc.b $DC
		dc.b $F2
		dc.b $DD
		dc.b $A1
		dc.b $12
		dc.b $5A ; Z
		dc.b $71 ; q
		dc.b $3F ; ?
		dc.b   6
		dc.b $BC
		dc.b $FC
		dc.b $45 ; E
		dc.b $F1
		dc.b $FB
		dc.b $30 ; 0
		dc.b $43 ; C
		dc.b $3A ; :
		dc.b $72 ; r
		dc.b $B9
		dc.b $FF
		dc.b $1C
		dc.b $B2
		dc.b $3C ; <
		dc.b $B2
		dc.b $DA
		dc.b $32 ; 2
		dc.b $DA
		dc.b $8D
		dc.b $21 ; !
		dc.b $B2
		dc.b $45 ; E
		dc.b $EA
		dc.b $AE
		dc.b $CE
		dc.b $D2
		dc.b $3C ; <
		dc.b $FE
		dc.b $F1
		dc.b $AE
		dc.b $3F ; ?
		dc.b   0
		dc.b $10
		dc.b   7
		dc.b $E9
		dc.b $4F ; O
		dc.b $8E
		dc.b $FA
		dc.b $E1
		dc.b $4F ; O
		dc.b $1E
		dc.b $B0
		dc.b $1E
		dc.b $34 ; 4
		dc.b $C1
		dc.b $48 ; H
		dc.b $47 ; G
		dc.b $3E ; >
		dc.b $FA
		dc.b $E8
		dc.b $49 ; I
		dc.b $1F
		dc.b $1E
		dc.b $D4
		dc.b $EA
		dc.b $FC
		dc.b $30 ; 0
		dc.b $14
		dc.b $32 ; 2
		dc.b $2C ; ,
		dc.b $2D ; -
		dc.b $74 ; t
		dc.b   3
		dc.b $50 ; P
		dc.b $40 ; @
		dc.b $3E ; >
		dc.b $62 ; b
		dc.b $38 ; 8
		dc.b   3
		dc.b $FF
		dc.b $B2
		dc.b $40 ; @
		dc.b $57 ; W
		dc.b $78 ; x
		dc.b $CC
		dc.b   7
		dc.b $FF
		dc.b $FF
		dc.b $E2
		dc.b $FC
		dc.b $3E ; >
		dc.b $14
		dc.b $39 ; 9
		dc.b $81
		dc.b $70 ; p
		dc.b   6
		dc.b $29 ; )
		dc.b $82
		dc.b $70 ; p
		dc.b   8
		dc.b $39 ; 9
		dc.b $80
		dc.b $70 ; p
		dc.b   4
		dc.b $87
		dc.b $E3
		dc.b $50 ; P
		dc.b $47 ; G
		dc.b   2
		dc.b $47 ; G
		dc.b $DC
		dc.b $38 ; 8
		dc.b $87
		dc.b $3E ; >
		dc.b $C2
		dc.b $12
		dc.b $FE
		dc.b $77 ; w
		dc.b $10
		dc.b $A6
		dc.b $E9
		dc.b   7
		dc.b $3D ; =
		dc.b $41 ; A
		dc.b  $A
		dc.b $4E ; N
		dc.b $12
		dc.b $18
		dc.b $E8
		dc.b   9
		dc.b $76 ; v
		dc.b $B1
		dc.b $52 ; R
		dc.b $14
		dc.b $80
		dc.b $1F
		dc.b $EE
		dc.b  $A
		dc.b  $F
		dc.b $3D ; =
		dc.b $42 ; B
		dc.b  $A
		dc.b $50 ; P
		dc.b $14
		dc.b $DC
		dc.b $E3
		dc.b $EE
		dc.b $11
		dc.b $A9
		dc.b  $A
		dc.b $53 ; S
		dc.b $2E ; .
		dc.b $D9
		dc.b $6E ; n
		dc.b  $A
		dc.b $54 ; T
		dc.b $FC
		dc.b $56 ; V
		dc.b   1
		dc.b $F6
		dc.b  $C
		dc.b $6E ; n
		dc.b   1
		dc.b $FA
		dc.b $65 ; e
		dc.b   4
		dc.b $F2
		dc.b $B9
		dc.b $56 ; V
		dc.b   4
		dc.b $FF
		dc.b $FB
		dc.b $6E ; n
		dc.b $C0
		dc.b   0
		dc.b  $A
		dc.b $58 ; X
		dc.b $64 ; d
		dc.b $10
		dc.b $50 ; P
		dc.b $EE
		dc.b  $A
		dc.b $5C ; \
		dc.b $E0
		dc.b $A1
		dc.b $5A ; Z
		dc.b $6A ; j
		dc.b   6
		dc.b   7
		dc.b $C0
		dc.b $3D ; =
		dc.b $7C ; |
		dc.b   0
		dc.b $26 ; &
		dc.b $F8
		dc.b $D2
		dc.b $F2
		dc.b $98
		dc.b $43 ; C
		dc.b $54 ; T
		dc.b $FC
		dc.b $56 ; V
		dc.b $EE
		dc.b $33 ; 3
		dc.b $F8
		dc.b   6
		dc.b $13
		dc.b $C6
		dc.b $D6
		dc.b $FC
		dc.b $14
		dc.b $D6
		dc.b $BA
		dc.b $5A ; Z
		dc.b $BA
		dc.b $C0
		dc.b $88
		dc.b $27 ; '
		dc.b $FA
		dc.b $BA
		dc.b $D2
		dc.b $31 ; 1
		dc.b   6
		dc.b $EE
		dc.b $5E ; ^
		dc.b $FC
		dc.b $60 ; `
		dc.b $EA
		dc.b $12
		dc.b $FA
		dc.b $CE
		dc.b $31 ; 1
		dc.b $EA
		dc.b $60 ; `
		dc.b $BC
		dc.b $5E ; ^
		dc.b $FC
		dc.b $60 ; `
		dc.b $A7
		dc.b $FB
		dc.b $BC
		dc.b $11
		dc.b $EE
		dc.b $3F ; ?
		dc.b   2
		dc.b $72 ; r
		dc.b $76 ; v
		dc.b $E1
		dc.b $FE
		dc.b $46 ; F
		dc.b $70 ; p
		dc.b $D6
		dc.b  $F
		dc.b $10
		dc.b $D8
		dc.b $F1
		dc.b $28 ; (
		dc.b $9C
		dc.b $F2
		dc.b $52 ; R
		dc.b $D3
		dc.b $5C ; \
		dc.b $67 ; g
		dc.b $64 ; d
		dc.b $3C ; <
		dc.b $2E ; .
		dc.b $C1
		dc.b $F0
		dc.b $B8
		dc.b $70 ; p
		dc.b $19
		dc.b $3E ; >
		dc.b $E3
		dc.b $67 ; g
		dc.b $51 ; Q
		dc.b $46 ; F
		dc.b $6A ; j
		dc.b   4
		dc.b $61 ; a
		dc.b $BB
		dc.b   6
		dc.b $46 ; F
		dc.b $9E
		dc.b $70 ; p
		dc.b $33 ; 3
		dc.b $DA
		dc.b $E9
		dc.b $54 ; T
		dc.b $94
		dc.b $A1
		dc.b   6
		dc.b $E4
		dc.b $DB
		dc.b $3E ; >
		dc.b $EC
		dc.b $F1
		dc.b   0
		dc.b $7E ; ~
		dc.b $78 ; x
		dc.b $E1
		dc.b $5E ; ^
		dc.b $28 ; (
		dc.b $F1
		dc.b $C0
		dc.b   8
		dc.b $F2
		dc.b  $F
		dc.b $80
		dc.b $36 ; 6
		dc.b $3C ; <
		dc.b $FC
		dc.b $1F
		dc.b $FC
		dc.b $96
		dc.b $42 ; B
		dc.b $D6
		dc.b $43 ; C
		dc.b $D4
		dc.b $40 ; @
		dc.b $48 ; H
		dc.b $42 ; B
		dc.b $34 ; 4
		dc.b   3
		dc.b $32 ; 2
		dc.b $3A ; :
		dc.b $FC
		dc.b $E4
		dc.b $60 ; `
		dc.b $E6
		dc.b $EA
		dc.b $E6
		dc.b $49 ; I
		dc.b $E8
		dc.b   0
		dc.b $1A
		dc.b $96
		dc.b $41 ; A
		dc.b $14
		dc.b $E1
		dc.b $DF
		dc.b   3
		dc.b $CC
		dc.b $F2
		dc.b $1B
		dc.b $D2
		dc.b $46 ; F
		dc.b   6
		dc.b $41 ; A
		dc.b $60 ; `
		dc.b   3
		dc.b $70 ; p
		dc.b $C6
		dc.b $A1
		dc.b   1
		dc.b $F7
		dc.b $FE
		dc.b $B8
		dc.b $92
		dc.b $9A
		dc.b $60 ; `
		dc.b $74 ; t
		dc.b $9A
		dc.b $FC
		dc.b $53 ; S
		dc.b $67 ; g
		dc.b $F8
		dc.b $11
		dc.b   8
		dc.b $9A
		dc.b   2
		dc.b $7C ; |
		dc.b $11
		dc.b $74 ; t
		dc.b $11
		dc.b $D8
		dc.b $82
		dc.b $7F ; 
		dc.b $CA
		dc.b $4E ; N
		dc.b $82
		dc.b $94
		dc.b $F8
		dc.b  $D
		dc.b $76 ; v
		dc.b $7E ; ~
		dc.b $96
		dc.b $40 ; @
		dc.b $EF
		dc.b $4B ; K
		dc.b $D4
		dc.b $D4
		dc.b $13
		dc.b $3C ; <
		dc.b $8E
		dc.b $F8
		dc.b   9
		dc.b $96
		dc.b $FF
		dc.b $5A ; Z
		dc.b $76 ; v
		dc.b $26 ; &
		dc.b $9E
		dc.b $1A
		dc.b $DB
		dc.b $90
		dc.b $9E
		dc.b $FE
		dc.b $20
		dc.b $9E
		dc.b $56 ; V
		dc.b $BE
		dc.b $64 ; d
		dc.b  $A
		dc.b $18
		dc.b $B1
		dc.b $EE
		dc.b $EF
		dc.b $45 ; E
		dc.b $92
		dc.b $C9
		dc.b  $C
		dc.b $6E ; n
		dc.b $49 ; I
		dc.b $99
		dc.b $42 ; B
		dc.b $67 ; g
		dc.b $10
		dc.b $42 ; B
		dc.b $AE
		dc.b $1A
		dc.b $20
		dc.b $D9
		dc.b $11
		dc.b $36 ; 6
		dc.b $3D ; =
		dc.b $C4
		dc.b $20
		dc.b $D9
		dc.b $9E
		dc.b $70 ; p
		dc.b $D1
		dc.b   8
		dc.b $F4
		dc.b $66 ; f
		dc.b  $C
		dc.b $50 ; P
		dc.b $EE
		dc.b $EC
		dc.b $AD
		dc.b $FA
		dc.b $72 ; r
		dc.b  $E
		dc.b $7E ; ~
		dc.b $C9
		dc.b $88
		dc.b $4E ; N
		dc.b $D2
		dc.b $52 ; R
		dc.b $A9
		dc.b $49 ; I
		dc.b $9B
		dc.b $E9
		dc.b $2F ; /
		dc.b $88
		dc.b   2
		dc.b $89
		dc.b $1D
		dc.b $40 ; @
		dc.b $11
		dc.b $C5
		dc.b $AE
		dc.b $9A
		dc.b $FA
		dc.b $86
		dc.b $A9
		dc.b $7E ; ~
		dc.b $E7
		dc.b $C8
		dc.b $BA
		dc.b $63 ; c
		dc.b $8A
		dc.b $4E ; N
		dc.b $92
		dc.b $64 ; d
		dc.b   8
		dc.b $39 ; 9
		dc.b $62 ; b
		dc.b $66 ; f
		dc.b $CE
		dc.b $F0
		dc.b $F0
		dc.b $61 ; a
		dc.b $8B
		dc.b $F0
		dc.b $65 ; e
		dc.b $52 ; R
		dc.b $3F ; ?
		dc.b   1
		dc.b $43 ; C
		dc.b $BE
		dc.b $C6
		dc.b $41 ; A
		dc.b $88
		dc.b $81
		dc.b $FC
		dc.b $CA
		dc.b $EE
		dc.b $8C
		dc.b $EE
		dc.b $1F
		dc.b $FE
		dc.b $F6
		dc.b $18
		dc.b $32 ; 2
		dc.b $18
		dc.b $38 ; 8
		dc.b $F2
		dc.b $7E ; ~
		dc.b $34 ; 4
		dc.b $18
		dc.b $B0
		dc.b   2
		dc.b $6C ; l
		dc.b $43 ; C
		dc.b $DC
		dc.b   2
		dc.b $30 ; 0
		dc.b   2
		dc.b $F8
		dc.b $B2
		dc.b $F8
		dc.b $32 ; 2
		dc.b   2
		dc.b $3A ; :
		dc.b $E1
		dc.b $DF
		dc.b $3E ; >
		dc.b $EE
		dc.b $34 ; 4
		dc.b $1F
		dc.b   2
		dc.b $42 ; B
		dc.b $FF
		dc.b $F4
		dc.b $B1
		dc.b $C1
		dc.b $EA
		dc.b $B1
		dc.b   0
		dc.b $18
		dc.b $3D ; =
		dc.b $42 ; B
		dc.b $8C
		dc.b $31 ; 1
		dc.b $A4
		dc.b $30 ; 0
		dc.b   1
		dc.b $F6
		dc.b  $E
		dc.b $F6
		dc.b $FC
		dc.b   6
		dc.b $78 ; x
		dc.b $BE
		dc.b $8D
		dc.b $BE
		dc.b $A4
		dc.b $E0
		dc.b $58 ; X
		dc.b $6B ; k
		dc.b $14
		dc.b $FB
		dc.b $3E ; >
		dc.b $94
		dc.b $51 ; Q
		dc.b $16
		dc.b $F2
		dc.b $E1
		dc.b $1F
		dc.b $B0
		dc.b $58 ; X
		dc.b $52 ; R
		dc.b $EE
		dc.b $C9
		dc.b $52 ; R
		dc.b $42 ; B
		dc.b $E2
		dc.b $4A ; J
		dc.b $F4
		dc.b $FF
		dc.b $E8
		dc.b $74 ; t
		dc.b $A0
		dc.b $B9
		dc.b $72 ; r
		dc.b $14
		dc.b $65 ; e
		dc.b $AC
		dc.b $5A ; Z
		dc.b $9D
		dc.b $50 ; P
		dc.b $C3
		dc.b $47 ; G
		dc.b $FA
		dc.b $FF
		dc.b $FF
		dc.b $40 ; @
		dc.b $26 ; &
		dc.b $39 ; 9
		dc.b $2C ; ,
		dc.b $32 ; 2
		dc.b $F5
		dc.b $2D ; -
		dc.b $6A ; j
		dc.b $28 ; (
		dc.b $7A ; z
		dc.b $24 ; $
		dc.b $13
		dc.b $20
		dc.b $26 ; &
		dc.b $1C
		dc.b $A7
		dc.b $FF
		dc.b $FF
		dc.b $19
		dc.b $8A
		dc.b $16
		dc.b $C3
		dc.b $14
		dc.b $49 ; I
		dc.b $12
		dc.b $14
		dc.b $10
		dc.b $1D
		dc.b  $E
		dc.b $5C ; \
		dc.b  $C
		dc.b $CC
		dc.b  $B
		dc.b $68 ; h
		dc.b $FF
		dc.b $FF
		dc.b  $A
		dc.b $2A ; *
		dc.b   9
		dc.b  $F
		dc.b   8
		dc.b $13
		dc.b   7
		dc.b $32 ; 2
		dc.b   6
		dc.b $6A ; j
		dc.b   5
		dc.b $B7
		dc.b   5
		dc.b $18
		dc.b   4
		dc.b $8A
		dc.b $1F
		dc.b $64 ; d
		dc.b   4
		dc.b  $C
		dc.b   3
		dc.b $9B
		dc.b $42 ; B
		dc.b $6E ; n
		dc.b $12
		dc.b $30 ; 0
		dc.b $FC
		dc.b   2
		dc.b $23 ; #
		dc.b $86
		dc.b $88
		dc.b $D9
		dc.b $42 ; B
		dc.b $F8
		dc.b $88
		dc.b $89
		dc.b   2
		dc.b $D7
		dc.b $1F
		dc.b $4D ; M
		dc.b $FA
		dc.b $14
		dc.b   6
		dc.b $94
		dc.b $48 ; H
		dc.b  $B
		dc.b $BE
		dc.b $49 ; I
		dc.b   4
		dc.b $80
		dc.b $59 ; Y
		dc.b $31 ; 1
		dc.b $FC
		dc.b $80
		dc.b $22 ; "
		dc.b $84
		dc.b $F4
		dc.b $5A ; Z
		dc.b $F4
		dc.b $FA
		dc.b $61 ; a
		dc.b $F4
		dc.b $C7
		dc.b $7B ; {
		dc.b   1
		dc.b $30 ; 0
		dc.b $80
		dc.b $62 ; b
		dc.b $E2
		dc.b   1
		dc.b $80
		dc.b $33 ; 3
		dc.b $92
		dc.b $49 ; I
		dc.b $78 ; x
		dc.b $1A
		dc.b $FE
		dc.b  $F
		dc.b $70 ; p
		dc.b $F0
		dc.b $51 ; Q
		dc.b $9E
		dc.b $21 ; !
		dc.b $C9
		dc.b $F6
		dc.b  $A
		dc.b $1B
		dc.b   2
		dc.b $3E ; >
		dc.b $B8
		dc.b $3D ; =
		dc.b $BA
		dc.b $3F ; ?
		dc.b $42 ; B
		dc.b $98
		dc.b $BA
		dc.b $D1
		dc.b $FC
		dc.b $98
		dc.b $E9
		dc.b   1
		dc.b $1B
		dc.b $76 ; v
		dc.b $DE
		dc.b $B0
		dc.b $FA
		dc.b   0
		dc.b $1B
		dc.b $78 ; x
		dc.b $84
		dc.b $89
		dc.b $1C
		dc.b $9C
		dc.b $1B
		dc.b $70 ; p
		dc.b $70 ; p
		dc.b $98
		dc.b $AA
		dc.b $71 ; q
		dc.b $EC
		dc.b $71 ; q
		dc.b $42 ; B
		dc.b $79 ; y
		dc.b $FA
		dc.b $8F
		dc.b   0
		dc.b $C3
		dc.b $46 ; F
		dc.b $F4
		dc.b $72 ; r
		dc.b $74 ; t
		dc.b $1B
		dc.b $84
		dc.b $B6
		dc.b $49 ; I
		dc.b $81
		dc.b $EE
		dc.b $8F
		dc.b   4
		dc.b $14
		dc.b $D1
		dc.b $EA
		dc.b $7C ; |
		dc.b $50 ; P
		dc.b $BC
		dc.b $70 ; p
		dc.b $B0
		dc.b $D1
		dc.b $FA
		dc.b $F2
		dc.b $E9
		dc.b $FE
		dc.b $66 ; f
		dc.b $E9
		dc.b $70 ; p
		dc.b $EA
		dc.b $10
		dc.b $D9
		dc.b $E3
		dc.b $6F ; o
		dc.b $EA
		dc.b $78 ; x
		dc.b $66 ; f
		dc.b $FA
		dc.b $E9
		dc.b $EC
		dc.b $66 ; f
		dc.b   6
		dc.b $4E ; N
		dc.b $BA
		dc.b $7E ; ~
		dc.b $C1
		dc.b $EA
		dc.b $4C ; L
		dc.b $88
		dc.b $CC
		dc.b $E0
		dc.b $CC
		dc.b $54 ; T
		dc.b   3
		dc.b $D8
		dc.b $78 ; x
		dc.b $21 ; !
		dc.b $EE
		dc.b $7A ; z
		dc.b $80
		dc.b $EE
		dc.b $4A ; J
		dc.b $13
		dc.b $7C ; |
		dc.b $C9
		dc.b $76 ; v
		dc.b $A8
		dc.b $EA
		dc.b $4E ; N
		dc.b $C9
		dc.b $EA
		dc.b $FC
		dc.b $71 ; q
		dc.b $EB
		dc.b $AA
		dc.b $FC
		dc.b $F6
		dc.b $16
		dc.b $E9
		dc.b $C2
		dc.b $A1
		dc.b $96
		dc.b $B5
		dc.b $92
		dc.b $49 ; I
		dc.b $7E ; ~
		dc.b $4E ; N
		dc.b $73 ; s
		dc.b $30 ; 0
		dc.b $A4
		dc.b $6E ; n
		dc.b $FF
		dc.b $FF
		dc.b $8C
		dc.b $69 ; i
		dc.b   3
		dc.b $63 ; c
		dc.b   2
		dc.b $59 ; Y
		dc.b $40 ; @
		dc.b $E5
		dc.b $48 ; H
		dc.b $4C ; L
		dc.b $BB
		dc.b   0
		dc.b $44 ; D
		dc.b   0
		dc.b $28 ; (
		dc.b $61 ; a
		dc.b $34 ; 4
		dc.b $30 ; 0
		dc.b $1E
		dc.b $10
		dc.b $EA
		dc.b $71 ; q
		dc.b $B0
		dc.b $5E ; ^
		dc.b $67 ; g
		dc.b $FA
		dc.b $1D
		dc.b   2
		dc.b $36 ; 6
		dc.b $6E ; n
		dc.b $70 ; p
		dc.b $F4
		dc.b $94
		dc.b $90
		dc.b $52 ; R
		dc.b $89
		dc.b $38 ; 8
		dc.b $6E ; n
		dc.b $7F ; 
		dc.b $A2
		dc.b   3
		dc.b $67 ; g
		dc.b $A2
		dc.b $49 ; I
		dc.b   3
		dc.b $D2
		dc.b $61 ; a
		dc.b $FF
		dc.b $B0
		dc.b   0
		dc.b $27 ; '
		dc.b $FF
		dc.b $D8
		dc.b $D0
		dc.b $1F
		dc.b $FC
		dc.b $F2
		dc.b $D2
		dc.b $4C ; L
		dc.b $41 ; A
		dc.b $2F ; /
		dc.b $32 ; 2
		dc.b $3C ; <
		dc.b $FF
		dc.b $68 ; h
		dc.b $C3
		dc.b $1E
		dc.b $8E
		dc.b $50 ; P
		dc.b $66 ; f
		dc.b $E0
		dc.b $81
		dc.b $3D ; =
		dc.b $CC
		dc.b $6C ; l
		dc.b $1B
		dc.b   4
		dc.b $C3
		dc.b $E7
		dc.b $A6
		dc.b $6A ; j
		dc.b $C1
		dc.b $F0
		dc.b   4
		dc.b $E0
		dc.b $80
		dc.b $3D ; =
		dc.b $40 ; @
		dc.b $F2
		dc.b $76 ; v
		dc.b $87
		dc.b $6E ; n
		dc.b $44 ; D
		dc.b $E9
		dc.b   3
		dc.b $34 ; 4
		dc.b $CA
		dc.b   2
		dc.b $1E
		dc.b $22 ; "
		dc.b $F1
		dc.b $40 ; @
		dc.b $43 ; C
		dc.b $E4
		dc.b $87
		dc.b $ED
		dc.b $86
		dc.b $3F ; ?
		dc.b   2
		dc.b $C5
		dc.b $FA
		dc.b $68 ; h
		dc.b $E0
		dc.b   8
		dc.b $92
		dc.b $4A ; J
		dc.b $96
		dc.b $8A
		dc.b   6
		dc.b $F7
		dc.b $43 ; C
		dc.b $6E ; n
		dc.b   4
		dc.b $C0
		dc.b $1B
		dc.b $2E ; .
		dc.b $E1
		dc.b   2
		dc.b $80
		dc.b $1B
		dc.b $5A ; Z
		dc.b $32 ; 2
		dc.b $E6
		dc.b $56 ; V
		dc.b $74 ; t
		dc.b $8C
		dc.b $FC
		dc.b $3C ; <
		dc.b $91
		dc.b   1
		dc.b $AC
		dc.b $F8
		dc.b $5E ; ^
		dc.b $DF
		dc.b $42 ; B
		dc.b $FC
		dc.b $62 ; b
		dc.b $34 ; 4
		dc.b $1F
		dc.b $52 ; R
		dc.b $42 ; B
		dc.b $4E ; N
		dc.b $D9
		dc.b $CA
		dc.b $F8
		dc.b $62 ; b
		dc.b $AC
		dc.b $D0
		dc.b $88
		dc.b $39 ; 9
		dc.b $98
		dc.b  $A
		dc.b $9E
		dc.b $12
		dc.b $9E
		dc.b $18
		dc.b $C6
		dc.b $1C
		dc.b $EE
		dc.b   8
		dc.b $F2
		dc.b $10
		dc.b $F2
		dc.b $1A
		dc.b $E3
		dc.b $87
		dc.b $E4
		dc.b $18
		dc.b $F2
		dc.b $16
		dc.b $66 ; f
		dc.b   6
		dc.b $20
		dc.b $3C ; <
		dc.b $93
		dc.b $43 ; C
		dc.b $18
		dc.b   1
		dc.b   0
		dc.b $2D ; -
		dc.b $EC
		dc.b $1C
		dc.b $E6
		dc.b $C1
		dc.b $C1
		dc.b $9B
		dc.b $63 ; c
		dc.b $F8
		dc.b $20
		dc.b $C4
		dc.b $F8
		dc.b  $A
		dc.b $14
		dc.b $D2
		dc.b $24 ; $
		dc.b $EE
		dc.b   6
		dc.b $E2
		dc.b $46 ; F
		dc.b $D2
		dc.b $F2
		dc.b $26 ; &
		dc.b $BA
		dc.b $FF
		dc.b $28 ; (
		dc.b $E8
		dc.b $B2
		dc.b $C6
		dc.b $F2
		dc.b $9E
		dc.b $FC
		dc.b $2E ; .
		dc.b $9E
		dc.b $FD
		dc.b $CC
		dc.b $FC
		dc.b $30 ; 0
		dc.b $BE
		dc.b $84
		dc.b $C9
		dc.b $2E ; .
		dc.b $20
		dc.b $AE
		dc.b $32 ; 2
		dc.b $AE
		dc.b $D8
		dc.b $FF
		dc.b $5A ; Z
		dc.b $1B
		dc.b $36 ; 6
		dc.b $A0
		dc.b $F8
		dc.b  $A
		dc.b $AE
		dc.b $FC
		dc.b $3C ; <
		dc.b $A0
		dc.b $FD
		dc.b $C6
		dc.b $FC
		dc.b $3E ; >
		dc.b $A0
		dc.b $FF
		dc.b $40 ; @
		dc.b $63 ; c
		dc.b $39 ; 9
		dc.b $E8
		dc.b $18
		dc.b $D6
		dc.b $1A
		dc.b $E4
		dc.b $FC
		dc.b $62 ; b
		dc.b $46 ; F
		dc.b $92
		dc.b $35 ; 5
		dc.b $EC
		dc.b $DE
		dc.b $B4
		dc.b $FC
		dc.b $4A ; J
		dc.b $8C
		dc.b $FD
		dc.b $B8
		dc.b $FC
		dc.b $4C ; L
		dc.b  $E
		dc.b $ED
		dc.b $F2
		dc.b $4A ; J
		dc.b $90
		dc.b $D0
		dc.b $4C ; L
		dc.b $88
		dc.b $FD
		dc.b $4E ; N
		dc.b $C0
		dc.b $FE
		dc.b $44 ; D
		dc.b $84
		dc.b $8D
		dc.b $40 ; @
		dc.b $BE
		dc.b $EE
		dc.b $52 ; R
		dc.b $E6
		dc.b $F3
		dc.b $24 ; $
		dc.b $C7
		dc.b $3B ; ;
		dc.b $DC
		dc.b $28 ; (
		dc.b $C1
		dc.b $C2
		dc.b $F0
		dc.b $2A ; *
		dc.b $30 ; 0
		dc.b   2
		dc.b $92
		dc.b $FF
		dc.b $38 ; 8
		dc.b $36 ; 6
		dc.b $FC
		dc.b $1F
		dc.b $E6
		dc.b $36 ; 6
		dc.b $96
		dc.b $40 ; @
		dc.b $66 ; f
		dc.b   2
		dc.b $52 ; R
		dc.b $43 ; C
		dc.b $3D ; =
		dc.b $43 ; C
		dc.b $1B
		dc.b $3A ; :
		dc.b $23 ; #
		dc.b $90
		dc.b $D8
		dc.b $3C ; <
		dc.b $C4
		dc.b $C6
		dc.b $D8
		dc.b $E1
		dc.b $80
		dc.b $28 ; (
		dc.b $C9
		dc.b $20
		dc.b $F0
		dc.b $20
		dc.b $D0
		dc.b $AE
		dc.b $CE
		dc.b  $F
		dc.b $C7
		dc.b $FC
		dc.b $32 ; 2
		dc.b $E7
		dc.b $80
		dc.b $81
		dc.b $CA
		dc.b $3A ; :
		dc.b $69 ; i
		dc.b $1E
		dc.b $CA
		dc.b $38 ; 8
		dc.b $C4
		dc.b $56 ; V
		dc.b $E8
		dc.b $42 ; B
		dc.b $90
		dc.b $EC
		dc.b $46 ; F
		dc.b $FC
		dc.b $46 ; F
		dc.b $F3
		dc.b $4E ; N
		dc.b $E8
		dc.b $FD
		dc.b $10
		dc.b $E8
		dc.b $A4
		dc.b $D1
		dc.b $E6
		dc.b $F2
		dc.b $E7
		dc.b $1B
		dc.b $1B
		dc.b $40 ; @
		dc.b $60 ; `
		dc.b $D8
		dc.b $F6
		dc.b $FF
		dc.b $E6
		dc.b $D2
		dc.b $1C
		dc.b $DA
		dc.b $FD
		dc.b $22 ; "
		dc.b $73 ; s
		dc.b $6C ; l
		dc.b $86
		dc.b $66 ; f
		dc.b $86
		dc.b $5E ; ^
		dc.b $EA
		dc.b $52 ; R
		dc.b $EA
		dc.b $FD
		dc.b $16
		dc.b $DB
		dc.b $E1
		dc.b $EA
		dc.b $FF
		dc.b $62 ; b
		dc.b $BE
		dc.b $F8
		dc.b  $A
		dc.b $D4
		dc.b $F6
		dc.b $FF
		dc.b $E0
		dc.b $3E ; >
		dc.b $D4
		dc.b  $C
		dc.b $61 ; a
		dc.b   3
		dc.b $C7
		dc.b $28 ; (
		dc.b $3D ; =
		dc.b $47 ; G
		dc.b $4A ; J
		dc.b $F6
		dc.b $1A
		dc.b $F6
		dc.b $78 ; x
		dc.b $CC
		dc.b $12
		dc.b $F6
		dc.b  $E
		dc.b $61 ; a
		dc.b $14
		dc.b $F6
		dc.b $14
		dc.b $D1
		dc.b $FF
		dc.b $F6
		dc.b   6
		dc.b $F6
		dc.b $6E ; n
		dc.b $B9
		dc.b   6
		dc.b $47 ; G
		dc.b   0
		dc.b $80
		dc.b $2F ; /
		dc.b   6
		dc.b   2
		dc.b $47 ; G
		dc.b $77 ; w
		dc.b $FF
		dc.b   1
		dc.b $FF
		dc.b $3C ; <
		dc.b   7
		dc.b $60 ; `
		dc.b $8B
		dc.b   2
		dc.b $46 ; F
		dc.b $DE
		dc.b $59 ; Y
		dc.b   0
		dc.b $7F ; 
		dc.b $E3
		dc.b $4E ; N
		dc.b $3C ; <
		dc.b $3B ; ;
		dc.b $86
		dc.b $AF
		dc.b $60 ; `
		dc.b $90
		dc.b $6A ; j
		dc.b   8
		dc.b $EE
		dc.b $44 ; D
		dc.b $46 ; F
		dc.b $3E ; >
		dc.b   6
		dc.b $2C ; ,
		dc.b $32 ; 2
		dc.b $D1
		dc.b $F6
		dc.b $BF
		dc.b $72 ; r
		dc.b $C2
		dc.b $D0
		dc.b $51 ; Q
		dc.b   9
		dc.b $CE
		dc.b $C1
		dc.b  $F
		dc.b   0
		dc.b $12
		dc.b   0
		dc.b $16
		dc.b   0
		dc.b $19
		dc.b   0
		dc.b $1C
		dc.b $FF
		dc.b $FF
		dc.b $48 ; H
		dc.b $E9
		dc.b $22 ; "
		dc.b   0
		dc.b $25 ; %
		dc.b   0
		dc.b $28 ; (
		dc.b   0
		dc.b $2B ; +
		dc.b   0
		dc.b $2F ; /
		dc.b   0
		dc.b $32 ; 2
		dc.b   0
		dc.b $35 ; 5
		dc.b   0
		dc.b $38 ; 8
		dc.b $5F ; _
		dc.b $F8
		dc.b   0
		dc.b $3B ; ;
		dc.b   0
		dc.b $3E ; >
		dc.b   0
		dc.b $41 ; A
		dc.b $FC
		dc.b $E1
		dc.b $A6
		dc.b $4A ; J
		dc.b   0
		dc.b $4D ; M
		dc.b   0
		dc.b $FF
		dc.b $FF
		dc.b $50 ; P
		dc.b   0
		dc.b $53 ; S
		dc.b   0
		dc.b $56 ; V
		dc.b   0
		dc.b $59 ; Y
		dc.b   0
		dc.b $5C ; \
		dc.b   0
		dc.b $5F ; _
		dc.b   0
		dc.b $62 ; b
		dc.b   0
		dc.b $65 ; e
		dc.b   0
		dc.b $FF
		dc.b $FF
		dc.b $68 ; h
		dc.b   0
		dc.b $6A ; j
		dc.b   0
		dc.b $6D ; m
		dc.b   0
		dc.b $70 ; p
		dc.b   0
		dc.b $73 ; s
		dc.b   0
		dc.b $76 ; v
		dc.b   0
		dc.b $79 ; y
		dc.b   0
		dc.b $7B ; {
		dc.b   0
		dc.b $FE
		dc.b $7F ; 
		dc.b $7E ; ~
		dc.b $56 ; V
		dc.b $E1
		dc.b $84
		dc.b   0
		dc.b $86
		dc.b   0
		dc.b $89
		dc.b   0
		dc.b $8C
		dc.b   0
		dc.b $8E
		dc.b   0
		dc.b $91
		dc.b   0
		dc.b $93
		dc.b $FF
		dc.b $FF
		dc.b $4C ; L
		dc.b $29 ; )
		dc.b $99
		dc.b   0
		dc.b $9B
		dc.b   0
		dc.b $9E
		dc.b   0
		dc.b $A0
		dc.b   0
		dc.b $A2
		dc.b   0
		dc.b $A5
		dc.b   0
		dc.b $A7
		dc.b   0
		dc.b $FF
		dc.b $FF
		dc.b $AA
		dc.b   0
		dc.b $AC
		dc.b   0
		dc.b $AE
		dc.b   0
		dc.b $B1
		dc.b   0
		dc.b $B3
		dc.b   0
		dc.b $B5
		dc.b   0
		dc.b $B7
		dc.b   0
		dc.b $B9
		dc.b   0
		dc.b $FF
		dc.b $FF
		dc.b $BC
		dc.b   0
		dc.b $BE
		dc.b   0
		dc.b $C0
		dc.b   0
		dc.b $C2
		dc.b   0
		dc.b $C4
		dc.b   0
		dc.b $C6
		dc.b   0
		dc.b $C8
		dc.b   0
		dc.b $CA
		dc.b   0
		dc.b $FF
		dc.b $FF
		dc.b $CC
		dc.b   0
		dc.b $CE
		dc.b   0
		dc.b $D0
		dc.b   0
		dc.b $D1
		dc.b   0
		dc.b $D3
		dc.b   0
		dc.b $D5
		dc.b   0
		dc.b $D7
		dc.b   0
		dc.b $D8
		dc.b   0
		dc.b $BF
		dc.b $FF
		dc.b $DA
		dc.b   0
		dc.b $DC
		dc.b   0
		dc.b $DD
		dc.b   0
		dc.b $DF
		dc.b $32 ; 2
		dc.b $E1
		dc.b $E2
		dc.b   0
		dc.b $E3
		dc.b   0
		dc.b $E5
		dc.b   0
		dc.b $E6
		dc.b $FF
		dc.b $DF
		dc.b   0
		dc.b $E7
		dc.b   0
		dc.b $E9
		dc.b   0
		dc.b $EA
		dc.b   0
		dc.b $EB
		dc.b   0
		dc.b $EC
		dc.b   0
		dc.b $EE
		dc.b   0
		dc.b $EF
		dc.b $69 ; i
		dc.b $49 ; I
		dc.b $FF
		dc.b  $B
		dc.b $F1
		dc.b   0
		dc.b $F2
		dc.b   0
		dc.b $F3
		dc.b   0
		dc.b $F4
		dc.b   0
		dc.b $F5
		dc.b   0
		dc.b $F6
		dc.b   9
		dc.b $29 ; )
		dc.b $1F
		dc.b $63 ; c
		dc.b $FE
		dc.b $F8
		dc.b   0
		dc.b $F9
		dc.b   0
		dc.b $FA
		dc.b $FE
		dc.b $FB
		dc.b $FE
		dc.b $FC
		dc.b $8C
		dc.b $B9
		dc.b $FE
		dc.b $FD
		dc.b $FE
		dc.b $FE
		dc.b $FE
		dc.b $FF
		dc.b   2
		dc.b $5C ; \
		dc.b $FE
		dc.b $F8
		dc.b   9
		dc.b $12
		dc.b $D1
		dc.b $1A
		dc.b $FE
		dc.b $20
		dc.b   0
		dc.b $30 ; 0
		dc.b $F8
		dc.b $FE
		dc.b $F8
		dc.b $F5
		dc.b $35 ; 5
		dc.b $6D ; m
		dc.b $F0
		dc.b $73 ; s
		dc.b $E0
		dc.b $78 ; x
		dc.b $A0
		dc.b $F8
		dc.b $FE
		dc.b $60 ; `
		dc.b $E2
		dc.b $E3
		dc.b $48 ; H
		dc.b $E1
		dc.b $C3
		dc.b $34 ; 4
		dc.b $3B ; ;
		dc.b $7C ; |
		dc.b $31 ; 1
		dc.b $C2
		dc.b $80
		dc.b $64 ; d
		dc.b $36 ; 6
		dc.b $F8
		dc.b $E0
		dc.b $7F ; 
		dc.b $7B ; {
		dc.b $31 ; 1
		dc.b $C3
		dc.b $80
		dc.b $5E ; ^
		dc.b $3E ; >
		dc.b   2
		dc.b $53 ; S
		dc.b $47 ; G
		dc.b $38 ; 8
		dc.b $D9
		dc.b $86
		dc.b $B8
		dc.b $B9
		dc.b   9
		dc.b $90
		dc.b   0
		dc.b $FD
		dc.b $F8
		dc.b $E0
		dc.b $52 ; R
		dc.b $34 ; 4
		dc.b $D9
		dc.b $FA
		dc.b $E6
		dc.b $4A ; J
		dc.b $53 ; S
		dc.b $42 ; B
		dc.b $DA
		dc.b $5C ; \
		dc.b $31 ; 1
		dc.b $FC
		dc.b  $F
		dc.b $8D
		dc.b $64 ; d
		dc.b   0
		dc.b $80
		dc.b $66 ; f
		dc.b $33 ; 3
		dc.b $E0
		dc.b $6E ; n
		dc.b $A8
		dc.b $F1
		dc.b   0
		dc.b $F1
		dc.b  $A
		dc.b $F8
		dc.b  $C
		dc.b $F8
		dc.b   2
		dc.b $52 ; R
		dc.b $6E ; n
		dc.b $AE
		dc.b $D9
		dc.b $BA
		dc.b $21 ; !
		dc.b $42 ; B
		dc.b $28 ; (
		dc.b $FA
		dc.b $F4
		dc.b $59 ; Y
		dc.b $F8
		dc.b   7
		dc.b $F8
		dc.b $63 ; c
		dc.b $20
		dc.b $81
		dc.b $B4
		dc.b $A1
		dc.b $FA
		dc.b $14
		dc.b $4C ; L
		dc.b $91
		dc.b $8F
		dc.b $24 ; $
		dc.b $49 ; I
		dc.b $4A ; J
		dc.b $96
		dc.b $72 ; r
		dc.b $BD
		dc.b $3A ; :
		dc.b $DA
		dc.b $51 ; Q
		dc.b   2
		dc.b $3C ; <
		dc.b $51 ; Q
		dc.b   2
		dc.b $60 ; `
		dc.b $64 ; d
		dc.b $D6
		dc.b $A1
		dc.b $A2
		dc.b $71 ; q
		dc.b $1E
		dc.b $D9
		dc.b $72 ; r
		dc.b $42 ; B
		dc.b $83
		dc.b $57 ; W
		dc.b $E0
		dc.b $F4
		dc.b $DC
		dc.b $D1
		dc.b $80
		dc.b $1B
		dc.b   4
		dc.b $D6
		dc.b $D3
		dc.b $62 ; b
		dc.b $C2
		dc.b $C8
		dc.b $39 ; 9
		dc.b $FA
		dc.b   8
		dc.b $FA
		dc.b  $A
		dc.b $FA
		dc.b  $C
		dc.b   7
		dc.b $98
		dc.b $FA
		dc.b  $E
		dc.b $FA
		dc.b $2E ; .
		dc.b $1B
		dc.b $66 ; f
		dc.b $73 ; s
		dc.b $21 ; !
		dc.b $FA
		dc.b $68 ; h
		dc.b $FA
		dc.b $6A ; j
		dc.b $8C
		dc.b $D9
		dc.b $8E
		dc.b $6C ; l
		dc.b $C6
		dc.b $C6
		dc.b $98
		dc.b $74 ; t
		dc.b $FC
		dc.b $7A ; z
		dc.b $5E ; ^
		dc.b $23 ; #
		dc.b   3
		dc.b $FA
		dc.b $E0
		dc.b $35 ; 5
		dc.b   4
		dc.b $FA
		dc.b $EE
		dc.b $E3
		dc.b $76 ; v
		dc.b $E5
		dc.b $48 ; H
		dc.b $7C ; |
		dc.b $22 ; "
		dc.b $66 ; f
		dc.b $83
		dc.b $A0
		dc.b $B6
		dc.b $75 ; u
		dc.b $FC
		dc.b $F2
		dc.b $12
		dc.b $C9
		dc.b   4
		dc.b   6
		dc.b $9C
		dc.b   1
		dc.b $7A ; z
		dc.b $3A ; :
		dc.b   2
		dc.b $71 ; q
		dc.b   0
		dc.b $54 ; T
		dc.b $1B
		dc.b $29 ; )
		dc.b $3A ; :
		dc.b $9C
		dc.b   1
		dc.b $66 ; f
		dc.b $9A
		dc.b $3A ; :
		dc.b $FC
		dc.b $F0
		dc.b $8E
		dc.b $B6
		dc.b $1D
		dc.b $C4
		dc.b $78 ; x
		dc.b $C4
		dc.b $F8
		dc.b   9
		dc.b   1
		dc.b $E0
		dc.b $31 ; 1
		dc.b   1
		dc.b $EE
		dc.b $91
		dc.b   1
		dc.b $C0
		dc.b $8B
		dc.b $63 ; c
		dc.b $FC
		dc.b $EA
		dc.b $BE
		dc.b $91
		dc.b $BC
		dc.b   1
		dc.b $68 ; h
		dc.b $DC
		dc.b $7A ; z
		dc.b $3B ; ;
		dc.b $C6
		dc.b $DE
		dc.b $FE
		dc.b   2
		dc.b $C4
		dc.b $91
		dc.b   2
		dc.b $1C
		dc.b $FC
		dc.b $74 ; t
		dc.b $FC
		dc.b $62 ; b
		dc.b $C7
		dc.b $2A ; *
		dc.b $E6
		dc.b $F8
		dc.b  $C
		dc.b $94
		dc.b   2
		dc.b $86
		dc.b $91
		dc.b   2
		dc.b $CE
		dc.b $FC
		dc.b $C6
		dc.b   0
		dc.b $10
		dc.b $E6
		dc.b $F8
		dc.b  $C
		dc.b $E2
		dc.b $FC
		dc.b $EE
		dc.b $FC
		dc.b $D8
		dc.b $8E
		dc.b $4F ; O
		dc.b $B2
		dc.b $F6
		dc.b $E6
		dc.b $F8
		dc.b  $B
		dc.b   3
		dc.b $9A
		dc.b $91
		dc.b   3
		dc.b $4C ; L
		dc.b $6E ; n
		dc.b $6C ; l
		dc.b $FC
		dc.b $BE
		dc.b $31 ; 1
		dc.b   1
		dc.b $DC
		dc.b $E6
		dc.b $F8
		dc.b  $B
		dc.b   5
		dc.b $5A ; Z
		dc.b   4
		dc.b $84
		dc.b $91
		dc.b   4
		dc.b $8C
		dc.b $DD
		dc.b $56 ; V
		dc.b   4
		dc.b $4A ; J
		dc.b   4
		dc.b $B6
		dc.b $F1
		dc.b   1
		dc.b $BA
		dc.b $DE
		dc.b $F8
		dc.b  $B
		dc.b $11
		dc.b $AB
		dc.b   4
		dc.b $E4
		dc.b $FC
		dc.b $5C ; \
		dc.b   5
		dc.b $76 ; v
		dc.b $92
		dc.b $20
		dc.b $F2
		dc.b $98
		dc.b $DA
		dc.b $C4
		dc.b $F8
		dc.b   9
		dc.b $26 ; &
		dc.b   5
		dc.b $D0
		dc.b $8A
		dc.b $EA
		dc.b $F8
		dc.b  $B
		dc.b   6
		dc.b $9A
		dc.b $61 ; a
		dc.b $76 ; v
		dc.b $1B
		dc.b   6
		dc.b $7E ; ~
		dc.b $31 ; 1
		dc.b   6
		dc.b $2A ; *
		dc.b $91
		dc.b   1
		dc.b $70 ; p
		dc.b $E6
		dc.b $F8
		dc.b  $B
		dc.b   8
		dc.b $BC
		dc.b $89
		dc.b   8
		dc.b $5B ; [
		dc.b $87
		dc.b $E2
		dc.b   8
		dc.b $14
		dc.b $92
		dc.b $56 ; V
		dc.b $E6
		dc.b $F8
		dc.b  $C
		dc.b $DA
		dc.b $89
		dc.b   1
		dc.b $A2
		dc.b $FC
		dc.b $8E
		dc.b $6D ; m
		dc.b   9
		dc.b   6
		dc.b $31 ; 1
		dc.b   1
		dc.b $82
		dc.b $FC
		dc.b $38 ; 8
		dc.b $E2
		dc.b $F8
		dc.b  $B
		dc.b   9
		dc.b $9A
		dc.b $29 ; )
		dc.b   9
		dc.b $C7
		dc.b $58 ; X
		dc.b $D4
		dc.b $89
		dc.b   9
		dc.b $D8
		dc.b $FC
		dc.b $F8
		dc.b $E2
		dc.b $1A
		dc.b $60 ; `
		dc.b $F8
		dc.b  $C
		dc.b $E3
		dc.b $18
		dc.b $EE
		dc.b $29 ; )
		dc.b   3
		dc.b $E6
		dc.b  $A
		dc.b $22 ; "
		dc.b $FC
		dc.b $58 ; X
		dc.b $DB
		dc.b $68 ; h
		dc.b $F0
		dc.b $D2
		dc.b $90
		dc.b $F1
		dc.b $F8
		dc.b $E8
		dc.b $F0
		dc.b  $C
		dc.b $D4
		dc.b $FC
		dc.b $5E ; ^
		dc.b $29 ; )
		dc.b   3
		dc.b $6D ; m
		dc.b $53 ; S
		dc.b $E4
		dc.b $2A ; *
		dc.b $E6
		dc.b $F8
		dc.b  $C
		dc.b   3
		dc.b $3A ; :
		dc.b $89
		dc.b   3
		dc.b $2E ; .
		dc.b $89
		dc.b   3
		dc.b $E2
		dc.b $94
		dc.b $C4
		dc.b $8E
		dc.b $FC
		dc.b $D6
		dc.b   3
		dc.b $96
		dc.b $29 ; )
		dc.b   3
		dc.b $CC
		dc.b $EA
		dc.b $B6
		dc.b $D6
		dc.b $E8
		dc.b $91
		dc.b $9A
		dc.b $F8
		dc.b  $A
		dc.b $36 ; 6
		dc.b $29 ; )
		dc.b   4
		dc.b $BA
		dc.b $7C ; |
		dc.b $2C ; ,
		dc.b   5
		dc.b $84
		dc.b $89
		dc.b   5
		dc.b $1B
		dc.b $6D ; m
		dc.b $64 ; d
		dc.b $F1
		dc.b   0
		dc.b $AC
		dc.b $F2
		dc.b $F0
		dc.b  $C
		dc.b $F4
		dc.b $FC
		dc.b $30 ; 0
		dc.b $69 ; i
		dc.b   6
		dc.b $D8
		dc.b $F1
		dc.b   6
		dc.b $ED
		dc.b $A8
		dc.b  $C
		dc.b $F2
		dc.b $20
		dc.b $F1
		dc.b   6
		dc.b $18
		dc.b $F1
		dc.b   6
		dc.b $BE
		dc.b $B0
		dc.b $52 ; R
		dc.b $8A
		dc.b $DA
		dc.b $B6
		dc.b $4E ; N
		dc.b $31 ; 1
		dc.b $D2
		dc.b $F8
		dc.b  $A
		dc.b $72 ; r
		dc.b $F1
		dc.b   5
		dc.b $F4
		dc.b $81
		dc.b   5
		dc.b $1C
		dc.b $29 ; )
		dc.b   3
		dc.b $E4
		dc.b $82
		dc.b $60 ; `
		dc.b $ED
		dc.b $E8
		dc.b $E2
		dc.b $F8
		dc.b  $B
		dc.b   7
		dc.b $1C
		dc.b $F1
		dc.b   7
		dc.b $A6
		dc.b $81
		dc.b   7
		dc.b $B0
		dc.b $FC
		dc.b $A0
		dc.b $21 ; !
		dc.b   8
		dc.b $88
		dc.b $DB
		dc.b $48 ; H
		dc.b $DE
		dc.b $24 ; $
		dc.b   7
		dc.b $50 ; P
		dc.b $B2
		dc.b $85
		dc.b $32 ; 2
		dc.b $E2
		dc.b $E1
		dc.b $86
		dc.b $AB
		dc.b $74 ; t
		dc.b $EA
		dc.b $E1
		dc.b  $F
		dc.b $FA
		dc.b $63 ; c
		dc.b   8
		dc.b $58 ; X
		dc.b $56 ; V
		dc.b $E9
		dc.b $4E ; N
		dc.b $EA
		dc.b $62 ; b
		dc.b  $C
		dc.b   0
		dc.b $E9
		dc.b $FC
		dc.b $BB
		dc.b $E4
		dc.b $76 ; v
		dc.b $E4
		dc.b  $C
		dc.b   2
		dc.b $6C ; l
		dc.b $FA
		dc.b $58 ; X
		dc.b $AA
		dc.b $FA
		dc.b $D0
		dc.b $FC
		dc.b $F4
		dc.b $E6
		dc.b $FF
		dc.b $78 ; x
		dc.b  $C
		dc.b $EC
		dc.b $E6
		dc.b   6
		dc.b $FA
		dc.b $E6
		dc.b $B8
		dc.b $21 ; !
		dc.b $FC
		dc.b $35 ; 5
		dc.b $4C ; L
		dc.b $DA
		dc.b $51 ; Q
		dc.b $9E
		dc.b $C9
		dc.b $6E ; n
		dc.b $49 ; I
		dc.b $80
		dc.b $FA
		dc.b $66 ; f
		dc.b   4
		dc.b $C2
		dc.b $63 ; c
		dc.b $B6
		dc.b $F0
		dc.b $D1
		dc.b $DE
		dc.b $20
		dc.b $1B
		dc.b  $E
		dc.b $50 ; P
		dc.b $E8
		dc.b $66 ; f
		dc.b $9B
		dc.b $AA
		dc.b $D2
		dc.b $E4
		dc.b  $E
		dc.b $E8
		dc.b $FF
		dc.b $40 ; @
		dc.b $D4
		dc.b   4
		dc.b $BA
		dc.b $E1
		dc.b $D4
		dc.b $FE
		dc.b $37 ; 7
		dc.b $18
		dc.b $B8
		dc.b $D1
		dc.b  $A
		dc.b $E2
		dc.b $47 ; G
		dc.b $5E ; ^
		dc.b $59 ; Y
		dc.b $C0
		dc.b $FA
		dc.b $B2
		dc.b $D1
		dc.b   8
		dc.b $87
		dc.b $3F ; ?
		dc.b $FC
		dc.b   6
		dc.b   4
		dc.b $D8
		dc.b $10
		dc.b $1B
		dc.b  $C
		dc.b   2
		dc.b $6E ; n
		dc.b   1
		dc.b $FF
		dc.b $20
		dc.b $72 ; r
		dc.b $FA
		dc.b $F4
		dc.b $B4
		dc.b $F4
		dc.b  $E
		dc.b $A6
		dc.b $D8
		dc.b $F4
		dc.b $94
		dc.b $E0
		dc.b $C0
		dc.b  $C
		dc.b $4A ; J
		dc.b $FD
		dc.b $68 ; h
		dc.b $58 ; X
		dc.b   8
		dc.b $FC
		dc.b $EC
		dc.b $69 ; i
		dc.b $4A ; J
		dc.b $FA
		dc.b  $E
		dc.b $67 ; g
		dc.b $D2
		dc.b $F8
		dc.b  $F
		dc.b $C5
		dc.b $78 ; x
		dc.b $BA
		dc.b $FF
		dc.b $92
		dc.b $FE
		dc.b $D4
		dc.b $7C ; |
		dc.b $6E ; n
		dc.b   8
		dc.b $1B
		dc.b $7E ; ~
		dc.b   3
		dc.b $63 ; c
		dc.b $6E ; n
		dc.b $FF
		dc.b $33 ; 3
		dc.b $D6
		dc.b $50 ; P
		dc.b $A8
		dc.b   1
		dc.b $AC
		dc.b   8
		dc.b $62 ; b
		dc.b $66 ; f
		dc.b $F2
		dc.b $F6
		dc.b $48 ; H
		dc.b $99
		dc.b $E8
		dc.b $21 ; !
		dc.b $CC
		dc.b $BE
		dc.b $7C ; |
		dc.b $BE
		dc.b   0
		dc.b $BE
		dc.b $7C ; |
		dc.b $59 ; Y
		dc.b $24 ; $
		dc.b $1A
		dc.b $32 ; 2
		dc.b $E4
		dc.b $2E ; .
		dc.b $FC
		dc.b $48 ; H
		dc.b   4
		dc.b $89
		dc.b $FA
		dc.b $49 ; I
		dc.b $D8
		dc.b $44 ; D
		dc.b $4A ; J
		dc.b $EC
		dc.b $F1
		dc.b $C4
		dc.b  $E
		dc.b $6D ; m
		dc.b $D8
		dc.b $D9
		dc.b   1
		dc.b $43 ; C
		dc.b $FF
		dc.b $F8
		dc.b $A4
		dc.b $5E ; ^
		dc.b $C0
		dc.b $F2
		dc.b $6E ; n
		dc.b $D1
		dc.b $99
		dc.b $CA
		dc.b $DA
		dc.b $96
		dc.b $68 ; h
		dc.b $F1
		dc.b $7E ; ~
		dc.b $D1
		dc.b $B0
		dc.b $64 ; d
		dc.b $C4
		dc.b $82
		dc.b $88
		dc.b $FC
		dc.b $64 ; d
		dc.b $A6
		dc.b $64 ; d
		dc.b $7A ; z
		dc.b $36 ; 6
		dc.b $7C ; |
		dc.b $64 ; d
		dc.b $FC
		dc.b $B0
		dc.b $FC
		dc.b $F9
		dc.b $BA
		dc.b $E6
		dc.b $B0
		dc.b $F2
		dc.b $FD
		dc.b $A8
		dc.b  $C
		dc.b $58 ; X
		dc.b $F2
		dc.b   4
		dc.b $47 ; G
		dc.b $64 ; d
		dc.b $EE
		dc.b  $A
		dc.b $32 ; 2
		dc.b $F8
		dc.b  $B
		dc.b $37 ; 7
		dc.b $38 ; 8
		dc.b $C0
		dc.b $F8
		dc.b $1A
		dc.b $7A ; z
		dc.b $E4
		dc.b $C0
		dc.b $F8
		dc.b  $B
		dc.b $68 ; h
		dc.b $62 ; b
		dc.b $98
		dc.b $91
		dc.b $80
		dc.b $9C
		dc.b   4
		dc.b $16
		dc.b $EC
		dc.b $46 ; F
		dc.b $BE
		dc.b $32 ; 2
		dc.b $BE
		dc.b $FF
		dc.b $41 ; A
		dc.b $E8
		dc.b $64 ; d
		dc.b  $C
		dc.b $72 ; r
		dc.b $FD
		dc.b $50 ; P
		dc.b   3
		dc.b $40 ; @
		dc.b $D9
		dc.b $65 ; e
		dc.b $11
		dc.b $61 ; a
		dc.b   4
		dc.b $44 ; D
		dc.b $60 ; `
		dc.b $36 ; 6
		dc.b $E8
		dc.b $68 ; h
		dc.b $64 ; d
		dc.b $C6
		dc.b $F8
		dc.b $F4
		dc.b $46 ; F
		dc.b $7C ; |
		dc.b $46 ; F
		dc.b $68 ; h
		dc.b $30 ; 0
		dc.b $3C ; <
		dc.b $6D ; m
		dc.b $54 ; T
		dc.b   3
		dc.b $20
		dc.b $36 ; 6
		dc.b $C1
		dc.b $68 ; h
		dc.b $D4
		dc.b $C1
		dc.b $66 ; f
		dc.b $CE
		dc.b $A0
		dc.b $F5
		dc.b $BE
		dc.b $EC
		dc.b $B7
		dc.b $6E ; n
		dc.b  $C
		dc.b $D9
		dc.b $74 ; t
		dc.b $66 ; f
		dc.b $7C ; |
		dc.b $F2
		dc.b $74 ; t
		dc.b $B4
		dc.b $FE
		dc.b $EE
		dc.b $D2
		dc.b $67 ; g
		dc.b   6
		dc.b $AC
		dc.b $F3
		dc.b $66 ; f
		dc.b  $E
		dc.b $56 ; V
		dc.b $F2
		dc.b $68 ; h
		dc.b $F2
		dc.b $68 ; h
		dc.b $F3
		dc.b $68 ; h
		dc.b $E4
		dc.b $FC
		dc.b $BE
		dc.b $31 ; 1
		dc.b $56 ; V
		dc.b $17
		dc.b $EA
		dc.b $D2
		dc.b $E8
		dc.b  $A
		dc.b $9A
		dc.b $F7
		dc.b $48 ; H
		dc.b $FC
		dc.b $F8
		dc.b $B4
		dc.b $3A ; :
		dc.b $FC
		dc.b   9
		dc.b $D4
		dc.b $E0
		dc.b   8
		dc.b $C6
		dc.b $3A ; :
		dc.b $F0
		dc.b  $E
		dc.b $F8
		dc.b $EC
		dc.b $D4
		dc.b $99
		dc.b $51 ; Q
		dc.b $75 ; u
		dc.b  $A
		dc.b $6A ; j
		dc.b $FC
		dc.b   0
		dc.b $F2
		dc.b $E8
		dc.b $FC
		dc.b $5C ; \
		dc.b $F1
		dc.b $76 ; v
		dc.b $F1
		dc.b $FF
		dc.b $F0
		dc.b $D0
		dc.b $8E
		dc.b $FA
		dc.b $76 ; v
		dc.b $E8
		dc.b  $C
		dc.b $72 ; r
		dc.b $42 ; B
		dc.b $22 ; "
		dc.b $98
		dc.b $EA
		dc.b $E4
		dc.b $4F ; O
		dc.b $55 ; U
		dc.b $55 ; U
		dc.b $A4
		dc.b $58 ; X
		dc.b $9E
		dc.b $EA
		dc.b $4C ; L
		dc.b $F4
		dc.b $78 ; x
		dc.b $E8
		dc.b  $B
		dc.b $E2
		dc.b $F0
		dc.b  $B
		dc.b $40 ; @
		dc.b $EC
		dc.b $1A
		dc.b $FC
		dc.b $92
		dc.b $FE
		dc.b $77 ; w
		dc.b $62 ; b
		dc.b $D8
		dc.b $FC
		dc.b $61 ; a
		dc.b $D8
		dc.b $B8
		dc.b $FF
		dc.b $10
		dc.b $44 ; D
		dc.b $5C ; \
		dc.b $B6
		dc.b $87
		dc.b $41 ; A
		dc.b $26 ; &
		dc.b $F0
		dc.b $23 ; #
		dc.b $F7
		dc.b $DC
		dc.b $D0
		dc.b   6
		dc.b $47 ; G
		dc.b   8
		dc.b $34 ; 4
		dc.b $F2
		dc.b $CB
		dc.b $EA
		dc.b $EE
		dc.b $FD
		dc.b $CE
		dc.b $BE
		dc.b $FC
		dc.b $86
		dc.b $92
		dc.b $FF
		dc.b $F2
		dc.b $F6
		dc.b $C0
		dc.b $F8
		dc.b $10
		dc.b $9C
		dc.b $B6
		dc.b $92
		dc.b $E4
		dc.b $F4
		dc.b $EA
		dc.b $40 ; @
		dc.b $C0
		dc.b $F8
		dc.b  $A
		dc.b $8E
		dc.b $DA
		dc.b $F3
		dc.b $C0
		dc.b $F8
		dc.b  $E
		dc.b $76 ; v
		dc.b $84
		dc.b $7A ; z
		dc.b $86
		dc.b $E1
		dc.b $3C ; <
		dc.b $EA
		dc.b $6C ; l
		dc.b $FC
		dc.b $E4
		dc.b $E1
		dc.b  $C
		dc.b $67 ; g
		dc.b  $A
		dc.b $52 ; R
		dc.b $1D
		dc.b $EA
		dc.b $20
		dc.b $FC
		dc.b $D4
		dc.b $E4
		dc.b $C8
		dc.b $F8
		dc.b  $B
		dc.b $16
		dc.b $F1
		dc.b  $C
		dc.b $80
		dc.b $AD
		dc.b $DA
		dc.b $EA
		dc.b $D8
		dc.b $E0
		dc.b  $E
		dc.b   1
		dc.b $D8
		dc.b $E6
		dc.b $A6
		dc.b $F1
		dc.b $6C ; l
		dc.b $FD
		dc.b $84
		dc.b $FD
		dc.b  $E
		dc.b $32 ; 2
		dc.b $F8
		dc.b $10
		dc.b $AA
		dc.b $86
		dc.b   0
		dc.b $32 ; 2
		dc.b $FC
		dc.b $F0
		dc.b $E4
		dc.b  $C
		dc.b $ED
		dc.b $90
		dc.b $FD
		dc.b $AC
		dc.b $E9
		dc.b $60 ; `
		dc.b $F0
		dc.b $8D
		dc.b $A0
		dc.b $62 ; b
		dc.b   4
		dc.b $CE
		dc.b $E9
		dc.b $7E ; ~
		dc.b $84
		dc.b $28 ; (
		dc.b $B8
		dc.b $E5
		dc.b $A2
		dc.b $55 ; U
		dc.b $FA
		dc.b $E9
		dc.b $76 ; v
		dc.b $E9
		dc.b $F4
		dc.b $EE
		dc.b $EA
		dc.b $40 ; @
		dc.b $20
		dc.b $F0
		dc.b  $E
		dc.b $F2
		dc.b $FF
		dc.b $9C
		dc.b $C4
		dc.b $42 ; B
		dc.b $ED
		dc.b $6E ; n
		dc.b $FC
		dc.b $70 ; p
		dc.b $FD
		dc.b $8C
		dc.b $D9
		dc.b $66 ; f
		dc.b $B0
		dc.b $A2
		dc.b $A0
		dc.b $F5
		dc.b $B6
		dc.b   0
		dc.b $80
		dc.b $3A ; :
		dc.b $B1
		dc.b $E4
		dc.b $71 ; q
		dc.b $A0
		dc.b $E2
		dc.b $40 ; @
		dc.b $62 ; b
		dc.b $E9
		dc.b   6
		dc.b $42 ; B
		dc.b $EB
		dc.b $66 ; f
		dc.b $68 ; h
		dc.b $55 ; U
		dc.b $C6
		dc.b $FE
		dc.b  $E
		dc.b $DA
		dc.b $F8
		dc.b $10
		dc.b $44 ; D
		dc.b $D8
		dc.b $FD
		dc.b $76 ; v
		dc.b $EB
		dc.b $12
		dc.b $F8
		dc.b  $A
		dc.b $A4
		dc.b $F8
		dc.b   9
		dc.b $5A ; Z
		dc.b $23 ; #
		dc.b $44 ; D
		dc.b $E4
		dc.b $40 ; @
		dc.b $4E ; N
		dc.b $E2
		dc.b $E4
		dc.b $F4
		dc.b $54 ; T
		dc.b $E6
		dc.b $86
		dc.b $8A
		dc.b $D0
		dc.b $80
		dc.b $FA
		dc.b $63 ; c
		dc.b $94
		dc.b $61 ; a
		dc.b $EA
		dc.b $F1
		dc.b $68 ; h
		dc.b $AC
		dc.b $34 ; 4
		dc.b $36 ; 6
		dc.b $D6
		dc.b $E2
		dc.b $78 ; x
		dc.b $34 ; 4
		dc.b  $C
		dc.b $C2
		dc.b $F8
		dc.b  $D
		dc.b $A0
		dc.b $BA
		dc.b $AA
		dc.b $F1
		dc.b $E0
		dc.b $C6
		dc.b $FD
		dc.b $A8
		dc.b $DE
		dc.b $98
		dc.b $E8
		dc.b   9
		dc.b $C2
		dc.b $EE
		dc.b $F5
		dc.b $D2
		dc.b $DA
		dc.b $92
		dc.b $C8
		dc.b $E8
		dc.b   9
		dc.b $C4
		dc.b $F8
		dc.b  $C
		dc.b $D0
		dc.b $F8
		dc.b   9
		dc.b $10
		dc.b $C4
		dc.b $BD
		dc.b $F8
		dc.b $C4
		dc.b $BA
		dc.b $E0
		dc.b $1A
		dc.b $E1
		dc.b $50 ; P
		dc.b $F3
		dc.b $A8
		dc.b $E4
		dc.b $6A ; j
		dc.b $EE
		dc.b   6
		dc.b $B0
		dc.b $EE
		dc.b $47 ; G
		dc.b   2
		dc.b $9D
		dc.b $84
		dc.b   0
		dc.b $E4
		dc.b $BE
		dc.b $D1
		dc.b $F5
		dc.b $7E ; ~
		dc.b $AC
		dc.b $44 ; D
		dc.b $E8
		dc.b  $B
		dc.b $B6
		dc.b $2A ; *
		dc.b $53 ; S
		dc.b $FE
		dc.b $44 ; D
		dc.b $B9
		dc.b $CA
		dc.b $E0
		dc.b  $D
		dc.b $BA
		dc.b $FC
		dc.b $78 ; x
		dc.b $CC
		dc.b $4A ; J
		dc.b $35 ; 5
		dc.b $89
		dc.b $4A ; J
		dc.b $F3
		dc.b $CA
		dc.b $F8
		dc.b  $E
		dc.b $34 ; 4
		dc.b $D3
		dc.b $28 ; (
		dc.b $CA
		dc.b $40 ; @
		dc.b $B8
		dc.b  $B
		dc.b $14
		dc.b $AD
		dc.b $58 ; X
		dc.b $14
		dc.b  $E
		dc.b $FC
		dc.b $18
		dc.b $DA
		dc.b $C0
		dc.b $F6
		dc.b $B2
		dc.b $28 ; (
		dc.b $AF
		dc.b $BA
		dc.b $F1
		dc.b $3A ; :
		dc.b $16
		dc.b $D2
		dc.b $A2
		dc.b   8
		dc.b $66 ; f
		dc.b $8E
		dc.b $EB
		dc.b $58 ; X
		dc.b $D2
		dc.b $C2
		dc.b $EC
		dc.b $E4
		dc.b $7E ; ~
		dc.b $30 ; 0
		dc.b $ED
		dc.b $8A
		dc.b $92
		dc.b $D9
		dc.b $BE
		dc.b $E8
		dc.b  $B
		dc.b $61 ; a
		dc.b $98
		dc.b $F4
		dc.b $D0
		dc.b $86
		dc.b $CF
		dc.b $EE
		dc.b $DE
		dc.b $E0
		dc.b $87
		dc.b $4C ; L
		dc.b $1E
		dc.b $80
		dc.b $A0
		dc.b $E9
		dc.b $7E ; ~
		dc.b $E8
		dc.b $D4
		dc.b $A3
		dc.b   8
		dc.b $30 ; 0
		dc.b $3C ; <
		dc.b $8A
		dc.b $AA
		dc.b $2E ; .
		dc.b $90
		dc.b   8
		dc.b $71 ; q
		dc.b $E6
		dc.b $E6
		dc.b $E9
		dc.b $5A ; Z
		dc.b $E0
		dc.b  $B
		dc.b $EC
		dc.b $F0
		dc.b  $F
		dc.b $AC
		dc.b $6B ; k
		dc.b $CC
		dc.b $F0
		dc.b  $E
		dc.b $DA
		dc.b $34 ; 4
		dc.b $F8
		dc.b  $B
		dc.b $90
		dc.b $F6
		dc.b $F4
		dc.b $62 ; b
		dc.b $54 ; T
		dc.b $E0
		dc.b   9
		dc.b $30 ; 0
		dc.b $E5
		dc.b $10
		dc.b $AD
		dc.b $AC
		dc.b $20
		dc.b $F8
		dc.b  $F
		dc.b $C8
		dc.b $F8
		dc.b $14
		dc.b $2A ; *
		dc.b $1A
		dc.b $E0
		dc.b  $B
		dc.b $CE
		dc.b $F8
		dc.b  $A
		dc.b $7E ; ~
		dc.b $EE
		dc.b $F8
		dc.b  $C
		dc.b $82
		dc.b $AA
		dc.b $1C
		dc.b $B5
		dc.b   4
		dc.b $FC
		dc.b $40 ; @
		dc.b $2C ; ,
		dc.b $F0
		dc.b  $F
		dc.b $9E
		dc.b $D1
		dc.b $60 ; `
		dc.b $FD
		dc.b $DE
		dc.b $DB
		dc.b $B8
		dc.b $A2
		dc.b $7E ; ~
		dc.b $F4
		dc.b $9E
		dc.b $F3
		dc.b $C8
		dc.b $80
		dc.b $F0
		dc.b   9
		dc.b $C6
		dc.b $C6
		dc.b $FA
		dc.b $90
		dc.b $AA
		dc.b $7E ; ~
		dc.b $F1
		dc.b $CC
		dc.b   5
		dc.b $CC
		dc.b $14
		dc.b  $C
		dc.b $F8
		dc.b  $F
		dc.b $64 ; d
		dc.b $C8
		dc.b  $A
		dc.b $AE
		dc.b $1D
		dc.b $F2
		dc.b $EC
		dc.b $A8
		dc.b $F0
		dc.b  $C
		dc.b $F3
		dc.b $78 ; x
		dc.b $AA
		dc.b $F0
		dc.b   9
		dc.b $EE
		dc.b $FD
		dc.b $62 ; b
		dc.b $EE
		dc.b $FC
		dc.b   6
		dc.b $47 ; G
		dc.b $34 ; 4
		dc.b $2E ; .
		dc.b $7C ; |
		dc.b $50 ; P
		dc.b $E2
		dc.b $B0
		dc.b $F8
		dc.b  $B
		dc.b  $C
		dc.b $EC
		dc.b $63 ; c
		dc.b  $C
		dc.b $44 ; D
		dc.b $FC
		dc.b $A2
		dc.b $5C ; \
		dc.b $EE
		dc.b $E8
		dc.b $76 ; v
		dc.b $F2
		dc.b $52 ; R
		dc.b   6
		dc.b $DE
		dc.b $F0
		dc.b  $C
		dc.b $B5
		dc.b $36 ; 6
		dc.b $10
		dc.b $FD
		dc.b $90
		dc.b $C2
		dc.b $3E ; >
		dc.b $E1
		dc.b   6
		dc.b $96
		dc.b $C3
		dc.b $B8
		dc.b $E1
		dc.b $6A ; j
		dc.b $FA
		dc.b $BA
		dc.b   6
		dc.b $36 ; 6
		dc.b $B7
		dc.b $EE
		dc.b  $A
		dc.b $84
		dc.b $C5
		dc.b  $A
		dc.b $EE
		dc.b  $A
		dc.b $BC
		dc.b $E1
		dc.b  $A
		dc.b $AA
		dc.b $55 ; U
		dc.b $B0
		dc.b $D9
		dc.b $84
		dc.b $EF
		dc.b $A4
		dc.b $F0
		dc.b  $B
		dc.b $3A ; :
		dc.b $C7
		dc.b $9A
		dc.b $EA
		dc.b $14
		dc.b $9A
		dc.b $E8
		dc.b $12
		dc.b $D6
		dc.b $C0
		dc.b  $C
		dc.b $A4
		dc.b $E9
		dc.b $85
		dc.b $BA
		dc.b $20
		dc.b $FD
		dc.b $90
		dc.b $E1
		dc.b $CE
		dc.b $7C ; |
		dc.b $6A ; j
		dc.b $FF
		dc.b $4E ; N
		dc.b $FF
		dc.b $60 ; `
		dc.b $40 ; @
		dc.b $A2
		dc.b $AB
		dc.b $DC
		dc.b $F8
		dc.b  $B
		dc.b $8A
		dc.b $E9
		dc.b $DC
		dc.b $CC
		dc.b $F0
		dc.b  $F
		dc.b $60 ; `
		dc.b $1C
		dc.b $DC
		dc.b $F8
		dc.b   9
		dc.b   6
		dc.b $F0
		dc.b $11
		dc.b $3B ; ;
		dc.b $A8
		dc.b $D8
		dc.b $F4
		dc.b $F2
		dc.b $3A ; :
		dc.b $2C ; ,
		dc.b $D8
		dc.b  $F
		dc.b $F2
		dc.b $2C ; ,
		dc.b $EE
		dc.b $30 ; 0
		dc.b $DB
		dc.b $C6
		dc.b $E8
		dc.b   9
		dc.b $9E
		dc.b $7E ; ~
		dc.b $DE
		dc.b $B9
		dc.b $3A ; :
		dc.b $BB
		dc.b $7C ; |
		dc.b $7E ; ~
		dc.b   0
		dc.b $DC
		dc.b $E9
		dc.b $4F ; O
		dc.b $8F
		dc.b $FC
		dc.b   0
		dc.b $44 ; D
		dc.b $AC
		dc.b $45 ; E
		dc.b $D6
		dc.b   2
		dc.b $D6
		dc.b $F8
		dc.b  $B
		dc.b $86
		dc.b $C1
		dc.b $B2
		dc.b $6E ; n
		dc.b $E9
		dc.b $DA
		dc.b   9
		dc.b $EC
		dc.b $76 ; v
		dc.b $D8
		dc.b  $A
		dc.b $AC
		dc.b $C4
		dc.b $3E ; >
		dc.b $D1
		dc.b $E5
		dc.b  $A
		dc.b $F1
		dc.b $F1
		dc.b $5A ; Z
		dc.b $BF
		dc.b $D2
		dc.b $44 ; D
		dc.b $D4
		dc.b $D2
		dc.b $FD
		dc.b $84
		dc.b $BE
		dc.b $F2
		dc.b $1C
		dc.b $EF
		dc.b $B9
		dc.b   0
		dc.b   2
		dc.b   0
		dc.b $FF
		dc.b $A5
		dc.b $FD
		dc.b $E0
		dc.b $29 ; )
		dc.b $F6
		dc.b $A2
		dc.b $2A ; *
		dc.b $F6
		dc.b $67 ; g
		dc.b $F6
		dc.b $84
		dc.b $79 ; y
		dc.b $B2
		dc.b $61 ; a
		dc.b $34 ; 4
		dc.b $42 ; B
		dc.b $C3
		dc.b $EE
		dc.b $AE
		dc.b   0
		dc.b $24 ; $
		dc.b $F6
		dc.b $D8
		dc.b $94
		dc.b $E8
		dc.b $FF
		dc.b $F2
		dc.b $4C ; L
		dc.b $D4
		dc.b $11
		dc.b   0
		dc.b $3F ; ?
		dc.b $84
		dc.b $14
		dc.b $4A ; J
		dc.b $40 ; @
		dc.b $67 ; g
		dc.b $E4
		dc.b $3D ; =
		dc.b $40 ; @
		dc.b $E4
		dc.b $53 ; S
		dc.b $A4
		dc.b $AD
		dc.b  $F
		dc.b $40 ; @
		dc.b $45 ; E
		dc.b $96
		dc.b $53 ; S
		dc.b $47 ; G
		dc.b $D8
		dc.b $91
		dc.b $DD
		dc.b $31 ; 1
		dc.b $BB
		dc.b   0
		dc.b $1A
		dc.b   8
		dc.b $92
		dc.b $1B
		dc.b $F6
		dc.b $CA
		dc.b $61 ; a
		dc.b $BC
		dc.b $DE
		dc.b $20
		dc.b  $B
		dc.b $60 ; `
		dc.b $B4
		dc.b $FC
		dc.b $A9
		dc.b $1E
		dc.b $55 ; U
		dc.b $3B ; ;
		dc.b $FC
		dc.b   4
		dc.b $A9
		dc.b $96
		dc.b $33 ; 3
		dc.b $72 ; r
		dc.b $32 ; 2
		dc.b $DA
		dc.b $A1
		dc.b   0
		dc.b $48 ; H
		dc.b $A9
		dc.b   1
		dc.b $14
		dc.b $FE
		dc.b $20
		dc.b $FC
		dc.b $2C ; ,
		dc.b $41 ; A
		dc.b $EA
		dc.b $40 ; @
		dc.b $10
		dc.b $43 ; C
		dc.b $FC
		dc.b $9C
		dc.b $29 ; )
		dc.b $FE
		dc.b $7F ; 
		dc.b $B8
		dc.b $B8
		dc.b $5F ; _
		dc.b $16
		dc.b $65 ; e
		dc.b   2
		dc.b $72 ; r
		dc.b   3
		dc.b $D2
		dc.b $41 ; A
		dc.b $35 ; 5
		dc.b $7B ; {
		dc.b $10
		dc.b  $A
		dc.b $2B ; +
		dc.b $7C ; |
		dc.b $4F ; O
		dc.b $61 ; a
		dc.b $29 ; )
		dc.b $A2
		dc.b $4A ; J
		dc.b $42 ; B
		dc.b $71 ; q
		dc.b $FE
		dc.b   1
		dc.b $80
		dc.b $81
		dc.b  $C
		dc.b $6A ; j
		dc.b $B0
		dc.b $DE
		dc.b $FC
		dc.b $88
		dc.b $61 ; a
		dc.b $18
		dc.b $D2
		dc.b $FD
		dc.b $3C ; <
		dc.b $2A ; *
		dc.b $16
		dc.b  $C
		dc.b $40 ; @
		dc.b $5C ; \
		dc.b $19
		dc.b $FB
		dc.b $E1
		dc.b  $A
		dc.b  $C
		dc.b $41 ; A
		dc.b $56 ; V
		dc.b $1A
		dc.b $70 ; p
		dc.b   0
		dc.b $72 ; r
		dc.b   0
		dc.b $35 ; 5
		dc.b $E5
		dc.b   2
		dc.b $35 ; 5
		dc.b $62 ; b
		dc.b $3E ; >
		dc.b $41 ; A
		dc.b $64 ; d
		dc.b $AA
		dc.b $DE
		dc.b   6
		dc.b $B0
		dc.b  $A
		dc.b $35 ; 5
		dc.b $7C ; |
		dc.b $15
		dc.b $71 ; q
		dc.b $C8
		dc.b $61 ; a
		dc.b  $C
		dc.b $49 ; I
		dc.b $F6
		dc.b $5B ; [
		dc.b $42 ; B
		dc.b $6A ; j
		dc.b $40 ; @
		dc.b $FC
		dc.b $DC
		dc.b $FC
		dc.b $DC
		dc.b $32 ; 2
		dc.b $2A ; *
		dc.b   0
		dc.b  $A
		dc.b  $D
		dc.b $60 ; `
		dc.b $48 ; H
		dc.b $41 ; A
		dc.b $8A
		dc.b $31 ; 1
		dc.b  $A
		dc.b $AC
		dc.b $9D
		dc.b $92
		dc.b $61 ; a
		dc.b  $C
		dc.b $4C ; L
		dc.b $D0
		dc.b $CA
		dc.b   7
		dc.b $CA
		dc.b $E4
		dc.b $2A ; *
		dc.b $FF
		dc.b $F8
		dc.b   9
		dc.b $30 ; 0
		dc.b $8C
		dc.b   0
		dc.b $5C ; \
		dc.b   1
		dc.b $20
		dc.b $DE
		dc.b   1
		dc.b $30 ; 0
		dc.b  $D
		dc.b $2F ; /
		dc.b $E2
		dc.b   3
		dc.b $AC
		dc.b $FD
		dc.b $40 ; @
		dc.b $46 ; F
		dc.b $15
		dc.b $41 ; A
		dc.b   1
		dc.b $2B ; +
		dc.b $7A ; z
		dc.b $2A ; *
		dc.b $F8
		dc.b $11
		dc.b $AA
		dc.b $90
		dc.b $71 ; q
		dc.b $2E ; .
		dc.b $7E ; ~
		dc.b   2
		dc.b $41 ; A
		dc.b $EB
		dc.b $DA
		dc.b   8
		dc.b $A8
		dc.b $FC
		dc.b $DA
		dc.b $A4
		dc.b $DA
		dc.b $30 ; 0
		dc.b $E9
		dc.b $41 ; A
		dc.b $EE
		dc.b $F8
		dc.b  $A
		dc.b   8
		dc.b $EE
		dc.b $54 ; T
		dc.b $CF
		dc.b $FF
		dc.b $DC
		dc.b $20
		dc.b $CA
		dc.b $19
		dc.b $1C
		dc.b $30 ; 0
		dc.b $E8
		dc.b $42 ; B
		dc.b $2B ; +
		dc.b $C2
		dc.b $E8
		dc.b   5
		dc.b   1
		dc.b   0
		dc.b $E8
		dc.b $BE
		dc.b $40 ; @
		dc.b $BE
		dc.b $11
		dc.b   2
		dc.b $B4
		dc.b $E6
		dc.b $EA
		dc.b $DC
		dc.b   5
		dc.b $92
		dc.b $C0
		dc.b   6
		dc.b $5A ; Z
		dc.b $EA
		dc.b $E2
		dc.b $FE
		dc.b $56 ; V
		dc.b $F5
		dc.b $7A ; z
		dc.b $42 ; B
		dc.b $2A ; *
		dc.b $CA
		dc.b $F8
		dc.b $11
		dc.b $EA
		dc.b $29 ; )
		dc.b $76 ; v
		dc.b $F1
		dc.b $4E ; N
		dc.b $8A
		dc.b   6
		dc.b $49 ; I
		dc.b $E8
		dc.b $40 ; @
		dc.b $83
		dc.b $FD
		dc.b $10
		dc.b $47 ; G
		dc.b $E9
		dc.b $FC
		dc.b $F4
		dc.b $F2
		dc.b $74 ; t
		dc.b $4B ; K
		dc.b $81
		dc.b $78 ; x
		dc.b $1F
		dc.b $7A ; z
		dc.b $10
		dc.b $1F
		dc.b $63 ; c
		dc.b $48 ; H
		dc.b $D0
		dc.b   0
		dc.b  $F
		dc.b $48 ; H
		dc.b $D1
		dc.b $FC
		dc.b $D2
		dc.b $FC
		dc.b $D3
		dc.b $78 ; x
		dc.b $DB
		dc.b $FC
		dc.b $D1
		dc.b $C5
		dc.b $D3
		dc.b $C5
		dc.b $7A ; z
		dc.b $59 ; Y
		dc.b $EA
		dc.b $D0
		dc.b $62 ; b
		dc.b   0
		dc.b $E2
		dc.b $39 ; 9
		dc.b $6E ; n
		dc.b $F8
		dc.b $D6
		dc.b $4C ; L
		dc.b   9
		dc.b $D7
		dc.b $B0
		dc.b $10
		dc.b $F1
		dc.b $7A ; z
		dc.b $FC
		dc.b $E3
		dc.b $30 ; 0
		dc.b $52 ; R
		dc.b $6E ; n
		dc.b $41 ; A
		dc.b   0
		dc.b $1D
		dc.b $86
		dc.b $76 ; v
		dc.b   0
		dc.b $F0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dc.b   0
		dcb.b $1380,$FF
kos_16000:      dc.b  $F		; DATA XREF: sub_68A+18↑o
		dc.b   1
		dc.b   0
		dc.b   0
		dc.b $5E ; ^
		dc.b $80
		dc.b $FC
		dc.b   2
		dc.b $FD
		dc.b $C2
		dc.b $18
		dc.b $FC
		dc.b   6
		dc.b $FC
		dc.b $5F ; _
		dc.b $40 ; @
		dc.b $FC
		dc.b $46 ; F
		dc.b $63 ; c
		dc.b $8C
		dc.b $FC
		dc.b $4C ; L
		dc.b $FC
		dc.b $52 ; R
		dc.b $FC
		dc.b $58 ; X
		dc.b $31 ; 1
		dc.b $C6
		dc.b $FC
		dc.b $5E ; ^
		dc.b $FC
		dc.b $64 ; d
		dc.b $FC
		dc.b $6A ; j
		dc.b $FC
		dc.b $3A ; :
		dc.b $C6
		dc.b $70 ; p
		dc.b $D8
		dc.b $FC
		dc.b $FC
		dc.b $F8
		dc.b $2F ; /
		dc.b $5F ; _
		dc.b $76 ; v
		dc.b $FC
		dc.b $7C ; |
		dc.b $FC
		dc.b $18
		dc.b $63 ; c
		dc.b $82
		dc.b $FC
		dc.b $88
		dc.b $FC
		dc.b $8E
		dc.b $FC
		dc.b $94
		dc.b $8C
		dc.b $31 ; 1
		dc.b $FC
		dc.b $9A
		dc.b $FC
		dc.b $A0
		dc.b $FC
		dc.b $A6
		dc.b $C6
		dc.b $18
		dc.b $FC
		dc.b $AC
		dc.b $FC
		dc.b $B2
		dc.b $FC
		dc.b $B8
		dc.b $63 ; c
		dc.b $8C
		dc.b $FC
		dc.b $BE
		dc.b $FC
		dc.b $C4
		dc.b $FC
		dc.b $CA
		dc.b $31 ; 1
		dc.b $C6
		dc.b $FC
		dc.b $D0
		dc.b $FC
		dc.b $D6
		dc.b $FC
		dc.b $DC
		dc.b $FC
		dc.b $18
		dc.b $63 ; c
		dc.b $E2
		dc.b $FC
		dc.b $E8
		dc.b $FC
		dc.b $EE
		dc.b $FC
		dc.b $F4
		dc.b $AC
		dc.b $3F ; ?
		dc.b $FC
		dc.b $FA
		dc.b $70 ; p
		dc.b $F8
		dc.b $35 ; 5
		dc.b $FC
		dc.b $F8
		dc.b   9
		dc.b $53 ; S
		dc.b $45 ; E
		dc.b $47 ; G
		dc.b $41 ; A
		dc.b $20
		dc.b $4D ; M
		dc.b $1D
		dc.b $CF
		dc.b $FB
		dc.b $43 ; C
		dc.b $44 ; D
		dc.b $20
		dc.b $FF
		dc.b $28 ; (
		dc.b $43 ; C
		dc.b $29 ; )
		dc.b $FF
		dc.b $F0
		dc.b $ED
		dc.b $31 ; 1
		dc.b $39 ; 9
		dc.b $39 ; 9
		dc.b $31 ; 1
		dc.b $2E ; .
		dc.b $4E ; N
		dc.b $4F ; O
		dc.b $56 ; V
		dc.b $EA
		dc.b $2D ; -
		dc.b $52 ; R
		dc.b $4F ; O
		dc.b $9F
		dc.b $E0
		dc.b $4D ; M
		dc.b $20
		dc.b $42 ; B
		dc.b $49 ; I
		dc.b $4F ; O
		dc.b $53 ; S
		dc.b $E1
		dc.b $FF
		dc.b $31 ; 1
		dc.b $31 ; 1
		dc.b $27 ; '
		dc.b $BF
		dc.b $2F ; /
		dc.b $31 ; 1
		dc.b $34 ; 4
		dc.b $2D ; -
		dc.b $E1
		dc.b $F0
		dc.b $FC
		dc.b $32 ; 2
		dc.b $31 ; 1
		dc.b $3A ; :
		dc.b $30 ; 0
		dc.b $30 ; 0
		dc.b $A1
		dc.b $1E
		dc.b $E6
		dc.b $FC
		dc.b $2E ; .
		dc.b $F7
		dc.b $63 ; c
		dc.b $D0
		dc.b $F8
		dc.b $10
		dc.b $FF
		dc.b $F8
		dc.b $1E
		dc.b $42 ; B
		dc.b $52 ; R
		dc.b $20
		dc.b $30 ; 0
		dc.b $E0
		dc.b $CA
		dc.b $FF
		dc.b $32 ; 2
		dc.b $AD
		dc.b $C1
		dc.b $57 ; W
		dc.b $8A
		dc.b $43 ; C
		dc.b $DF
		dc.b $E0
		dc.b $F8
		dc.b  $F
		dc.b $67 ; g
		dc.b $F1
		dc.b $FF
		dc.b $53 ; S
		dc.b $FF
		dc.b $FC
		dc.b $54 ; T
		dc.b $F8
		dc.b $3F ; ?
		dc.b $FD
		dc.b   7
		dc.b $FF
		dc.b $FF
		dc.b $52 ; R
		dc.b $41 ; A
		dc.b $F8
		dc.b $20
		dc.b $FF
		dc.b $FE
		dc.b   0
		dc.b   1
		dc.b $AC
		dc.b $DD
		dc.b $FC
		dc.b $3F ; ?
		dc.b $FF
		dc.b $9F
		dc.b $F8
		dc.b $24 ; $
		dc.b $FF
		dc.b $F8
		dc.b  $E
		dc.b $4A ; J
		dc.b $F0
		dc.b $F8
		dc.b  $E
		dc.b $4E ; N
		dc.b $F9
		dc.b $FA
		dc.b $F1
		dc.b $FC
		dc.b $75 ; u
		dc.b $56 ; V
		dc.b $FA
		dc.b $50 ; P
		dc.b $4E ; N
		dc.b $75 ; u
		dc.b $4E ; N
		dc.b $73 ; s
		dc.b $90
		dc.b $FC
		dc.b $FF
		dc.b $F8
		dc.b $39 ; 9
		dc.b $2E ; .
		dc.b $79 ; y
		dc.b $FA
		dc.b $3F ; ?
		dc.b $FA
		dc.b $42 ; B
		dc.b $38 ; 8
		dc.b $80
		dc.b $33 ; 3
		dc.b $46 ; F
		dc.b $FC
		dc.b $27 ; '
		dc.b   0
		dc.b $4C ; L
		dc.b $FA
		dc.b $7F ; 
		dc.b $7C ; |
		dc.b $B8
		dc.b $4D ; M
		dc.b $AE
		dc.b $4E ; N
		dc.b $60 ; `
		dc.b $11
		dc.b $FC
		dc.b $EC
		dc.b $80
		dc.b $37 ; 7
		dc.b   8
		dc.b $E3
		dc.b $E1
		dc.b $26 ; &
		dc.b $F1
		dc.b $80
		dc.b   1
		dc.b $F4
		dc.b   2
		dc.b $80
		dc.b   0
		dc.b $39 ; 9
		dc.b $80
		dc.b   3
		dc.b $E1
		dc.b $61 ; a
		dc.b   8
		dc.b $10
		dc.b $F6
		dc.b $67 ; g
		dc.b   6
		dc.b   8
		dc.b $90
		dc.b $FA
		dc.b $60 ; `
		dc.b $F4
		dc.b $7C ; |
		dc.b $F1
		dc.b $F4
		dc.b   1
		dc.b $67 ; g
		dc.b   4
		dc.b   8
		dc.b $14
		dc.b $F1
		dc.b $E0
		dc.b  $F
		dc.b $80
		dc.b $3C ; <
		dc.b  $D
		dc.b   5
		dc.b $CE
		dc.b   7
		dc.b $31 ; 1
		dc.b $FA
		dc.b  $C
		dc.b $70 ; p
		dc.b $47 ; G
		dc.b $C8
		dc.b $EC
		dc.b $C0
		dc.b $80
		dc.b  $F
		dc.b $CE
		dc.b $51 ; Q
		dc.b $C0
		dc.b $F9
		dc.b $EF
		dc.b $FE
		dc.b $80
		dc.b $E8
		dc.b $34 ; 4
		dc.b $43 ; C
		dc.b $FA
		dc.b $FE
		dc.b $42 ; B
		dc.b  $C
		dc.b $91
		dc.b $51 ; Q
		dc.b $F2
		dc.b $66 ; f
		dc.b $FF
		dc.b $FF
		dc.b   0
		dc.b $FF
		dc.b $3E ; >
		dc.b $22 ; "
		dc.b $29 ; )
		dc.b   0
		dc.b $A4
		dc.b $52 ; R
		dc.b $81
		dc.b $41 ; A
		dc.b $FA
		dc.b $FF
		dc.b $2E ; .
		dc.b $92
		dc.b $88
		dc.b $E2
		dc.b $3F ; ?
		dc.b $FC
		dc.b $89
		dc.b $34 ; 4
		dc.b   1
		dc.b $53 ; S
		dc.b $42 ; B
		dc.b $48 ; H
		dc.b $41 ; A
		dc.b $C6
		dc.b $D0
		dc.b $58 ; X
		dc.b $51 ; Q
		dc.b $CA
		dc.b $FF
		dc.b $1F
		dc.b $42 ; B
		dc.b $FC
		dc.b $51 ; Q
		dc.b $C9
		dc.b $FF
		dc.b $F8
		dc.b $32 ; 2
		dc.b $E0
		dc.b $8E
		dc.b $92
		dc.b $B0
		dc.b $DA
		dc.b $87
		dc.b $D4
		dc.b $12
		dc.b $20
		dc.b $74 ; t
		dc.b $E9
		dc.b $58 ; X
		dc.b   0
		dc.b $22 ; "
		dc.b $3C ; <
		dc.b $FA
		dc.b $C7
		dc.b $83
		dc.b $60 ; `
		dc.b   0
		dc.b   4
		dc.b $81
		dc.b $F4
		dc.b   1
		dc.b $E8
		dc.b $89
		dc.b $D4
		dc.b $F1
		dc.b $C3
		dc.b $A2
		dc.b $FD
		dc.b $C0
		dc.b $D2
		dc.b $F6
		dc.b $30 ; 0
		dc.b $3C ; <
		dc.b $4E ; N
		dc.b $F9
		dc.b $B4
		dc.b $FE
		dc.b $FF
		dc.b $63 ; c
		dc.b $EE
		dc.b $43 ; C
		dc.b $F8
		dc.b $5E ; ^
		dc.b $E0
		dc.b $72 ; r
		dc.b  $F
		dc.b $32 ; 2
		dc.b $C0
		dc.b $22 ; "
		dc.b $C8
		dc.b $EA
		dc.b $FA
		dc.b $BC
		dc.b $F7
		dc.b $EE
		dc.b $D6
		dc.b $72 ; r
		dc.b   8
		dc.b $F2
		dc.b $F8
		dc.b  $A
		dc.b $D0
		dc.b $72 ; r
		dc.b $16
		dc.b $F2
		dc.b $FE
		dc.b $61 ; a
		dc.b   0
		dc.b $61 ; a
		dc.b $18
		dc.b   3
		dc.b $2E ; .
		dc.b $FC
		dc.b  $B
		dc.b $FC
		dc.b $FC
		dc.b $1C
		dc.b $16
		dc.b $86
		dc.b $7F ; 
		dc.b $FC
		dc.b $28 ; (
		dc.b $F2
		dc.b $FC
		dc.b $2C ; ,
		dc.b $2E ; .
		dc.b $46 ; F
		dc.b $FC
		dc.b $20
		dc.b   0
		dc.b $4E ; N
		dc.b $71 ; q
		dc.b $61 ; a
		dc.b $38 ; 8
		dc.b $F6
		dc.b $F2
		dc.b $42 ; B
		dc.b $5F ; _
		dc.b $76 ; v
		dc.b $50 ; P
		dc.b   0
		dc.b  $A
		dc.b $4D ; M
		dc.b $84
		dc.b $43 ; C
		dc.b $FC
		dc.b $16
		dc.b $8C
		dc.b   1
		dc.b $F8
		dc.b   3
		dc.b  $B
		dc.b $92
		dc.b $FC
		dc.b   0
		dc.b $FC
		dc.b $B0
		dc.b   2
		dc.b $D4
		dc.b   2
		dc.b $E8
		dc.b $F8
		dc.b $D8
		dc.b $F8
		dc.b $FF
		dc.b $E0
		dc.b  $A
		dc.b $E0
		dc.b $FD
		dc.b  $C
		dc.b $E0
		dc.b $D8
		dc.b   2
		dc.b $50 ; P
		dc.b $79 ; y
		dc.b $C7
		dc.b   2
		dc.b $62 ; b
		dc.b $EA
		dc.b $16
		dc.b $43 ; C
		dc.b $64 ; d
		dc.b $F1
		dc.b $44 ; D
		dc.b   2
		dc.b $E8
		dc.b $18
		dc.b $D3
		dc.b   6
		dc.b $E8
		dc.b $D4
		dc.b $EE
		dc.b $1C
		dc.b $EE
		dc.b $3D ; =
		dc.b $C6
		dc.b $B4
		dc.b $2E ; .
		dc.b $EE
		dc.b $FD
		dc.b $C2
		dc.b $EE
		dc.b $22 ; "
		dc.b $EE
		dc.b $2E ; .
		dc.b $30 ; 0
		dc.b $F7
		dc.b $F0
		dc.b $EE
		dc.b $FD
		dc.b $B0
		dc.b   8
		dc.b $38 ; 8
		dc.b $98
		dc.b $F2
		dc.b $67 ; g
		dc.b $F8
		dc.b   0
		dc.b $F8
		dc.b $14
		dc.b $80
		dc.b $33 ; 3
		dc.b $E1
		dc.b $70 ; p
		dc.b   8
		dc.b $AD
		dc.b $99
		dc.b $58 ; X
		dc.b $34 ; 4
		dc.b $3B ; ;
		dc.b  $E
		dc.b $1E
		dc.b $5A ; Z
		dc.b $2C ; ,
		dc.b $1F
		dc.b   2
		dc.b $AA
		dc.b $F1
		dc.b   4
		dc.b $80
		dc.b $37 ; 7
		dc.b $1B
		dc.b $F4
		dc.b $80
		dc.b $EE
		dc.b $C1
		dc.b $7F ; 
		dc.b $64 ; d
		dc.b $5C ; \
		dc.b   1
		dc.b $FA
		dc.b $10
		dc.b $2D ; -
		dc.b $5A ; Z
		dc.b $2E ; .
		dc.b $67 ; g
		dc.b $F6
		dc.b  $C
		dc.b $F8
		dc.b $5E ; ^
		dc.b $CD
		dc.b $FF
		dc.b $67 ; g
		dc.b   0
		dc.b $FD
		dc.b $F8
		dc.b $4E ; N
		dc.b $F2
		dc.b $FD
		dc.b $FC
		dc.b $22 ; "
		dc.b $E0
		dc.b $F1
		dc.b $80
		dc.b $14
		dc.b $B6
		dc.b $DE
		dc.b $22 ; "
		dc.b $7E ; ~
		dc.b $28 ; (
		dc.b $FF
		dc.b $83
		dc.b $DA
		dc.b $C2
		dc.b $42 ; B
		dc.b $40 ; @
		dc.b $31 ; 1
		dc.b $C0
		dc.b $5E ; ^
		dc.b $A2
		dc.b $4E ; N
		dc.b $B8
		dc.b $F2
		dc.b $E7
		dc.b $D3
		dc.b $C8
		dc.b $FD
		dc.b $C2
		dc.b $30 ; 0
		dc.b $38 ; 8
		dc.b $F0
		dc.b $2E ; .
		dc.b $64 ; d
		dc.b $F2
		dc.b $E6
		dc.b  $C
		dc.b $3F ; ?
		dc.b $3C ; <
		dc.b $40 ; @
		dc.b $FF
		dc.b $FF
		dc.b $66 ; f
		dc.b $E8
		dc.b  $C
		dc.b $78 ; x
		dc.b $A0
		dc.b $5E ; ^
		dc.b $A0
		dc.b $67 ; g
		dc.b   6
		dc.b $86
		dc.b $39 ; 9
		dc.b $F8
		dc.b   6
		dc.b $F8
		dc.b $66 ; f
		dc.b $D8
		dc.b $B2
		dc.b $AE
		dc.b $FE
		dc.b $E3
		dc.b $28 ; (
		dc.b   4
		dc.b $60 ; `
		dc.b $B2
		dc.b $42 ; B
		dc.b $4F ; O
		dc.b $4F ; O
		dc.b $54 ; T
		dc.b $5F ; _
		dc.b $FF
		dc.b $53 ; S
		dc.b $C1
		dc.b $D1
		dc.b $59 ; Y
		dc.b $53 ; S
		dc.b $C2
		dc.b $D0
		dc.b $EF
		dc.b   1
		dc.b   4
		dc.b $FB
		dc.b $1A
		dc.b $EB
		dc.b   1
		dc.b $30 ; 0
		dc.b $FD
		dc.b $82
		dc.b   2
		dc.b $FC
		dc.b $FA
		dc.b   0
		dc.b $A2
		dc.b $A7
		dc.b $82
		dc.b $71 ; q
		dc.b $DE
		dc.b $EE
		dc.b $66 ; f
		dc.b $18
		dc.b $70 ; p
		dc.b $EE
		dc.b $78 ; x
		dc.b  $F
		dc.b   8
		dc.b $D4
		dc.b $10
		dc.b $67 ; g
		dc.b  $C
		dc.b $D8
		dc.b $EB
		dc.b $FA
		dc.b   1
		dc.b $90
		dc.b  $F
		dc.b $30 ; 0
		dc.b $F4
		dc.b $66 ; f
		dc.b $FA
		dc.b $20
		dc.b $49 ; I
		dc.b $DC
		dc.b $5A ; Z
		dc.b $70 ; p
		dc.b   6
		dc.b $3C ; <
		dc.b $FA
		dc.b $72 ; r
		dc.b $5A ; Z
		dc.b $56 ; V
		dc.b $65 ; e
		dc.b $CA
		dc.b $6C ; l
		dc.b $80
		dc.b $F1
		dc.b   0
		dc.b $66 ; f
		dc.b $70 ; p
		dc.b $78 ; x
		dc.b $1B
		dc.b   7
		dc.b $F0
		dc.b $46 ; F
		dc.b $65 ; e
		dc.b $F0
		dc.b $92
		dc.b $E9
		dc.b   7
		dc.b $CA
		dc.b $EB
		dc.b   3
		dc.b $8C
		dc.b $7D ; }
		dc.b $C0
		dc.b $96
		dc.b $EB
		dc.b  $C
		dc.b $C0
		dc.b   8
		dc.b $C6
		dc.b $FC
		dc.b $60 ; `
		dc.b   6
		dc.b   1
		dc.b $D0
		dc.b $9C
		dc.b $E2
		dc.b $F2
		dc.b $FA
		dc.b $43 ; C
		dc.b $C0
		dc.b   8
		dc.b $D0
		dc.b $16
		dc.b $31 ; 1
		dc.b $1E
		dc.b $65 ; e
		dc.b $8A
		dc.b $C4
		dc.b $EE
		dc.b $FC
		dc.b $26 ; &
		dc.b $70 ; p
		dc.b   9
		dc.b $BF
		dc.b $BF
		dc.b $F0
		dc.b   6
		dc.b $60 ; `
		dc.b $50 ; P
		dc.b $4E ; N
		dc.b $71 ; q
		dc.b $FE
		dc.b $FE
		dc.b $4A ; J
		dc.b $38 ; 8
		dc.b $80
		dc.b   2
		dc.b $60 ; `
		dc.b $FA
		dc.b $30 ; 0
		dc.b $3C ; <
		dc.b $FA
		dc.b $FC
		dc.b $D0
		dc.b $FE
		dc.b $DE
		dc.b $EE
		dc.b $30 ; 0
		dc.b $3C ; <
		dc.b   0
		dc.b $81
		dc.b $1E
		dc.b $1E
		dc.b   4
		dc.b $22 ; "
		dc.b $70 ; p
		dc.b   1
		dc.b $D4
		dc.b $59 ; Y
		dc.b $DA
		dc.b $4E ; N
		dc.b $75 ; u
		dc.b $8B
		dc.b $D4
		dc.b $C8
		dc.b $B2
		dc.b $EC
		dc.b $FE
		dc.b $F8
		dc.b $EA
		dc.b $C4
		dc.b $7A ; z
		dc.b $F1
		dc.b $8F
		dc.b $F8
		dc.b   7
		dc.b $5E ; ^
		dc.b $80
		dc.b $66 ; f
		dc.b $E4
		dc.b $F0
		dc.b $AE
		dc.b $59 ; Y
		dc.b $B4
		dc.b $65 ; e
		dc.b $FF
		dc.b $FF
		dc.b $DA
		dc.b $60 ; `
		dc.b $BA
		dc.b $22 ; "
		dc.b   9
		dc.b $60 ; `
		dc.b  $A
		dc.b $48 ; H
		dc.b $C0
		dc.b $D0
		dc.b $81
		dc.b $30 ; 0
		dc.b $FC
		dc.b $4E ; N
		dc.b $F9
		dc.b $20
		dc.b $FF
		dc.b $58 ; X
		dc.b $C0
		dc.b $30 ; 0
		dc.b $19
		dc.b $66 ; f
		dc.b $F2
		dc.b $4E ; N
		dc.b $D6
		dc.b $30 ; 0
		dc.b $11
		dc.b $EE
		dc.b $89
		dc.b $EE
		dc.b $FC
		dc.b $18
		dc.b $FE
		dc.b $F2
		dc.b $48 ; H
		dc.b $E7
		dc.b $13
		dc.b $60 ; `
		dc.b $20
		dc.b $24 ; $
		dc.b $49 ; I
		dc.b $D3
		dc.b $EA
		dc.b $FF
		dc.b $F7
		dc.b   0
		dc.b $18
		dc.b $4A ; J
		dc.b $2A ; *
		dc.b   0
		dc.b  $B
		dc.b $67 ; g
		dc.b   4
		dc.b $4E ; N
		dc.b $91
		dc.b $64 ; d
		dc.b   6
		dc.b $26 ; &
		dc.b $F1
		dc.b   4
		dc.b $60 ; `
		dc.b $1F
		dc.b $DE
		dc.b $C2
		dc.b $22 ; "
		dc.b $4A ; J
		dc.b $20
		dc.b $29 ; )
		dc.b   0
		dc.b $4A ; J
		dc.b $14
		dc.b $D3
		dc.b $C0
		dc.b $45 ; E
		dc.b $BA
		dc.b $EA
		dc.b  $F
		dc.b $FF
		dc.b   8
		dc.b $20
		dc.b $1A
		dc.b $B0
		dc.b $B1
		dc.b $27 ; '
		dc.b $67 ; g
		dc.b $D2
		dc.b $32 ; 2
		dc.b $1A
		dc.b $6A ; j
		dc.b $F4
		dc.b $4C ; L
		dc.b   3
		dc.b $3C ; <
		dc.b $DF
		dc.b $44 ; D
		dc.b   0
		dc.b $78 ; x
		dc.b $79 ; y
		dc.b $4D ; M
		dc.b $41 ; A
		dc.b $49 ; I
		dc.b $4E ; N
		dc.b $88
		dc.b $E3
		dc.b $11
		dc.b $9C
		dc.b $F2
		dc.b $FA
		dc.b $55 ; U
		dc.b $42 ; B
		dc.b $FA
		dc.b $44 ; D
		dc.b $8F
		dc.b  $B
		dc.b $41 ; A
		dc.b $54 ; T
		dc.b   0
		dc.b $FF
		dc.b $FF
		dc.b $A8
		dc.b   4
		dc.b $2A ; *
		dc.b $2A ; *
		dc.b $F1
		dc.b $83
		dc.b $B7
		dc.b $FF
		dc.b $61 ; a
		dc.b $9C
		dc.b $D4
		dc.b $6A ; j
		dc.b $E9
		dc.b $75 ; u
		dc.b   8
		dc.b $F8
		dc.b   4
		dc.b $D1
		dc.b $A4
		dc.b $30 ; 0
		dc.b $C0
		dc.b $D4
		dc.b $EA
		dc.b $FA
		dc.b $66 ; f
		dc.b $F8
		dc.b $F0
		dc.b $DE
		dc.b $FF
		dc.b $42 ; B
		dc.b $2C ; ,
		dc.b $FE
		dc.b $DE
		dc.b $FD
		dc.b $A3
		dc.b $E4
		dc.b $36 ; 6
		dc.b $34 ; 4
		dc.b $50 ; P
		dc.b $E2
		dc.b $C0
		dc.b $1B
		dc.b $E4
		dc.b $D2
		dc.b $7F ; 
		dc.b $FF
		dc.b $4E ; N
		dc.b $73 ; s
		dc.b $E2
		dc.b $F8
		dc.b  $B
		dc.b  $D
		dc.b $87
		dc.b $61 ; a
		dc.b $FC
		dc.b $20
		dc.b $CC
		dc.b $FC
		dc.b $29 ; )
		dc.b $36 ; 6
		dc.b $FC
		dc.b $27 ; '
		dc.b $1C
		dc.b $EC
		dc.b $3E ; >
		dc.b   4
		dc.b $4A ; J
		dc.b $DC
		dc.b $F8
		dc.b $11
		dc.b $18
		dc.b $B2
		dc.b $EC
		dc.b $F8
		dc.b  $F
		dc.b $4A ; J
		dc.b $2D ; -
		dc.b $58 ; X
		dc.b $3A ; :
		dc.b $C0
		dc.b  $E
		dc.b $32 ; 2
		dc.b $E6
		dc.b $1E
		dc.b $D8
		dc.b $E6
		dc.b $FC
		dc.b $3B ; ;
		dc.b $7C ; |
		dc.b $7B ; {
		dc.b $3C ; <
		dc.b $6A ; j
		dc.b $58 ; X
		dc.b   4
		dc.b $68 ; h
		dc.b $E9
		dc.b   4
		dc.b $58 ; X
		dc.b   6
		dc.b $FA
		dc.b   0
		dc.b $58 ; X
		dc.b   2
		dc.b $84
		dc.b $C2
		dc.b $7C ; |
		dc.b $30 ; 0
		dc.b $DC
		dc.b   4
		dc.b $B6
		dc.b $EA
		dc.b $D8
		dc.b $3B ; ;
		dc.b $80
		dc.b   7
		dc.b $40 ; @
		dc.b $F0
		dc.b $F2
		dc.b   2
		dc.b $B0
		dc.b $6D ; m
		dc.b $E2
		dc.b $C0
		dc.b $3E ; >
		dc.b  $E
		dc.b $F2
		dc.b   6
		dc.b $38 ; 8
		dc.b $E9
		dc.b   7
		dc.b $58 ; X
		dc.b   0
		dc.b $42 ; B
		dc.b  $C
		dc.b $61 ; a
		dc.b $F0
		dc.b   8
		dc.b $42 ; B
		dc.b $E8
		dc.b   1
		dc.b   2
		dc.b   8
		dc.b $2D ; -
		dc.b $7A ; z
		dc.b $F8
		dc.b $F0
		dc.b $67 ; g
		dc.b $10
		dc.b   2
		dc.b $40 ; @
		dc.b $F8
		dc.b $D0
		dc.b $40 ; @
		dc.b $4E ; N
		dc.b $BB
		dc.b $87
		dc.b $F8
		dc.b   0
		dc.b  $A
		dc.b $11
		dc.b $ED
		dc.b $E8
		dc.b $80
		dc.b $26 ; &
		dc.b $60 ; `
		dc.b $3E ; >
		dc.b $60 ; `
		dc.b $FF
		dc.b $F8
		dc.b  $C
		dc.b $60 ; `
		dc.b $20
		dc.b $60 ; `
		dc.b $48 ; H
		dc.b $60 ; `
		dc.b $2A ; *
		dc.b $60 ; `
		dc.b $4C ; L
		dc.b $FC
		dc.b  $E
		dc.b   8
		dc.b $ED
		dc.b   1
		dc.b $45 ; E
		dc.b   0
		dc.b   1
		dc.b $E6
		dc.b $C0
		dc.b $18
		dc.b $E1
		dc.b   8
		dc.b $C0
		dc.b $20
		dc.b $F8
		dc.b $F2
		dc.b $60 ; `
		dc.b $B0
		dc.b $EA
		dc.b $FC
		dc.b $F0
		dc.b $68 ; h
		dc.b $FA
		dc.b $EA
		dc.b $61 ; a
		dc.b $28 ; (
		dc.b $D8
		dc.b $E6
		dc.b $F8
		dc.b  $C
		dc.b $41 ; A
		dc.b $D8
		dc.b $32 ; 2
		dc.b $B2
		dc.b   9
		dc.b $10
		dc.b $DE
		dc.b $DA
		dc.b $16
		dc.b $C6
		dc.b $FC
		dc.b $E8
		dc.b $62 ; b
		dc.b $24 ; $
		dc.b $F8
		dc.b $E8
		dc.b   8
		dc.b $E8
		dc.b $C6
		dc.b $FC
		dc.b  $F
		dc.b $80
		dc.b $53 ; S
		dc.b $10
		dc.b $64 ; d
		dc.b  $E
		dc.b $10
		dc.b $BC
		dc.b   0
		dc.b  $C
		dc.b   1
		dc.b $1F
		dc.b $60 ; `
		dc.b $68 ; h
		dc.b   1
		dc.b $66 ; f
		dc.b   4
		dc.b   6
		dc.b $10
		dc.b $F6
		dc.b $B4
		dc.b $42 ; B
		dc.b $AC
		dc.b $E8
		dc.b $4F ; O
		dc.b $2C ; ,
		dc.b $29 ; )
		dc.b $B6
		dc.b $C1
		dc.b $29 ; )
		dc.b $41 ; A
		dc.b   0
		dc.b   8
		dc.b $29 ; )
		dc.b $48 ; H
		dc.b $3F ; ?
		dc.b $84
		dc.b $EE
		dc.b $48 ; H
		dc.b $E7
		dc.b $38 ; 8
		dc.b   0
		dc.b $34 ; 4
		dc.b $2C ; ,
		dc.b $EA
		dc.b $36 ; 6
		dc.b $FC
		dc.b $E1
		dc.b $FF
		dc.b   6
		dc.b $38 ; 8
		dc.b $FC
		dc.b  $A
		dc.b $43 ; C
		dc.b $F4
		dc.b $30 ; 0
		dc.b $10
		dc.b $D6
		dc.b $6C ; l
		dc.b   0
		dc.b   2
		dc.b $B6
		dc.b $3F ; ?
		dc.b $FC
		dc.b $44 ; D
		dc.b $65 ; e
		dc.b   2
		dc.b $96
		dc.b $44 ; D
		dc.b $39 ; 9
		dc.b $43 ; C
		dc.b $EA
		dc.b $72 ; r
		dc.b   0
		dc.b $30 ; 0
		dc.b   2
		dc.b $90
		dc.b $1F
		dc.b $7E ; ~
		dc.b $43 ; C
		dc.b $64 ; d
		dc.b   2
		dc.b $D0
		dc.b $44 ; D
		dc.b $B0
		dc.b $E8
		dc.b   8
		dc.b $64 ; d
		dc.b $10
		dc.b $72 ; r
		dc.b   1
		dc.b $D4
		dc.b $8C
		dc.b $21 ; !
		dc.b $E0
		dc.b $B4
		dc.b $E0
		dc.b $94
		dc.b $E0
		dc.b $42 ; B
		dc.b $BC
		dc.b $18
		dc.b $C6
		dc.b $4C ; L
		dc.b $DF
		dc.b   0
		dc.b $1C
		dc.b $E0
		dc.b $F1
		dc.b $C0
		dc.b $90
		dc.b  $F
		dc.b $43 ; C
		dc.b $E8
		dc.b $64 ; d
		dc.b   4
		dc.b $D0
		dc.b $FA
		dc.b  $A
		dc.b $39 ; 9
		dc.b $9C
		dc.b   6
		dc.b $CA
		dc.b $F4
		dc.b $A4
		dc.b $28 ; (
		dc.b $A4
		dc.b $A8
		dc.b $41 ; A
		dc.b $F4
		dc.b $20
		dc.b $D8
		dc.b $10
		dc.b $10
		dc.b $C8
		dc.b   0
		dc.b $C8
		dc.b $F8
		dc.b   9
		dc.b $B4
		dc.b $F2
		dc.b   6
		dc.b $C3
		dc.b $FE
		dc.b $C4
		dc.b $14
		dc.b $D8
		dc.b $3F ; ?
		dc.b   1
		dc.b $D6
		dc.b $F1
		dc.b $FF
		dc.b $E8
		dc.b $58 ; X
		dc.b $E3
		dc.b   8
		dc.b $7F ; 
		dc.b $FC
		dc.b $12
		dc.b   0
		dc.b $E5
		dc.b   8
		dc.b $D2
		dc.b   0
		dc.b $E9
		dc.b $58 ; X
		dc.b $F0
		dc.b  $F
		dc.b $D0
		dc.b   1
		dc.b $32 ; 2
		dc.b $F0
		dc.b $E1
		dc.b $1F
		dc.b $E4
		dc.b $2F ; /
		dc.b   1
		dc.b $2F ; /
		dc.b   0
		dc.b $10
		dc.b $FD
		dc.b   2
		dc.b $61 ; a
		dc.b $90
		dc.b $FE
		dc.b $DA
		dc.b $78 ; x
		dc.b $32 ; 2
		dc.b $F6
		dc.b   1
		dc.b $61 ; a
		dc.b $D0
		dc.b $C0
		dc.b $FC
		dc.b   0
		dc.b $E3
		dc.b $E1
		dc.b $4B ; K
		dc.b $D2
		dc.b $80
		dc.b $F4
		dc.b   0
		dc.b $61 ; a
		dc.b $C4
		dc.b $F4
		dc.b $11
		dc.b $94
		dc.b   7
		dc.b $D0
		dc.b $D0
		dc.b $81
		dc.b $22 ; "
		dc.b $1F
		dc.b $FE
		dc.b $D4
		dc.b $43 ; C
		dc.b $D1
		dc.b $D4
		dc.b $D9
		dc.b $70 ; p
		dc.b $18
		dc.b $80
		dc.b $E2
		dc.b  $A
		dc.b $48 ; H
		dc.b $40 ; @
		dc.b $B2
		dc.b $E9
		dc.b $88
		dc.b   8
		dc.b   0
		dc.b $FA
		dc.b $C0
		dc.b $C8
		dc.b $FC
		dc.b   3
		dc.b $1C
		dc.b $EC
		dc.b $4B ; K
		dc.b $C2
		dc.b $F0
		dc.b $61 ; a
		dc.b $DC
		dc.b $1F
		dc.b $A6
		dc.b $1C
		dc.b $A6
		dc.b   2
		dc.b $20
		dc.b $F0
		dc.b $3C ; <
		dc.b $F0
		dc.b $CC
		dc.b   3
		dc.b $E0
		dc.b $F0
		dc.b   1
		dc.b $F0
		dc.b $B8
		dc.b $F8
		dc.b   0
		dc.b  $C
		dc.b $3F ; ?
		dc.b $20
		dc.b $BA
		dc.b $4A ; J
		dc.b $20
		dc.b $42 ; B
		dc.b $41 ; A
		dc.b $FA
		dc.b   0
		dc.b $86
		dc.b $FC
		dc.b $C3
		dc.b $FB
		dc.b $61 ; a
		dc.b  $C
		dc.b $61 ; a
		dc.b $3A ; :
		dc.b $46 ; F
		dc.b $41 ; A
		dc.b $93
		dc.b $59 ; Y
		dc.b $5A ; Z
		dc.b $42 ; B
		dc.b $B0
		dc.b $6D ; m
		dc.b   4
		dc.b $E8
		dc.b $10
		dc.b $19
		dc.b $14
		dc.b $EB
		dc.b $3A ; :
		dc.b $F8
		dc.b $FD
		dc.b $32 ; 2
		dc.b $F8
		dc.b $FD
		dc.b $2A ; *
		dc.b $DB
		dc.b $D6
		dc.b $F8
		dc.b $FD
		dc.b $22 ; "
		dc.b $F8
		dc.b $FD
		dc.b $1A
		dc.b $F8
		dc.b $FD
		dc.b $12
		dc.b $F8
		dc.b $FD
		dc.b  $A
		dc.b $F8
		dc.b $FD
		dc.b $BC
		dc.b $E9
		dc.b $FF
		dc.b $FF
		dc.b $E1
		dc.b $59 ; Y
		dc.b $42 ; B
		dc.b $42 ; B
		dc.b $14
		dc.b   0
		dc.b $B3
		dc.b   2
		dc.b $42 ; B
		dc.b   1
		dc.b $D4
		dc.b $42 ; B
		dc.b $34 ; 4
		dc.b $30 ; 0
		dc.b $20
		dc.b   0
		dc.b $7D ; }
		dc.b $8C
		dc.b $B5
		dc.b $41 ; A
		dc.b $AA
		dc.b $E2
		dc.b   1
		dc.b $22 ; "
		dc.b $22 ; "
		dc.b $48 ; H
		dc.b $90
		dc.b $16
		dc.b $FF
		dc.b $B7
		dc.b $90
		dc.b $9C
		dc.b $61 ; a
		dc.b $9A
		dc.b $61 ; a
		dc.b $98
		dc.b $61 ; a
		dc.b $96
		dc.b $34 ; 4
		dc.b   1
		dc.b $46 ; F
		dc.b $42 ; B
		dc.b $CA
		dc.b $E1
		dc.b $80
		dc.b $C3
		dc.b $FF
		dc.b $CA
		dc.b $E2
		dc.b $10
		dc.b $21 ; !
		dc.b $72 ; r
		dc.b $30 ; 0
		dc.b $63 ; c
		dc.b $40 ; @
		dc.b $84
		dc.b $50 ; P
		dc.b $A5
		dc.b $60 ; `
		dc.b $C6
		dc.b $70 ; p
		dc.b $FF
		dc.b $FF
		dc.b $E7
		dc.b $81
		dc.b   8
		dc.b $91
		dc.b $29 ; )
		dc.b $A1
		dc.b $4A ; J
		dc.b $B1
		dc.b $6B ; k
		dc.b $C1
		dc.b $8C
		dc.b $D1
		dc.b $AD
		dc.b $E1
		dc.b $CE
		dc.b $F1
		dc.b $FF
		dc.b $FF
		dc.b $EF
		dc.b $12
		dc.b $31 ; 1
		dc.b   2
		dc.b $10
		dc.b $32 ; 2
		dc.b $73 ; s
		dc.b $22 ; "
		dc.b $52 ; R
		dc.b $52 ; R
		dc.b $B5
		dc.b $42 ; B
		dc.b $94
		dc.b $72 ; r
		dc.b $F7
		dc.b $62 ; b
		dc.b $FF
		dc.b $FF
		dc.b $D6
		dc.b $93
		dc.b $39 ; 9
		dc.b $83
		dc.b $18
		dc.b $B3
		dc.b $7B ; {
		dc.b $A3
		dc.b $5A ; Z
		dc.b $D3
		dc.b $BD
		dc.b $C3
		dc.b $9C
		dc.b $F3
		dc.b $FF
		dc.b $E3
		dc.b $FF
		dc.b $FF
		dc.b $DE
		dc.b $24 ; $
		dc.b $62 ; b
		dc.b $34 ; 4
		dc.b $43 ; C
		dc.b   4
		dc.b $20
		dc.b $14
		dc.b   1
		dc.b $64 ; d
		dc.b $E6
		dc.b $74 ; t
		dc.b $C7
		dc.b $44 ; D
		dc.b $A4
		dc.b $54 ; T
		dc.b $FF
		dc.b $FF
		dc.b $85
		dc.b $A5
		dc.b $6A ; j
		dc.b $B5
		dc.b $4B ; K
		dc.b $85
		dc.b $28 ; (
		dc.b $95
		dc.b   9
		dc.b $E5
		dc.b $EE
		dc.b $F5
		dc.b $CF
		dc.b $C5
		dc.b $AC
		dc.b $D5
		dc.b $FF
		dc.b $FF
		dc.b $8D
		dc.b $36 ; 6
		dc.b $53 ; S
		dc.b $26 ; &
		dc.b $72 ; r
		dc.b $16
		dc.b $11
		dc.b   6
		dc.b $30 ; 0
		dc.b $76 ; v
		dc.b $D7
		dc.b $66 ; f
		dc.b $F6
		dc.b $56 ; V
		dc.b $95
		dc.b $46 ; F
		dc.b $FF
		dc.b $FF
		dc.b $B4
		dc.b $B7
		dc.b $5B ; [
		dc.b $A7
		dc.b $7A ; z
		dc.b $97
		dc.b $19
		dc.b $87
		dc.b $38 ; 8
		dc.b $F7
		dc.b $DF
		dc.b $E7
		dc.b $FE
		dc.b $D7
		dc.b $9D
		dc.b $C7
		dc.b $FF
		dc.b $FF
		dc.b $BC
		dc.b $48 ; H
		dc.b $C4
		dc.b $58 ; X
		dc.b $E5
		dc.b $68 ; h
		dc.b $86
		dc.b $78 ; x
		dc.b $A7
		dc.b   8
		dc.b $40 ; @
		dc.b $18
		dc.b $61 ; a
		dc.b $28 ; (
		dc.b   2
		dc.b $38 ; 8
		dc.b $FF
		dc.b $FF
		dc.b $23 ; #
		dc.b $C9
		dc.b $CC
		dc.b $D9
		dc.b $ED
		dc.b $E9
		dc.b $8E
		dc.b $F9
		dc.b $AF
		dc.b $89
		dc.b $48 ; H
		dc.b $99
		dc.b $69 ; i
		dc.b $A9
		dc.b  $A
		dc.b $B9
		dc.b $FF
		dc.b $FF
		dc.b $2B ; +
		dc.b $5A ; Z
		dc.b $F5
		dc.b $4A ; J
		dc.b $D4
		dc.b $7A ; z
		dc.b $B7
		dc.b $6A ; j
		dc.b $96
		dc.b $1A
		dc.b $71 ; q
		dc.b  $A
		dc.b $50 ; P
		dc.b $3A ; :
		dc.b $33 ; 3
		dc.b $2A ; *
		dc.b $FF
		dc.b $FF
		dc.b $12
		dc.b $DB
		dc.b $FD
		dc.b $CB
		dc.b $DC
		dc.b $FB
		dc.b $BF
		dc.b $EB
		dc.b $9E
		dc.b $9B
		dc.b $79 ; y
		dc.b $8B
		dc.b $58 ; X
		dc.b $BB
		dc.b $3B ; ;
		dc.b $AB
		dc.b $FF
		dc.b $FF
		dc.b $1A
		dc.b $6C ; l
		dc.b $A6
		dc.b $7C ; |
		dc.b $87
		dc.b $4C ; L
		dc.b $E4
		dc.b $5C ; \
		dc.b $C5
		dc.b $2C ; ,
		dc.b $22 ; "
		dc.b $3C ; <
		dc.b   3
		dc.b  $C
		dc.b $60 ; `
		dc.b $1C
		dc.b $FF
		dc.b $FF
		dc.b $41 ; A
		dc.b $ED
		dc.b $AE
		dc.b $FD
		dc.b $8F
		dc.b $CD
		dc.b $EC
		dc.b $DD
		dc.b $CD
		dc.b $AD
		dc.b $2A ; *
		dc.b $BD
		dc.b  $B
		dc.b $8D
		dc.b $68 ; h
		dc.b $9D
		dc.b $FF
		dc.b $FF
		dc.b $49 ; I
		dc.b $7E ; ~
		dc.b $97
		dc.b $6E ; n
		dc.b $B6
		dc.b $5E ; ^
		dc.b $D5
		dc.b $4E ; N
		dc.b $F4
		dc.b $3E ; >
		dc.b $13
		dc.b $2E ; .
		dc.b $32 ; 2
		dc.b $1E
		dc.b $51 ; Q
		dc.b  $E
		dc.b $FF
		dc.b $FF
		dc.b $70 ; p
		dc.b $FF
		dc.b $9F
		dc.b $EF
		dc.b $BE
		dc.b $DF
		dc.b $DD
		dc.b $CF
		dc.b $FC
		dc.b $BF
		dc.b $1B
		dc.b $AF
		dc.b $3A ; :
		dc.b $9F
		dc.b $59 ; Y
		dc.b $8F
		dc.b $FF
		dc.b $FF
		dc.b $78 ; x
		dc.b $91
		dc.b $88
		dc.b $81
		dc.b $A9
		dc.b $B1
		dc.b $CA
		dc.b $A1
		dc.b $EB
		dc.b $D1
		dc.b  $C
		dc.b $C1
		dc.b $2D ; -
		dc.b $F1
		dc.b $4E ; N
		dc.b $E1
		dc.b $FF
		dc.b $FF
		dc.b $6F ; o
		dc.b $10
		dc.b $80
		dc.b   0
		dc.b $A1
		dc.b $30 ; 0
		dc.b $C2
		dc.b $20
		dc.b $E3
		dc.b $50 ; P
		dc.b   4
		dc.b $40 ; @
		dc.b $25 ; %
		dc.b $70 ; p
		dc.b $46 ; F
		dc.b $60 ; `
		dc.b $FF
		dc.b $FF
		dc.b $67 ; g
		dc.b $83
		dc.b $B9
		dc.b $93
		dc.b $98
		dc.b $A3
		dc.b $FB
		dc.b $B3
		dc.b $DA
		dc.b $C3
		dc.b $3D ; =
		dc.b $D3
		dc.b $1C
		dc.b $E3
		dc.b $7F ; 
		dc.b $F3
		dc.b $FF
		dc.b $FF
		dc.b $5E ; ^
		dc.b   2
		dc.b $B1
		dc.b $12
		dc.b $90
		dc.b $22 ; "
		dc.b $F3
		dc.b $32 ; 2
		dc.b $D2
		dc.b $42 ; B
		dc.b $35 ; 5
		dc.b $52 ; R
		dc.b $14
		dc.b $62 ; b
		dc.b $77 ; w
		dc.b $72 ; r
		dc.b $FF
		dc.b $FF
		dc.b $56 ; V
		dc.b $B5
		dc.b $EA
		dc.b $A5
		dc.b $CB
		dc.b $95
		dc.b $A8
		dc.b $85
		dc.b $89
		dc.b $F5
		dc.b $6E ; n
		dc.b $E5
		dc.b $4F ; O
		dc.b $D5
		dc.b $2C ; ,
		dc.b $C5
		dc.b $FF
		dc.b $FF
		dc.b  $D
		dc.b $34 ; 4
		dc.b $E2
		dc.b $24 ; $
		dc.b $C3
		dc.b $14
		dc.b $A0
		dc.b   4
		dc.b $81
		dc.b $74 ; t
		dc.b $66 ; f
		dc.b $64 ; d
		dc.b $47 ; G
		dc.b $54 ; T
		dc.b $24 ; $
		dc.b $44 ; D
		dc.b $FF
		dc.b $FF
		dc.b   5
		dc.b $A7
		dc.b $DB
		dc.b $B7
		dc.b $FA
		dc.b $87
		dc.b $99
		dc.b $97
		dc.b $B8
		dc.b $E7
		dc.b $5F ; _
		dc.b $F7
		dc.b $7E ; ~
		dc.b $C7
		dc.b $1D
		dc.b $D7
		dc.b $FF
		dc.b $FF
		dc.b $3C ; <
		dc.b $26 ; &
		dc.b $D3
		dc.b $36 ; 6
		dc.b $F2
		dc.b   6
		dc.b $91
		dc.b $16
		dc.b $B0
		dc.b $66 ; f
		dc.b $57 ; W
		dc.b $76 ; v
		dc.b $76 ; v
		dc.b $46 ; F
		dc.b $15
		dc.b $56 ; V
		dc.b $FF
		dc.b $FF
		dc.b $34 ; 4
		dc.b $D9
		dc.b $4C ; L
		dc.b $C9
		dc.b $6D ; m
		dc.b $F9
		dc.b  $E
		dc.b $E9
		dc.b $2F ; /
		dc.b $99
		dc.b $C8
		dc.b $89
		dc.b $E9
		dc.b $B9
		dc.b $8A
		dc.b $A9
		dc.b $FF
		dc.b $FF
		dc.b $AB
		dc.b $58 ; X
		dc.b $44 ; D
		dc.b $48 ; H
		dc.b $65 ; e
		dc.b $78 ; x
		dc.b   6
		dc.b $68 ; h
		dc.b $27 ; '
		dc.b $18
		dc.b $C0
		dc.b   8
		dc.b $E1
		dc.b $38 ; 8
		dc.b $82
		dc.b $28 ; (
		dc.b $FF
		dc.b $FF
		dc.b $A3
		dc.b $CB
		dc.b $7D ; }
		dc.b $DB
		dc.b $5C ; \
		dc.b $EB
		dc.b $3F ; ?
		dc.b $FB
		dc.b $1E
		dc.b $8B
		dc.b $F9
		dc.b $9B
		dc.b $D8
		dc.b $AB
		dc.b $BB
		dc.b $BB
		dc.b $FF
		dc.b $FF
		dc.b $9A
		dc.b $4A ; J
		dc.b $75 ; u
		dc.b $5A ; Z
		dc.b $54 ; T
		dc.b $6A ; j
		dc.b $37 ; 7
		dc.b $7A ; z
		dc.b $16
		dc.b  $A
		dc.b $F1
		dc.b $1A
		dc.b $D0
		dc.b $2A ; *
		dc.b $B3
		dc.b $3A ; :
		dc.b $FF
		dc.b $FF
		dc.b $92
		dc.b $FD
		dc.b $2E ; .
		dc.b $ED
		dc.b  $F
		dc.b $DD
		dc.b $6C ; l
		dc.b $CD
		dc.b $4D ; M
		dc.b $BD
		dc.b $AA
		dc.b $AD
		dc.b $8B
		dc.b $9D
		dc.b $E8
		dc.b $8D
		dc.b $FF
		dc.b $3F ; ?
		dc.b $C9
		dc.b $7C ; |
		dc.b $26 ; &
		dc.b $6C ; l
		dc.b   7
		dc.b $5C ; \
		dc.b $64 ; d
		dc.b $4C ; L
		dc.b $45 ; E
		dc.b $3C ; <
		dc.b $A2
		dc.b $2C ; ,
		dc.b $83
		dc.b $1C
		dc.b $E0
		dc.b $FC
		dc.b $FF
		dc.b $2B ; +
		dc.b $EF
		dc.b $1F
		dc.b $FF
		dc.b $3E ; >
		dc.b $CF
		dc.b $5D ; ]
		dc.b $DF
		dc.b $7C ; |
		dc.b $AF
		dc.b $9B
		dc.b $BF
		dc.b $BA
		dc.b $8F
		dc.b $FF
		dc.b $FF
		dc.b $D9
		dc.b $9F
		dc.b $F8
		dc.b $6E ; n
		dc.b $17
		dc.b $7E ; ~
		dc.b $36 ; 6
		dc.b $4E ; N
		dc.b $55 ; U
		dc.b $5E ; ^
		dc.b $74 ; t
		dc.b $2E ; .
		dc.b $93
		dc.b $3E ; >
		dc.b $B2
		dc.b  $E
		dc.b $FF
		dc.b $FF
		dc.b $D1
		dc.b $1E
		dc.b $F0
		dc.b $3F ; ?
		dc.b   2
		dc.b $61 ; a
		dc.b   0
		dc.b $FC
		dc.b $FE
		dc.b $34 ; 4
		dc.b $2D ; -
		dc.b $58 ; X
		dc.b  $A
		dc.b $80
		dc.b $C2
		dc.b $D0
		dc.b $FF
		dc.b $E1
		dc.b $40 ; @
		dc.b $20
		dc.b $6D ; m
		dc.b $58 ; X
		dc.b  $C
		dc.b $32 ; 2
		dc.b $30 ; 0
		dc.b   0
		dc.b   2
		dc.b $30 ; 0
		dc.b $FC
		dc.b   0
		dc.b $92
		dc.b $FF
		dc.b $3F ; ?
		dc.b $40 ; @
		dc.b $48 ; H
		dc.b $40 ; @
		dc.b $C2
		dc.b $C0
		dc.b $82
		dc.b $C2
		dc.b $48 ; H
		dc.b $41 ; A
		dc.b $E2
		dc.b $4A ; J
		dc.b $B2
		dc.b $42 ; B
		dc.b $65 ; e
		dc.b   6
		dc.b  $C
		dc.b $F8
		dc.b $F8
		dc.b $52 ; R
		dc.b $41 ; A
		dc.b $FC
		dc.b $FE
		dc.b $40 ; @
		dc.b $D0
		dc.b $41 ; A
		dc.b   2
		dc.b $3C ; <
		dc.b $34 ; 4
		dc.b $3A ; :
		dc.b $E9
		dc.b $D2
		dc.b $FE
		dc.b $3B ; ;
		dc.b $7B ; {
		dc.b   0
		dc.b $14
		dc.b $FC
		dc.b  $F
		dc.b $C6
		dc.b $30 ; 0
		dc.b $3B ; ;
		dc.b   0
		dc.b  $C
		dc.b $41 ; A
		dc.b $FB
		dc.b   0
		dc.b   8
		dc.b $2B ; +
		dc.b $48 ; H
		dc.b $1E
		dc.b $FC
		dc.b $C2
		dc.b $AE
		dc.b $E9
		dc.b $B8
		dc.b $11
		dc.b $94
		dc.b $EA
		dc.b $FC
		dc.b $F8
		dc.b  $E
		dc.b   0
		dc.b   1
		dc.b $D6
		dc.b   3
		dc.b $FF
		dc.b $FF
		dc.b $9F
		dc.b   5
		dc.b $5C ; \
		dc.b   7
		dc.b  $E
		dc.b   8
		dc.b $B4
		dc.b  $A
		dc.b $52 ; R
		dc.b  $B
		dc.b $E6
		dc.b  $D
		dc.b $71 ; q
		dc.b  $E
		dc.b $F4
		dc.b $10
		dc.b $FF
		dc.b $FF
		dc.b $70 ; p
		dc.b $11
		dc.b $E5
		dc.b $13
		dc.b $53 ; S
		dc.b $14
		dc.b $BA
		dc.b $16
		dc.b $1C
		dc.b $17
		dc.b $77 ; w
		dc.b $18
		dc.b $CE
		dc.b $1A
		dc.b $1E
		dc.b $1B
		dc.b $FF
		dc.b $FF
		dc.b $6A ; j
		dc.b $1C
		dc.b $B1
		dc.b $1D
		dc.b $F4
		dc.b $1F
		dc.b $32 ; 2
		dc.b $20
		dc.b $6C ; l
		dc.b $21 ; !
		dc.b $A2
		dc.b $22 ; "
		dc.b $D4
		dc.b $24 ; $
		dc.b   2
		dc.b $25 ; %
		dc.b $FF
		dc.b $FF
		dc.b $2C ; ,
		dc.b $26 ; &
		dc.b $53 ; S
		dc.b $27 ; '
		dc.b $77 ; w
		dc.b $28 ; (
		dc.b $97
		dc.b $29 ; )
		dc.b $B5
		dc.b $2A ; *
		dc.b $CF
		dc.b $2B ; +
		dc.b $E6
		dc.b $2C ; ,
		dc.b $FA
		dc.b $2E ; .
		dc.b $FF
		dc.b $FF
		dc.b  $C
		dc.b $2F ; /
		dc.b $1B
		dc.b $30 ; 0
		dc.b $27 ; '
		dc.b $31 ; 1
		dc.b $30 ; 0
		dc.b $32 ; 2
		dc.b $38 ; 8
		dc.b $33 ; 3
		dc.b $3C ; <
		dc.b $34 ; 4
		dc.b $3F ; ?
		dc.b $35 ; 5
		dc.b $3F ; ?
		dc.b $36 ; 6
		dc.b $FF
		dc.b $FF
		dc.b $3D ; =
		dc.b $37 ; 7
		dc.b $39 ; 9
		dc.b $38 ; 8
		dc.b $32 ; 2
		dc.b $39 ; 9
		dc.b $2A ; *
		dc.b $3A ; :
		dc.b $1F
		dc.b $3B ; ;
		dc.b $13
		dc.b $3C ; <
		dc.b   5
		dc.b $3C ; <
		dc.b $F4
		dc.b $3D ; =
		dc.b $F0
		dc.b $FF
		dc.b $E2
		dc.b $17
		dc.b $3F ; ?
		dc.b $B9
		dc.b $40 ; @
		dc.b $A2
		dc.b $41 ; A
		dc.b $89
		dc.b $42 ; B
		dc.b $6E ; n
		dc.b $43 ; C
		dc.b $52 ; R
		dc.b $44 ; D
		dc.b $FF
		dc.b $FF
		dc.b $34 ; 4
		dc.b $45 ; E
		dc.b $15
		dc.b $45 ; E
		dc.b $F4
		dc.b $46 ; F
		dc.b $D2
		dc.b $47 ; G
		dc.b $AE
		dc.b $48 ; H
		dc.b $89
		dc.b $49 ; I
		dc.b $63 ; c
		dc.b $4A ; J
		dc.b $3B ; ;
		dc.b $4B ; K
		dc.b $FF
		dc.b $FF
		dc.b $12
		dc.b $4B ; K
		dc.b $E7
		dc.b $4C ; L
		dc.b $BB
		dc.b $4D ; M
		dc.b $8E
		dc.b $4E ; N
		dc.b $60 ; `
		dc.b $4F ; O
		dc.b $30 ; 0
		dc.b $50 ; P
		dc.b   0
		dc.b $50 ; P
		dc.b $CE
		dc.b $51 ; Q
		dc.b $FF
		dc.b $FF
		dc.b $9A
		dc.b $52 ; R
		dc.b $66 ; f
		dc.b $53 ; S
		dc.b $31 ; 1
		dc.b $53 ; S
		dc.b $FA
		dc.b $54 ; T
		dc.b $C3
		dc.b $55 ; U
		dc.b $8A
		dc.b $56 ; V
		dc.b $50 ; P
		dc.b $57 ; W
		dc.b $16
		dc.b $57 ; W
		dc.b $F8
		dc.b $FF
		dc.b $DA
		dc.b $5C ; \
		dc.b $C4
		dc.b   3
		dc.b $7B ; {
		dc.b   5
		dc.b $27 ; '
		dc.b   6
		dc.b $C9
		dc.b   8
		dc.b $61 ; a
		dc.b   9
		dc.b $EF
		dc.b $FF
		dc.b $FF
		dc.b  $B
		dc.b $75 ; u
		dc.b  $C
		dc.b $F3
		dc.b  $E
		dc.b $6A ; j
		dc.b  $F
		dc.b $D9
		dc.b $11
		dc.b $42 ; B
		dc.b $12
		dc.b $A4
		dc.b $14
		dc.b   0
		dc.b $15
		dc.b $56 ; V
		dc.b $FF
		dc.b $FF
		dc.b $16
		dc.b $A7
		dc.b $17
		dc.b $F3
		dc.b $19
		dc.b $3A ; :
		dc.b $1A
		dc.b $7C ; |
		dc.b $1B
		dc.b $B9
		dc.b $1C
		dc.b $F2
		dc.b $1E
		dc.b $27 ; '
		dc.b $1F
		dc.b $58 ; X
		dc.b $87
		dc.b  $F
		dc.b $20
		dc.b $85
		dc.b $21 ; !
		dc.b $AE
		dc.b $5A ; Z
		dc.b $23 ; #
		dc.b $F6
		dc.b $25 ; %
		dc.b $15
		dc.b $26 ; &
		dc.b $FF
		dc.b $FF
		dc.b $6B ; k
		dc.b $49 ; I
		dc.b $28 ; (
		dc.b $5E ; ^
		dc.b $29 ; )
		dc.b $70 ; p
		dc.b $2A ; *
		dc.b $80
		dc.b $2B ; +
		dc.b $8D
		dc.b $2C ; ,
		dc.b $97
		dc.b $2D ; -
		dc.b $9F
		dc.b $2E ; .
		dc.b $A4
		dc.b $FF
		dc.b $FF
		dc.b $2F ; /
		dc.b $A6
		dc.b $30 ; 0
		dc.b $A7
		dc.b $31 ; 1
		dc.b $A4
		dc.b $32 ; 2
		dc.b $A0
		dc.b $33 ; 3
		dc.b $9A
		dc.b $34 ; 4
		dc.b $91
		dc.b $35 ; 5
		dc.b $86
		dc.b $36 ; 6
		dc.b $79 ; y
		dc.b $FF
		dc.b $F1
		dc.b $37 ; 7
		dc.b $6B ; k
		dc.b $38 ; 8
		dc.b $5A ; Z
		dc.b $39 ; 9
		dc.b $47 ; G
		dc.b $3A ; :
		dc.b $33 ; 3
		dc.b $3B ; ;
		dc.b $1D
		dc.b $58 ; X
		dc.b $EB
		dc.b $3D ; =
		dc.b $FF
		dc.b $FF
		dc.b $CF
		dc.b $3E ; >
		dc.b $B2
		dc.b $3F ; ?
		dc.b $94
		dc.b $40 ; @
		dc.b $73 ; s
		dc.b $41 ; A
		dc.b $52 ; R
		dc.b $42 ; B
		dc.b $2E ; .
		dc.b $43 ; C
		dc.b   9
		dc.b $43 ; C
		dc.b $E3
		dc.b $44 ; D
		dc.b $FF
		dc.b $FF
		dc.b $BB
		dc.b $45 ; E
		dc.b $92
		dc.b $46 ; F
		dc.b $68 ; h
		dc.b $47 ; G
		dc.b $3C ; <
		dc.b $48 ; H
		dc.b  $F
		dc.b $48 ; H
		dc.b $E0
		dc.b $49 ; I
		dc.b $B1
		dc.b $4A ; J
		dc.b $80
		dc.b $4B ; K
		dc.b $FF
		dc.b $8F
		dc.b $4E ; N
		dc.b $4C ; L
		dc.b $1A
		dc.b $4C ; L
		dc.b $E6
		dc.b $4D ; M
		dc.b $B0
		dc.b $4E ; N
		dc.b $79 ; y
		dc.b $4F ; O
		dc.b $41 ; A
		dc.b $50 ; P
		dc.b   8
		dc.b $FF
		dc.b $DF
		dc.b $56 ; V
		dc.b $92
		dc.b $52 ; R
		dc.b $56 ; V
		dc.b $53 ; S
		dc.b $19
		dc.b $53 ; S
		dc.b $DA
		dc.b $54 ; T
		dc.b $9B
		dc.b $55 ; U
		dc.b $5A ; Z
		dc.b $70 ; p
		dc.b   0
		dc.b $9A
		dc.b $BC
		dc.b $31 ; 1
		dc.b $EC
		dc.b $65 ; e
		dc.b $36 ; 6
		dc.b $F8
		dc.b   7
		dc.b $F8
		dc.b $62 ; b
		dc.b $2E ; .
		dc.b $24 ; $
		dc.b $C9
		dc.b $80
		dc.b $85
		dc.b $87
		dc.b $20
		dc.b $7C ; |
		dc.b $EA
		dc.b $A1
		dc.b $42 ; B
		dc.b $48 ; H
		dc.b   0
		dc.b $19
		dc.b   3
		dc.b $FC
		dc.b $8F
		dc.b $31 ; 1
		dc.b $11
		dc.b $B2
		dc.b $80
		dc.b $67 ; g
		dc.b $14
		dc.b $F4
		dc.b   9
		dc.b $F8
		dc.b  $C
		dc.b $C6
		dc.b $F0
		dc.b $F0
		dc.b   1
		dc.b $F8
		dc.b   4
		dc.b $C8
		dc.b $60 ; `
		dc.b $28 ; (
		dc.b $4C ; L
		dc.b $B5
		dc.b $D1
		dc.b $DF
		dc.b   1
		dc.b $E0
		dc.b $C9
		dc.b $C0
		dc.b $FD
		dc.b   8
		dc.b $C0
		dc.b $FC
		dc.b $63 ; c
		dc.b $E6
		dc.b $3E ; >
		dc.b $C2
		dc.b  $D
		dc.b $18
		dc.b   1
		dc.b $58 ; X
		dc.b $B8
		dc.b $F8
		dc.b  $A
		dc.b $C8
		dc.b $B8
		dc.b $FC
		dc.b $11
		dc.b $E3
		dc.b $17
		dc.b $FC
		dc.b   9
		dc.b $FC
		dc.b   1
		dc.b $2B ; +
		dc.b $40 ; @
		dc.b $58 ; X
		dc.b $30 ; 0
		dc.b $C4
		dc.b $FC
		dc.b $B6
		dc.b $C3
		dc.b $DC
		dc.b $C0
		dc.b $80
		dc.b $68 ; h
		dc.b $C9
		dc.b $22 ; "
		dc.b $7C ; |
		dc.b $C9
		dc.b $20
		dc.b $12
		dc.b $FC
		dc.b $21 ; !
		dc.b $FF
		dc.b $F0
		dc.b $67 ; g
		dc.b $3C ; <
		dc.b  $C
		dc.b $40 ; @
		dc.b   0
		dc.b $29 ; )
		dc.b $65 ; e
		dc.b $68 ; h
		dc.b $20
		dc.b $F4
		dc.b $28 ; (
		dc.b $B0
		dc.b $AD
		dc.b $3F ; ?
		dc.b $A4
		dc.b $58 ; X
		dc.b $2C ; ,
		dc.b $54 ; T
		dc.b $C0
		dc.b $3F ; ?
		dc.b   0
		dc.b $32 ; 2
		dc.b $F4
		dc.b $24 ; $
		dc.b $DC
		dc.b $7F ; 
		dc.b $58 ; X
		dc.b $B2
		dc.b $40 ; @
		dc.b $64 ; d
		dc.b   8
		dc.b $3B ; ;
		dc.b $6D ; m
		dc.b $58 ; X
		dc.b $26 ; &
		dc.b $C4
		dc.b $30 ; 0
		dc.b   1
		dc.b $3E ; >
		dc.b $C9
		dc.b $8A
		dc.b $EF
		dc.b $EC
		dc.b $30 ; 0
		dc.b $F8
		dc.b $26 ; &
		dc.b $30 ; 0
		dc.b $1F
		dc.b $66 ; f
		dc.b $CA
		dc.b $C2
		dc.b $7E ; ~
		dc.b $F1
		dc.b $F6
		dc.b $60 ; `
		dc.b $32 ; 2
		dc.b $C4
		dc.b $21 ; !
		dc.b $65 ; e
		dc.b $2C ; ,
		dc.b $C4
		dc.b $FE
		dc.b $65 ; e
		dc.b $36 ; 6
		dc.b $B9
		dc.b   0
		dc.b $68 ; h
		dc.b $98
		dc.b $FA
		dc.b $60 ; `
		dc.b $E4
		dc.b $FF
		dc.b $E0
		dc.b $C8
		dc.b $CE
		dc.b $C1
		dc.b $21 ; !
		dc.b $66 ; f
		dc.b   4
		dc.b $1F
		dc.b $84
		dc.b $55 ; U
		dc.b $40 ; @
		dc.b $60 ; `
		dc.b   6
		dc.b $48 ; H
		dc.b $40 ; @
		dc.b $FA
		dc.b $B8
		dc.b $D1
		dc.b $EC
		dc.b $18
		dc.b $86
		dc.b $74 ; t
		dc.b $7A ; z
		dc.b   3
		dc.b $7A ; z
		dc.b $1B
		dc.b $41 ; A
		dc.b $E6
		dc.b $1F
		dc.b $FE
		dc.b $E9
		dc.b   8
		dc.b $E9
		dc.b $48 ; H
		dc.b $E0
		dc.b $88
		dc.b $FC
		dc.b $E8
		dc.b $88
		dc.b $32 ; 2
		dc.b   0
		dc.b $E6
		dc.b $49 ; I
		dc.b $3F ; ?
		dc.b $3E ; >
		dc.b $90
		dc.b $41 ; A
		dc.b $E9
		dc.b $88
		dc.b $E8
		dc.b $48 ; H
		dc.b $E1
		dc.b $FC
		dc.b $E8
		dc.b   8
		dc.b $52 ; R
		dc.b $80
		dc.b $8C
		dc.b $D1
		dc.b $5A ; Z
		dc.b $80
		dc.b $80
		dc.b $D2
		dc.b   8
		dc.b $D2
		dc.b $24 ; $
		dc.b $CA
		dc.b $9D
		dc.b $87
		dc.b   0
		dc.b $FE
		dc.b $52 ; R
		dc.b $C1
		dc.b   0
		dc.b $78 ; x
		dc.b $B0
		dc.b $2A ; *
		dc.b   6
		dc.b $8C
		dc.b $63 ; c
		dc.b $CC
		dc.b $10
		dc.b $60 ; `
		dc.b $10
		dc.b $EC
		dc.b $B8
		dc.b $EC
		dc.b $64 ; d
		dc.b $A3
		dc.b $FF
		dc.b $EC
		dc.b $16
		dc.b $54 ; T
		dc.b $A2
		dc.b $56 ; V
		dc.b $D2
		dc.b $92
		dc.b $40 ; @
		dc.b  $C
		dc.b $41 ; A
		dc.b   0
		dc.b $80
		dc.b $65 ; e
		dc.b $70 ; p
		dc.b $24 ; $
		dc.b  $C
		dc.b $FA
		dc.b $FF
		dc.b $80
		dc.b $64 ; d
		dc.b $8A
		dc.b $E8
		dc.b $1C
		dc.b $84
		dc.b $D6
		dc.b $D0
		dc.b $60 ; `
		dc.b $D6
		dc.b $7A ; z
		dc.b $A1
		dc.b $F6
		dc.b $44 ; D
		dc.b $FD
		dc.b $FD
		dc.b $C8
		dc.b $A6
		dc.b $2C ; ,
		dc.b $FA
		dc.b $C1
		dc.b $10
		dc.b $22 ; "
		dc.b   0
		dc.b $30 ; 0
		dc.b $FF
		dc.b $30 ; 0
		dc.b $3C ; <
		dc.b   3
		dc.b $80
		dc.b $D0
		dc.b $41 ; A
		dc.b $30 ; 0
		dc.b $C0
		dc.b $D0
		dc.b $40 ; @
		dc.b $FC
		dc.b $E4
		dc.b $48 ; H
		dc.b   4
		dc.b $FD
		dc.b $FC
		dc.b $48 ; H
		dc.b $F4
		dc.b $EE
		dc.b $F8
		dc.b  $D
		dc.b $A2
		dc.b $D1
		dc.b $3F ; ?
		dc.b   2
		dc.b $34 ; 4
		dc.b $3C ; <
		dc.b $69 ; i
		dc.b $3C ; <
		dc.b   1
		dc.b $FF
		dc.b $A0
		dc.b $82
		dc.b $42 ; B
		dc.b $A8
		dc.b $FF
		dc.b $67 ; g
		dc.b   8
		dc.b $FC
		dc.b $76 ; v
		dc.b $F6
		dc.b $C2
		dc.b $42 ; B
		dc.b $B2
		dc.b $40 ; @
		dc.b $66 ; f
		dc.b $14
		dc.b $EC
		dc.b $F8
		dc.b  $A
		dc.b  $A
		dc.b $EC
		dc.b $FC
		dc.b $67 ; g
		dc.b   2
		dc.b $D0
		dc.b $3F ; ?
		dc.b $9A
		dc.b $A8
		dc.b $E2
		dc.b $40 ; @
		dc.b $FC
		dc.b $FC
		dc.b $68 ; h
		dc.b   4
		dc.b $40 ; @
		dc.b   5
		dc.b $14
		dc.b $64 ; d
		dc.b $5A ; Z
		dc.b $F7
		dc.b $EC
		dc.b $CA
		dc.b $F1
		dc.b $1E
		dc.b $34 ; 4
		dc.b $FC
		dc.b $C8
		dc.b $C9
		dc.b   0
		dc.b $24 ; $
		dc.b $A0
		dc.b $B1
		dc.b $FC
		dc.b $4C ; L
		dc.b $31 ; 1
		dc.b $86
		dc.b $C1
		dc.b $42 ; B
		dc.b $FA
		dc.b $46 ; F
		dc.b $E6
		dc.b $1C
		dc.b $F6
		dc.b $FF
		dc.b $1F
		dc.b $B0
		dc.b $42 ; B
		dc.b $62 ; b
		dc.b $3A ; :
		dc.b $42 ; B
		dc.b $41 ; A
		dc.b $94
		dc.b $40 ; @
		dc.b $B4
		dc.b $6D ; m
		dc.b $58 ; X
		dc.b $14
		dc.b $63 ; c
		dc.b $72 ; r
		dc.b $8F
		dc.b $21 ; !
		dc.b $FA
		dc.b $10
		dc.b $63 ; c
		dc.b  $C
		dc.b $FA
		dc.b $12
		dc.b $FA
		dc.b $94
		dc.b $8E
		dc.b $DF
		dc.b $F4
		dc.b $60 ; `
		dc.b   8
		dc.b $FA
		dc.b $14
		dc.b $60 ; `
		dc.b   2
		dc.b $E2
		dc.b $4A ; J
		dc.b $7E ; ~
		dc.b $F1
		dc.b $1E
		dc.b  $F
		dc.b $1E
		dc.b $AE
		dc.b $B9
		dc.b $1C
		dc.b $64 ; d
		dc.b  $A
		dc.b $F6
		dc.b $14
		dc.b $E8
		dc.b $48 ; H
		dc.b $FF
		dc.b $8F
		dc.b $CE
		dc.b $65 ; e
		dc.b $44 ; D
		dc.b $60 ; `
		dc.b $3A ; :
		dc.b $32 ; 2
		dc.b $3C ; <
		dc.b   0
		dc.b $FF
		dc.b $90
		dc.b $42 ; B
		dc.b $34 ; 4
		dc.b   0
		dc.b $C7
		dc.b $9C
		dc.b $CE
		dc.b $1A
		dc.b $63 ; c
		dc.b $34 ; 4
		dc.b $FA
		dc.b $16
		dc.b $C2
		dc.b $18
		dc.b $C5
		dc.b $34 ; 4
		dc.b $C2
		dc.b $98
		dc.b $B1
		dc.b $FA
		dc.b $1A
		dc.b $C2
		dc.b  $C
		dc.b $6D ; m
		dc.b $98
		dc.b $AF
		dc.b $72 ; r
		dc.b $C4
		dc.b $FD
		dc.b $1A
		dc.b $C4
		dc.b   8
		dc.b $20
		dc.b   2
		dc.b $A4
		dc.b $C1
		dc.b $3F ; ?
		dc.b $74 ; t
		dc.b $4A ; J
		dc.b $C9
		dc.b $44 ; D
		dc.b $FC
		dc.b   0
		dc.b   1
		dc.b $60 ; `
		dc.b $F4
		dc.b   4
		dc.b $80
		dc.b $DC
		dc.b $F1
		dc.b   0
		dc.b $1E
		dc.b  $B
		dc.b $FD
		dc.b $DC
		dc.b $F1
		dc.b $D4
		dc.b $36 ; 6
		dc.b $C9
		dc.b $DA
		dc.b $3B ; ;
		dc.b $DE
		dc.b $E9
		dc.b $36 ; 6
		dc.b   2
		dc.b $41 ; A
		dc.b   0
		dc.b $4F ; O
		dc.b $C2
		dc.b  $F
		dc.b $67 ; g
		dc.b   6
		dc.b $10
		dc.b   1
		dc.b $DC
		dc.b $82
		dc.b $B9
		dc.b $E0
		dc.b  $F
		dc.b  $D
		dc.b $6B ; k
		dc.b $66 ; f
		dc.b  $E
		dc.b $44 ; D
		dc.b $B9
		dc.b   0
		dc.b $E6
		dc.b $67 ; g
		dc.b $12
		dc.b $EC
		dc.b $FD
		dc.b $A0
		dc.b $BA
		dc.b $36 ; 6
		dc.b $C3
		dc.b $1E
		dc.b $B0
		dc.b $B9
		dc.b   3
		dc.b $FA
		dc.b $20
		dc.b $41 ; A
		dc.b $CC
		dc.b $FD
		dc.b   6
		dc.b $66 ; f
		dc.b  $C
		dc.b $87
		dc.b $7E ; ~
		dc.b $F6
		dc.b $3B ; ;
		dc.b $83
		dc.b $FC
		dc.b $3C ; <
		dc.b $94
		dc.b $E9
		dc.b $3B ; ;
		dc.b $43 ; C
		dc.b $ED
		dc.b $58 ; X
		dc.b $54 ; T
		dc.b $75 ; u
		dc.b $17
		dc.b $40 ; @
		dc.b $C2
		dc.b $10
		dc.b $F1
		dc.b $80
		dc.b $99
		dc.b $4A ; J
		dc.b   0
		dc.b $D6
		dc.b $F2
		dc.b $EC
		dc.b $48 ; H
		dc.b  $A
		dc.b $B9
		dc.b $8D
		dc.b $31 ; 1
		dc.b $82
		dc.b $62 ; b
		dc.b $F1
		dc.b $66 ; f
		dc.b $FC
		dc.b $62 ; b
		dc.b $FC
		dc.b $6C ; l
		dc.b $C6
		dc.b $18
		dc.b $FC
		dc.b $BA
		dc.b $FC
		dc.b $B6
		dc.b $FC
		dc.b $2A ; *
		dc.b $63 ; c
		dc.b $8C
		dc.b $FC
		dc.b $4E ; N
		dc.b $FC
		dc.b $4A ; J
		dc.b $FC
		dc.b $46 ; F
		dc.b $B1
		dc.b $31 ; 1
		dc.b $FC
		dc.b $42 ; B
		dc.b $FC
		dc.b $E0
		dc.b $E0
		dc.b $99
		dc.b $3C ; <
		dc.b $F8
		dc.b $36 ; 6
		dc.b $46 ; F
		dc.b $E1
		dc.b $FC
		dc.b $32 ; 2
		dc.b $FC
		dc.b $D0
		dc.b $99
		dc.b $D8
		dc.b $20
		dc.b   8
		dc.b   9
		dc.b $3F ; ?
		dc.b $48 ; H
		dc.b $40 ; @
		dc.b $A4
		dc.b $44 ; D
		dc.b $B8
		dc.b $30 ; 0
		dc.b   8
		dc.b $E0
		dc.b $48 ; H
		dc.b   6
		dc.b $7B ; {
		dc.b $F8
		dc.b $B0
		dc.b $F8
		dc.b $EE
		dc.b $FD
		dc.b $A6
		dc.b  $A
		dc.b $BB
		dc.b $36 ; 6
		dc.b $82
		dc.b $41 ; A
		dc.b $AF
		dc.b $FA
		dc.b $28 ; (
		dc.b $B9
		dc.b $99
		dc.b $42 ; B
		dc.b $51 ; Q
		dc.b $F2
		dc.b $F8
		dc.b   9
		dc.b $CA
		dc.b $FD
		dc.b $E4
		dc.b $91
		dc.b $53 ; S
		dc.b $A1
		dc.b   5
		dc.b $67 ; g
		dc.b  $C
		dc.b $A5
		dc.b $1F
		dc.b $42 ; B
		dc.b $91
		dc.b $E4
		dc.b $F8
		dc.b   9
		dc.b $BA
		dc.b   8
		dc.b $80
		dc.b   0
		dc.b   7
		dc.b $67 ; g
		dc.b  $A
		dc.b $1E
		dc.b $FA
		dc.b $BE
		dc.b $F7
		dc.b $D0
		dc.b   8
		dc.b $C0
		dc.b $F6
		dc.b $60 ; `
		dc.b   6
		dc.b $B1
		dc.b $F7
		dc.b $C6
		dc.b $61 ; a
		dc.b $2A ; *
		dc.b $DE
		dc.b $56 ; V
		dc.b $A8
		dc.b $FC
		dc.b   8
		dc.b $E9
		dc.b $1C
		dc.b $B1
		dc.b $EE
		dc.b $B4
		dc.b $61 ; a
		dc.b $44 ; D
		dc.b $CA
		dc.b $F8
		dc.b   9
		dc.b  $D
		dc.b $E1
		dc.b $61 ; a
		dc.b  $A
		dc.b $A2
		dc.b $F8
		dc.b  $B
		dc.b  $C
		dc.b $C0
		dc.b   1
		dc.b $1C
		dc.b $64 ; d
		dc.b   6
		dc.b $82
		dc.b $61 ; a
		dc.b $20
		dc.b $94
		dc.b $B1
		dc.b $F8
		dc.b $28 ; (
		dc.b $EA
		dc.b $33 ; 3
		dc.b $CA
		dc.b   4
		dc.b $E8
		dc.b $11
		dc.b $83
		dc.b $1E
		dc.b $EA
		dc.b $FC
		dc.b $F4
		dc.b   2
		dc.b $80
		dc.b $EA
		dc.b $3B ; ;
		dc.b $F2
		dc.b $F3
		dc.b $9C
		dc.b $E9
		dc.b $EA
		dc.b $F4
		dc.b $E2
		dc.b $EA
		dc.b $30 ; 0
		dc.b   0
		dc.b  $C
		dc.b $2D ; -
		dc.b $B8
		dc.b $F1
		dc.b $20
		dc.b $66 ; f
		dc.b $2E ; .
		dc.b $36 ; 6
		dc.b $A2
		dc.b $FC
		dc.b $54 ; T
		dc.b $2E ; .
		dc.b $E2
		dc.b $3C ; <
		dc.b $FC
		dc.b $44 ; D
		dc.b $E2
		dc.b $65 ; e
		dc.b $74 ; t
		dc.b $FF
		dc.b $F8
		dc.b $38 ; 8
		dc.b $62 ; b
		dc.b $D1
		dc.b $48 ; H
		dc.b $22 ; "
		dc.b $10
		dc.b $A1
		dc.b $FD
		dc.b $BA
		dc.b $65 ; e
		dc.b $20
		dc.b $24 ; $
		dc.b   0
		dc.b $C7
		dc.b $73 ; s
		dc.b $32 ; 2
		dc.b $C1
		dc.b $30 ; 0
		dc.b   2
		dc.b $12
		dc.b $C2
		dc.b $10
		dc.b   2
		dc.b $14
		dc.b $BA
		dc.b  $B
		dc.b   4
		dc.b $34 ; 4
		dc.b $F1
		dc.b  $C
		dc.b $7E ; ~
		dc.b $F8
		dc.b   9
		dc.b $E0
		dc.b $F0
		dc.b   5
		dc.b $C3
		dc.b $F6
		dc.b $60 ; `
		dc.b $A4
		dc.b $A1
		dc.b $F8
		dc.b $1E
		dc.b $F3
		dc.b $EA
		dc.b $6A ; j
		dc.b $61 ; a
		dc.b $F2
		dc.b $9D
		dc.b $94
		dc.b $18
		dc.b $F8
		dc.b  $B
		dc.b $F6
		dc.b $38 ; 8
		dc.b $20
		dc.b $10
		dc.b $98
		dc.b $FC
		dc.b $F6
		dc.b $9E
		dc.b $F0
		dc.b $76 ; v
		dc.b $98
		dc.b $24 ; $
		dc.b $64 ; d
		dc.b $64 ; d
		dc.b  $C
		dc.b $50 ; P
		dc.b $F1
		dc.b $82
		dc.b $E2
		dc.b $CA
		dc.b $23 ; #
		dc.b $98
		dc.b $AD
		dc.b $39 ; 9
		dc.b $79 ; y
		dc.b $E1
		dc.b $20
		dc.b $F2
		dc.b $38 ; 8
		dc.b $D2
		dc.b $FE
		dc.b $C6
		dc.b $E1
		dc.b $82
		dc.b $DC
		dc.b $20
		dc.b  $D
		dc.b $86
		dc.b $E0
		dc.b $D0
		dc.b $C0
		dc.b $C2
		dc.b $32 ; 2
		dc.b $F1
		dc.b $14
		dc.b $EA
		dc.b $FD
		dc.b $96
		dc.b $5A ; Z
		dc.b $12
		dc.b $CE
		dc.b $F1
		dc.b  $F
		dc.b $56 ; V
		dc.b $C1
		dc.b $20
		dc.b $80
		dc.b $D0
		dc.b $FE
		dc.b $D0
		dc.b $52 ; R
		dc.b $91
		dc.b $C0
		dc.b $98
		dc.b $B8
		dc.b   2
		dc.b $B4
		dc.b $E9
		dc.b $7B ; {
		dc.b $A0
		dc.b $3E ; >
		dc.b $42 ; B
		dc.b $F8
		dc.b $CE
		dc.b $D2
		dc.b $CE
		dc.b $18
		dc.b $CE
		dc.b $66 ; f
		dc.b  $A
		dc.b $B0
		dc.b $C9
		dc.b  $D
		dc.b $BF
		dc.b $63 ; c
		dc.b $F6
		dc.b $2E ; .
		dc.b $B9
		dc.b  $A
		dc.b $F2
		dc.b $59 ; Y
		dc.b $48 ; H
		dc.b $42 ; B
		dc.b   0
		dc.b $60 ; `
		dc.b $BE
		dc.b $58 ; X
		dc.b $D4
		dc.b $3B ; ;
		dc.b $72 ; r
		dc.b $D8
		dc.b $78 ; x
		dc.b $BA
		dc.b $A3
		dc.b $FA
		dc.b $A4
		dc.b $ED
		dc.b $96
		dc.b $EA
		dc.b  $B
		dc.b $8B
		dc.b $39 ; 9
		dc.b $67 ; g
		dc.b $F2
		dc.b $2C ; ,
		dc.b $AB
		dc.b $56 ; V
		dc.b $2D ; -
		dc.b $5A ; Z
		dc.b $32 ; 2
		dc.b $AA
		dc.b  $C
		dc.b $10
		dc.b $F6
		dc.b $E6
		dc.b $F8
		dc.b $E6
		dc.b $D8
		dc.b $73 ; s
		dc.b   5
		dc.b $E6
		dc.b   2
		dc.b $E6
		dc.b $1A
		dc.b $D6
		dc.b $8B
		dc.b $E6
		dc.b $FC
		dc.b $F8
		dc.b $A8
		dc.b $9D
		dc.b $E6
		dc.b $BE
		dc.b $E6
		dc.b $89
		dc.b $34 ; 4
		dc.b $E9
		dc.b   1
		dc.b $6A ; j
		dc.b $D9
		dc.b $F5
		dc.b $C4
		dc.b $4D ; M
		dc.b $E5
		dc.b $12
		dc.b $E8
		dc.b $FC
		dc.b $A6
		dc.b $70 ; p
		dc.b $5A ; Z
		dc.b $5A ; Z
		dc.b $E1
		dc.b $F8
		dc.b $1C
		dc.b $C6
		dc.b $20
		dc.b $E8
		dc.b   6
		dc.b $C8
		dc.b $67 ; g
		dc.b $8E
		dc.b $82
		dc.b $58 ; X
		dc.b $BA
		dc.b $7A ; z
		dc.b $D4
		dc.b $98
		dc.b $D4
		dc.b $FD
		dc.b $EC
		dc.b   0
		dc.b $FF
		dc.b $7A ; z
		dc.b $93
		dc.b $A7
		dc.b $44 ; D
		dc.b $FC
		dc.b $F5
		dc.b $82
		dc.b $EA
		dc.b $D8
		dc.b $F1
		dc.b $20
		dc.b $24 ; $
		dc.b $48 ; H
		dc.b $60 ; `
		dc.b $B7
		dc.b $FE
		dc.b $34 ; 4
		dc.b $C0
		dc.b $E0
		dc.b $48 ; H
		dc.b $C8
		dc.b $E9
		dc.b   4
		dc.b $D4
		dc.b $89
		dc.b $A4
		dc.b $D9
		dc.b $66 ; f
		dc.b $22 ; "
		dc.b $14
		dc.b $ED
		dc.b $5A ; Z
		dc.b $58 ; X
		dc.b $C7
		dc.b $2B ; +
		dc.b $B2
		dc.b $2A ; *
		dc.b $78 ; x
		dc.b $8B
		dc.b $5E ; ^
		dc.b $F1
		dc.b   0
		dc.b $90
		dc.b $CC
		dc.b $87
		dc.b $F8
		dc.b $4E ; N
		dc.b $14
		dc.b $C0
		dc.b $24 ; $
		dc.b $E8
		dc.b $22 ; "
		dc.b $FC
		dc.b $26 ; &
		dc.b $60 ; `
		dc.b $3C ; <
		dc.b $F5
		dc.b $FE
		dc.b $70 ; p
		dc.b $FF
		dc.b $80
		dc.b $FD
		dc.b $7C ; |
		dc.b $D9
		dc.b $FF
		dc.b $76 ; v
		dc.b $3F ; ?
		dc.b $96
		dc.b $E1
		dc.b $FF
		dc.b $58 ; X
		dc.b $E0
		dc.b $98
		dc.b $30 ; 0
		dc.b   3
		dc.b $93
		dc.b $1F
		dc.b $E1
		dc.b $98
		dc.b $B4
		dc.b $E4
		dc.b $18
		dc.b $97
		dc.b $28 ; (
		dc.b  $A
		dc.b $F1
		dc.b $FF
		dc.b  $E
		dc.b $24 ; $
		dc.b $F0
		dc.b $FC
		dc.b $22 ; "
		dc.b $F0
		dc.b $18
		dc.b $D8
		dc.b $C1
		dc.b $F0
		dc.b $72 ; r
		dc.b $FD
		dc.b $1A
		dc.b $5E ; ^
		dc.b $FC
		dc.b $F4
		dc.b $F6
		dc.b $A8
		dc.b $6A ; j
		dc.b $FC
		dc.b $E1
		dc.b $3F ; ?
		dc.b $F4
		dc.b $EC
		dc.b $F6
		dc.b $34 ; 4
		dc.b $ED
		dc.b $58 ; X
		dc.b $7C ; |
		dc.b $60 ; `
		dc.b   6
		dc.b $24 ; $
		dc.b $FC
		dc.b $FF
		dc.b $72 ; r
		dc.b $6C ; l
		dc.b $FF
		dc.b $C8
		dc.b   5
		dc.b $D6
		dc.b   4
		dc.b $6C ; l
		dc.b $D1
		dc.b $7E ; ~
		dc.b $E8
		dc.b $84
		dc.b $C8
		dc.b $20
		dc.b $26 ; &
		dc.b $99
		dc.b   4
		dc.b   0
		dc.b $46 ; F
		dc.b $27 ; '
		dc.b $87
		dc.b $68 ; h
		dc.b $AA
		dc.b $65 ; e
		dc.b   4
		dc.b $CA
		dc.b $38 ; 8
		dc.b $F5
		dc.b $34 ; 4
		dc.b $66 ; f
		dc.b $FB
		dc.b $86
		dc.b $C5
		dc.b $52 ; R
		dc.b $7C ; |
		dc.b $9B
		dc.b $34 ; 4
		dc.b $1A
		dc.b   0
		dc.b $42 ; B
		dc.b $9E
		dc.b $A9
		dc.b $4A ; J
		dc.b $F1
		dc.b $FE
		dc.b   2
		dc.b $1A
		dc.b $46 ; F
		dc.b $3E ; >
		dc.b $65 ; e
		dc.b $28 ; (
		dc.b $1C
		dc.b $F1
		dc.b $6E ; n
		dc.b $42 ; B
		dc.b   0
		dc.b $72 ; r
		dc.b   4
		dc.b $C1
		dc.b $8E
		dc.b $D0
		dc.b $18
		dc.b $FE
		dc.b $E4
		dc.b $7A ; z
		dc.b $46 ; F
		dc.b $63 ; c
		dc.b $F2
		dc.b  $F
		dc.b $66 ; f
		dc.b $1B
		dc.b $C6
		dc.b $46 ; F
		dc.b   0
		dc.b $9E
		dc.b $AE
		dc.b $F1
		dc.b $F4
		dc.b $FC
		dc.b   4
		dc.b $3E ; >
		dc.b $F4
		dc.b $B0
		dc.b $F6
		dc.b $82
		dc.b $A2
		dc.b $10
		dc.b $80
		dc.b $66 ; f
		dc.b $84
		dc.b  $C
		dc.b $F3
		dc.b $34 ; 4
		dc.b $F4
		dc.b $DB
		dc.b   4
		dc.b $58 ; X
		dc.b $FC
		dc.b $FD
		dc.b $37 ; 7
		dc.b $FA
		dc.b $38 ; 8
		dc.b $30 ; 0
		dc.b $3C ; <
		dc.b   1
		dc.b   0
		dc.b $60 ; `
		dc.b $91
		dc.b   1
		dc.b $80
		dc.b $37 ; 7
		dc.b $57 ; W
		dc.b $4F ; O
		dc.b $3F ; ?
		dc.b $C8
		dc.b $FF
		dc.b $F8
		dc.b $66 ; f
		dc.b $46 ; F
		dc.b $AA
		dc.b $43 ; C
		dc.b $F8
		dc.b $80
		dc.b $38 ; 8
		dc.b $20
		dc.b $D9
		dc.b $8C
		dc.b $44 ; D
		dc.b $FE
		dc.b $30 ; 0
		dc.b $D9
		dc.b $7A ; z
		dc.b $D6
		dc.b $61 ; a
		dc.b $EE
		dc.b $FA
		dc.b $38 ; 8
		dc.b $5E ; ^
		dc.b $40 ; @
		dc.b $E7
		dc.b $CC
		dc.b $34 ; 4
		dc.b $12
		dc.b $84
		dc.b $66 ; f
		dc.b $5E ; ^
		dc.b $71 ; q
		dc.b $16
		dc.b $FC
		dc.b $7B ; {
		dc.b $37 ; 7
		dc.b $67 ; g
		dc.b   8
		dc.b  $E
		dc.b $84
		dc.b $44 ; D
		dc.b $9B
		dc.b $E2
		dc.b $44 ; D
		dc.b $DF
		dc.b $D0
		dc.b $18
		dc.b $9E
		dc.b $EE
		dc.b $FC
		dc.b $30 ; 0
		dc.b $EB
		dc.b $CA
		dc.b $AE
		dc.b $64 ; d
		dc.b  $F
		dc.b $8B
		dc.b $AE
		dc.b $42 ; B
		dc.b $22 ; "
		dc.b $D8
		dc.b $FE
		dc.b $32 ; 2
		dc.b $D8
		dc.b $4A ; J
		dc.b $F3
		dc.b $87
		dc.b $60 ; `
		dc.b $AC
		dc.b $67 ; g
		dc.b $5E ; ^
		dc.b   2
		dc.b $F8
		dc.b $D0
		dc.b $F8
		dc.b $88
		dc.b $D9
		dc.b $3A ; :
		dc.b $FC
		dc.b $BA
		dc.b  $E
		dc.b $6E ; n
		dc.b $1B
		dc.b $40 ; @
		dc.b $58 ; X
		dc.b $78 ; x
		dc.b $D4
		dc.b $9B
		dc.b $82
		dc.b $E9
		dc.b $4E ; N
		dc.b $FB
		dc.b $C6
		dc.b $18
		dc.b $52 ; R
		dc.b $71 ; q
		dc.b $94
		dc.b $DC
		dc.b $AC
		dc.b $FC
		dc.b $7E ; ~
		dc.b $FC
		dc.b $AE
		dc.b $63 ; c
		dc.b $8C
		dc.b $FC
		dc.b $B2
		dc.b $FC
		dc.b $2C ; ,
		dc.b $FC
		dc.b $C0
		dc.b $31 ; 1
		dc.b $C6
		dc.b $FC
		dc.b $CE
		dc.b $FC
		dc.b $C6
		dc.b $FC
		dc.b $D2
		dc.b $FC
		dc.b $8E
		dc.b $31 ; 1
		dc.b $DA
		dc.b $8C
		dc.b $DC
		dc.b   0
		dc.b $EA
		dc.b $FC
		dc.b $A4
		dc.b $FC
		dc.b   8
		dc.b $E6
		dc.b $9C
		dc.b $FC
		dc.b $9C
		dc.b $1A
		dc.b   6
		dc.b $44 ; D
		dc.b   5
		dc.b $E3
		dc.b $C7
		dc.b $9A
		dc.b $7A ; z
		dc.b $FC
		dc.b $7B ; {
		dc.b $42 ; B
		dc.b $AD
		dc.b $58 ; X
		dc.b $7E ; ~
		dc.b $88
		dc.b $60 ; `
		dc.b $D0
		dc.b $9F
		dc.b $32 ; 2
		dc.b $E6
		dc.b $F1
		dc.b $C2
		dc.b $F2
		dc.b $56 ; V
		dc.b $E9
		dc.b $98
		dc.b $F2
		dc.b $58 ; X
		dc.b $10
		dc.b $39 ; 9
		dc.b $F6
		dc.b $1A
		dc.b $42 ; B
		dc.b $EB
		dc.b $F6
		dc.b $70 ; p
		dc.b $E9
		dc.b $5B ; [
		dc.b $8F
		dc.b $FC
		dc.b $1F
		dc.b $4E ; N
		dc.b $EB
		dc.b $39 ; 9
		dc.b $6C ; l
		dc.b $F1
		dc.b $F0
		dc.b $EA
		dc.b $20
		dc.b $67 ; g
		dc.b  $E
		dc.b $70 ; p
		dc.b $F1
		dc.b $F8
		dc.b $E2
		dc.b $20
		dc.b $66 ; f
		dc.b  $A
		dc.b $28 ; (
		dc.b $79 ; y
		dc.b $F0
		dc.b $52 ; R
		dc.b $6D ; m
		dc.b $71 ; q
		dc.b $C8
		dc.b $58 ; X
		dc.b $22 ; "
		dc.b $BE
		dc.b $80
		dc.b $50 ; P
		dc.b $24 ; $
		dc.b $3A ; :
		dc.b   5
		dc.b $75 ; u
		dc.b $D6
		dc.b $37 ; 7
		dc.b $D0
		dc.b $C1
		dc.b $E6
		dc.b $EC
		dc.b $D9
		dc.b $EE
		dc.b $F8
		dc.b  $B
		dc.b $C4
		dc.b $FC
		dc.b $66 ; f
		dc.b   6
		dc.b $E5
		dc.b $13
		dc.b $E6
		dc.b $FC
		dc.b $EA
		dc.b $FE
		dc.b $98
		dc.b $37 ; 7
		dc.b $61 ; a
		dc.b $82
		dc.b $D6
		dc.b   8
		dc.b $70 ; p
		dc.b $F2
		dc.b $D0
		dc.b $FD
		dc.b $7C ; |
		dc.b $EE
		dc.b   0
		dc.b $FF
		dc.b $70 ; p
		dc.b $21 ; !
		dc.b $E8
		dc.b $2A ; *
		dc.b $B1
		dc.b $CC
		dc.b $48 ; H
		dc.b $F4
		dc.b $E4
		dc.b $FC
		dc.b $CE
		dc.b $FC
		dc.b $61 ; a
		dc.b $8C
		dc.b $78 ; x
		dc.b $18
		dc.b $F6
		dc.b $3A ; :
		dc.b $DE
		dc.b $4E ; N
		dc.b $61 ; a
		dc.b  $A
		dc.b $FD
		dc.b $38 ; 8
		dc.b $E8
		dc.b $FE
		dc.b $E4
		dc.b $E1
		dc.b $FF
		dc.b $2B ; +
		dc.b $40 ; @
		dc.b $5A ; Z
		dc.b $22 ; "
		dc.b $FC
		dc.b $26 ; &
		dc.b $3B ; ;
		dc.b $F4
		dc.b $1D
		dc.b $FC
		dc.b $2A ; *
		dc.b $A6
		dc.b $F5
		dc.b $38 ; 8
		dc.b $67 ; g
		dc.b $58 ; X
		dc.b $49 ; I
		dc.b $3C ; <
		dc.b $F1
		dc.b $10
		dc.b $2C ; ,
		dc.b $B4
		dc.b $D1
		dc.b $9A
		dc.b $B0
		dc.b $F2
		dc.b $A8
		dc.b $F1
		dc.b $79 ; y
		dc.b $AC
		dc.b $F0
		dc.b  $A
		dc.b $98
		dc.b $FC
		dc.b $A0
		dc.b $79 ; y
		dc.b $31 ; 1
		dc.b $C6
		dc.b   1
		dc.b $22 ; "
		dc.b $FC
		dc.b $58 ; X
		dc.b $FC
		dc.b $7A ; z
		dc.b $FC
		dc.b $18
		dc.b $71 ; q
		dc.b $9A
		dc.b $FC
		dc.b $E4
		dc.b $E8
		dc.b $EC
		dc.b   0
		dc.b $1E
		dc.b $8C
		dc.b $8E
		dc.b $FC
		dc.b $1A
		dc.b $FC
		dc.b $C0
		dc.b $69 ; i
		dc.b   0
		dc.b $12
		dc.b $B1
		dc.b $43 ; C
		dc.b $FC
		dc.b  $E
		dc.b $FC
		dc.b  $A
		dc.b $3C ; <
		dc.b $D4
		dc.b   1
		dc.b $E8
		dc.b $9E
		dc.b $12
		dc.b $D0
		dc.b $78 ; x
		dc.b $AA
		dc.b $79 ; y
		dc.b $89
		dc.b $E2
		dc.b $71 ; q
		dc.b $1A
		dc.b $FA
		dc.b   3
		dc.b $67 ; g
		dc.b $14
		dc.b $D4
		dc.b $F7
		dc.b $FA
		dc.b $A2
		dc.b $E2
		dc.b $6F ; o
		dc.b $D9
		dc.b $66 ; f
		dc.b  $A
		dc.b  $C
		dc.b $91
		dc.b $22 ; "
		dc.b $EA
		dc.b $66 ; f
		dc.b   2
		dc.b $DA
		dc.b $20
		dc.b $22 ; "
		dc.b $D4
		dc.b $D1
		dc.b $D8
		dc.b $F8
		dc.b $1A
		dc.b $12
		dc.b $EA
		dc.b $F1
		dc.b $FF
		dc.b $52 ; R
		dc.b $B6
		dc.b $F1
		dc.b $76 ; v
		dc.b $EF
		dc.b $4C ; L
		dc.b $1B
		dc.b $C6
		dc.b $89
		dc.b $5A ; Z
		dc.b $2B ; +
		dc.b $D8
		dc.b $DD
		dc.b $38 ; 8
		dc.b $66 ; f
		dc.b $5C ; \
		dc.b $6C ; l
		dc.b $EC
		dc.b $41 ; A
		dc.b $C2
		dc.b $C7
		dc.b $EC
		dc.b $DA
		dc.b $89
		dc.b $BF
		dc.b $A0
		dc.b $E1
		dc.b $88
		dc.b $10
		dc.b $10
		dc.b $22 ; "
		dc.b $B6
		dc.b $F4
		dc.b $16
		dc.b $84
		dc.b $F5
		dc.b   4
		dc.b $DE
		dc.b $B1
		dc.b $28 ; (
		dc.b $AC
		dc.b $F5
		dc.b $F4
		dc.b $2C ; ,
		dc.b $B1
		dc.b $2D ; -
		dc.b $39 ; 9
		dc.b $20
		dc.b $58 ; X
		dc.b $35 ; 5
		dc.b $C6
		dc.b $35 ; 5
		dc.b $9E
		dc.b $18
		dc.b   8
		dc.b $F6
		dc.b $F4
		dc.b $AB
		dc.b $B1
		dc.b $9A
		dc.b $A6
		dc.b $79 ; y
		dc.b $74 ; t
		dc.b $F6
		dc.b $CA
		dc.b $16
		dc.b $84
		dc.b $5A ; Z
		dc.b $A1
		dc.b $43 ; C
		dc.b $28 ; (
		dc.b $E1
		dc.b $CC
		dc.b $F1
		dc.b $4C ; L
		dc.b $1C
		dc.b $F4
		dc.b $A4
		dc.b $DD
		dc.b $9A
		dc.b $22 ; "
		dc.b $8D
		dc.b $51 ; Q
		dc.b $9A
		dc.b $F8
		dc.b  $A
		dc.b $3A ; :
		dc.b $9C
		dc.b $FD
		dc.b $1A
		dc.b $D4
		dc.b $26 ; &
		dc.b $D4
		dc.b $5A ; Z
		dc.b $F2
		dc.b $35 ; 5
		dc.b $3A ; :
		dc.b $FA
		dc.b $E9
		dc.b $DC
		dc.b $E5
		dc.b $DC
		dc.b $FC
		dc.b $26 ; &
		dc.b $56 ; V
		dc.b $5C ; \
		dc.b $D9
		dc.b $FF
		dc.b $2C ; ,
		dc.b $FB
		dc.b $A3
		dc.b $52 ; R
		dc.b $E6
		dc.b $EF
		dc.b $10
		dc.b $18
		dc.b $E9
		dc.b   8
		dc.b $80
		dc.b $18
		dc.b $C0
		dc.b $42 ; B
		dc.b   3
		dc.b $F8
		dc.b $F8
		dc.b  $C
		dc.b $F2
		dc.b $D5
		dc.b $9A
		dc.b $1C
		dc.b $BE
		dc.b $F8
		dc.b  $A
		dc.b $D4
		dc.b $E2
		dc.b $B6
		dc.b $92
		dc.b $50 ; P
		dc.b $7E ; ~
		dc.b $74 ; t
		dc.b $C9
		dc.b $8C
		dc.b $36 ; 6
		dc.b $F3
		dc.b   0
		dc.b $DC
		dc.b $DA
		dc.b $76 ; v
		dc.b $D4
		dc.b $F0
		dc.b $D2
		dc.b $DA
		dc.b $FE
		dc.b $AE
		dc.b $74 ; t
		dc.b $FC
		dc.b $58 ; X
		dc.b $7A ; z
		dc.b $DC
		dc.b $B6
		dc.b $D9
		dc.b $DC
		dc.b $FF
		dc.b $7A ; z
		dc.b $FB
		dc.b $44 ; D
		dc.b $DC
		dc.b $FC
		dc.b $F8
		dc.b $DB
		dc.b $38 ; 8
		dc.b $67 ; g
		dc.b $36 ; 6
		dc.b $D2
		dc.b $E1
		dc.b $43 ; C
		dc.b $26 ; &
		dc.b $F2
		dc.b $B0
		dc.b $2C ; ,
		dc.b   0
		dc.b $13
		dc.b $2C ; ,
		dc.b   8
		dc.b $66 ; f
		dc.b $28 ; (
		dc.b $F2
		dc.b $A8
		dc.b $F0
		dc.b $88
		dc.b $1C
		dc.b $F2
		dc.b $39 ; 9
		dc.b $46 ; F
		dc.b $BA
		dc.b $34 ; 4
		dc.b $D2
		dc.b $D2
		dc.b $C0
		dc.b $52 ; R
		dc.b $62 ; b
		dc.b $B2
		dc.b $5C ; \
		dc.b $72 ; r
		dc.b $E4
		dc.b $22 ; "
		dc.b $C0
		dc.b $2C ; ,
		dc.b $7B ; {
		dc.b $B2
		dc.b $A4
		dc.b $F0
		dc.b  $A
		dc.b $FF
		dc.b $54 ; T
		dc.b   4
		dc.b $BA
		dc.b $2C ; ,
		dc.b $14
		dc.b $A0
		dc.b $37 ; 7
		dc.b $67 ; g
		dc.b  $C
		dc.b  $B
		dc.b $85
		dc.b $88
		dc.b $D9
		dc.b   6
		dc.b $65 ; e
		dc.b $42 ; B
		dc.b $E2
		dc.b $D8
		dc.b $3B ; ;
		dc.b $84
		dc.b $81
		dc.b $EA
		dc.b $62 ; b
		dc.b $88
		dc.b $F8
		dc.b $D2
		dc.b $F5
		dc.b $F0
		dc.b $66 ; f
		dc.b $D1
		dc.b $42 ; B
		dc.b $5A ; Z
		dc.b $61 ; a
		dc.b $C6
		dc.b $CA
		dc.b $B9
		dc.b $74 ; t
		dc.b $D9
		dc.b $B6
		dc.b $CE
		dc.b $FD
		dc.b $BC
		dc.b $C2
		dc.b $EE
		dc.b $34 ; 4
		dc.b $60 ; `
		dc.b $C8
		dc.b $8E
		dc.b $E4
		dc.b $4A ; J
		dc.b $E4
		dc.b $58 ; X
		dc.b $D9
		dc.b   1
		dc.b $C4
		dc.b   0
		dc.b $40 ; @
		dc.b $F6
		dc.b $26 ; &
		dc.b $DA
		dc.b $58 ; X
		dc.b $77 ; w
		dc.b $E9
		dc.b $98
		dc.b $36 ; 6
		dc.b $67 ; g
		dc.b $16
		dc.b $66 ; f
		dc.b $F3
		dc.b $37 ; 7
		dc.b $66 ; f
		dc.b $BC
		dc.b $72 ; r
		dc.b $CC
		dc.b $20
		dc.b $53 ; S
		dc.b   7
		dc.b $5D ; ]
		dc.b $2D ; -
		dc.b $5A ; Z
		dc.b $21 ; !
		dc.b $60 ; `
		dc.b $10
		dc.b $5C ; \
		dc.b $EA
		dc.b $32 ; 2
		dc.b $D9
		dc.b   1
		dc.b $DC
		dc.b $E0
		dc.b $FD
		dc.b $68 ; h
		dc.b $71 ; q
		dc.b $FB
		dc.b $D2
		dc.b $D2
		dc.b $CB
		dc.b $36 ; 6
		dc.b $C0
		dc.b $D3
		dc.b $9A
		dc.b   3
		dc.b $30 ; 0
		dc.b $21 ; !
		dc.b $3C ; <
		dc.b $58 ; X
		dc.b $F3
		dc.b $BE
		dc.b $58 ; X
		dc.b $58 ; X
		dc.b $F9
		dc.b $9A
		dc.b $E0
		dc.b $58 ; X
		dc.b $DE
		dc.b $B6
		dc.b $62 ; b
		dc.b  $B
		dc.b $67 ; g
		dc.b $30 ; 0
		dc.b $58 ; X
		dc.b $B9
		dc.b $3F ; ?
		dc.b $C0
		dc.b $E9
		dc.b $FF
		dc.b $62 ; b
		dc.b $61 ; a
		dc.b $81
		dc.b $8E
		dc.b $FE
		dc.b  $C
		dc.b $C1
		dc.b $AC
		dc.b $C1
		dc.b $B0
		dc.b   1
		dc.b $A4
		dc.b $76 ; v
		dc.b $DA
		dc.b $36 ; 6
		dc.b $60 ; `
		dc.b $2E ; .
		dc.b $53 ; S
		dc.b $6D ; m
		dc.b $43 ; C
		dc.b $5B ; [
		dc.b $58 ; X
		dc.b $40 ; @
		dc.b $64 ; d
		dc.b $BB
		dc.b $BC
		dc.b $42 ; B
		dc.b $F3
		dc.b $3B ; ;
		dc.b $54 ; T
		dc.b $E9
		dc.b $8E
		dc.b $BC
		dc.b $F3
		dc.b $8A
		dc.b $85
		dc.b $F6
		dc.b $84
		dc.b $30 ; 0
		dc.b   9
		dc.b $12
		dc.b $B9
		dc.b $FA
		dc.b $2A ; *
		dc.b $3C ; <
		dc.b $E7
		dc.b $46 ; F
		dc.b $DB
		dc.b $F4
		dc.b $F1
		dc.b $E6
		dc.b $B5
		dc.b $E4
		dc.b $8C
		dc.b  $C
		dc.b $6D ; m
		dc.b   2
		dc.b $DC
		dc.b $42 ; B
		dc.b $F6
		dc.b $54 ; T
		dc.b $66 ; f
		dc.b  $C
		dc.b $D6
		dc.b $F1
		dc.b $57 ; W
		dc.b $9E
		dc.b $BB
		dc.b $EC
		dc.b $F0
		dc.b $FF
		dc.b $78 ; x
		dc.b $50 ; P
		dc.b $D9
		dc.b $54 ; T
		dc.b $2B ; +
		dc.b $50 ; P
		dc.b $58 ; X
		dc.b $5C ; \
		dc.b $2B ; +
		dc.b $68 ; h
		dc.b $56 ; V
		dc.b $60 ; `
		dc.b $10
		dc.b $28 ; (
		dc.b $7D ; }
		dc.b $7B ; {
		dc.b $4A ; J
		dc.b $49 ; I
		dc.b $92
		dc.b $F1
		dc.b $12
		dc.b $3B ; ;
		dc.b   0
		dc.b $12
		dc.b $63 ; c
		dc.b $39 ; 9
		dc.b $98
		dc.b $CA
		dc.b $B1
		dc.b   7
		dc.b $D2
		dc.b $41 ; A
		dc.b $F8
		dc.b $FF
		dc.b $FE
		dc.b $4E ; N
		dc.b $FB
		dc.b $10
		dc.b $12
		dc.b $83
		dc.b   0
		dc.b $81
		dc.b   1
		dc.b   4
		dc.b $80
		dc.b   4
		dc.b $82
		dc.b $C3
		dc.b $8D
		dc.b   3
		dc.b   3
		dc.b $84
		dc.b $66 ; f
		dc.b   5
		dc.b $80
		dc.b  $F
		dc.b $D8
		dc.b $E1
		dc.b $50 ; P
		dc.b $31 ; 1
		dc.b  $E
		dc.b $FC
		dc.b $54 ; T
		dc.b $FC
		dc.b $60 ; `
		dc.b $FC
		dc.b $20
		dc.b $1B
		dc.b $B7
		dc.b $B1
		dc.b $BE
		dc.b   3
		dc.b $58 ; X
		dc.b $21 ; !
		dc.b $B2
		dc.b $69 ; i
		dc.b $22 ; "
		dc.b $88
		dc.b $D9
		dc.b $28 ; (
		dc.b $FC
		dc.b $2C ; ,
		dc.b $6E ; n
		dc.b $1C
		dc.b $F6
		dc.b $D9
		dc.b $36 ; 6
		dc.b $E9
		dc.b $12
		dc.b $3C ; <
		dc.b $BA
		dc.b $79 ; y
		dc.b $4C ; L
		dc.b $FA
		dc.b $FF
		dc.b $4A ; J
		dc.b $8E
		dc.b   7
		dc.b $EC
		dc.b $6E ; n
		dc.b $66 ; f
		dc.b $14
		dc.b $FA
		dc.b $72 ; r
		dc.b $66 ; f
		dc.b  $E
		dc.b $74 ; t
		dc.b $F8
		dc.b $C2
		dc.b $9A
		dc.b $58 ; X
		dc.b $76 ; v
		dc.b $66 ; f
		dc.b   6
		dc.b $54 ; T
		dc.b $D4
		dc.b $51 ; Q
		dc.b $2E ; .
		dc.b $50 ; P
		dc.b $E8
		dc.b   1
		dc.b $ED
		dc.b $FA
		dc.b $EA
		dc.b $51 ; Q
		dc.b $F8
		dc.b $92
		dc.b $12
		dc.b $B3
		dc.b $E0
		dc.b $20
		dc.b $CE
		dc.b $7A ; z
		dc.b   3
		dc.b   8
		dc.b $C1
		dc.b $86
		dc.b $5C ; \
		dc.b $F3
		dc.b $38 ; 8
		dc.b $36 ; 6
		dc.b $10
		dc.b $1C
		dc.b $D1
		dc.b $F8
		dc.b $7A ; z
		dc.b $C0
		dc.b   1
		dc.b $28 ; (
		dc.b $CB
		dc.b   2
		dc.b $D8
		dc.b $FE
		dc.b $DE
		dc.b $54 ; T
		dc.b $A1
		dc.b $3F ; ?
		dc.b $68 ; h
		dc.b $EB
		dc.b $36 ; 6
		dc.b $18
		dc.b $B4
		dc.b $3B ; ;
		dc.b $7C ; |
		dc.b   2
		dc.b $EE
		dc.b $58 ; X
		dc.b $78 ; x
		dc.b $DB
		dc.b $40 ; @
		dc.b $92
		dc.b $4B ; K
		dc.b $58 ; X
		dc.b $3D ; =
		dc.b $4E ; N
		dc.b $DB
		dc.b $3E ; >
		dc.b $E6
		dc.b $F3
		dc.b $36 ; 6
		dc.b $E2
		dc.b $E9
		dc.b  $E
		dc.b $49 ; I
		dc.b $64 ; d
		dc.b $CC
		dc.b $C9
		dc.b   3
		dc.b $D0
		dc.b $43 ; C
		dc.b $D8
		dc.b $FC
		dc.b $7A ; z
		dc.b $4A ; J
		dc.b $15
		dc.b $FF
		dc.b $C8
		dc.b $C9
		dc.b $9E
		dc.b $B2
		dc.b $4A ; J
		dc.b $E1
		dc.b   6
		dc.b $5C ; \
		dc.b  $C
		dc.b $10
		dc.b   0
		dc.b  $A
		dc.b $66 ; f
		dc.b   2
		dc.b $24 ; $
		dc.b $30 ; 0
		dc.b $7E ; ~
		dc.b $99
		dc.b $41 ; A
		dc.b $8C
		dc.b   4
		dc.b $88
		dc.b $B8
		dc.b $7A ; z
		dc.b $94
		dc.b $F3
		dc.b $F6
		dc.b $21 ; !
		dc.b $EA
		dc.b $B1
		dc.b $32 ; 2
		dc.b $F8
		dc.b $17
		dc.b $46 ; F
		dc.b $B9
		dc.b   3
		dc.b $53 ; S
		dc.b $2D ; -
		dc.b $D8
		dc.b $20
		dc.b $98
		dc.b $64 ; d
		dc.b $A2
		dc.b $98
		dc.b $E3
		dc.b $3B ; ;
		dc.b $62 ; b
		dc.b  $E
		dc.b $D2
		dc.b $57 ; W
		dc.b $52 ; R
		dc.b $EE
		dc.b $90
		dc.b $EE
		dc.b $FC
		dc.b $86
		dc.b $D1
		dc.b $68 ; h
		dc.b $86
		dc.b $F1
		dc.b $7A ; z
		dc.b $F4
		dc.b $BC
		dc.b $7B ; {
		dc.b $E0
		dc.b $4C ; L
		dc.b $21 ; !
		dc.b $7C ; |
		dc.b $60 ; `
		dc.b $54 ; T
		dc.b $42 ; B
		dc.b $A8
		dc.b $F4
		dc.b $F1
		dc.b   0
		dc.b $FF
		dc.b $68 ; h
		dc.b $EF
		dc.b $7D ; }
		dc.b $92
		dc.b $EB
		dc.b $36 ; 6
		dc.b $66 ; f
		dc.b $56 ; V
		dc.b   4
		dc.b $F3
		dc.b $37 ; 7
		dc.b $67 ; g
		dc.b $4E ; N
		dc.b $CC
		dc.b $99
		dc.b $39 ; 9
		dc.b $67 ; g
		dc.b $48 ; H
		dc.b $52 ; R
		dc.b $8D
		dc.b   7
		dc.b $CC
		dc.b $E9
		dc.b $FE
		dc.b $BB
		dc.b $21 ; !
		dc.b $16
		dc.b   3
		dc.b $65 ; e
		dc.b   6
		dc.b $F4
		dc.b $EF
		dc.b $CE
		dc.b $48 ; H
		dc.b $E9
		dc.b $21 ; !
		dc.b $E7
		dc.b $48 ; H
		dc.b $32 ; 2
		dc.b $DA
		dc.b $20
		dc.b $3C ; <
		dc.b $AE
		dc.b $2A ; *
		dc.b $60 ; `
		dc.b  $E
		dc.b $72 ; r
		dc.b $B3
		dc.b $F8
		dc.b $C6
		dc.b $61 ; a
		dc.b $F8
		dc.b   2
		dc.b $7C ; |
		dc.b $CB
		dc.b $36 ; 6
		dc.b $9E
		dc.b $AA
		dc.b $BA
		dc.b $F8
		dc.b $69 ; i
		dc.b $A2
		dc.b $FD
		dc.b $50 ; P
		dc.b $EA
		dc.b $64 ; d
		dc.b $E9
		dc.b $88
		dc.b $FC
		dc.b $EC
		dc.b $4C ; L
		dc.b $E6
		dc.b $FC
		dc.b $FE
		dc.b $F0
		dc.b $B1
		dc.b $AF
		dc.b $D8
		dc.b $EB
		dc.b $36 ; 6
		dc.b $5E ; ^
		dc.b $43 ; C
		dc.b $CE
		dc.b $B9
		dc.b $58 ; X
		dc.b $E9
		dc.b   8
		dc.b $E8
		dc.b $AC
		dc.b $AC
		dc.b $8D
		dc.b   9
		dc.b $60 ; `
		dc.b $64 ; d
		dc.b $34 ; 4
		dc.b $AA
		dc.b $D9
		dc.b $44 ; D
		dc.b $E8
		dc.b $5A ; Z
		dc.b $E8
		dc.b $5B ; [
		dc.b $5B ; [
		dc.b $F4
		dc.b $45 ; E
		dc.b $62 ; b
		dc.b $D1
		dc.b $84
		dc.b $9C
		dc.b $F6
		dc.b $10
		dc.b $C5
		dc.b $1E
		dc.b $32 ; 2
		dc.b $C5
		dc.b $16
		dc.b $E8
		dc.b $B2
		dc.b  $C
		dc.b $7A ; z
		dc.b $5A ; Z
		dc.b   1
		dc.b $44 ; D
		dc.b $8C
		dc.b $BB
		dc.b $86
		dc.b $BA
		dc.b  $C
		dc.b $67 ; g
		dc.b $42 ; B
		dc.b $15
		dc.b $57 ; W
		dc.b $92
		dc.b $CC
		dc.b $70 ; p
		dc.b $B2
		dc.b $9C
		dc.b $A9
		dc.b $5F ; _
		dc.b $72 ; r
		dc.b   9
		dc.b $FE
		dc.b $3E ; >
		dc.b $FE
		dc.b $F8
		dc.b  $B
		dc.b  $B
		dc.b $45 ; E
		dc.b $78 ; x
		dc.b $F1
		dc.b $EA
		dc.b $B2
		dc.b $F1
		dc.b $AA
		dc.b $42 ; B
		dc.b $5C ; \
		dc.b $FC
		dc.b $D7
		dc.b $19
		dc.b $FF
		dc.b $4C ; L
		dc.b $49 ; I
		dc.b $5C ; \
		dc.b $5A ; Z
		dc.b   0
		dc.b $AC
		dc.b $3B ; ;
		dc.b $7C ; |
		dc.b   5
		dc.b $DC
		dc.b $C5
		dc.b   8
		dc.b $58 ; X
		dc.b $46 ; F
		dc.b $30 ; 0
		dc.b $F0
		dc.b $11
		dc.b $3E ; >
		dc.b $2E ; .
		dc.b $88
		dc.b $50 ; P
		dc.b $9B
		dc.b $9A
		dc.b $14
		dc.b   3
		dc.b $1A
		dc.b $D0
		dc.b  $A
		dc.b $72 ; r
		dc.b $A2
		dc.b $68 ; h
		dc.b $76 ; v
		dc.b $A5
		dc.b $6A ; j
		dc.b $EF
		dc.b $D0
		dc.b $60 ; `
		dc.b $37 ; 7
		dc.b $66 ; f
		dc.b $20
		dc.b $DC
		dc.b $E1
		dc.b $46 ; F
		dc.b $64 ; d
		dc.b $D0
		dc.b $98
		dc.b $BE
		dc.b $D3
		dc.b $5A ; Z
		dc.b $EC
		dc.b $42 ; B
		dc.b $86
		dc.b $D9
		dc.b $EC
		dc.b $F2
		dc.b $3B ; ;
		dc.b $68 ; h
		dc.b $F4
		dc.b $D4
		dc.b $B4
		dc.b $CE
		dc.b $E6
		dc.b $FE
		dc.b $52 ; R
		dc.b $AB
		dc.b $52 ; R
		dc.b $B6
		dc.b $EB
		dc.b $F6
		dc.b $48 ; H
		dc.b $1C
		dc.b $FD
		dc.b $BC
		dc.b $16
		dc.b $F3
		dc.b $64 ; d
		dc.b $F8
		dc.b   9
		dc.b $52 ; R
		dc.b $6C ; l
		dc.b $B3
		dc.b $39 ; 9
		dc.b $48 ; H
		dc.b $F0
		dc.b  $A
		dc.b   2
		dc.b $9A
		dc.b $F8
		dc.b   3
		dc.b $48 ; H
		dc.b $F1
		dc.b $92
		dc.b $76 ; v
		dc.b $8C
		dc.b $62 ; b
		dc.b $56 ; V
		dc.b $B9
		dc.b   0
		dc.b $80
		dc.b $D2
		dc.b $7B ; {
		dc.b $BF
		dc.b $21 ; !
		dc.b $64 ; d
		dc.b $44 ; D
		dc.b $B0
		dc.b $10
		dc.b $63 ; c
		dc.b   2
		dc.b $10
		dc.b $EC
		dc.b $EA
		dc.b $7A ; z
		dc.b $F6
		dc.b $64 ; d
		dc.b $8A
		dc.b $B1
		dc.b $F6
		dc.b $AC
		dc.b $F2
		dc.b $FC
		dc.b $43 ; C
		dc.b $E4
		dc.b $45 ; E
		dc.b $A4
		dc.b $AA
		dc.b $EE
		dc.b $FC
		dc.b $D6
		dc.b $DA
		dc.b $FC
		dc.b $9C
		dc.b $F2
		dc.b $20
		dc.b $AA
		dc.b $18
		dc.b $EB
		dc.b $CA
		dc.b $F2
		dc.b $C1
		dc.b $2E ; .
		dc.b $90
		dc.b $FC
		dc.b   5
		dc.b $FD
		dc.b $60 ; `
		dc.b $AB
		dc.b $43 ; C
		dc.b $7C ; |
		dc.b $A2
		dc.b $48 ; H
		dc.b $40 ; @
		dc.b $72 ; r
		dc.b $EA
		dc.b $C6
		dc.b $17
		dc.b $62 ; b
		dc.b $EC
		dc.b $36 ; 6
		dc.b   0
		dc.b $58 ; X
		dc.b $78 ; x
		dc.b $66 ; f
		dc.b $72 ; r
		dc.b $DC
		dc.b $57 ; W
		dc.b $C7
		dc.b $50 ; P
		dc.b $FD
		dc.b $98
		dc.b $DC
		dc.b $D4
		dc.b $82
		dc.b $31 ; 1
		dc.b $2E ; .
		dc.b $E2
		dc.b $43 ; C
		dc.b $B0
		dc.b $9E
		dc.b $A9
		dc.b $A7
		dc.b $64 ; d
		dc.b $12
		dc.b $F6
		dc.b $72 ; r
		dc.b $E6
		dc.b $92
		dc.b   4
		dc.b $C1
		dc.b   1
		dc.b $88
		dc.b $D5
		dc.b $DD
		dc.b $60 ; `
		dc.b $A2
		dc.b $70 ; p
		dc.b $C3
		dc.b $2A ; *
		dc.b $DA
		dc.b $1E
		dc.b $F1
		dc.b $66 ; f
		dc.b $34 ; 4
		dc.b $A0
		dc.b $42 ; B
		dc.b $F4
		dc.b $CA
		dc.b $E0
		dc.b $A1
		dc.b $87
		dc.b $36 ; 6
		dc.b $16
		dc.b $3B ; ;
		dc.b $7C ; |
		dc.b   4
		dc.b $B0
		dc.b $4C ; L
		dc.b $DC
		dc.b $E1
		dc.b $4E ; N
		dc.b  $C
		dc.b $E9
		dc.b $E4
		dc.b $61 ; a
		dc.b $B5
		dc.b $82
		dc.b $9A
		dc.b $86
		dc.b $7A ; z
		dc.b $FC
		dc.b $37 ; 7
		dc.b $21 ; !
		dc.b $CA
		dc.b $E8
		dc.b   9
		dc.b $72 ; r
		dc.b $2D ; -
		dc.b $6C ; l
		dc.b $EC
		dc.b $FC
		dc.b   7
		dc.b $EC
		dc.b $F8
		dc.b  $B
		dc.b $5E ; ^
		dc.b $FE
		dc.b $F4
		dc.b $84
		dc.b $FE
		dc.b $90
		dc.b  $C
		dc.b $F1
		dc.b $3B ; ;
		dc.b $7F ; 
		dc.b $50 ; P
		dc.b $64 ; d
		dc.b $F2
		dc.b $FB
		dc.b $98
		dc.b $53 ; S
		dc.b $6D ; m
		dc.b $5A ; Z
		dc.b $2C ; ,
		dc.b $7E ; ~
		dc.b $B0
		dc.b $F3
		dc.b $E2
		dc.b $30 ; 0
		dc.b  $C
		dc.b $7F ; 
		dc.b $ED
		dc.b $5A ; Z
		dc.b $AB
		dc.b   8
		dc.b $49 ; I
		dc.b $ED
		dc.b $5A ; Z
		dc.b $6E ; n
		dc.b $39 ; 9
		dc.b $AC
		dc.b $C9
		dc.b $86
		dc.b $52 ; R
		dc.b $10
		dc.b   8
		dc.b $81
		dc.b $30 ; 0
		dc.b $CD
		dc.b $7A ; z
		dc.b $2D ; -
		dc.b $5A ; Z
		dc.b $86
		dc.b $E1
		dc.b $80
		dc.b $E8
		dc.b $7A ; z
		dc.b $52 ; R
		dc.b $5A ; Z
		dc.b $51 ; Q
		dc.b   4
		dc.b $67 ; g
		dc.b   4
		dc.b $8B
		dc.b $9A
		dc.b $E2
		dc.b $99
		dc.b   4
		dc.b $B6
		dc.b $B2
		dc.b $DC
		dc.b $94
		dc.b $A1
		dc.b $BC
		dc.b $A1
		dc.b $64 ; d
		dc.b $D3
		dc.b $6F ; o
		dc.b $C2
		dc.b $18
		dc.b $EC
		dc.b $40 ; @
		dc.b $E7
		dc.b $46 ; F
		dc.b $FC
		dc.b $25 ; %
		dc.b   0
		dc.b $D0
		dc.b $F8
		dc.b  $C
		dc.b $6C ; l
		dc.b $A1
		dc.b $A7
		dc.b $6E ; n
		dc.b $F2
		dc.b $B8
		dc.b $66 ; f
		dc.b $F8
		dc.b $C1
		dc.b $EA
		dc.b $4A ; J
		dc.b $60 ; `
		dc.b $FA
		dc.b $F7
		dc.b $27 ; '
		dc.b $44 ; D
		dc.b $66 ; f
		dc.b $FA
		dc.b $32 ; 2
		dc.b $34 ; 4
		dc.b $E1
		dc.b $E0
		dc.b $59 ; Y
		dc.b $30 ; 0
		dc.b $3C ; <
		dc.b   9
		dc.b $2F ; /
		dc.b $5A ; Z
		dc.b  $C
		dc.b $3B ; ;
		dc.b $E2
		dc.b $1C
		dc.b $F4
		dc.b   8
		dc.b   3
		dc.b $40 ; @
		dc.b $B1
		dc.b   2
		dc.b $80
		dc.b $BE
		dc.b   0
		dc.b $9E
		dc.b $59 ; Y
		dc.b $40 ; @
		dc.b $58 ; X
		dc.b $41 ; A
		dc.b $88
		dc.b $E2
		dc.b $E8
		dc.b $FF
		dc.b $7E ; ~
		dc.b $F4
		dc.b   6
		dc.b $40 ; @
		dc.b   1
		dc.b $20
		dc.b $47 ; G
		dc.b $F8
		dc.b $80
		dc.b   7
		dc.b $BE
		dc.b $23 ; #
		dc.b   5
		dc.b $16
		dc.b $80
		dc.b $E0
		dc.b $48 ; H
		dc.b $78 ; x
		dc.b $58 ; X
		dc.b $FC
		dc.b $16
		dc.b $81
		dc.b $E0
		dc.b $49 ; I
		dc.b $FC
		dc.b $16
		dc.b $BC
		dc.b $A5
		dc.b $B1
		dc.b $E1
		dc.b $C7
		dc.b $8A
		dc.b $E9
		dc.b $DA
		dc.b   2
		dc.b $57 ; W
		dc.b $FF
		dc.b   0
		dc.b $20
		dc.b $10
		dc.b $AC
		dc.b $43 ; C
		dc.b $AA
		dc.b   6
		dc.b $46 ; F
		dc.b $DF
		dc.b $6A ; j
		dc.b $18
		dc.b $46 ; F
		dc.b $D2
		dc.b $50 ; P
		dc.b $39 ; 9
		dc.b $E6
		dc.b $21 ; !
		dc.b $FC
		dc.b $F8
		dc.b $1A
		dc.b $20
		dc.b $E9
		dc.b $DE
		dc.b $4A ; J
		dc.b $30 ; 0
		dc.b $45 ; E
		dc.b $A4
		dc.b   8
		dc.b  $E
		dc.b $10
		dc.b $A0
		dc.b   4
		dc.b $32 ; 2
		dc.b $80
		dc.b $B2
		dc.b $13
		dc.b $BA
		dc.b $23 ; #
		dc.b $BE
		dc.b $56 ; V
		dc.b $46 ; F
		dc.b $A9
		dc.b $67 ; g
		dc.b $64 ; d
		dc.b $6A ; j
		dc.b $FD
		dc.b $20
		dc.b $32 ; 2
		dc.b $D4
		dc.b $78 ; x
		dc.b $E3
		dc.b $FC
		dc.b $D4
		dc.b $81
		dc.b $7F ; 
		dc.b $61 ; a
		dc.b $AC
		dc.b $6E ; n
		dc.b $FD
		dc.b   6
		dc.b $F2
		dc.b $11
		dc.b $E9
		dc.b  $F
		dc.b $61 ; a
		dc.b $9E
		dc.b $D0
		dc.b $60 ; `
		dc.b $2E ; .
		dc.b $30 ; 0
		dc.b $12
		dc.b $32 ; 2
		dc.b $C0
		dc.b $30 ; 0
		dc.b $8A
		dc.b $1D
		dc.b $FE
		dc.b $FA
		dc.b $FC
		dc.b $94
		dc.b $F8
		dc.b $14
		dc.b $D2
		dc.b $91
		dc.b $B6
		dc.b $B2
		dc.b $60 ; `
		dc.b $CE
		dc.b $30 ; 0
		dc.b $B6
		dc.b $DA
		dc.b $A0
		dc.b   7
		dc.b $A0
		dc.b $F8
		dc.b $BC
		dc.b $F3
		dc.b $28 ; (
		dc.b $D8
		dc.b $6C ; l
		dc.b $D4
		dc.b $F4
		dc.b $28 ; (
		dc.b   1
		dc.b   6
		dc.b $23 ; #
		dc.b $38 ; 8
		dc.b $1C
		dc.b $F4
		dc.b $FC
		dc.b $3A ; :
		dc.b $80
		dc.b $C1
		dc.b $F4
		dc.b $36 ; 6
		dc.b $10
		dc.b $13
		dc.b $16
		dc.b $98
		dc.b $F4
		dc.b $68 ; h
		dc.b   5
		dc.b  $C
		dc.b $2E ; .
		dc.b $D2
		dc.b $FF
		dc.b   7
		dc.b $D8
		dc.b $1E
		dc.b $D0
		dc.b $EA
		dc.b $70 ; p
		dc.b $30 ; 0
		dc.b   9
		dc.b $D8
		dc.b $B6
		dc.b $C3
		dc.b   7
		dc.b $66 ; f
		dc.b $CE
		dc.b $E2
		dc.b $8A
		dc.b $BA
		dc.b $F8
		dc.b $96
		dc.b $AC
		dc.b $F0
		dc.b $FD
		dc.b $E8
		dc.b $C4
		dc.b $FE
		dc.b $6C ; l
		dc.b $82
		dc.b $E5
		dc.b $49 ; I
		dc.b $A1
		dc.b $2C ; ,
		dc.b $F4
		dc.b $E9
		dc.b $C3
		dc.b $EC
		dc.b $83
		dc.b $26 ; &
		dc.b $F1
		dc.b $C6
		dc.b $F0
		dc.b $D1
		dc.b $4A ; J
		dc.b $DF
		dc.b $18
		dc.b $1A
		dc.b $DA
		dc.b $BE
		dc.b $48 ; H
		dc.b $48 ; H
		dc.b $E7
		dc.b   7
		dc.b $38 ; 8
		dc.b $EE
		dc.b $F1
		dc.b $7A ; z
		dc.b $8F
		dc.b   5
		dc.b $8E
		dc.b $F2
		dc.b $62 ; b
		dc.b $91
		dc.b $62 ; b
		dc.b $14
		dc.b $BC
		dc.b $7F ; 
		dc.b $29 ; )
		dc.b $D3
		dc.b $52 ; R
		dc.b $48 ; H
		dc.b $41 ; A
		dc.b $EC
		dc.b $F8
		dc.b   4
		dc.b $F8
		dc.b $FE
		dc.b $F8
		dc.b   9
		dc.b $F0
		dc.b  $C
		dc.b $F4
		dc.b $FE
		dc.b $4C ; L
		dc.b $FF
		dc.b $19
		dc.b $ED
		dc.b $1D
		dc.b $E0
		dc.b $5A ; Z
		dc.b $32 ; 2
		dc.b $4E ; N
		dc.b $D0
		dc.b $20
		dc.b $5F ; _
		dc.b $48 ; H
		dc.b $F6
		dc.b $96
		dc.b $34 ; 4
		dc.b $50 ; P
		dc.b $1C
		dc.b $E0
		dc.b $6E ; n
		dc.b $DA
		dc.b $86
		dc.b $B0
		dc.b $F8
		dc.b  $B
		dc.b $D6
		dc.b $99
		dc.b $50 ; P
		dc.b $7E ; ~
		dc.b $5D ; ]
		dc.b $AC
		dc.b $30 ; 0
		dc.b $70 ; p
		dc.b   0
		dc.b $72 ; r
		dc.b   6
		dc.b $8A
		dc.b $18
		dc.b  $B
		dc.b $F6
		dc.b $FC
		dc.b $30 ; 0
		dc.b $80
		dc.b $70 ; p
		dc.b $D9
		dc.b $85
		dc.b  $F
		dc.b $7D ; }
		dc.b $F1
		dc.b $60 ; `
		dc.b $19
		dc.b $FA
		dc.b $30 ; 0
		dc.b $20
		dc.b $7C ; |
		dc.b $43 ; C
		dc.b $44 ; D
		dc.b $C2
		dc.b $5D ; ]
		dc.b $FE
		dc.b $B8
		dc.b $EA
		dc.b $CA
		dc.b $E7
		dc.b $A6
		dc.b $61 ; a
		dc.b $BA
		dc.b $A1
		dc.b $FF
		dc.b $FC
		dc.b $1A
		dc.b $FD
		dc.b $D1
		dc.b $EB
		dc.b $CC
		dc.b $C2
		dc.b   8
		dc.b $58 ; X
		dc.b $31 ; 1
		dc.b   5
		dc.b $80
		dc.b $33 ; 3
		dc.b $C2
		dc.b $F0
		dc.b $17
		dc.b $4A ; J
		dc.b $E9
		dc.b   0
		dc.b $50 ; P
		dc.b $DD
		dc.b $10
		dc.b $EC
		dc.b   4
		dc.b $BC
		dc.b $11
		dc.b $BA
		dc.b $3A ; :
		dc.b $58 ; X
		dc.b $EA
		dc.b $3C ; <
		dc.b  $F
		dc.b $F2
		dc.b $A9
		dc.b $C7
		dc.b $7F ; 
		dc.b $60 ; `
		dc.b  $C
		dc.b   0
		dc.b $81
		dc.b $F9
		dc.b $F0
		dc.b $E8
		dc.b $59 ; Y
		dc.b $48 ; H
		dc.b $41 ; A
		dc.b $20
		dc.b   1
		dc.b $72 ; r
		dc.b $E1
		dc.b $FF
		dc.b $DE
		dc.b $29 ; )
		dc.b $60 ; `
		dc.b $61 ; a
		dc.b $AE
		dc.b $2B ; +
		dc.b $41 ; A
		dc.b $5A ; Z
		dc.b $5E ; ^
		dc.b $E9
		dc.b $98
		dc.b $22 ; "
		dc.b   0
		dc.b $8D
		dc.b $B7
		dc.b $E8
		dc.b $80
		dc.b $86
		dc.b $B1
		dc.b $56 ; V
		dc.b $FC
		dc.b $5A ; Z
		dc.b   2
		dc.b   1
		dc.b $D4
		dc.b $F1
		dc.b   9
		dc.b $43 ; C
		dc.b $BB
		dc.b $4D ; M
		dc.b $21 ; !
		dc.b $81
		dc.b $1B
		dc.b $E4
		dc.b $30 ; 0
		dc.b $80
		dc.b $A1
		dc.b $31 ; 1
		dc.b $3A ; :
		dc.b $F8
		dc.b   9
		dc.b   1
		dc.b $8A
		dc.b $22 ; "
		dc.b  $E
		dc.b $D8
		dc.b $E0
		dc.b   9
		dc.b $B0
		dc.b $29 ; )
		dc.b $7A ; z
		dc.b $EC
		dc.b $A0
		dc.b $3E ; >
		dc.b $C3
		dc.b $68 ; h
		dc.b $48 ; H
		dc.b $1E
		dc.b $3C ; <
		dc.b $FC
		dc.b   5
		dc.b $3A ; :
		dc.b $FC
		dc.b $F4
		dc.b $71 ; q
		dc.b $F4
		dc.b $B7
		dc.b $C3
		dc.b $BE
		dc.b $EC
		dc.b $67 ; g
		dc.b  $E
		dc.b $D4
		dc.b $C9
		dc.b $6B ; k
		dc.b $CE
		dc.b $D9
		dc.b $C0
		dc.b $56 ; V
		dc.b $CC
		dc.b $63 ; c
		dc.b $B1
		dc.b $6F ; o
		dc.b $60 ; `
		dc.b $18
		dc.b $D6
		dc.b $84
		dc.b  $E
		dc.b $6A ; j
		dc.b   1
		dc.b $DC
		dc.b $64 ; d
		dc.b  $C
		dc.b $8C
		dc.b $F3
		dc.b $31 ; 1
		dc.b $6F ; o
		dc.b $63 ; c
		dc.b $3A ; :
		dc.b $B9
		dc.b $E4
		dc.b $60 ; `
		dc.b $CE
		dc.b $B0
		dc.b $F1
		dc.b  $A
		dc.b $30 ; 0
		dc.b $E9
		dc.b $A4
		dc.b $FC
		dc.b $D8
		dc.b $C2
		dc.b $C6
		dc.b $B6
		dc.b $BE
		dc.b $B2
		dc.b $7C ; |
		dc.b $ED
		dc.b $18
		dc.b $BE
		dc.b $F8
		dc.b $45 ; E
		dc.b $6A ; j
		dc.b $BE
		dc.b $68 ; h
		dc.b $57 ; W
		dc.b $CF
		dc.b $FF
		dc.b $EA
		dc.b $16
		dc.b $BB
		dc.b $CA
		dc.b $C5
		dc.b $B8
		dc.b $7E ; ~
		dc.b $9A
		dc.b $8E
		dc.b $F8
		dc.b  $B
		dc.b $DC
		dc.b $30 ; 0
		dc.b $DC
		dc.b  $C
		dc.b $67 ; g
		dc.b $24 ; $
		dc.b $60 ; `
		dc.b $36 ; 6
		dc.b $F2
		dc.b $88
		dc.b $F0
		dc.b $C1
		dc.b $3A ; :
		dc.b $BA
		dc.b $6C ; l
		dc.b $BC
		dc.b $BB
		dc.b $94
		dc.b $52 ; R
		dc.b $65 ; e
		dc.b  $E
		dc.b $84
		dc.b $F1
		dc.b $5C ; \
		dc.b $65 ; e
		dc.b $54 ; T
		dc.b $92
		dc.b $7C ; |
		dc.b $64 ; d
		dc.b $2E ; .
		dc.b $7A ; z
		dc.b $B0
		dc.b $61 ; a
		dc.b $86
		dc.b $FC
		dc.b $67 ; g
		dc.b $DC
		dc.b $6A ; j
		dc.b $D2
		dc.b $DC
		dc.b   4
		dc.b $7A ; z
		dc.b $EE
		dc.b $65 ; e
		dc.b $12
		dc.b $3C ; <
		dc.b $A6
		dc.b $D6
		dc.b $A4
		dc.b $65 ; e
		dc.b  $C
		dc.b $DC
		dc.b $32 ; 2
		dc.b $5E ; ^
		dc.b $B7
		dc.b $31 ; 1
		dc.b   2
		dc.b $52 ; R
		dc.b $64 ; d
		dc.b $4A ; J
		dc.b $D8
		dc.b $FF
		dc.b $40 ; @
		dc.b $60 ; `
		dc.b $FD
		dc.b $A7
		dc.b $FC
		dc.b $F0
		dc.b $7A ; z
		dc.b $6F ; o
		dc.b $CE
		dc.b $14
		dc.b $11
		dc.b   0
		dc.b $BC
		dc.b $65 ; e
		dc.b $34 ; 4
		dc.b $A9
		dc.b   1
		dc.b $72 ; r
		dc.b $65 ; e
		dc.b $A8
		dc.b $AA
		dc.b   1
		dc.b $C0
		dc.b $FC
		dc.b $DA
		dc.b $F4
		dc.b $AC
		dc.b $9E
		dc.b $1A
		dc.b $65 ; e
		dc.b  $A
		dc.b $45 ; E
		dc.b $C9
		dc.b $60 ; `
		dc.b $10
		dc.b $B4
		dc.b $B2
		dc.b $24 ; $
		dc.b $8C
		dc.b $B2
		dc.b $BE
		dc.b $76 ; v
		dc.b $62 ; b
		dc.b $E2
		dc.b $C6
		dc.b $7E ; ~
		dc.b $94
		dc.b $EB
		dc.b $46 ; F
		dc.b $FE
		dc.b $32 ; 2
		dc.b $B2
		dc.b $FD
		dc.b $A3
		dc.b $FC
		dc.b $8E
		dc.b $17
		dc.b $B0
		dc.b $C8
		dc.b $F0
		dc.b  $D
		dc.b $FD
		dc.b $BC
		dc.b $D6
		dc.b $62 ; b
		dc.b $65 ; e
		dc.b $1A
		dc.b $F2
		dc.b $FC
		dc.b $FA
		dc.b $B8
		dc.b $BD
		dc.b $65 ; e
		dc.b $B6
		dc.b $FD
		dc.b $57 ; W
		dc.b $CE
		dc.b $FF
		dc.b $E4
		dc.b $F0
		dc.b $BE
		dc.b $64 ; d
		dc.b $E4
		dc.b $58 ; X
		dc.b  $E
		dc.b $B2
		dc.b $AE
		dc.b $9C
		dc.b $81
		dc.b $60 ; `
		dc.b $AA
		dc.b $B8
		dc.b  $F
		dc.b $FA
		dc.b $DA
		dc.b $31 ; 1
		dc.b $26 ; &
		dc.b $5A ; Z
		dc.b $EA
		dc.b $F8
		dc.b $3A ; :
		dc.b $F8
		dc.b   8
		dc.b $F0
		dc.b $BB
		dc.b $51 ; Q
		dc.b $EC
		dc.b $FD
		dc.b  $C
		dc.b $F4
		dc.b $FE
		dc.b $4E ; N
		dc.b $75 ; u
		dc.b $8E
		dc.b $FD
		dc.b $A0
		dc.b $FC
		dc.b  $A
		dc.b $21 ; !
		dc.b $AE
		dc.b $5F ; _
		dc.b $BC
		dc.b $6D ; m
		dc.b $88
		dc.b $A1
		dc.b $66 ; f
		dc.b $DA
		dc.b $6A ; j
		dc.b $67 ; g
		dc.b  $C
		dc.b $53 ; S
		dc.b $45 ; E
		dc.b $72 ; r
		dc.b $F1
		dc.b $B1
		dc.b $7E ; ~
		dc.b $4C ; L
		dc.b $D1
		dc.b $62 ; b
		dc.b $18
		dc.b $B2
		dc.b $F5
		dc.b $4C ; L
		dc.b $F2
		dc.b $F0
		dc.b $67 ; g
		dc.b $14
		dc.b $53 ; S
		dc.b $47 ; G
		dc.b  $E
		dc.b $8A
		dc.b $E6
		dc.b   2
		dc.b $E6
		dc.b $88
		dc.b $F4
		dc.b $A0
		dc.b $7F ; 
		dc.b  $A
		dc.b $3B ; ;
		dc.b $C0
		dc.b $E2
		dc.b $F8
		dc.b $17
		dc.b $EE
		dc.b $D2
		dc.b $54 ; T
		dc.b $E5
		dc.b $A2
		dc.b $B8
		dc.b $E9
		dc.b $52 ; R
		dc.b $22 ; "
		dc.b $EC
		dc.b $1F
		dc.b $F4
		dc.b $56 ; V
		dc.b  $C
		dc.b $8E
		dc.b $EA
		dc.b $FF
		dc.b $67 ; g
		dc.b $1A
		dc.b $92
		dc.b $80
		dc.b $63 ; c
		dc.b $20
		dc.b $3C ; <
		dc.b $9F
		dc.b $F4
		dc.b $5F ; _
		dc.b $D1
		dc.b   4
		dc.b $63 ; c
		dc.b $14
		dc.b $F8
		dc.b $4B ; K
		dc.b $64 ; d
		dc.b $1C
		dc.b $6E ; n
		dc.b $5F ; _
		dc.b   6
		dc.b $60 ; `
		dc.b $26 ; &
		dc.b $58 ; X
		dc.b $88
		dc.b $EA
		dc.b $5A ; Z
		dc.b $8E
		dc.b $82
		dc.b $53 ; S
		dc.b $46 ; F
		dc.b $64 ; d
		dc.b $18
		dc.b $F8
		dc.b $C2
		dc.b $8C
		dc.b $D4
		dc.b $76 ; v
		dc.b  $A
		dc.b $F4
		dc.b $A2
		dc.b   4
		dc.b $A2
		dc.b $F8
		dc.b $14
		dc.b $86
		dc.b $37 ; 7
		dc.b $44 ; D
		dc.b $A2
		dc.b $FD
		dc.b $5A ; Z
		dc.b $AA
		dc.b $67 ; g
		dc.b $30 ; 0
		dc.b $65 ; e
		dc.b  $E
		dc.b $B0
		dc.b $FD
		dc.b $12
		dc.b $D7
		dc.b $E5
		dc.b $B0
		dc.b $1C
		dc.b $BA
		dc.b $F8
		dc.b $21 ; !
		dc.b $AC
		dc.b $ED
		dc.b $48 ; H
		dc.b $66 ; f
		dc.b $52 ; R
		dc.b $C1
		dc.b $F6
		dc.b $85
		dc.b $AB
		dc.b   3
		dc.b $66 ; f
		dc.b $96
		dc.b $F2
		dc.b $E0
		dc.b $6A ; j
		dc.b $67 ; g
		dc.b   8
		dc.b $6E ; n
		dc.b $F2
		dc.b $18
		dc.b $75 ; u
		dc.b $1A
		dc.b $A3
		dc.b $86
		dc.b $F1
		dc.b $E0
		dc.b $A2
		dc.b $7A ; z
		dc.b $E9
		dc.b $EE
		dc.b $14
		dc.b $12
		dc.b $B2
		dc.b $26 ; &
		dc.b $14
		dc.b  $E
		dc.b $F8
		dc.b $14
		dc.b $B2
		dc.b $FF
		dc.b   6
		dc.b $C4
		dc.b $3A ; :
		dc.b $DA
		dc.b $F8
		dc.b $14
		dc.b $1E
		dc.b $C2
		dc.b $4A ; J
		dc.b $E3
		dc.b $EE
		dc.b $22 ; "
		dc.b $ED
		dc.b $42 ; B
		dc.b $32 ; 2
		dc.b $FC
		dc.b $68 ; h
		dc.b $FE
		dc.b $80
		dc.b $12
		dc.b $F2
		dc.b $E1
		dc.b $4A ; J
		dc.b $41 ; A
		dc.b $66 ; f
		dc.b $14
		dc.b $12
		dc.b $AD
		dc.b $E2
		dc.b $C3
		dc.b $BB
		dc.b $2E ; .
		dc.b $5A ; Z
		dc.b $B0
		dc.b $F8
		dc.b $5E ; ^
		dc.b $64 ; d
		dc.b $28 ; (
		dc.b $52 ; R
		dc.b $4C ; L
		dc.b $E9
		dc.b $60 ; `
		dc.b $1E
		dc.b $C5
		dc.b $9A
		dc.b $3A ; :
		dc.b $DB
		dc.b $31 ; 1
		dc.b $2E ; .
		dc.b $EA
		dc.b $2C ; ,
		dc.b $E7
		dc.b $E4
		dc.b $73 ; s
		dc.b $36 ; 6
		dc.b $DC
		dc.b $31 ; 1
		dc.b $FC
		dc.b $C7
		dc.b $D2
		dc.b $B4
		dc.b $FC
		dc.b   0
		dc.b $18
		dc.b   0
		dc.b $60 ; `
		dc.b   0
		dc.b $A8
		dc.b   3
		dc.b $C0
		dc.b $47 ; G
		dc.b $88
		dc.b $82
		dc.b $D0
		dc.b $F4
		dc.b $FE
		dc.b $FD
		dc.b $B9
		dc.b $F4
		dc.b $EC
		dc.b $DE
		dc.b $76 ; v
		dc.b $19
		dc.b $FE
		dc.b $27 ; '
		dc.b $E9
		dc.b   0
		dc.b $70 ; p
		dc.b $22 ; "
		dc.b $D1
		dc.b $2A ; *
		dc.b $28 ; (
		dc.b $48 ; H
		dc.b $D8
		dc.b $D9
		dc.b $DB
		dc.b $76 ; v
		dc.b   6
		dc.b $80
		dc.b $33 ; 3
		dc.b $88
		dc.b $D9
		dc.b $AE
		dc.b $88
		dc.b $D9
		dc.b   5
		dc.b $8E
		dc.b $DB
		dc.b $FC
		dc.b $76 ; v
		dc.b $79 ; y
		dc.b $B0
		dc.b $45 ; E
		dc.b $F8
		dc.b $FF
		dc.b $EE
		dc.b $BA
		dc.b $4D ; M
		dc.b $FA
		dc.b $FF
		dc.b $B8
		dc.b $20
		dc.b $7C ; |
		dc.b $50 ; P
		dc.b $43 ; C
		dc.b $4B ; K
		dc.b $54 ; T
		dc.b $61 ; a
		dc.b $18
		dc.b $86
		dc.b $16
		dc.b $F8
		dc.b $41 ; A
		dc.b $F7
		dc.b $61 ; a
		dc.b  $E
		dc.b $F8
		dc.b $6F ; o
		dc.b $BF
		dc.b $51 ; Q
		dc.b $43 ; C
		dc.b $4F ; O
		dc.b $44 ; D
		dc.b $61 ; a
		dc.b $C0
		dc.b $19
		dc.b $54 ; T
		dc.b $C8
		dc.b $E9
		dc.b $24 ; $
		dc.b $CC
		dc.b $20
		dc.b $1E
		dc.b $22 ; "
		dc.b $D7
		dc.b $EA
		dc.b $72 ; r
		dc.b $E1
		dc.b $E3
		dc.b $22 ; "
		dc.b $D9
		dc.b $D0
		dc.b $C9
		dc.b $F8
		dc.b $D9
		dc.b $AE
		dc.b $B0
		dc.b $FC
		dc.b $D0
		dc.b $C4
		dc.b $A8
		dc.b $D2
		dc.b $26 ; &
		dc.b  $B
		dc.b $FD
		dc.b   0
		dc.b $61 ; a
		dc.b $E8
		dc.b $B6
		dc.b $C1
		dc.b $62 ; b
		dc.b $AE
		dc.b $8E
		dc.b $E1
		dc.b $B0
		dc.b $42 ; B
		dc.b $6D ; m
		dc.b $5A ; Z
		dc.b $6B ; k
		dc.b $1B
		dc.b $B4
		dc.b $EB
		dc.b $49 ; I
		dc.b $E6
		dc.b $A2
		dc.b $C8
		dc.b $D9
		dc.b $AE
		dc.b $CE
		dc.b $11
		dc.b $80
		dc.b $E0
		dc.b $A9
		dc.b $B6
		dc.b $63 ; c
		dc.b $1F
		dc.b $FC
		dc.b $B7
		dc.b $C4
		dc.b $B8
		dc.b $18
		dc.b $C1
		dc.b $FF
		dc.b $5A ; Z
		dc.b $B9
		dc.b $28 ; (
		dc.b $8A
		dc.b $2D ; -
		dc.b $DC
		dc.b $BA
		dc.b $C2
		dc.b $DC
		dc.b $F6
		dc.b $BE
		dc.b $F6
		dc.b $FF
		dc.b $C2
		dc.b $AE
		dc.b $DF
		dc.b $AA
		dc.b $3D ; =
		dc.b $A0
		dc.b $38 ; 8
		dc.b $CA
		dc.b $7E ; ~
		dc.b $C2
		dc.b $1E
		dc.b $F1
		dc.b $B0
		dc.b $7A ; z
		dc.b $C1
		dc.b $B4
		dc.b $48 ; H
		dc.b $40 ; @
		dc.b $16
		dc.b $24 ; $
		dc.b $FA
		dc.b $AE
		dc.b $96
		dc.b $84
		dc.b $F8
		dc.b $84
		dc.b $F8
		dc.b   9
		dc.b $C8
		dc.b $F7
		dc.b $E2
		dc.b $96
		dc.b $C7
		dc.b $20
		dc.b $22 ; "
		dc.b $36 ; 6
		dc.b $E1
		dc.b $E2
		dc.b $E6
		dc.b $67 ; g
		dc.b $1E
		dc.b $9A
		dc.b $DA
		dc.b $66 ; f
		dc.b $C2
		dc.b $FB
		dc.b $F2
		dc.b $1E
		dc.b $7A ; z
		dc.b $FE
		dc.b $41 ; A
		dc.b $E9
		dc.b $FF
		dc.b $F4
		dc.b $DE
		dc.b $C1
		dc.b $FE
		dc.b $60 ; `
		dc.b   4
		dc.b $57 ; W
		dc.b $32 ; 2
		dc.b   0
		dc.b $57 ; W
		dc.b   0
		dc.b   1
		dc.b $A6
		dc.b $FC
		dc.b $58 ; X
		dc.b $9A
		dc.b $B0
		dc.b $B6
		dc.b $FE
		dc.b $24 ; $
		dc.b $35 ; 5
		dc.b $D7
		dc.b $B6
		dc.b $BE
		dc.b $B6
		dc.b $FF
		dc.b $1C
		dc.b $B6
		dc.b $9C
		dc.b $C0
		dc.b $FC
		dc.b $BA
		dc.b $FF
		dc.b $B2
		dc.b $E0
		dc.b $E8
		dc.b $BA
		dc.b $F8
		dc.b  $F
		dc.b $C0
		dc.b $F8
		dc.b $8B
		dc.b $B4
		dc.b $F0
		dc.b $69 ; i
		dc.b $B8
		dc.b $6D ; m
		dc.b $FF
		dc.b $42 ; B
		dc.b $40 ; @
		dc.b $8C
		dc.b $D1
		dc.b $69 ; i
		dc.b  $A
		dc.b $89
		dc.b   7
		dc.b $2A ; *
		dc.b $D9
		dc.b $B0
		dc.b $60 ; `
		dc.b   2
		dc.b $60 ; `
		dc.b $56 ; V
		dc.b $12
		dc.b $E1
		dc.b $A1
		dc.b   0
		dc.b $B2
		dc.b $48 ; H
		dc.b $B7
		dc.b $67 ; g
		dc.b $34 ; 4
		dc.b $92
		dc.b $FA
		dc.b $B6
		dc.b $BD
		dc.b $B0
		dc.b $AC
		dc.b $D1
		dc.b $7F ; 
		dc.b $CE
		dc.b $91
		dc.b $62 ; b
		dc.b $64 ; d
		dc.b $26 ; &
		dc.b $5C ; \
		dc.b $DB
		dc.b $CE
		dc.b  $A
		dc.b $D2
		dc.b $A4
		dc.b $C1
		dc.b $EC
		dc.b $F1
		dc.b $EE
		dc.b $D2
		dc.b $82
		dc.b $DA
		dc.b $F1
		dc.b $41 ; A
		dc.b $F2
		dc.b $7A ; z
		dc.b $E3
		dc.b $5E ; ^
		dc.b $20
		dc.b $AE
		dc.b $9A
		dc.b $A1
		dc.b $B9
		dc.b $60 ; `
		dc.b $68 ; h
		dc.b $36 ; 6
		dc.b $92
		dc.b $F4
		dc.b $E6
		dc.b $23 ; #
		dc.b $E1
		dc.b $C4
		dc.b $F2
		dc.b   6
		dc.b $D8
		dc.b $BE
		dc.b $DA
		dc.b $B7
		dc.b $1F
		dc.b $84
		dc.b $41 ; A
		dc.b $F8
		dc.b $81
		dc.b   0
		dc.b $41 ; A
		dc.b $F0
		dc.b $9D
		dc.b $B6
		dc.b $F2
		dc.b $58 ; X
		dc.b $43 ; C
		dc.b $4B ; K
		dc.b $E1
		dc.b $98
		dc.b $D3
		dc.b $E0
		dc.b $B1
		dc.b $98
		dc.b $C1
		dc.b   2
		dc.b $50 ; P
		dc.b $F8
		dc.b  $B
		dc.b $C6
		dc.b $62 ; b
		dc.b $FE
		dc.b $14
		dc.b $F1
		dc.b $EE
		dc.b $48 ; H
		dc.b $A0
		dc.b $CA
		dc.b $AA
		dc.b $90
		dc.b $16
		dc.b $31 ; 1
		dc.b $F6
		dc.b $D2
		dc.b $F2
		dc.b $D0
		dc.b $68 ; h
		dc.b $D0
		dc.b $B2
		dc.b $98
		dc.b $D9
		dc.b $14
		dc.b $67 ; g
		dc.b $58 ; X
		dc.b $44 ; D
		dc.b   4
		dc.b $96
		dc.b $B4
		dc.b $50 ; P
		dc.b $C9
		dc.b $36 ; 6
		dc.b $F6
		dc.b $18
		dc.b $E2
		dc.b $4E ; N
		dc.b $F4
		dc.b $24 ; $
		dc.b   8
		dc.b $56 ; V
		dc.b   6
		dc.b $58 ; X
		dc.b $3F ; ?
		dc.b  $C
		dc.b $40 ; @
		dc.b $E7
		dc.b $10
		dc.b $2A ; *
		dc.b   0
		dc.b $18
		dc.b $80
		dc.b $FC
		dc.b $30 ; 0
		dc.b $C0
		dc.b $E9
		dc.b $D5
		dc.b $FC
		dc.b $48 ; H
		dc.b $2E ; .
		dc.b $56 ; V
		dc.b $C0
		dc.b $12
		dc.b $29 ; )
		dc.b $31 ; 1
		dc.b $A1
		dc.b $E8
		dc.b $C9
		dc.b $B8
		dc.b $7B ; {
		dc.b $78 ; x
		dc.b $61 ; a
		dc.b  $E
		dc.b $FA
		dc.b   2
		dc.b $67 ; g
		dc.b   8
		dc.b $B2
		dc.b $7B ; {
		dc.b $18
		dc.b $1E
		dc.b $13
		dc.b $C7
		dc.b $63 ; c
		dc.b $6A ; j
		dc.b   9
		dc.b $60 ; `
		dc.b $18
		dc.b $FA
		dc.b   8
		dc.b $60 ; `
		dc.b $12
		dc.b $D8
		dc.b   8
		dc.b $EC
		dc.b $A4
		dc.b $D8
		dc.b $F0
		dc.b   2
		dc.b $6A ; j
		dc.b $80
		dc.b   1
		dc.b $EC
		dc.b $7E ; ~
		dc.b $6A ; j
		dc.b $CD
		dc.b $E7
		dc.b $D6
		dc.b $F1
		dc.b $C2
		dc.b $52 ; R
		dc.b $13
		dc.b $54 ; T
		dc.b $FA
		dc.b $4E ; N
		dc.b $32 ; 2
		dc.b $C1
		dc.b $F8
		dc.b $DC
		dc.b $9A
		dc.b $46 ; F
		dc.b $FA
		dc.b $40 ; @
		dc.b $F2
		dc.b $FD
		dc.b $38 ; 8
		dc.b   0
		dc.b $14
		dc.b $F2
		dc.b $FD
		dc.b $2A ; *
		dc.b $9B
		dc.b $9B
		dc.b $FA
		dc.b $24 ; $
		dc.b $F2
		dc.b $FD
		dc.b $1C
		dc.b $FA
		dc.b $16
		dc.b $F2
		dc.b $FD
		dc.b  $E
		dc.b   3
		dc.b $C4
		dc.b $FA
		dc.b   8
		dc.b $F2
		dc.b $42 ; B
		dc.b $43 ; C
		dc.b $42 ; B
		dc.b $DF
		dc.b $6D ; m
		dc.b $10
		dc.b $18
		dc.b $E5
		dc.b   8
		dc.b $E3
		dc.b $51 ; Q
		dc.b $FA
		dc.b $F8
		dc.b $29 ; )
		dc.b $4E ; N
		dc.b $D6
		dc.b $22 ; "
		dc.b $E3
		dc.b $AE
		dc.b $58 ; X
		dc.b $F1
		dc.b $88
		dc.b $6F ; o
		dc.b $B5
		dc.b $FA
		dc.b $D3
		dc.b $AE
		dc.b $67 ; g
		dc.b $78 ; x
		dc.b $3C ; <
		dc.b $B2
		dc.b $26 ; &
		dc.b $FA
		dc.b $E9
		dc.b $AA
		dc.b $F2
		dc.b $F6
		dc.b $EF
		dc.b $5E ; ^
		dc.b $FF
		dc.b $F6
		dc.b $E2
		dc.b $EA
		dc.b $23 ; #
		dc.b   0
		dc.b $4A ; J
		dc.b $2D ; -
		dc.b $5A ; Z
		dc.b $AF
		dc.b $67 ; g
		dc.b $16
		dc.b $CE
		dc.b $81
		dc.b $AF
		dc.b  $C
		dc.b $ED
		dc.b   0
		dc.b $E0
		dc.b  $B
		dc.b $63 ; c
		dc.b $7E ; ~
		dc.b $57 ; W
		dc.b $EF
		dc.b $F8
		dc.b $EA
		dc.b $4C ; L
		dc.b $C7
		dc.b $4C ; L
		dc.b $F2
		dc.b $14
		dc.b $83
		dc.b $63 ; c
		dc.b $AC
		dc.b $F1
		dc.b $B3
		dc.b $F6
		dc.b $E2
		dc.b $FE
		dc.b   0
		dc.b $66 ; f
		dc.b $EC
		dc.b $5C ; \
		dc.b $C9
		dc.b $9B
		dc.b $DE
		dc.b $FC
		dc.b $FA
		dc.b $44 ; D
		dc.b $D1
		dc.b $50 ; P
		dc.b $64 ; d
		dc.b  $C
		dc.b $9C
		dc.b $F1
		dc.b $B5
		dc.b $C3
		dc.b $AB
		dc.b $D2
		dc.b $2E ; .
		dc.b $FA
		dc.b $44 ; D
		dc.b $D7
		dc.b $66 ; f
		dc.b $AA
		dc.b $52 ; R
		dc.b $B4
		dc.b $C0
		dc.b $CB
		dc.b $FF
		dc.b $FF
		dc.b $74 ; t
		dc.b $E9
		dc.b $FF
		dc.b $58 ; X
		dc.b $FF
		dc.b $9A
		dc.b $FF
		dc.b $D5
		dc.b   0
		dc.b $17
		dc.b $FF
		dc.b $BC
		dc.b $FF
		dc.b $8A
		dc.b $FF
		dc.b $EE
		dc.b   0
		dc.b $FF
		dc.b $FF
		dc.b   7
		dc.b $FF
		dc.b $60 ; `
		dc.b $FF
		dc.b $79 ; y
		dc.b $FF
		dc.b $92
		dc.b $FF
		dc.b $AB
		dc.b $FF
		dc.b $C4
		dc.b $FF
		dc.b $DD
		dc.b $FF
		dc.b $F6
		dc.b   0
		dc.b $FF
		dc.b $FF
		dc.b  $F
		dc.b $FF
		dc.b $68 ; h
		dc.b $FF
		dc.b $81
		dc.b $FF
		dc.b $71 ; q
		dc.b $FF
		dc.b $B3
		dc.b $FF
		dc.b $CC
		dc.b $FF
		dc.b $E5
		dc.b $FF
		dc.b $FE
		dc.b $FF
		dc.b $30 ; 0
		dc.b $7C ; |
		dc.b $A3
		dc.b $9B
		dc.b $41 ; A
		dc.b $FA
		dc.b $F4
		dc.b $60 ; `
		dc.b $1A
		dc.b $6B ; k
		dc.b   4
		dc.b $90
		dc.b $18
		dc.b $C7
		dc.b $56 ; V
		dc.b  $A
		dc.b $D0
		dc.b $52 ; R
		dc.b $6A ; j
		dc.b   4
		dc.b $FA
		dc.b $EF
		dc.b $BF
		dc.b  $A
		dc.b $10
		dc.b $34 ; 4
		dc.b   0
		dc.b $10
		dc.b $80
		dc.b $99
		dc.b $3F ; ?
		dc.b $12
		dc.b $C0
		dc.b $30 ; 0
		dc.b $18
		dc.b $66 ; f
		dc.b $E2
		dc.b $43 ; C
		dc.b $D0
		dc.b $FF
		dc.b $48 ; H
		dc.b $E9
		dc.b $A4
		dc.b $7F ; 
		dc.b $2E ; .
		dc.b $51 ; Q
		dc.b   2
		dc.b  $C
		dc.b   7
		dc.b $1A
		dc.b   3
		dc.b $20
		dc.b  $D
		dc.b $23 ; #
		dc.b $FF
		dc.b $FF
		dc.b   8
		dc.b $30 ; 0
		dc.b $1B
		dc.b $12
		dc.b   4
		dc.b $18
		dc.b $21 ; !
		dc.b $10
		dc.b  $E
		dc.b $34 ; 4
		dc.b $24 ; $
		dc.b $36 ; 6
		dc.b   9
		dc.b $2D ; -
		dc.b $31 ; 1
		dc.b $26 ; &
		dc.b $FF
		dc.b $FF
		dc.b $1C
		dc.b $29 ; )
		dc.b $13
		dc.b $38 ; 8
		dc.b   5
		dc.b $3E ; >
		dc.b $19
		dc.b  $B
		dc.b $22 ; "
		dc.b $1F
		dc.b $11
		dc.b $2F ; /
		dc.b  $F
		dc.b $17
		dc.b $35 ; 5
		dc.b $33 ; 3
		dc.b $FF
		dc.b $FF
		dc.b $25 ; %
		dc.b $2C ; ,
		dc.b $37 ; 7
		dc.b $28 ; (
		dc.b  $A
		dc.b $3D ; =
		dc.b $2E ; .
		dc.b $1E
		dc.b $32 ; 2
		dc.b $16
		dc.b $27 ; '
		dc.b $2B ; +
		dc.b $1D
		dc.b $3C ; <
		dc.b $2A ; *
		dc.b $15
		dc.b $FF
		dc.b $FF
		dc.b $14
		dc.b $3B ; ;
		dc.b $39 ; 9
		dc.b $3A ; :
		dc.b   1
		dc.b   2
		dc.b   4
		dc.b   8
		dc.b $10
		dc.b $20
		dc.b   3
		dc.b   6
		dc.b  $C
		dc.b $18
		dc.b $30 ; 0
		dc.b $23 ; #
		dc.b $FF
		dc.b $FF
		dc.b   5
		dc.b  $A
		dc.b $14
		dc.b $28 ; (
		dc.b $13
		dc.b $26 ; &
		dc.b  $F
		dc.b $1E
		dc.b $3C ; <
		dc.b $3B ; ;
		dc.b $35 ; 5
		dc.b $29 ; )
		dc.b $11
		dc.b $22 ; "
		dc.b   7
		dc.b  $E
		dc.b $E1
		dc.b $FF
		dc.b $1C
		dc.b $38 ; 8
		dc.b $CD
		dc.b   9
		dc.b $12
		dc.b $24 ; $
		dc.b  $B
		dc.b $16
		dc.b $2C ; ,
		dc.b $1B
		dc.b $36 ; 6
		dc.b $2F ; /
		dc.b $1D
		dc.b $FF
		dc.b $FF
		dc.b $3A ; :
		dc.b $37 ; 7
		dc.b $2D ; -
		dc.b $19
		dc.b $32 ; 2
		dc.b $27 ; '
		dc.b  $D
		dc.b $1A
		dc.b $34 ; 4
		dc.b $2B ; +
		dc.b $15
		dc.b $2A ; *
		dc.b $17
		dc.b $2E ; .
		dc.b $1F
		dc.b $3E ; >
		dc.b $2F ; /
		dc.b $5E ; ^
		dc.b $3F ; ?
		dc.b $3D ; =
		dc.b $39 ; 9
		dc.b $31 ; 1
		dc.b $21 ; !
		dc.b $C1
		dc.b $F8
		dc.b $3E ; >
		dc.b $16
		dc.b $ED
		dc.b $5A ; Z
		dc.b $C6
		dc.b $40 ; @
		dc.b $D8
		dc.b   9
		dc.b $7F ; 
		dc.b $7F ; 
		dc.b $9E
		dc.b $2A ; *
		dc.b $48 ; H
		dc.b $E7
		dc.b $3E ; >
		dc.b $FA
		dc.b $24 ; $
		dc.b $49 ; I
		dc.b $A8
		dc.b $F1
		dc.b $14
		dc.b $47 ; G
		dc.b $FA
		dc.b $FF
		dc.b $62 ; b
		dc.b $49 ; I
		dc.b $48 ; H
		dc.b $A7
		dc.b $FC
		dc.b $1E
		dc.b $DC
		dc.b $10
		dc.b $18
		dc.b $80
		dc.b $FE
		dc.b $ED
		dc.b $BC
		dc.b $10
		dc.b $67 ; g
		dc.b $B4
		dc.b $21 ; !
		dc.b   1
		dc.b $EA
		dc.b $99
		dc.b $5A ; Z
		dc.b $CC
		dc.b $EE
		dc.b $10
		dc.b $66 ; f
		dc.b $EB
		dc.b $61 ; a
		dc.b $66 ; f
		dc.b $C1
		dc.b   1
		dc.b $BE
		dc.b $C8
		dc.b $62 ; b
		dc.b $5E ; ^
		dc.b $C1
		dc.b $3C ; <
		dc.b $4E ; N
		dc.b $71 ; q
		dc.b $FE
		dc.b $40 ; @
		dc.b $E7
		dc.b $FC
		dc.b $FE
		dc.b $EE
		dc.b $22 ; "
		dc.b $4A ; J
		dc.b $6D ; m
		dc.b $5A ; Z
		dc.b $CA
		dc.b $86
		dc.b $4A ; J
		dc.b   1
		dc.b $B6
		dc.b $40 ; @
		dc.b $C0
		dc.b $81
		dc.b $5D ; ]
		dc.b $F8
		dc.b $57 ; W
		dc.b $44 ; D
		dc.b $70 ; p
		dc.b $F1
		dc.b $5F ; _
		dc.b $7C ; |
		dc.b $A2
		dc.b $D1
		dc.b $51 ; Q
		dc.b   6
		dc.b   8
		dc.b  $A
		dc.b  $C
		dc.b $FF
		dc.b $FF
		dc.b  $E
		dc.b $10
		dc.b $12
		dc.b $14
		dc.b $16
		dc.b $18
		dc.b $1A
		dc.b $1C
		dc.b $1E
		dc.b $20
		dc.b $22 ; "
		dc.b $24 ; $
		dc.b $26 ; &
		dc.b $28 ; (
		dc.b $2A ; *
		dc.b $2C ; ,
		dc.b $FF
		dc.b $FF
		dc.b $2E ; .
		dc.b $30 ; 0
		dc.b $32 ; 2
		dc.b $34 ; 4
		dc.b $36 ; 6
		dc.b $38 ; 8
		dc.b $3A ; :
		dc.b $3C ; <
		dc.b $3E ; >
		dc.b   3
		dc.b   1
		dc.b   7
		dc.b   5
		dc.b  $B
		dc.b   9
		dc.b  $F
		dc.b $FF
		dc.b $FF
		dc.b  $D
		dc.b $13
		dc.b $11
		dc.b $17
		dc.b $15
		dc.b $1B
		dc.b $19
		dc.b $1F
		dc.b $1D
		dc.b $23 ; #
		dc.b $21 ; !
		dc.b $27 ; '
		dc.b $25 ; %
		dc.b $2B ; +
		dc.b $29 ; )
		dc.b $2F ; /
		dc.b $3F ; ?
		dc.b $F8
		dc.b $2D ; -
		dc.b $33 ; 3
		dc.b $31 ; 1
		dc.b $37 ; 7
		dc.b $35 ; 5
		dc.b $3B ; ;
		dc.b $39 ; 9
		dc.b $4D ; M
		dc.b $3A ; :
		dc.b $D9
		dc.b  $C
		dc.b $10
		dc.b $14
		dc.b $FF
		dc.b $FF
		dc.b $18
		dc.b $1C
		dc.b $20
		dc.b $24 ; $
		dc.b $28 ; (
		dc.b $2C ; ,
		dc.b $30 ; 0
		dc.b $34 ; 4
		dc.b $38 ; 8
		dc.b $3C ; <
		dc.b   3
		dc.b   7
		dc.b  $B
		dc.b  $F
		dc.b $13
		dc.b $17
		dc.b $FF
		dc.b $FF
		dc.b $1B
		dc.b $1F
		dc.b $23 ; #
		dc.b $27 ; '
		dc.b $2B ; +
		dc.b $2F ; /
		dc.b $33 ; 3
		dc.b $37 ; 7
		dc.b $3B ; ;
		dc.b $3F ; ?
		dc.b   6
		dc.b   2
		dc.b  $E
		dc.b  $A
		dc.b $16
		dc.b $12
		dc.b $FF
		dc.b $FF
		dc.b $1E
		dc.b $1A
		dc.b $26 ; &
		dc.b $22 ; "
		dc.b $2E ; .
		dc.b $2A ; *
		dc.b $36 ; 6
		dc.b $32 ; 2
		dc.b $3E ; >
		dc.b $3A ; :
		dc.b   5
		dc.b   1
		dc.b  $D
		dc.b   9
		dc.b $15
		dc.b $11
		dc.b $7F ; 
		dc.b $18
		dc.b $1D
		dc.b $19
		dc.b $25 ; %
		dc.b $21 ; !
		dc.b $2D ; -
		dc.b $29 ; )
		dc.b $35 ; 5
		dc.b $31 ; 1
		dc.b  $E
		dc.b   0
		dc.b   8
		dc.b $FE
		dc.b $FF
		dc.b $4A ; J
		dc.b $20
		dc.b $28 ; (
		dc.b $30 ; 0
		dc.b $38 ; 8
		dc.b   3
		dc.b  $B
		dc.b $13
		dc.b $1B
		dc.b $23 ; #
		dc.b $2B ; +
		dc.b $33 ; 3
		dc.b $3B ; ;
		dc.b   6
		dc.b  $E
		dc.b $FF
		dc.b $FF
		dc.b $16
		dc.b $1E
		dc.b $26 ; &
		dc.b $2E ; .
		dc.b $36 ; 6
		dc.b $3E ; >
		dc.b   5
		dc.b  $D
		dc.b $15
		dc.b $1D
		dc.b $25 ; %
		dc.b $2D ; -
		dc.b $35 ; 5
		dc.b $3D ; =
		dc.b  $C
		dc.b   4
		dc.b $FF
		dc.b $FF
		dc.b $1C
		dc.b $14
		dc.b $2C ; ,
		dc.b $24 ; $
		dc.b $3C ; <
		dc.b $34 ; 4
		dc.b  $F
		dc.b   7
		dc.b $1F
		dc.b $17
		dc.b $2F ; /
		dc.b $27 ; '
		dc.b $3F ; ?
		dc.b $37 ; 7
		dc.b  $A
		dc.b   2
		dc.b $FF
		dc.b $7F ; 
		dc.b $1A
		dc.b $12
		dc.b $2A ; *
		dc.b $22 ; "
		dc.b $3A ; :
		dc.b $32 ; 2
		dc.b   9
		dc.b   1
		dc.b $19
		dc.b $11
		dc.b $29 ; )
		dc.b $21 ; !
		dc.b $39 ; 9
		dc.b $31 ; 1
		dc.b $2F ; /
		dc.b  $A
		dc.b $3B ; ;
		dc.b $84
		dc.b $26 ; &
		dc.b $D1
		dc.b $7C ; |
		dc.b $F0
		dc.b $F2
		dc.b $43 ; C
		dc.b $E8
		dc.b $25 ; %
		dc.b $47 ; G
		dc.b $FC
		dc.b $E1
		dc.b $DF
		dc.b   2
		dc.b $49 ; I
		dc.b $FC
		dc.b   3
		dc.b $10
		dc.b $1A
		dc.b $10
		dc.b $80
		dc.b $12
		dc.b $80
		dc.b $16
		dc.b $F1
		dc.b $F1
		dc.b $FD
		dc.b  $B
		dc.b $42 ; B
		dc.b $40 ; @
		dc.b $D2
		dc.b $D9
		dc.b $16
		dc.b $10
		dc.b $11
		dc.b $12
		dc.b $B6
		dc.b   0
		dc.b $C0
		dc.b $9A
		dc.b $A1
		dc.b $11
		dc.b $C2
		dc.b $FA
		dc.b   0
		dc.b $52 ; R
		dc.b $FA
		dc.b $40 ; @
		dc.b $DE
		dc.b $B1
		dc.b $BF
		dc.b $1F
		dc.b $10
		dc.b $B1
		dc.b $11
		dc.b $B1
		dc.b $13
		dc.b $B1
		dc.b $14
		dc.b $9A
		dc.b $F1
		dc.b $E2
		dc.b $24 ; $
		dc.b $5F ; _
		dc.b $4E ; N
		dc.b $75 ; u
		dc.b $B0
		dc.b $DF
		dc.b $B6
		dc.b $BA
		dc.b $CA
		dc.b $74 ; t
		dc.b $61 ; a
		dc.b $CB
		dc.b $47 ; G
		dc.b $FA
		dc.b $FE
		dc.b $EA
		dc.b $BE
		dc.b $FC
		dc.b $C5
		dc.b $C8
		dc.b $70 ; p
		dc.b   0
		dc.b $94
		dc.b $DA
		dc.b $C2
		dc.b $B3
		dc.b $C8
		dc.b $98
		dc.b $E8
		dc.b $CE
		dc.b $D2
		dc.b $F2
		dc.b $D2
		dc.b $8E
		dc.b $42 ; B
		dc.b $43 ; C
		dc.b  $F
		dc.b $73 ; s
		dc.b $16
		dc.b $18
		dc.b $10
		dc.b $34 ; 4
		dc.b $30 ; 0
		dc.b $A1
		dc.b $18
		dc.b $12
		dc.b $FA
		dc.b $14
		dc.b $1A
		dc.b $F1
		dc.b $FA
		dc.b $10
		dc.b $16
		dc.b $FA
		dc.b $E2
		dc.b $E0
		dc.b $11
		dc.b $8F
		dc.b $10
		dc.b   3
		dc.b $11
		dc.b   1
		dc.b $11
		dc.b   2
		dc.b $FE
		dc.b $F8
		dc.b   0
		dc.b $49 ; I
		dc.b   0
		dc.b $FA
		dc.b $F4
		dc.b $8F
		dc.b $11
		dc.b $FE
		dc.b $6E ; n
		dc.b $9C
		dc.b $1C
		dc.b $9C
		dc.b $CC
		dc.b $34 ; 4
		dc.b $A8
		dc.b $C2
		dc.b $41 ; A
		dc.b $12
		dc.b $33 ; 3
		dc.b   9
		dc.b $7F ; 
		dc.b $A6
		dc.b $F8
		dc.b $9E
		dc.b $B3
		dc.b $19
		dc.b $51 ; Q
		dc.b $CA
		dc.b $FF
		dc.b $EC
		dc.b $4F ; O
		dc.b   8
		dc.b $84
		dc.b $C9
		dc.b $40 ; @
		dc.b $42 ; B
		dc.b $41 ; A
		dc.b $A0
		dc.b $A2
		dc.b   0
		dc.b $37 ; 7
		dc.b $E8
		dc.b $9F
		dc.b $D6
		dc.b $17
		dc.b $60 ; `
		dc.b $12
		dc.b $90
		dc.b $D1
		dc.b $2D ; -
		dc.b $40 ; @
		dc.b $88
		dc.b $62 ; b
		dc.b $E8
		dc.b $12
		dc.b $FA
		dc.b $CB
		dc.b $87
		dc.b $10
		dc.b $EE
		dc.b   3
		dc.b $16
		dc.b   0
		dc.b $8C
		dc.b $10
		dc.b $C6
		dc.b $34 ; 4
		dc.b $FE
		dc.b $FF
		dc.b $CA
		dc.b $92
		dc.b $40 ; @
		dc.b $64 ; d
		dc.b   4
		dc.b   6
		dc.b $41 ; A
		dc.b   0
		dc.b $3F ; ?
		dc.b $94
		dc.b $41 ; A
		dc.b $65 ; e
		dc.b   6
		dc.b $B7
		dc.b $32 ; 2
		dc.b $FA
		dc.b $FF
		dc.b $20
		dc.b $DE
		dc.b $D9
		dc.b $C8
		dc.b $C4
		dc.b $15
		dc.b $11
		dc.b $1F
		dc.b  $E
		dc.b   5
		dc.b $FF
		dc.b $1C
		dc.b   1
		dc.b  $A
		dc.b $16
		dc.b $FF
		dc.b $FF
		dc.b $7E ; ~
		dc.b $FF
		dc.b $13
		dc.b $1E
		dc.b   2
		dc.b $FF
		dc.b $14
		dc.b $FF
		dc.b $25 ; %
		dc.b $27 ; '
		dc.b $62 ; b
		dc.b $BA
		dc.b $26 ; &
		dc.b $FF
		dc.b $1D
		dc.b $24 ; $
		dc.b   4
		dc.b $FC
		dc.b $8D
		dc.b $F8
		dc.b $28 ; (
		dc.b   7
		dc.b $FF
		dc.b   3
		dc.b  $B
		dc.b $FF
		dc.b $D6
		dc.b $A1
		dc.b $33 ; 3
		dc.b $61 ; a
		dc.b $F8
		dc.b $F3
		dc.b $12
		dc.b $FD
		dc.b  $D
		dc.b $10
		dc.b $FC
		dc.b $39 ; 9
		dc.b $FF
		dc.b   9
		dc.b $FF
		dc.b $84
		dc.b $12
		dc.b   8
		dc.b $DB
		dc.b $FF
		dc.b $AE
		dc.b $EA
		dc.b $76 ; v
		dc.b   0
		dc.b   1
		dc.b $7C ; |
		dc.b $28 ; (
		dc.b $5C ; \
		dc.b $28 ; (
		dc.b   2
		dc.b $BE
		dc.b $FA
		dc.b $F9
		dc.b $FA
		dc.b $12
		dc.b   3
		dc.b $10
		dc.b   2
		dc.b $30 ; 0
		dc.b $BC
		dc.b $8A
		dc.b $FE
		dc.b $A0
		dc.b $1A
		dc.b $33 ; 3
		dc.b $78 ; x
		dc.b $12
		dc.b   4
		dc.b $10
		dc.b   3
		dc.b $D0
		dc.b $27 ; '
		dc.b $EE
		dc.b $FE
		dc.b $E4
		dc.b $D2
		dc.b $9A
		dc.b $12
		dc.b $3F ; ?
		dc.b $65 ; e
		dc.b   4
		dc.b   4
		dc.b $F2
		dc.b  $D
		dc.b $EB
		dc.b $E8
		dc.b $FF
		dc.b $3E ; >
		dc.b $E1
		dc.b $6E ; n
		dc.b $32 ; 2
		dc.b $10
		dc.b   6
		dc.b $E2
		dc.b $F8
		dc.b  $B
		dc.b $1E
		dc.b $D1
		dc.b $D0
		dc.b $F8
		dc.b $30 ; 0
		dc.b $12
		dc.b $C0
		dc.b $BB
		dc.b   1
		dc.b $1B
		dc.b $74 ; t
		dc.b $FA
		dc.b $5A ; Z
		dc.b $D1
		dc.b $C6
		dc.b $14
		dc.b $22 ; "
		dc.b $D0
		dc.b $18
		dc.b $C6
		dc.b $28 ; (
		dc.b $D2
		dc.b $10
		dc.b $CF
		dc.b $AA
		dc.b $E6
		dc.b $F2
		dc.b $C7
		dc.b $B1
		dc.b   1
		dc.b $25 ; %
		dc.b $4C ; L
		dc.b $14
		dc.b   6
		dc.b $B6
		dc.b $FE
		dc.b $E8
		dc.b $C6
		dc.b $D3
		dc.b $80
		dc.b $49 ; I
		dc.b $D6
		dc.b $E4
		dc.b $F6
		dc.b $D2
		dc.b $E0
		dc.b $9E
		dc.b $C9
		dc.b $46 ; F
		dc.b $C0
		dc.b $B4
		dc.b $EA
		dc.b $E6
		dc.b $C0
		dc.b $B0
		dc.b $C7
		dc.b $D0
		dc.b $F8
		dc.b $D1
		dc.b $10
		dc.b $A2
		dc.b $F1
		dc.b $B3
		dc.b   0
		dc.b $B0
		dc.b $BC
		dc.b $82
		dc.b $E1
		dc.b $66 ; f
		dc.b $3A ; :
		dc.b $61 ; a
		dc.b $E0
		dc.b $B4
		dc.b $F2
		dc.b $16
		dc.b $F8
		dc.b $D2
		dc.b $61 ; a
		dc.b $63 ; c
		dc.b $EF
		dc.b $18
		dc.b $40 ; @
		dc.b $E7
		dc.b $F0
		dc.b $D1
		dc.b $F0
		dc.b $FD
		dc.b $D3
		dc.b $61 ; a
		dc.b   8
		dc.b $EC
		dc.b $E4
		dc.b $4E ; N
		dc.b  $A
		dc.b $A8
		dc.b $75 ; u
		dc.b $BA
		dc.b $F0
		dc.b  $F
		dc.b $12
		dc.b $23 ; #
		dc.b $DA
		dc.b $F0
		dc.b $2C ; ,
		dc.b $F2
		dc.b $75 ; u
		dc.b $DB
		dc.b $68 ; h
		dc.b $E1
		dc.b   3
		dc.b $68 ; h
		dc.b $E6
		dc.b $4E ; N
		dc.b $82
		dc.b $5A ; Z
		dc.b $E2
		dc.b $52 ; R
		dc.b $BB
		dc.b $E0
		dc.b $68 ; h
		dc.b $95
		dc.b $E0
		dc.b $E0
		dc.b $59 ; Y
		dc.b $3B ; ;
		dc.b  $C
		dc.b  $F
		dc.b $67 ; g
		dc.b $14
		dc.b $40 ; @
		dc.b $C1
		dc.b $E2
		dc.b $3B ; ;
		dc.b $6A ; j
		dc.b $E2
		dc.b $32 ; 2
		dc.b $DF
		dc.b $61 ; a
		dc.b $F8
		dc.b $E4
		dc.b $E8
		dc.b $49 ; I
		dc.b $C2
		dc.b $FC
		dc.b $9E
		dc.b $31 ; 1
		dc.b $C0
		dc.b $C2
		dc.b $C2
		dc.b $E2
		dc.b $82
		dc.b $D4
		dc.b $30 ; 0
		dc.b $F6
		dc.b $72 ; r
		dc.b $C3
		dc.b $CC
		dc.b $92
		dc.b   1
		dc.b $FA
		dc.b $48 ; H
		dc.b $41 ; A
		dc.b $61 ; a
		dc.b $FC
		dc.b $DE
		dc.b $D6
		dc.b $EC
		dc.b $FC
		dc.b $EA
		dc.b $E8
		dc.b $59 ; Y
		dc.b $E9
		dc.b $80
		dc.b $95
		dc.b $89
		dc.b $EE
		dc.b $F6
		dc.b $E4
		dc.b $AC
		dc.b $FF
		dc.b $FE
		dc.b $BA
		dc.b $5C ; \
		dc.b $65 ; e
		dc.b $F8
		dc.b $BC
		dc.b $C2
		dc.b $E0
		dc.b $66 ; f
		dc.b $E6
		dc.b $B2
		dc.b $F0
		dc.b $F8
		dc.b  $A
		dc.b $D6
		dc.b $B3
		dc.b $F0
		dc.b $87
		dc.b $18
		dc.b $84
		dc.b $B9
		dc.b   2
		dc.b   1
		dc.b $A0
		dc.b $E5
		dc.b $FC
		dc.b $EB
		dc.b $63 ; c
		dc.b $23 ; #
		dc.b $FC
		dc.b $ED
		dc.b $FC
		dc.b $E9
		dc.b $EA
		dc.b $FD
		dc.b $AD
		dc.b $EA
		dc.b   0
		dc.b   0
		dc.b $FC
		dc.b $EA
		dc.b $FC
		dc.b $EA
		dc.b $A0
		dc.b $18
		dc.b $FC
		dc.b $EA
		dc.b $86
		dc.b $FC
		dc.b $9A
		dc.b $F0
		dc.b $94
		dc.b $E6
		dc.b $94
		dc.b $6C ; l
		dc.b $FE
		dc.b $78 ; x
		dc.b $FC
		dc.b $80
		dc.b $30 ; 0
		dc.b   1
		dc.b $7E ; ~
		dc.b $F0
		dc.b  $F
		dc.b $EC
		dc.b $4A ; J
		dc.b $E8
		dc.b $48 ; H
		dc.b $90
		dc.b $41 ; A
		dc.b $64 ; d
		dc.b   4
		dc.b $44 ; D
		dc.b $6D ; m
		dc.b $16
		dc.b  $D
		dc.b $D8
		dc.b $20
		dc.b $41 ; A
		dc.b $EE
		dc.b $BE
		dc.b $CB
		dc.b $96
		dc.b $40 ; @
		dc.b $B1
		dc.b $E2
		dc.b $5E ; ^
		dc.b $28 ; (
		dc.b $E6
		dc.b $C6
		dc.b $F1
		dc.b $E0
		dc.b $E4
		dc.b   9
		dc.b $AE
		dc.b $8D
		dc.b $68 ; h
		dc.b $5A ; Z
		dc.b $EA
		dc.b $BB
		dc.b $7C ; |
		dc.b  $B
		dc.b $70 ; p
		dc.b $4C ; L
		dc.b $30 ; 0
		dc.b $38 ; 8
		dc.b $80
		dc.b $34 ; 4
		dc.b   0
		dc.b $13
		dc.b $42 ; B
		dc.b $7A ; z
		dc.b $C3
		dc.b $FD
		dc.b $52 ; R
		dc.b $EE
		dc.b  $C
		dc.b $12
		dc.b $FC
		dc.b $67 ; g
		dc.b $20
		dc.b $61 ; a
		dc.b $38 ; 8
		dc.b $60 ; `
		dc.b $C4
		dc.b $9A
		dc.b $F4
		dc.b   2
		dc.b $2D ; -
		dc.b $75 ; u
		dc.b $EE
		dc.b $11
		dc.b $30 ; 0
		dc.b $FC
		dc.b  $A
		dc.b $10
		dc.b $A3
		dc.b $EE
		dc.b $50 ; P
		dc.b $CE
		dc.b $F1
		dc.b $E4
		dc.b $B0
		dc.b $10
		dc.b $8F
		dc.b $94
		dc.b $30 ; 0
		dc.b $B9
		dc.b $92
		dc.b $E6
		dc.b $31 ; 1
		dc.b $C0
		dc.b $52 ; R
		dc.b   6
		dc.b $B8
		dc.b $AA
		dc.b $8A
		dc.b $14
		dc.b $6D ; m
		dc.b $D4
		dc.b $E8
		dc.b $38 ; 8
		dc.b $60 ; `
		dc.b $E2
		dc.b $E8
		dc.b $5A ; Z
		dc.b $EA
		dc.b $F0
		dc.b $F8
		dc.b $EA
		dc.b $30 ; 0
		dc.b $86
		dc.b $F6
		dc.b $E8
		dc.b $FF
		dc.b  $E
		dc.b $F0
		dc.b $E4
		dc.b $EE
		dc.b $82
		dc.b $88
		dc.b   2
		dc.b $40 ; @
		dc.b $59 ; Y
		dc.b $F8
		dc.b $E2
		dc.b $FD
		dc.b $F8
		dc.b $8F
		dc.b $8F
		dc.b $B0
		dc.b $EE
		dc.b $6B ; k
		dc.b $14
		dc.b $90
		dc.b $42 ; B
		dc.b $65 ; e
		dc.b $14
		dc.b $72 ; r
		dc.b   0
		dc.b $F0
		dc.b $E7
		dc.b $22 ; "
		dc.b $2E ; .
		dc.b $99
		dc.b $D2
		dc.b $40 ; @
		dc.b $E9
		dc.b $99
		dc.b $60 ; `
		dc.b $16
		dc.b $EC
		dc.b $B4
		dc.b $4D ; M
		dc.b $EC
		dc.b $EE
		dc.b $70 ; p
		dc.b   0
		dc.b $3E ; >
		dc.b $B1
		dc.b $F0
		dc.b $F0
		dc.b $F7
		dc.b $E4
		dc.b $EA
		dc.b $7A ; z
		dc.b $18
		dc.b $F0
		dc.b $D1
		dc.b   4
		dc.b $69 ; i
		dc.b $E2
		dc.b $C1
		dc.b   4
		dc.b $2A ; *
		dc.b $54 ; T
		dc.b $63 ; c
		dc.b $70 ; p
		dc.b $63 ; c
		dc.b   4
		dc.b $61 ; a
		dc.b  $C
		dc.b $5F ; _
		dc.b $6D ; m
		dc.b $2C ; ,
		dc.b $42 ; B
		dc.b   0
		dc.b $DE
		dc.b $4C ; L
		dc.b $DF
		dc.b $E8
		dc.b $EA
		dc.b $14
		dc.b $6A ; j
		dc.b $20
		dc.b $1B
		dc.b $68 ; h
		dc.b  $E
		dc.b $6D ; m
		dc.b $64 ; d
		dc.b $63 ; c
		dc.b $6C ; l
		dc.b $68 ; h
		dc.b  $D
		dc.b $A0
		dc.b $FC
		dc.b $A6
		dc.b $FC
		dc.b $B0
		dc.b $F2
		dc.b $69 ; i
		dc.b $F2
		dc.b $C3
		dc.b $E8
		dc.b   4
		dc.b $99
		dc.b $96
		dc.b $FC
		dc.b $F1
		dc.b $76 ; v
		dc.b $FC
		dc.b $18
		dc.b $39 ; 9
		dc.b $F1
		dc.b $30 ; 0
		dc.b $86
		dc.b $30 ; 0
		dc.b $FC
		dc.b $EE
		dc.b $9E
		dc.b $FC
		dc.b $C4
		dc.b $FC
		dc.b $D8
		dc.b $C6
		dc.b $EF
		dc.b $EC
		dc.b $F0
		dc.b $14
		dc.b $39 ; 9
		dc.b $F5
		dc.b $1E
		dc.b $71 ; q
		dc.b $F5
		dc.b $D0
		dc.b $D8
		dc.b $B6
		dc.b $F5
		dc.b $D8
		dc.b $F6
		dc.b $3A ; :
		dc.b $71 ; q
		dc.b $F6
		dc.b $48 ; H
		dc.b $51 ; Q
		dc.b $F6
		dc.b   8
		dc.b $39 ; 9
		dc.b $F6
		dc.b $76 ; v
		dc.b $F2
		dc.b $BC
		dc.b $2A ; *
		dc.b $10
		dc.b   9
		dc.b $F0
		dc.b $3A ; :
		dc.b $71 ; q
		dc.b $FD
		dc.b $82
		dc.b $FC
		dc.b $7A ; z
		dc.b $9D
		dc.b $F2
		dc.b $56 ; V
		dc.b $7B ; {
		dc.b $DF
		dc.b $C0
		dc.b $E2
		dc.b   8
		dc.b $78 ; x
		dc.b $E9
		dc.b $F8
		dc.b $5E ; ^
		dc.b $80
		dc.b $1C
		dc.b $6A ; j
		dc.b $30 ; 0
		dc.b $ED
		dc.b $5A ; Z
		dc.b $FC
		dc.b $A0
		dc.b $69 ; i
		dc.b $E3
		dc.b $BE
		dc.b   1
		dc.b $E1
		dc.b $48 ; H
		dc.b $FA
		dc.b   3
		dc.b $30 ; 0
		dc.b $88
		dc.b $41 ; A
		dc.b $E3
		dc.b $82
		dc.b $64 ; d
		dc.b   4
		dc.b $8D
		dc.b $AF
		dc.b $AC
		dc.b $11
		dc.b $14
		dc.b $5A ; Z
		dc.b $F2
		dc.b $20
		dc.b $F0
		dc.b $EE
		dc.b $50 ; P
		dc.b $20
		dc.b $80
		dc.b $2E ; .
		dc.b $6A ; j
		dc.b $6F ; o
		dc.b $DD
		dc.b $70 ; p
		dc.b $A2
		dc.b $E2
		dc.b $36 ; 6
		dc.b  $C
		dc.b $90
		dc.b $DC
		dc.b $33 ; 3
		dc.b $F4
		dc.b $E2
		dc.b $F1
		dc.b $5C ; \
		dc.b $C1
		dc.b $E2
		dc.b $54 ; T
		dc.b $D2
		dc.b $F1
		dc.b $D3
		dc.b $B0
		dc.b $41 ; A
		dc.b $58 ; X
		dc.b   4
		dc.b $FA
		dc.b $5B ; [
		dc.b $36 ; 6
		dc.b $FA
		dc.b $E8
		dc.b $58 ; X
		dc.b $BD
		dc.b $31 ; 1
		dc.b $7A ; z
		dc.b $69 ; i
		dc.b $12
		dc.b $BC
		dc.b $5B ; [
		dc.b   6
		dc.b $43 ; C
		dc.b $FA
		dc.b $80
		dc.b $31 ; 1
		dc.b  $A
		dc.b $FA
		dc.b $18
		dc.b $E0
		dc.b $F7
		dc.b   8
		dc.b $FA
		dc.b $1C
		dc.b $E9
		dc.b $58 ; X
		dc.b $4E ; N
		dc.b $D1
		dc.b $4C ; L
		dc.b $D9
		dc.b $F2
		dc.b $32 ; 2
		dc.b $6E ; n
		dc.b $60 ; `
		dc.b $C0
		dc.b $96
		dc.b $B2
		dc.b $60 ; `
		dc.b $10
		dc.b $F4
		dc.b $FE
		dc.b $60 ; `
		dc.b $D6
		dc.b $F6
		dc.b $C3
		dc.b $C3
		dc.b $50 ; P
		dc.b $EB
		dc.b $F2
		dc.b $BC
		dc.b $2B ; +
		dc.b $5F ; _
		dc.b $5A ; Z
		dc.b $FE
		dc.b $FA
		dc.b $4A ; J
		dc.b $1F
		dc.b $C7
		dc.b $6D ; m
		dc.b $5B ; [
		dc.b $4C ; L
		dc.b $67 ; g
		dc.b   4
		dc.b $53 ; S
		dc.b $FA
		dc.b $20
		dc.b $6D ; m
		dc.b $F0
		dc.b $C5
		dc.b   3
		dc.b $D0
		dc.b $32 ; 2
		dc.b $60 ; `
		dc.b $B3
		dc.b $98
		dc.b $7C ; |
		dc.b $80
		dc.b   0
		dc.b $4E ; N
		dc.b  $C
		dc.b $F0
		dc.b $FA
		dc.b $11
		dc.b $94
		dc.b $90
		dc.b $FA
		dc.b   1
		dc.b   1
		dc.b $5B ; [
		dc.b $7E ; ~
		dc.b $EF
		dc.b  $C
		dc.b $B4
		dc.b $A1
		dc.b $10
		dc.b $5B ; [
		dc.b  $A
		dc.b $61 ; a
		dc.b $C8
		dc.b $4E ; N
		dc.b $E1
		dc.b $2E ; .
		dc.b $67 ; g
		dc.b $F8
		dc.b   2
		dc.b $A3
		dc.b $F2
		dc.b $EF
		dc.b  $F
		dc.b $61 ; a
		dc.b $BA
		dc.b $32 ; 2
		dc.b $3C ; <
		dc.b   4
		dc.b $AA
		dc.b $B9
		dc.b $FC
		dc.b $B0
		dc.b  $C
		dc.b $6D ; m
		dc.b $80
		dc.b  $A
		dc.b $EF
		dc.b   2
		dc.b $AA
		dc.b $66 ; f
		dc.b $14
		dc.b $61 ; a
		dc.b $A8
		dc.b $A4
		dc.b $E3
		dc.b $F2
		dc.b $67 ; g
		dc.b $54 ; T
		dc.b $61 ; a
		dc.b $FA
		dc.b $60 ; `
		dc.b $3E ; >
		dc.b $8E
		dc.b $CE
		dc.b $AC
		dc.b $8E
		dc.b $FC
		dc.b $30 ; 0
		dc.b $2D ; -
		dc.b $D8
		dc.b  $E
		dc.b $F4
		dc.b $72 ; r
		dc.b $F5
		dc.b $B0
		dc.b $7E ; ~
		dc.b $41 ; A
		dc.b $6C ; l
		dc.b $70 ; p
		dc.b $F4
		dc.b   2
		dc.b $B8
		dc.b $1D
		dc.b $3A ; :
		dc.b $FC
		dc.b   3
		dc.b $E9
		dc.b $99
		dc.b   3
		dc.b $B4
		dc.b $FC
		dc.b   8
		dc.b $7A ; z
		dc.b $59 ; Y
		dc.b   8
		dc.b $F0
		dc.b $8C
		dc.b $31 ; 1
		dc.b $FC
		dc.b   7
		dc.b $86
		dc.b $FC
		dc.b $6E ; n
		dc.b $FC
		dc.b $5C ; \
		dc.b $74 ; t
		dc.b $B4
		dc.b $FC
		dc.b  $B
		dc.b $28 ; (
		dc.b $21 ; !
		dc.b  $B
		dc.b $B6
		dc.b $D8
		dc.b $88
		dc.b $29 ; )
		dc.b   3
		dc.b $6B ; k
		dc.b $37 ; 7
		dc.b $A0
		dc.b $F1
		dc.b   8
		dc.b $C2
		dc.b $90
		dc.b $F1
		dc.b $5C ; \
		dc.b $F1
		dc.b   0
		dc.b $68 ; h
		dc.b $F1
		dc.b   0
		dc.b $72 ; r
		dc.b $4A ; J
		dc.b $59 ; Y
		dc.b $24 ; $
		dc.b $C4
		dc.b $B6
		dc.b $FC
		dc.b   4
		dc.b $E8
		dc.b   4
		dc.b $FC
		dc.b $19
		dc.b   4
		dc.b $28 ; (
		dc.b $F1
		dc.b   4
		dc.b $63 ; c
		dc.b $88
		dc.b $78 ; x
		dc.b $29 ; )
		dc.b   4
		dc.b $3C ; <
		dc.b $D4
		dc.b $EC
		dc.b $FC
		dc.b  $A
		dc.b $29 ; )
		dc.b $C6
		dc.b $C8
		dc.b  $A
		dc.b $E8
		dc.b $26 ; &
		dc.b $D4
		dc.b $46 ; F
		dc.b $FC
		dc.b $18
		dc.b $A3
		dc.b $42 ; B
		dc.b $FC
		dc.b $3E ; >
		dc.b $FC
		dc.b $3A ; :
		dc.b $FC
		dc.b $63 ; c
		dc.b $B4
		dc.b $50 ; P
		dc.b $F1
		dc.b   0
		dc.b $32 ; 2
		dc.b $E0
		dc.b $7C ; |
		dc.b $FC
		dc.b $2C ; ,
		dc.b $F1
		dc.b   1
		dc.b $63 ; c
		dc.b $68 ; h
		dc.b $E0
		dc.b $19
		dc.b   1
		dc.b $FC
		dc.b $C8
		dc.b $94
		dc.b $FC
		dc.b   5
		dc.b $F0
		dc.b $E9
		dc.b   6
		dc.b $8C
		dc.b $71 ; q
		dc.b $F8
		dc.b   6
		dc.b $D8
		dc.b   9
		dc.b $80
		dc.b   7
		dc.b $F4
		dc.b  $C
		dc.b  $B
		dc.b $DC
		dc.b $D8
		dc.b $FC
		dc.b  $C
		dc.b $48 ; H
		dc.b $E8
		dc.b $F2
		dc.b $8F
		dc.b $E1
		dc.b $71 ; q
		dc.b $5B ; [
		dc.b $48 ; H
		dc.b $60 ; `
		dc.b   6
		dc.b $F8
		dc.b   5
		dc.b $F8
		dc.b $2B ; +
		dc.b $5F ; _
		dc.b $EE
		dc.b $C3
		dc.b $5B ; [
		dc.b $DC
		dc.b $31 ; 1
		dc.b $FE
		dc.b $B6
		dc.b $C0
		dc.b $F1
		dc.b $48 ; H
		dc.b $64 ; d
		dc.b $F6
		dc.b $20
		dc.b $FA
		dc.b   2
		dc.b $C9
		dc.b $1D
		dc.b $4E ; N
		dc.b $D0
		dc.b $EC
		dc.b $7E ; ~
		dc.b $EA
		dc.b $FE
		dc.b $A0
		dc.b $76 ; v
		dc.b $D9
		dc.b $20
		dc.b $32 ; 2
		dc.b $6E ; n
		dc.b $28 ; (
		dc.b  $A
		dc.b $34 ; 4
		dc.b  $C
		dc.b $41 ; A
		dc.b $36 ; 6
		dc.b $F1
		dc.b   4
		dc.b $F2
		dc.b $80
		dc.b $44 ; D
		dc.b $E1
		dc.b $BC
		dc.b $BD
		dc.b $E8
		dc.b $DE
		dc.b $8C
		dc.b $65 ; e
		dc.b $E2
		dc.b $D6
		dc.b $F8
		dc.b  $E
		dc.b $76 ; v
		dc.b $E4
		dc.b $F1
		dc.b $4C ; L
		dc.b $67 ; g
		dc.b $10
		dc.b $61 ; a
		dc.b  $C
		dc.b $28 ; (
		dc.b $41 ; A
		dc.b $42 ; B
		dc.b $F8
		dc.b $64 ; d
		dc.b $EE
		dc.b $F8
		dc.b  $D
		dc.b $A3
		dc.b $1B
		dc.b $F8
		dc.b $65 ; e
		dc.b $E6
		dc.b $CE
		dc.b $E8
		dc.b $E9
		dc.b $DE
		dc.b $5C ; \
		dc.b $D2
		dc.b $FC
		dc.b $61 ; a
		dc.b $A0
		dc.b $55 ; U
		dc.b $FE
		dc.b $D6
		dc.b $4C ; L
		dc.b $98
		dc.b $F1
		dc.b $10
		dc.b $A2
		dc.b $F1
		dc.b $62 ; b
		dc.b $52 ; R
		dc.b $8E
		dc.b $F3
		dc.b $8C
		dc.b $C1
		dc.b $F6
		dc.b $8E
		dc.b $DC
		dc.b $22 ; "
		dc.b $AC
		dc.b $EE
		dc.b $E9
		dc.b $B8
		dc.b $B4
		dc.b  $A
		dc.b $6A ; j
		dc.b  $A
		dc.b $5B ; [
		dc.b $7A ; z
		dc.b $21 ; !
		dc.b $EC
		dc.b $E0
		dc.b $82
		dc.b $C5
		dc.b $71 ; q
		dc.b $5C ; \
		dc.b $F1
		dc.b   0
		dc.b $3A ; :
		dc.b $7A ; z
		dc.b $EA
		dc.b   0
		dc.b $58 ; X
		dc.b $58 ; X
		dc.b $EE
		dc.b $58 ; X
		dc.b $7C ; |
		dc.b $61 ; a
		dc.b $F6
		dc.b   1
		dc.b $5B ; [
		dc.b $2A ; *
		dc.b $2B ; +
		dc.b $86
		dc.b $51 ; Q
		dc.b $EE
		dc.b $5B ; [
		dc.b $2C ; ,
		dc.b $4C ; L
		dc.b $B6
		dc.b $DC
		dc.b $5E ; ^
		dc.b $DC
		dc.b $DE
		dc.b $99
		dc.b $44 ; D
		dc.b $B4
		dc.b $EB
		dc.b $3C ; <
		dc.b $6D ; m
		dc.b $C5
		dc.b $70 ; p
		dc.b $4B ; K
		dc.b $36 ; 6
		dc.b $70 ; p
		dc.b $4B ; K
		dc.b $30 ; 0
		dc.b $1A
		dc.b $3B ; ;
		dc.b $8A
		dc.b $AC
		dc.b $33 ; 3
		dc.b $D2
		dc.b $E1
		dc.b $F8
		dc.b $46 ; F
		dc.b $17
		dc.b  $E
		dc.b $24 ; $
		dc.b $81
		dc.b $7C ; |
		dc.b $6C ; l
		dc.b $AC
		dc.b $39 ; 9
		dc.b $DD
		dc.b $C8
		dc.b $EE
		dc.b $79 ; y
		dc.b $1F
		dc.b $46 ; F
		dc.b $64 ; d
		dc.b $DD
		dc.b $AA
		dc.b $65 ; e
		dc.b $F6
		dc.b $88
		dc.b $66 ; f
		dc.b $B6
		dc.b $66 ; f
		dc.b $6B ; k
		dc.b $C7
		dc.b $94
		dc.b $91
		dc.b $20
		dc.b $CE
		dc.b $E9
		dc.b $7E ; ~
		dc.b $C1
		dc.b   5
		dc.b $5E ; ^
		dc.b $DA
		dc.b $5B ; [
		dc.b  $C
		dc.b $D6
		dc.b $E8
		dc.b $36 ; 6
		dc.b $20
		dc.b $DE
		dc.b $9E
		dc.b   9
		dc.b $FD
		dc.b $96
		dc.b $54 ; T
		dc.b $FD
		dc.b $68 ; h
		dc.b $42 ; B
		dc.b $FD
		dc.b $60 ; `
		dc.b   6
		dc.b $54 ; T
		dc.b $E8
		dc.b $70 ; p
		dc.b $20
		dc.b $C6
		dc.b $68 ; h
		dc.b $F1
		dc.b $DA
		dc.b $F1
		dc.b $43 ; C
		dc.b $1F
		dc.b $10
		dc.b $82
		dc.b   7
		dc.b $CE
		dc.b $67 ; g
		dc.b $DC
		dc.b $F1
		dc.b   0
		dc.b $23 ; #
		dc.b $3B ; ;
		dc.b $40 ; @
		dc.b $42 ; B
		dc.b $8C
		dc.b $3E ; >
		dc.b $42 ; B
		dc.b  $E
		dc.b $14
		dc.b $FC
		dc.b $1E
		dc.b $35 ; 5
		dc.b $C6
		dc.b $FC
		dc.b $34 ; 4
		dc.b $6A ; j
		dc.b $AA
		dc.b $CA
		dc.b $A9
		dc.b $FF
		dc.b $E8
		dc.b $40 ; @
		dc.b $FC
		dc.b $70 ; p
		dc.b $18
		dc.b $2A ; *
		dc.b $F0
		dc.b $DF
		dc.b $46 ; F
		dc.b $2B ; +
		dc.b $F8
		dc.b $2C ; ,
		dc.b $42 ; B
		dc.b $7C ; |
		dc.b $15
		dc.b $9C
		dc.b $1E
		dc.b $4A ; J
		dc.b   3
		dc.b $5B ; [
		dc.b $3C ; <
		dc.b $60 ; `
		dc.b $64 ; d
		dc.b $E9
		dc.b $70 ; p
		dc.b $C9
		dc.b $52 ; R
		dc.b $E9
		dc.b $11
		dc.b $30 ; 0
		dc.b $2A ; *
		dc.b   2
		dc.b $90
		dc.b $FC
		dc.b $78 ; x
		dc.b $66 ; f
		dc.b $77 ; w
		dc.b $D8
		dc.b $80
		dc.b $30 ; 0
		dc.b $52 ; R
		dc.b $E1
		dc.b $FD
		dc.b $6A ; j
		dc.b $7C ; |
		dc.b $EA
		dc.b $5B ; [
		dc.b $42 ; B
		dc.b $8C
		dc.b $41 ; A
		dc.b $B0
		dc.b $38 ; 8
		dc.b $DA
		dc.b $28 ; (
		dc.b $DA
		dc.b $D8
		dc.b $41 ; A
		dc.b $D7
		dc.b $A5
		dc.b $CE
		dc.b $FC
		dc.b   1
		dc.b $58 ; X
		dc.b $EA
		dc.b $DA
		dc.b $CE
		dc.b $71 ; q
		dc.b $DF
		dc.b $52 ; R
		dc.b $FC
		dc.b $F3
		dc.b $D2
		dc.b $98
		dc.b $1A
		dc.b $3C ; <
		dc.b $E8
		dc.b $25 ; %
		dc.b $DC
		dc.b   1
		dc.b $DC
		dc.b $FC
		dc.b   2
		dc.b   2
		dc.b $72 ; r
		dc.b $DC
		dc.b $3B ; ;
		dc.b $C6
		dc.b $84
		dc.b $E8
		dc.b $14
		dc.b $54 ; T
		dc.b $B1
		dc.b $DE
		dc.b $5C ; \
		dc.b $52 ; R
		dc.b $AC
		dc.b $F1
		dc.b $88
		dc.b $FC
		dc.b $C4
		dc.b $16
		dc.b $8D
		dc.b $69 ; i
		dc.b $D2
		dc.b $F3
		dc.b $10
		dc.b $DA
		dc.b $F3
		dc.b  $A
		dc.b $FA
		dc.b   9
		dc.b $B8
		dc.b $FC
		dc.b $F4
		dc.b $71 ; q
		dc.b $6F ; o
		dc.b $90
		dc.b $F3
		dc.b $6E ; n
		dc.b $FC
		dc.b $FE
		dc.b $98
		dc.b $31 ; 1
		dc.b $58 ; X
		dc.b $5B ; [
		dc.b $3E ; >
		dc.b $D6
		dc.b $E1
		dc.b $8A
		dc.b $61 ; a
		dc.b $3F ; ?
		dc.b $E2
		dc.b $DC
		dc.b   6
		dc.b $FC
		dc.b $D6
		dc.b $CA
		dc.b $E9
		dc.b $3E ; >
		dc.b $64 ; d
		dc.b $EC
		dc.b $60 ; `
		dc.b  $E
		dc.b $46 ; F
		dc.b $DD
		dc.b $DA
		dc.b   4
		dc.b $7A ; z
		dc.b $AC
		dc.b $EA
		dc.b $58 ; X
		dc.b $F3
		dc.b $DE
		dc.b $C8
		dc.b $6A ; j
		dc.b $F3
		dc.b $DC
		dc.b $DC
		dc.b $28 ; (
		dc.b $AC
		dc.b $4A ; J
		dc.b $7E ; ~
		dc.b $F3
		dc.b $1C
		dc.b $A6
		dc.b $16
		dc.b $82
		dc.b $F4
		dc.b $31 ; 1
		dc.b $36 ; 6
		dc.b $DC
		dc.b $4A ; J
		dc.b $B8
		dc.b $42 ; B
		dc.b $F8
		dc.b $2C ; ,
		dc.b $82
		dc.b $F3
		dc.b $C8
		dc.b $1E
		dc.b $1D
		dc.b $C8
		dc.b $53 ; S
		dc.b $5B ; [
		dc.b $4C ; L
		dc.b $E4
		dc.b $DE
		dc.b $E9
		dc.b $DC
		dc.b $2E ; .
		dc.b $3B ; ;
		dc.b $DE
		dc.b $E4
		dc.b $26 ; &
		dc.b $DA
		dc.b $EE
		dc.b $FC
		dc.b $72 ; r
		dc.b $EE
		dc.b   6
		dc.b $65 ; e
		dc.b $EC
		dc.b $96
		dc.b $F2
		dc.b $21 ; !
		dc.b $6F ; o
		dc.b $FF
		dc.b $7E ; ~
		dc.b $D8
		dc.b $40 ; @
		dc.b $52 ; R
		dc.b $FC
		dc.b   6
		dc.b $E0
		dc.b $FF
		dc.b $52 ; R
		dc.b $CC
		dc.b $1D
		dc.b $92
		dc.b $5A ; Z
		dc.b $98
		dc.b $E2
		dc.b $24 ; $
		dc.b $22 ; "
		dc.b $67 ; g
		dc.b $DC
		dc.b $8F
		dc.b $D7
		dc.b $FA
		dc.b   8
		dc.b $67 ; g
		dc.b $D6
		dc.b $FA
		dc.b   7
		dc.b $67 ; g
		dc.b $D0
		dc.b  $E
		dc.b $E4
		dc.b $D2
		dc.b $E9
		dc.b $62 ; b
		dc.b $C7
		dc.b   5
		dc.b   0
		dc.b $E2
		dc.b $3A ; :
		dc.b $24 ; $
		dc.b $3C ; <
		dc.b $CA
		dc.b $5B ; [
		dc.b $42 ; B
		dc.b $E8
		dc.b $A8
		dc.b $1A
		dc.b   3
		dc.b $50 ; P
		dc.b $EE
		dc.b $DA
		dc.b $C2
		dc.b $F1
		dc.b $E6
		dc.b $F4
		dc.b $42 ; B
		dc.b $59 ; Y
		dc.b $5F ; _
		dc.b $50 ; P
		dc.b $10
		dc.b $E6
		dc.b $B2
		dc.b $DC
		dc.b $1A
		dc.b $44 ; D
		dc.b $B6
		dc.b $EA
		dc.b $94
		dc.b $C1
		dc.b $AC
		dc.b $B6
		dc.b $EA
		dc.b $6E ; n
		dc.b $21 ; !
		dc.b $44 ; D
		dc.b $D0
		dc.b $38 ; 8
		dc.b $69 ; i
		dc.b  $E
		dc.b $73 ; s
		dc.b $FD
		dc.b $10
		dc.b $69 ; i
		dc.b $FB
		dc.b $88
		dc.b $FC
		dc.b $DB
		dc.b $72 ; r
		dc.b $46 ; F
		dc.b $D0
		dc.b $47 ; G
		dc.b $9C
		dc.b $30 ; 0
		dc.b $FC
		dc.b $DB
		dc.b $7A ; z
		dc.b $EA
		dc.b $56 ; V
		dc.b $DB
		dc.b $5C ; \
		dc.b $6B ; k
		dc.b $A1
		dc.b $EA
		dc.b $BA
		dc.b $F8
		dc.b $F2
		dc.b $88
		dc.b $F3
		dc.b $24 ; $
		dc.b $C2
		dc.b $D9
		dc.b $8A
		dc.b $8E
		dc.b $C6
		dc.b $63 ; c
		dc.b $F0
		dc.b $FC
		dc.b $DA
		dc.b $41 ; A
		dc.b $A4
		dc.b $94
		dc.b $14
		dc.b $5B ; [
		dc.b   6
		dc.b $94
		dc.b $5C ; \
		dc.b $BE
		dc.b $35 ; 5
		dc.b $7A ; z
		dc.b $30 ; 0
		dc.b $5B ; [
		dc.b $28 ; (
		dc.b $44 ; D
		dc.b $F1
		dc.b $B2
		dc.b $2E ; .
		dc.b $F3
		dc.b $A0
		dc.b $C2
		dc.b   0
		dc.b $C8
		dc.b   0
		dc.b $EA
		dc.b $DE
		dc.b $CA
		dc.b $E4
		dc.b $6C ; l
		dc.b $95
		dc.b $6A ; j
		dc.b $E4
		dc.b $18
		dc.b $5E ; ^
		dc.b $FD
		dc.b $4A ; J
		dc.b $F2
		dc.b $CA
		dc.b $FC
		dc.b $CA
		dc.b $FE
		dc.b $52 ; R
		dc.b $FC
		dc.b $20
		dc.b $85
		dc.b $CD
		dc.b $5A ; Z
		dc.b $E9
		dc.b $B6
		dc.b $EB
		dc.b $AA
		dc.b $2A ; *
		dc.b $60 ; `
		dc.b $DE
		dc.b $EA
		dc.b   3
		dc.b $6A ; j
		dc.b $D8
		dc.b $E0
		dc.b $B4
		dc.b $F8
		dc.b $15
		dc.b  $E
		dc.b $F2
		dc.b $B4
		dc.b $FC
		dc.b $26 ; &
		dc.b $E0
		dc.b $60 ; `
		dc.b $1A
		dc.b $F2
		dc.b $FF
		dc.b $A8
		dc.b $82
		dc.b $27 ; '
		dc.b $F2
		dc.b $F6
		dc.b $F6
		dc.b $98
		dc.b $F8
		dc.b $16
		dc.b $22 ; "
		dc.b $E1
		dc.b $DE
		dc.b $93
		dc.b $3B ; ;
		dc.b $46 ; F
		dc.b $EB
		dc.b $DC
		dc.b $8C
		dc.b $90
		dc.b $82
		dc.b $F6
		dc.b $FA
		dc.b $D4
		dc.b $3C ; <
		dc.b $E6
		dc.b $FA
		dc.b $CA
		dc.b $B6
		dc.b $56 ; V
		dc.b $E4
		dc.b $D2
		dc.b $80
		dc.b $EB
		dc.b $42 ; B
		dc.b $4C ; L
		dc.b $EB
		dc.b $C0
		dc.b $F2
		dc.b  $C
		dc.b $C0
		dc.b $F3
		dc.b $96
		dc.b $1A
		dc.b $72 ; r
		dc.b $77 ; w
		dc.b $EC
		dc.b $7A ; z
		dc.b $E1
		dc.b   1
		dc.b $3A ; :
		dc.b $7A ; z
		dc.b $E4
		dc.b   1
		dc.b $32 ; 2
		dc.b $CA
		dc.b $DA
		dc.b $FA
		dc.b $40 ; @
		dc.b $7D ; }
		dc.b $8C
		dc.b $D2
		dc.b $E1
		dc.b $B6
		dc.b $E1
		dc.b $DA
		dc.b $3C ; <
		dc.b $65 ; e
		dc.b $F2
		dc.b $F2
		dc.b $32 ; 2
		dc.b $AD
		dc.b $43 ; C
		dc.b $F6
		dc.b $1C
		dc.b $C0
		dc.b $F3
		dc.b $A0
		dc.b $F8
		dc.b $E3
		dc.b $C8
		dc.b $E1
		dc.b $FB
		dc.b $76 ; v
		dc.b $F6
		dc.b   8
		dc.b $85
		dc.b $6E ; n
		dc.b $C6
		dc.b $F1
		dc.b $46 ; F
		dc.b $C2
		dc.b $7A ; z
		dc.b $67 ; g
		dc.b $A0
		dc.b $E9
		dc.b   8
		dc.b   8
		dc.b $B8
		dc.b $F1
		dc.b $1A
		dc.b $C4
		dc.b $59 ; Y
		dc.b $D2
		dc.b $C0
		dc.b $DC
		dc.b $62 ; b
		dc.b $90
		dc.b $50 ; P
		dc.b $F2
		dc.b $E8
		dc.b $10
		dc.b $90
		dc.b   6
		dc.b $E0
		dc.b $1B
		dc.b $AE
		dc.b $22 ; "
		dc.b $56 ; V
		dc.b $2C ; ,
		dc.b $C3
		dc.b $D3
		dc.b $AA
		dc.b $A0
		dc.b $E2
		dc.b $D9
		dc.b $E6
		dc.b $65 ; e
		dc.b $D8
		dc.b $9A
		dc.b $F9
		dc.b  $C
		dc.b $3E ; >
		dc.b $DA
		dc.b $EC
		dc.b $FC
		dc.b $9E
		dc.b $19
		dc.b $D9
		dc.b $D2
		dc.b $65 ; e
		dc.b $EE
		dc.b $BA
		dc.b $ED
		dc.b $EE
		dc.b   4
		dc.b $E1
		dc.b $DC
		dc.b $26 ; &
		dc.b $D8
		dc.b $EA
		dc.b $66 ; f
		dc.b $6C ; l
		dc.b $59 ; Y
		dc.b $DC
		dc.b $DE
		dc.b $DA
		dc.b   6
		dc.b $E2
		dc.b  $D
		dc.b $64 ; d
		dc.b  $C
		dc.b   9
		dc.b $E0
		dc.b $9C
		dc.b $65 ; e
		dc.b $E0
		dc.b $96
		dc.b $EB
		dc.b $20
		dc.b $D3
		dc.b $2E ; .
		dc.b $96
		dc.b $FF
		dc.b $FF
		dc.b $7E ; ~
		dc.b $FA
		dc.b $F4
		dc.b $4E ; N
		dc.b $F1
		dc.b   6
		dc.b $5B ; [
		dc.b $C4
		dc.b $BB
		dc.b $E2
		dc.b $20
		dc.b $7E ; ~
		dc.b   6
		dc.b   0
		dc.b $2B ; +
		dc.b $F0
		dc.b $78 ; x
		dc.b $33 ; 3
		dc.b   8
		dc.b  $B
		dc.b $EA
		dc.b $72 ; r
		dc.b $E3
		dc.b $DC
		dc.b   5
		dc.b $62 ; b
		dc.b $9A
		dc.b $12
		dc.b $DD
		dc.b $51 ; Q
		dc.b $F2
		dc.b $66 ; f
		dc.b $CC
		dc.b $F1
		dc.b   1
		dc.b   1
		dc.b $90
		dc.b $E6
		dc.b $60 ; `
		dc.b $34 ; 4
		dc.b $D4
		dc.b $76 ; v
		dc.b $F1
		dc.b $D6
		dc.b $35 ; 5
		dc.b $D4
		dc.b $46 ; F
		dc.b $E5
		dc.b $D8
		dc.b $FD
		dc.b $1A
		dc.b $41 ; A
		dc.b $AA
		dc.b $C9
		dc.b $A6
		dc.b $C9
		dc.b $14
		dc.b $76 ; v
		dc.b $2C ; ,
		dc.b $74 ; t
		dc.b $52 ; R
		dc.b $5C ; \
		dc.b $E0
		dc.b  $B
		dc.b $60 ; `
		dc.b $14
		dc.b $44 ; D
		dc.b $25 ; %
		dc.b $62 ; b
		dc.b $7A ; z
		dc.b $5A ; Z
		dc.b $D7
		dc.b $94
		dc.b $B4
		dc.b $DA
		dc.b $26 ; &
		dc.b $8A
		dc.b $F1
		dc.b $52 ; R
		dc.b $E1
		dc.b $F9
		dc.b $86
		dc.b $70 ; p
		dc.b $FF
		dc.b $5E ; ^
		dc.b $61 ; a
		dc.b $AE
		dc.b $AB
		dc.b $F9
		dc.b $AA
		dc.b $91
		dc.b $D8
		dc.b $F2
		dc.b $D6
		dc.b $F2
		dc.b $62 ; b
		dc.b $E6
		dc.b $F9
		dc.b $60 ; `
		dc.b $BA
		dc.b $FC
		dc.b $7E ; ~
		dc.b $E9
		dc.b $B7
		dc.b $1E
		dc.b $6E ; n
		dc.b $22 ; "
		dc.b  $C
		dc.b $67 ; g
		dc.b $2A ; *
		dc.b $FA
		dc.b $E3
		dc.b $2E ; .
		dc.b $EE
		dc.b $E3
		dc.b $E6
		dc.b $F2
		dc.b   1
		dc.b $66 ; f
		dc.b $BE
		dc.b $87
		dc.b  $D
		dc.b $E4
		dc.b $78 ; x
		dc.b $65 ; e
		dc.b $D6
		dc.b $22 ; "
		dc.b $B0
		dc.b $D4
		dc.b $E9
		dc.b $67 ; g
		dc.b $C5
		dc.b $B2
		dc.b $F8
		dc.b $1A
		dc.b $30 ; 0
		dc.b $F2
		dc.b $C6
		dc.b $12
		dc.b $F4
		dc.b $E2
		dc.b $BC
		dc.b $7B ; {
		dc.b $E7
		dc.b $28 ; (
		dc.b $91
		dc.b $DB
		dc.b $7E ; ~
		dc.b $F4
		dc.b $F3
		dc.b $92
		dc.b $60 ; `
		dc.b $D2
		dc.b $B0
		dc.b $FE
		dc.b $DA
		dc.b $FE
		dc.b $B0
		dc.b $9C
		dc.b $F3
		dc.b $24 ; $
		dc.b $B0
		dc.b $32 ; 2
		dc.b $B0
		dc.b   8
		dc.b $B0
		dc.b   0
		dc.b  $E
		dc.b $53 ; S
		dc.b $FF
		dc.b $C0
		dc.b $41 ; A
		dc.b $DB
		dc.b $26 ; &
		dc.b $AE
		dc.b $F8
		dc.b $D0
		dc.b $AE
		dc.b $63 ; c
		dc.b $B8
		dc.b $D1
		dc.b $F8
		dc.b $C8
		dc.b $70 ; p
		dc.b   0
		dc.b $9A
		dc.b $F1
		dc.b $2A ; *
		dc.b $A8
		dc.b $B2
		dc.b $EA
		dc.b   4
		dc.b $48 ; H
		dc.b $13
		dc.b $AC
		dc.b $EC
		dc.b $DC
		dc.b $DE
		dc.b $AA
		dc.b $74 ; t
		dc.b $A0
		dc.b $F2
		dc.b $3E ; >
		dc.b $60 ; `
		dc.b $CE
		dc.b $AA
		dc.b $FF
		dc.b $A8
		dc.b $AA
		dc.b $F8
		dc.b  $A
		dc.b $DA
		dc.b $DA
		dc.b $AA
		dc.b $F8
		dc.b   9
		dc.b $63 ; c
		dc.b $3B ; ;
		dc.b $38 ; 8
		dc.b $49 ; I
		dc.b $DA
		dc.b $D0
		dc.b $AA
		dc.b $7A ; z
		dc.b $AA
		dc.b $FD
		dc.b $72 ; r
		dc.b $60 ; `
		dc.b $FE
		dc.b $F8
		dc.b $7C ; |
		dc.b $F6
		dc.b $F5
		dc.b $E6
		dc.b $DE
		dc.b $B4
		dc.b $FC
		dc.b $FE
		dc.b $F2
		dc.b $60 ; `
		dc.b $D8
		dc.b $CE
		dc.b $F4
		dc.b $74 ; t
		dc.b $5A ; Z
		dc.b $5B ; [
		dc.b $42 ; B
		dc.b $4D ; M
		dc.b $A2
		dc.b $60 ; `
		dc.b $2C ; ,
		dc.b $F2
		dc.b $FD
		dc.b $AD
		dc.b $F2
		dc.b $6C ; l
		dc.b $5A ; Z
		dc.b $EC
		dc.b $68 ; h
		dc.b $67 ; g
		dc.b $C4
		dc.b $E2
		dc.b $EC
		dc.b $3E ; >
		dc.b $E9
		dc.b $CF
		dc.b $28 ; (
		dc.b $E2
		dc.b $DA
		dc.b $34 ; 4
		dc.b $8C
		dc.b $88
		dc.b $44 ; D
		dc.b $FC
		dc.b $D4
		dc.b $F4
		dc.b $8C
		dc.b $AA
		dc.b $6E ; n
		dc.b $F4
		dc.b $CE
		dc.b $D4
		dc.b $BA
		dc.b $19
		dc.b $BC
		dc.b $EB
		dc.b $A0
		dc.b $C1
		dc.b $50 ; P
		dc.b $EC
		dc.b   0
		dc.b $BA
		dc.b $CA
		dc.b $CD
		dc.b $B2
		dc.b $F7
		dc.b $86
		dc.b $50 ; P
		dc.b $EC
		dc.b   0
		dc.b $AA
		dc.b $20
		dc.b $D3
		dc.b $42 ; B
		dc.b $66 ; f
		dc.b  $A
		dc.b $10
		dc.b $E1
		dc.b $70 ; p
		dc.b $C0
		dc.b $47 ; G
		dc.b $87
		dc.b $D7
		dc.b $8A
		dc.b $60 ; `
		dc.b   8
		dc.b $F6
		dc.b $44 ; D
		dc.b $E9
		dc.b $D7
		dc.b $80
		dc.b $FC
		dc.b $EE
		dc.b $A2
		dc.b $F7
		dc.b $56 ; V
		dc.b $D1
		dc.b $D7
		dc.b $62 ; b
		dc.b $70 ; p
		dc.b $F2
		dc.b $60 ; `
		dc.b $A4
		dc.b  $E
		dc.b $7A ; z
		dc.b $D8
		dc.b $45 ; E
		dc.b $DB
		dc.b $26 ; &
		dc.b $EA
		dc.b $80
		dc.b $CC
		dc.b $A9
		dc.b $78 ; x
		dc.b $38 ; 8
		dc.b $F3
		dc.b $90
		dc.b $EA
		dc.b $F1
		dc.b $3A ; :
		dc.b $72 ; r
		dc.b $EA
		dc.b $8D
		dc.b $ED
		dc.b $F7
		dc.b $4C ; L
		dc.b $DC
		dc.b $F1
		dc.b $3A ; :
		dc.b $D0
		dc.b $48 ; H
		dc.b  $C
		dc.b $EA
		dc.b $F7
		dc.b $B0
		dc.b $D1
		dc.b $D7
		dc.b $86
		dc.b $5A ; Z
		dc.b $28 ; (
		dc.b  $C
		dc.b $EB
		dc.b $46 ; F
		dc.b $52 ; R
		dc.b   3
		dc.b $16
		dc.b $EA
		dc.b $30 ; 0
		dc.b $FC
		dc.b $2E ; .
		dc.b $36 ; 6
		dc.b $FD
		dc.b $D5
		dc.b $C2
		dc.b $8A
		dc.b $FC
		dc.b $52 ; R
		dc.b $21 ; !
		dc.b $C8
		dc.b $F2
		dc.b $CA
		dc.b $E9
		dc.b $14
		dc.b $70 ; p
		dc.b $BB
		dc.b $C8
		dc.b $1C
		dc.b $D0
		dc.b $31 ; 1
		dc.b $60 ; `
		dc.b $FC
		dc.b $6C ; l
		dc.b $E6
		dc.b $F6
		dc.b $F7
		dc.b $62 ; b
		dc.b $F6
		dc.b $29 ; )
		dc.b $77 ; w
		dc.b $B5
		dc.b $F6
		dc.b $5E ; ^
		dc.b $EE
		dc.b $EE
		dc.b $F7
		dc.b $4E ; N
		dc.b $B0
		dc.b $FC
		dc.b $2C ; ,
		dc.b $E9
		dc.b $76 ; v
		dc.b $E2
		dc.b   2
		dc.b $24 ; $
		dc.b $14
		dc.b $46 ; F
		dc.b $E9
		dc.b $16
		dc.b  $A
		dc.b $EA
		dc.b   8
		dc.b $20
		dc.b $9E
		dc.b  $A
		dc.b $1A
		dc.b $5B ; [
		dc.b $2A ; *
		dc.b $F7
		dc.b  $C
		dc.b $D2
		dc.b   6
		dc.b $F8
		dc.b  $E
		dc.b $78 ; x
		dc.b $F3
		dc.b $14
		dc.b $C4
		dc.b $FF
		dc.b $BB
		dc.b $2D ; -
		dc.b $EC
		dc.b $EF
		dc.b $F7
		dc.b $96
		dc.b $E9
		dc.b $D9
		dc.b $6A ; j
		dc.b $8C
		dc.b $F3
		dc.b $E2
		dc.b $D6
		dc.b $A9
		dc.b $E6
		dc.b $AC
		dc.b $A2
		dc.b $68 ; h
		dc.b $51 ; Q
		dc.b $70 ; p
		dc.b $EC
		dc.b $DC
		dc.b $86
		dc.b $CD
		dc.b $28 ; (
		dc.b $78 ; x
		dc.b $F7
		dc.b $56 ; V
		dc.b $4A ; J
		dc.b $FC
		dc.b $ED
		dc.b $98
		dc.b $3A ; :
		dc.b $EA
		dc.b $E4
		dc.b $F2
		dc.b $D6
		dc.b $54 ; T
		dc.b $E9
		dc.b $F6
		dc.b $5C ; \
		dc.b $F8
		dc.b $46 ; F
		dc.b $B4
		dc.b $6A ; j
		dc.b $1E
		dc.b $4C ; L
		dc.b $E9
		dc.b $B2
		dc.b $F2
		dc.b  $A
		dc.b $58 ; X
		dc.b $D3
		dc.b $EC
		dc.b $DA
		dc.b $9A
		dc.b $CA
		dc.b $EC
		dc.b $DA
		dc.b   2
		dc.b $AB
		dc.b $AD
		dc.b $9C
		dc.b $F5
		dc.b $FA
		dc.b $12
		dc.b $FD
		dc.b $E2
		dc.b $B1
		dc.b $62 ; b
		dc.b $F5
		dc.b $58 ; X
		dc.b $6A ; j
		dc.b $F3
		dc.b $50 ; P
		dc.b $70 ; p
		dc.b $D3
		dc.b $32 ; 2
		dc.b $74 ; t
		dc.b $E8
		dc.b   9
		dc.b $EC
		dc.b $DC
		dc.b $12
		dc.b $62 ; b
		dc.b $4A ; J
		dc.b $B2
		dc.b $F2
		dc.b $F5
		dc.b $FE
		dc.b $B7
		dc.b $D3
		dc.b $BE
		dc.b $DC
		dc.b $D5
		dc.b $FA
		dc.b $B2
		dc.b $F2
		dc.b $F5
		dc.b $C0
		dc.b $39 ; 9
		dc.b $D5
		dc.b $DA
		dc.b $94
		dc.b $67 ; g
		dc.b $A6
		dc.b $DD
		dc.b  $A
		dc.b $66 ; f
		dc.b $C9
		dc.b $4A ; J
		dc.b $4C ; L
		dc.b   0
		dc.b $9A
		dc.b $C6
		dc.b $E6
		dc.b $F7
		dc.b $2A ; *
		dc.b $58 ; X
		dc.b $A9
		dc.b $2A ; *
		dc.b $D6
		dc.b $22 ; "
		dc.b $42 ; B
		dc.b $DA
		dc.b $C6
		dc.b $C4
		dc.b $B0
		dc.b $C0
		dc.b  $F
		dc.b $20
		dc.b $20
		dc.b $20
		dc.b $FC
		dc.b   6
		dc.b $CA
		dc.b   4
		dc.b $AE
		dc.b $FA
		dc.b $84
		dc.b $7C ; |
		dc.b $50 ; P
		dc.b $DA
		dc.b   1
		dc.b $67 ; g
		dc.b $C6
		dc.b $EA
		dc.b $1B
		dc.b $9D
		dc.b $9C
		dc.b $B9
		dc.b $FA
		dc.b $44 ; D
		dc.b $86
		dc.b $F8
		dc.b  $A
		dc.b $84
		dc.b $86
		dc.b $F6
		dc.b $E9
		dc.b $D5
		dc.b $80
		dc.b $63 ; c
		dc.b $B6
		dc.b $86
		dc.b $76 ; v
		dc.b $F6
		dc.b $60 ; `
		dc.b $86
		dc.b $CE
		dc.b $F1
		dc.b $F6
		dc.b $5D ; ]
		dc.b $C1
		dc.b $9A
		dc.b $A1
		dc.b $FA
		dc.b $38 ; 8
		dc.b $E9
		dc.b $F6
		dc.b $9E
		dc.b $48 ; H
		dc.b $F4
		dc.b $B0
		dc.b $AA
		dc.b $AA
		dc.b $42 ; B
		dc.b $F0
		dc.b   9
		dc.b $ED
		dc.b $46 ; F
		dc.b $F5
		dc.b $5E ; ^
		dc.b $7A ; z
		dc.b $A1
		dc.b $AE
		dc.b $68 ; h
		dc.b $FE
		dc.b $F6
		dc.b $92
		dc.b $88
		dc.b $F6
		dc.b $F5
		dc.b $54 ; T
		dc.b $B2
		dc.b $15
		dc.b $66 ; f
		dc.b $EC
		dc.b $E9
		dc.b $88
		dc.b $6E ; n
		dc.b $F3
		dc.b $38 ; 8
		dc.b $60 ; `
		dc.b $F3
		dc.b $20
		dc.b $DA
		dc.b $BC
		dc.b $E3
		dc.b $76 ; v
		dc.b $3A ; :
		dc.b $E2
		dc.b   4
		dc.b $66 ; f
		dc.b $D4
		dc.b $3C ; <
		dc.b $9B
		dc.b $30 ; 0
		dc.b $66 ; f
		dc.b $7E ; ~
		dc.b $E5
		dc.b $D1
		dc.b  $E
		dc.b $4C ; L
		dc.b $52 ; R
		dc.b $44 ; D
		dc.b $B2
		dc.b $E9
		dc.b $38 ; 8
		dc.b $D6
		dc.b $E1
		dc.b $36 ; 6
		dc.b $63 ; c
		dc.b $25 ; %
		dc.b $F7
		dc.b $C2
		dc.b $48 ; H
		dc.b $26 ; &
		dc.b $B3
		dc.b $B8
		dc.b $EC
		dc.b $C1
		dc.b $D7
		dc.b $B4
		dc.b $4A ; J
		dc.b $F3
		dc.b $A4
		dc.b $60 ; `
		dc.b $56 ; V
		dc.b $EB
		dc.b $CE
		dc.b $52 ; R
		dc.b $F1
		dc.b $9E
		dc.b $EC
		dc.b $E3
		dc.b $F6
		dc.b $CA
		dc.b $6E ; n
		dc.b $B9
		dc.b $5B ; [
		dc.b $5A ; Z
		dc.b $C2
		dc.b $26 ; &
		dc.b $D1
		dc.b $2B ; +
		dc.b $BB
		dc.b $8E
		dc.b $6D ; m
		dc.b $5A ; Z
		dc.b $5A ; Z
		dc.b $EC
		dc.b $C2
		dc.b $F9
		dc.b $B6
		dc.b $36 ; 6
		dc.b $F4
		dc.b $B4
		dc.b $CA
		dc.b   6
		dc.b $80
		dc.b $A1
		dc.b $5A ; Z
		dc.b $17
		dc.b $96
		dc.b $C2
		dc.b $CD
		dc.b $CA
		dc.b $39 ; 9
		dc.b $3A ; :
		dc.b $E3
		dc.b $14
		dc.b $D9
		dc.b   0
		dc.b $C2
		dc.b $91
		dc.b $75 ; u
		dc.b $EC
		dc.b $BC
		dc.b $CE
		dc.b $48 ; H
		dc.b $DD
		dc.b $4A ; J
		dc.b $49 ; I
		dc.b $F4
		dc.b $9A
		dc.b $C6
		dc.b $7C ; |
		dc.b $CC
		dc.b $FF
		dc.b $95
		dc.b $C7
		dc.b $2A ; *
		dc.b $D0
		dc.b $AD
		dc.b $5B ; [
		dc.b $10
		dc.b $CC
		dc.b $10
		dc.b $8E
		dc.b $F1
		dc.b $90
		dc.b $C1
		dc.b   6
		dc.b $A2
		dc.b $88
		dc.b $36 ; 6
		dc.b $F4
		dc.b $94
		dc.b $C7
		dc.b $A2
		dc.b $C6
		dc.b $F8
		dc.b  $A
		dc.b $60 ; `
		dc.b $CA
		dc.b $FF
		dc.b $94
		dc.b $B6
		dc.b $CA
		dc.b $96
		dc.b $16
		dc.b $96
		dc.b $FD
		dc.b $2A ; *
		dc.b $4C ; L
		dc.b $C9
		dc.b $7C ; |
		dc.b $91
		dc.b $56 ; V
		dc.b $FF
		dc.b $BA
		dc.b   4
		dc.b $5C ; \
		dc.b $AE
		dc.b $51 ; Q
		dc.b $3E ; >
		dc.b $99
		dc.b $F9
		dc.b $14
		dc.b $98
		dc.b $AA
		dc.b $CA
		dc.b $AF
		dc.b  $B
		dc.b $F0
		dc.b $CC
		dc.b $A6
		dc.b $54 ; T
		dc.b $80
		dc.b $30 ; 0
		dc.b $D1
		dc.b $8C
		dc.b $C1
		dc.b $E4
		dc.b $A0
		dc.b $AA
		dc.b $AD
		dc.b $D7
		dc.b $7B ; {
		dc.b $DC
		dc.b $B4
		dc.b $64 ; d
		dc.b $10
		dc.b $86
		dc.b $F1
		dc.b $D8
		dc.b $F2
		dc.b   1
		dc.b $67 ; g
		dc.b $14
		dc.b $EE
		dc.b $89
		dc.b   0
		dc.b $66 ; f
		dc.b $18
		dc.b $58 ; X
		dc.b $2C ; ,
		dc.b $CA
		dc.b $F4
		dc.b $38 ; 8
		dc.b $A0
		dc.b $B0
		dc.b   9
		dc.b $B2
		dc.b  $C
		dc.b $E6
		dc.b $F2
		dc.b $84
		dc.b $E1
		dc.b $EC
		dc.b $1B
		dc.b $92
		dc.b $3D ; =
		dc.b $53 ; S
		dc.b $E8
		dc.b $3C ; <
		dc.b $65 ; e
		dc.b $28 ; (
		dc.b $38 ; 8
		dc.b $E2
		dc.b $BE
		dc.b $7E ; ~
		dc.b $71 ; q
		dc.b $6E ; n
		dc.b $6C ; l
		dc.b $F4
		dc.b $F3
		dc.b $CA
		dc.b $B6
		dc.b $3A ; :
		dc.b $E2
		dc.b $1A
		dc.b $D4
		dc.b $F1
		dc.b $9F
		dc.b $26 ; &
		dc.b $E8
		dc.b $12
		dc.b $16
		dc.b $D1
		dc.b $26 ; &
		dc.b $E8
		dc.b  $D
		dc.b $D3
		dc.b $8A
		dc.b $C6
		dc.b $6E ; n
		dc.b $CE
		dc.b $82
		dc.b $F8
		dc.b $6C ; l
		dc.b $26 ; &
		dc.b $EC
		dc.b $D5
		dc.b $D8
		dc.b $26 ; &
		dc.b $E8
		dc.b  $B
		dc.b   0
		dc.b $B2
		dc.b $55 ; U
		dc.b $F2
		dc.b $C2
		dc.b $DA
		dc.b $D0
		dc.b $26 ; &
		dc.b $ED
		dc.b $C8
		dc.b $60 ; `
		dc.b $8A
		dc.b $26 ; &
		dc.b $E9
		dc.b $DD
		dc.b $19
		dc.b $55 ; U
		dc.b $77 ; w
		dc.b $28 ; (
		dc.b $EB
		dc.b $5A ; Z
		dc.b $AC
		dc.b $AA
		dc.b $EC
		dc.b $F8
		dc.b $E9
		dc.b $AC
		dc.b $EE
		dc.b $F3
		dc.b $30 ; 0
		dc.b $32 ; 2
		dc.b $EC
		dc.b $D3
		dc.b $2C ; ,
		dc.b $BB
		dc.b $6D ; m
		dc.b $AC
		dc.b $EA
		dc.b $F3
		dc.b $2E ; .
		dc.b $B1
		dc.b $D3
		dc.b  $C
		dc.b $32 ; 2
		dc.b $E8
		dc.b  $E
		dc.b $7E ; ~
		dc.b $B6
		dc.b $91
		dc.b $6E ; n
		dc.b $DA
		dc.b $E9
		dc.b   5
		dc.b $15
		dc.b $6B ; k
		dc.b $40 ; @
		dc.b $EB
		dc.b $7E ; ~
		dc.b $CD
		dc.b $58 ; X
		dc.b $F3
		dc.b $22 ; "
		dc.b $F3
		dc.b $A0
		dc.b $FC
		dc.b $4C ; L
		dc.b $E8
		dc.b  $C
		dc.b $FE
		dc.b $AD
		dc.b $53 ; S
		dc.b $2C ; ,
		dc.b $C2
		dc.b $A0
		dc.b $FD
		dc.b $F2
		dc.b $52 ; R
		dc.b $B9
		dc.b $4C ; L
		dc.b $EA
		dc.b $D2
		dc.b $CC
		dc.b $A0
		dc.b $F2
		dc.b $B7
		dc.b $A3
		dc.b $50 ; P
		dc.b $49 ; I
		dc.b $D2
		dc.b $AC
		dc.b $4C ; L
		dc.b $EE
		dc.b $F3
		dc.b $CE
		dc.b $99
		dc.b $FD
		dc.b $D6
		dc.b $A2
		dc.b $AB
		dc.b $99
		dc.b  $E
		dc.b $A9
		dc.b $F3
		dc.b $E6
		dc.b $38 ; 8
		dc.b $CC
		dc.b $14
		dc.b $12
		dc.b $F2
		dc.b $F3
		dc.b $2A ; *
		dc.b $A2
		dc.b $5C ; \
		dc.b $58 ; X
		dc.b $B6
		dc.b $58 ; X
		dc.b $EB
		dc.b $F2
		dc.b $F2
		dc.b $7E ; ~
		dc.b $FC
		dc.b $D6
		dc.b $D4
		dc.b $E0
		dc.b $58 ; X
		dc.b $EB
		dc.b $B5
		dc.b $76 ; v
		dc.b $A4
		dc.b $DA
		dc.b $58 ; X
		dc.b $E8
		dc.b  $E
		dc.b $64 ; d
		dc.b $E8
		dc.b  $D
		dc.b $F2
		dc.b $42 ; B
		dc.b $E2
		dc.b $64 ; d
		dc.b $EB
		dc.b $F2
		dc.b $96
		dc.b $A1
		dc.b $D5
		dc.b $18
		dc.b $AF
		dc.b $1F
		dc.b $64 ; d
		dc.b $EB
		dc.b $B0
		dc.b $60 ; `
		dc.b $DA
		dc.b   2
		dc.b $88
		dc.b  $D
		dc.b $A4
		dc.b $95
		dc.b $28 ; (
		dc.b $64 ; d
		dc.b   4
		dc.b $4E ; N
		dc.b $BB
		dc.b $54 ; T
		dc.b $8D
		dc.b $AA
		dc.b   2
		dc.b $8C
		dc.b $2C ; ,
		dc.b $99
		dc.b $34 ; 4
		dc.b $89
		dc.b $CB
		dc.b $E9
		dc.b  $C
		dc.b $9C
		dc.b $22 ; "
		dc.b $51 ; Q
		dc.b $D1
		dc.b $FC
		dc.b $54 ; T
		dc.b $FC
		dc.b $30 ; 0
		dc.b $89
		dc.b $BC
		dc.b $93
		dc.b $AE
		dc.b $FC
		dc.b $83
		dc.b $7F ; 
		dc.b $F8
		dc.b   6
		dc.b $72 ; r
		dc.b   4
		dc.b $60 ; `
		dc.b  $A
		dc.b $72 ; r
		dc.b   3
		dc.b $60 ; `
		dc.b $F8
		dc.b   6
		dc.b $60 ; `
		dc.b   2
		dc.b $72 ; r
		dc.b $1F
		dc.b $BE
		dc.b   5
		dc.b $30 ; 0
		dc.b $38 ; 8
		dc.b $5E ; ^
		dc.b $A0
		dc.b   3
		dc.b $82
		dc.b $4E ; N
		dc.b $56 ; V
		dc.b $C1
		dc.b $E2
		dc.b $49 ; I
		dc.b $20
		dc.b $DA
		dc.b $C8
		dc.b $7C ; |
		dc.b $F4
		dc.b $26 ; &
		dc.b $91
		dc.b $B8
		dc.b $CA
		dc.b $F3
		dc.b $4E ; N
		dc.b $96
		dc.b $EB
		dc.b $AF
		dc.b $85
		dc.b $4E ; N
		dc.b $82
		dc.b $41 ; A
		dc.b $60 ; `
		dc.b   4
		dc.b $8A
		dc.b $25 ; %
		dc.b $DE
		dc.b $FC
		dc.b $20
		dc.b $82
		dc.b $D3
		dc.b $F8
		dc.b $77 ; w
		dc.b $3D ; =
		dc.b  $E
		dc.b $2B ; +
		dc.b $48 ; H
		dc.b $5B ; [
		dc.b $42 ; B
		dc.b $19
		dc.b   0
		dc.b $C6
		dc.b $F0
		dc.b $FC
		dc.b $D2
		dc.b $F8
		dc.b $16
		dc.b $26 ; &
		dc.b  $C
		dc.b $78 ; x
		dc.b   0
		dc.b $42 ; B
		dc.b $46 ; F
		dc.b $98
		dc.b  $E
		dc.b $F8
		dc.b   6
		dc.b $98
		dc.b $EE
		dc.b $F8
		dc.b $66 ; f
		dc.b $16
		dc.b $CA
		dc.b $2B ; +
		dc.b $49 ; I
		dc.b $5B ; [
		dc.b $E8
		dc.b $11
		dc.b   0
		dc.b $B6
		dc.b $B1
		dc.b $A4
		dc.b $88
		dc.b $E9
		dc.b $90
		dc.b $CC
		dc.b $F8
		dc.b $12
		dc.b $24 ; $
		dc.b $CC
		dc.b $F8
		dc.b  $E
		dc.b $14
		dc.b $D0
		dc.b $70 ; p
		dc.b $BE
		dc.b $BD
		dc.b $48 ; H
		dc.b $B3
		dc.b $9A
		dc.b $F8
		dc.b $10
		dc.b $48 ; H
		dc.b $E7
		dc.b   1
		dc.b   0
		dc.b $CA
		dc.b $FD
		dc.b $1A
		dc.b $E6
		dc.b $D3
		dc.b $4E ; N
		dc.b $67 ; g
		dc.b  $C
		dc.b $C3
		dc.b $57 ; W
		dc.b  $E
		dc.b $E9
		dc.b $50 ; P
		dc.b $4C ; L
		dc.b $EC
		dc.b $80
		dc.b $5B ; [
		dc.b $54 ; T
		dc.b $4E ; N
		dc.b $90
		dc.b $D0
		dc.b $FC
		dc.b $7E ; ~
		dc.b   9
		dc.b $D9
		dc.b $82
		dc.b $4E ; N
		dc.b $52 ; R
		dc.b $EC
		dc.b $DA
		dc.b $E1
		dc.b $50 ; P
		dc.b $C8
		dc.b $6A ; j
		dc.b $EA
		dc.b $36 ; 6
		dc.b $3C ; <
		dc.b $30 ; 0
		dc.b $54 ; T
		dc.b $C6
		dc.b $6B ; k
		dc.b $FA
		dc.b $2C ; ,
		dc.b $E9
		dc.b $87
		dc.b $EE
		dc.b $31 ; 1
		dc.b $FC
		dc.b $FF
		dc.b $FF
		dc.b   8
		dc.b $5E ; ^
		dc.b $90
		dc.b $F0
		dc.b $AB
		dc.b $96
		dc.b   6
		dc.b $DA
		dc.b $4E ; N
		dc.b $61 ; a
		dc.b $D0
		dc.b $54 ; T
		dc.b $CB
		dc.b $28 ; (
		dc.b $8A
		dc.b $A2
		dc.b $52 ; R
		dc.b $78 ; x
		dc.b $22 ; "
		dc.b $F8
		dc.b $6C ; l
		dc.b $12
		dc.b $E2
		dc.b $8D
		dc.b $78 ; x
		dc.b $B2
		dc.b $74 ; t
		dc.b $F8
		dc.b   2
		dc.b $60 ; `
		dc.b $DC
		dc.b $2E ; .
		dc.b $51 ; Q
		dc.b $FE
		dc.b $D1
		dc.b $FD
		dc.b $C0
		dc.b $C7
		dc.b $AE
		dc.b $DC
		dc.b $E1
		dc.b   1
		dc.b $F8
		dc.b $EE
		dc.b $EB
		dc.b $4E ; N
		dc.b $60 ; `
		dc.b $C4
		dc.b   1
		dc.b   3
		dc.b $C0
		dc.b   1
		dc.b   2
		dc.b $FF
		dc.b $AE
		dc.b $D2
		dc.b $AE
		dc.b $60 ; `
		dc.b $18
		dc.b $63 ; c
		dc.b  $E
		dc.b $F8
		dc.b   2
		dc.b $F8
		dc.b   6
		dc.b $F8
		dc.b   1
		dc.b $30 ; 0
		dc.b $60 ; `
		dc.b $F8
		dc.b $8A
		dc.b $61 ; a
		dc.b $E6
		dc.b $3E ; >
		dc.b $FA
		dc.b $DE
		dc.b $1D
		dc.b $C6
		dc.b $94
		dc.b $E9
		dc.b $5A ; Z
		dc.b $E1
		dc.b   1
		dc.b $C4
		dc.b $FC
		dc.b $FF
		dc.b $68 ; h
		dc.b $F4
		dc.b $EF
		dc.b $AA
		dc.b $81
		dc.b $4E ; N
		dc.b $B8
		dc.b $5F ; _
		dc.b $22 ; "
		dc.b $B4
		dc.b $7A ; z
		dc.b $10
		dc.b $28 ; (
		dc.b $D9
		dc.b $E9
		dc.b $25 ; %
		dc.b $61 ; a
		dc.b $F8
		dc.b $E1
		dc.b $B1
		dc.b $5F ; _
		dc.b $F8
		dc.b $EA
		dc.b $40 ; @
		dc.b $F8
		dc.b  $A
		dc.b $E2
		dc.b $91
		dc.b $F0
		dc.b $67 ; g
		dc.b $62 ; b
		dc.b $60 ; `
		dc.b $D4
		dc.b $C2
		dc.b $4A ; J
		dc.b $C0
		dc.b $80
		dc.b $FE
		dc.b $B6
		dc.b   0
		dc.b $B6
		dc.b $15
		dc.b $C3
		dc.b $84
		dc.b $82
		dc.b $8A
		dc.b $E3
		dc.b $E6
		dc.b $F2
		dc.b $60 ; `
		dc.b $60 ; `
		dc.b $B8
		dc.b $4E ; N
		dc.b $FF
		dc.b $D2
		dc.b $53 ; S
		dc.b $45 ; E
		dc.b $47 ; G
		dc.b $41 ; A
		dc.b $44 ; D
		dc.b $49 ; I
		dc.b $53 ; S
		dc.b $43 ; C
		dc.b $20
		dc.b $FF
		dc.b $FD
		dc.b $F0
		dc.b $42 ; B
		dc.b $CB
		dc.b $EB
		dc.b $4F ; O
		dc.b $4F ; O
		dc.b $54 ; T
		dc.b $EC
		dc.b $FE
		dc.b $E0
		dc.b $41 ; A
		dc.b $54 ; T
		dc.b $DC
		dc.b $FF
		dc.b $D0
		dc.b $FE
		dc.b $53 ; S
		dc.b  $F
		dc.b $AB
		dc.b $59 ; Y
		dc.b $53 ; S
		dc.b $54 ; T
		dc.b $45 ; E
		dc.b $4D ; M
		dc.b $F0
		dc.b  $C
		dc.b $78 ; x
		dc.b $FA
		dc.b $F2
		dc.b $94
		dc.b $B9
		dc.b $1B
		dc.b $53 ; S
		dc.b $7A ; z
		dc.b $F3
		dc.b $65 ; e
		dc.b $9C
		dc.b $14
		dc.b $91
		dc.b   1
		dc.b $64 ; d
		dc.b $83
		dc.b $64 ; d
		dc.b $4A ; J
		dc.b $17
		dc.b $F7
		dc.b $F8
		dc.b $B9
		dc.b $FF
		dc.b $3C ; <
		dc.b $D4
		dc.b $99
		dc.b $FF
		dc.b $5B ; [
		dc.b $5E ; ^
		dc.b $92
		dc.b $D9
		dc.b $5E ; ^
		dc.b $E1
		dc.b $DF
		dc.b $7F ; 
		dc.b $88
		dc.b $E7
		dc.b $88
		dc.b $22 ; "
		dc.b $40 ; @
		dc.b $22 ; "
		dc.b $72 ; r
		dc.b $61 ; a
		dc.b   8
		dc.b   0
		dc.b $2B ; +
		dc.b $6D ; m
		dc.b $5B ; [
		dc.b $68 ; h
		dc.b $5B ; [
		dc.b $74 ; t
		dc.b $8C
		dc.b $5E ; ^
		dc.b $30 ; 0
		dc.b $10
		dc.b $E6
		dc.b $10
		dc.b $C1
		dc.b $C8
		dc.b $1E
		dc.b   4
		dc.b $D4
		dc.b $D3
		dc.b $1D
		dc.b $EE
		dc.b $28 ; (
		dc.b $C1
		dc.b $22 ; "
		dc.b $8A
		dc.b $68 ; h
		dc.b $43 ; C
		dc.b  $E
		dc.b $64 ; d
		dc.b $70 ; p
		dc.b   3
		dc.b $34 ; 4
		dc.b $E9
		dc.b $C0
		dc.b $EF
		dc.b $1F
		dc.b $72 ; r
		dc.b   3
		dc.b $B3
		dc.b $88
		dc.b $56 ; V
		dc.b $4E ; N
		dc.b $61 ; a
		dc.b $4C ; L
		dc.b $DF
		dc.b   3
		dc.b   0
		dc.b $67 ; g
		dc.b $18
		dc.b $D2
		dc.b $BE
		dc.b $C7
		dc.b $34 ; 4
		dc.b $10
		dc.b $51 ; Q
		dc.b $C8
		dc.b $FF
		dc.b $E8
		dc.b $6A ; j
		dc.b $F1
		dc.b $5E ; ^
		dc.b  $C
		dc.b $90
		dc.b $CE
		dc.b $5B ; [
		dc.b $88
		dc.b  $F
		dc.b $63 ; c
		dc.b $A4
		dc.b $22 ; "
		dc.b $89
		dc.b $C4
		dc.b $18
		dc.b $E9
		dc.b $E2
		dc.b   6
		dc.b $87
		dc.b $EF
		dc.b $FA
		dc.b   2
		dc.b $66 ; f
		dc.b $12
		dc.b $CA
		dc.b $80
		dc.b $80
		dc.b $41 ; A
		dc.b $E8
		dc.b   2
		dc.b $B8
		dc.b $D9
		dc.b   1
		dc.b $FE
		dc.b $35 ; 5
		dc.b $F8
		dc.b $C0
		dc.b $71 ; q
		dc.b   1
		dc.b $65 ; e
		dc.b $DE
		dc.b $58 ; X
		dc.b $40 ; @
		dc.b $31 ; 1
		dc.b $C0
		dc.b $52 ; R
		dc.b $F1
		dc.b $F6
		dc.b $D2
		dc.b $4E ; N
		dc.b $F6
		dc.b $BB
		dc.b $EA
		dc.b $7A ; z
		dc.b $5E ; ^
		dc.b $F5
		dc.b $16
		dc.b $41 ; A
		dc.b $FA
		dc.b $FE
		dc.b $88
		dc.b $A8
		dc.b $F4
		dc.b   0
		dc.b $6C ; l
		dc.b $18
		dc.b $DD
		dc.b $E4
		dc.b $F4
		dc.b $B4
		dc.b $38 ; 8
		dc.b $80
		dc.b $8C
		dc.b $E9
		dc.b   1
		dc.b $3A ; :
		dc.b $80
		dc.b $E9
		dc.b $F4
		dc.b $85
		dc.b $74 ; t
		dc.b $74 ; t
		dc.b $22 ; "
		dc.b $68 ; h
		dc.b   0
		dc.b $30 ; 0
		dc.b $B3
		dc.b $BC
		dc.b $F1
		dc.b $AE
		dc.b $17
		dc.b $D6
		dc.b $66 ; f
		dc.b  $E
		dc.b  $C
		dc.b $A8
		dc.b $E3
		dc.b $E1
		dc.b $FD
		dc.b $34 ; 4
		dc.b $66 ; f
		dc.b $2C ; ,
		dc.b $C9
		dc.b $5E ; ^
		dc.b $42 ; B
		dc.b $B5
		dc.b  $B
		dc.b   0
		dc.b $50 ; P
		dc.b $B2
		dc.b $F4
		dc.b $36 ; 6
		dc.b $99
		dc.b $D2
		dc.b $10
		dc.b $F4
		dc.b $67 ; g
		dc.b $F4
		dc.b $CC
		dc.b $FD
		dc.b $C7
		dc.b $B4
		dc.b $16
		dc.b $28 ; (
		dc.b   0
		dc.b $44 ; D
		dc.b $18
		dc.b $70 ; p
		dc.b $18
		dc.b   0
		dc.b $28 ; (
		dc.b $B8
		dc.b $C5
		dc.b $7A ; z
		dc.b $AB
		dc.b $A0
		dc.b $FD
		dc.b $D8
		dc.b $A8
		dc.b $E9
		dc.b $58 ; X
		dc.b $DE
		dc.b $F2
		dc.b $CC
		dc.b $D2
		dc.b   8
		dc.b $9E
		dc.b $28 ; (
		dc.b $BA
		dc.b $F4
		dc.b $65 ; e
		dc.b $F2
		dc.b $CA
		dc.b $A6
		dc.b $3F ; ?
		dc.b $EA
		dc.b $FE
		dc.b $7A ; z
		dc.b $58 ; X
		dc.b $24 ; $
		dc.b $20
		dc.b   9
		dc.b $E0
		dc.b $88
		dc.b $E6
		dc.b $88
		dc.b $20
		dc.b $C0
		dc.b $61 ; a
		dc.b $37 ; 7
		dc.b $88
		dc.b $4B ; K
		dc.b $48 ; H
		dc.b $40 ; @
		dc.b $D6
		dc.b $C7
		dc.b $2A ; *
		dc.b $4F ; O
		dc.b $FF
		dc.b $96
		dc.b $D1
		dc.b $7C ; |
		dc.b $20
		dc.b   1
		dc.b $EA
		dc.b   2
		dc.b $41 ; A
		dc.b   7
		dc.b $FF
		dc.b $67 ; g
		dc.b   2
		dc.b $52 ; R
		dc.b $A1
		dc.b $49 ; I
		dc.b $80
		dc.b $21 ; !
		dc.b $12
		dc.b   4
		dc.b $D0
		dc.b $F1
		dc.b $66 ; f
		dc.b $D0
		dc.b $A6
		dc.b $7A ; z
		dc.b $7A ; z
		dc.b $34 ; 4
		dc.b $B8
		dc.b $3E ; >
		dc.b $3C ; <
		dc.b   2
		dc.b $58 ; X
		dc.b $A8
		dc.b $D0
		dc.b $B2
		dc.b $8A
		dc.b $FD
		dc.b $6D ; m
		dc.b $F0
		dc.b $54 ; T
		dc.b $CF
		dc.b $FF
		dc.b $F2
		dc.b $65 ; e
		dc.b $DE
		dc.b $11
		dc.b $A4
		dc.b $E9
		dc.b $80
		dc.b $C8
		dc.b $B2
		dc.b $8B
		dc.b $FE
		dc.b $30 ; 0
		dc.b $94
		dc.b $CE
		dc.b $E0
		dc.b $48 ; H
		dc.b $B0
		dc.b $2D ; -
		dc.b $B2
		dc.b $66 ; f
		dc.b $C6
		dc.b $36 ; 6
		dc.b $E6
		dc.b $8C
		dc.b $74 ; t
		dc.b $50 ; P
		dc.b $D1
		dc.b $78 ; x
		dc.b $E6
		dc.b $8C
		dc.b $E6
		dc.b $7A ; z
		dc.b $EF
		dc.b $B4
		dc.b $72 ; r
		dc.b $F2
		dc.b $E2
		dc.b $FD
		dc.b $A8
		dc.b $72 ; r
		dc.b   1
		dc.b $C6
		dc.b $E1
		dc.b   4
		dc.b $C1
		dc.b   1
		dc.b $AA
		dc.b $E9
		dc.b $75 ; u
		dc.b $27 ; '
		dc.b $B1
		dc.b $65 ; e
		dc.b   2
		dc.b $70 ; p
		dc.b   0
		dc.b $7E ; ~
		dc.b $EC
		dc.b $F2
		dc.b $D2
		dc.b $8D
		dc.b  $F
		dc.b $A1
		dc.b $94
		dc.b $FC
		dc.b   0
		dc.b   6
		dc.b $52 ; R
		dc.b $AD
		dc.b $84
		dc.b $53 ; S
		dc.b $FC
		dc.b $62 ; b
		dc.b $B7
		dc.b $F7
		dc.b $AE
		dc.b $D1
		dc.b $66 ; f
		dc.b $66 ; f
		dc.b $8A
		dc.b $3C ; <
		dc.b $FC
		dc.b $22 ; "
		dc.b   0
		dc.b $F9
		dc.b $D2
		dc.b $FC
		dc.b   2
		dc.b $84
		dc.b $42 ; B
		dc.b $5F ; _
		dc.b $20
		dc.b $5A ; Z
		dc.b $F0
		dc.b $D9
		dc.b $FE
		dc.b $FC
		dc.b $C6
		dc.b $E1
		dc.b $F6
		dc.b $9E
		dc.b $6A ; j
		dc.b $E0
		dc.b $C6
		dc.b $D2
		dc.b $FC
		dc.b $A6
		dc.b $75 ; u
		dc.b $4D ; M
		dc.b $41 ; A
		dc.b $FA
		dc.b $72 ; r
		dc.b $B9
		dc.b $CA
		dc.b $EB
		dc.b $64 ; d
		dc.b  $C
		dc.b $BA
		dc.b $ED
		dc.b $1A
		dc.b $E9
		dc.b   0
		dc.b $39 ; 9
		dc.b $C6
		dc.b $48 ; H
		dc.b $97
		dc.b $76 ; v
		dc.b $DA
		dc.b $DA
		dc.b $80
		dc.b $F2
		dc.b $5A ; Z
		dc.b $45 ; E
		dc.b $98
		dc.b $E2
		dc.b $F4
		dc.b $2E ; .
		dc.b $B1
		dc.b $CC
		dc.b $38 ; 8
		dc.b $52 ; R
		dc.b $96
		dc.b $ED
		dc.b $CC
		dc.b $FF
		dc.b $EC
		dc.b $B7
		dc.b $E0
		dc.b $F2
		dc.b $61 ; a
		dc.b $C9
		dc.b $18
		dc.b $86
		dc.b $FC
		dc.b $E0
		dc.b $33 ; 3
		dc.b $21 ; !
		dc.b $FC
		dc.b $FC
		dc.b $D2
		dc.b $80
		dc.b $E2
		dc.b $1F
		dc.b $C0
		dc.b   0
		dc.b $6A ; j
		dc.b $E2
		dc.b $A9
		dc.b $B3
		dc.b $48 ; H
		dc.b $56 ; V
		dc.b $C8
		dc.b $FF
		dc.b $FC
		dc.b $D4
		dc.b $FE
		dc.b $D6
		dc.b $FA
		dc.b $DA
		dc.b $BC
		dc.b $E9
		dc.b $F6
		dc.b $D9
		dc.b $21 ; !
		dc.b $34 ; 4
		dc.b $F2
		dc.b $80
		dc.b $FD
		dc.b   2
		dc.b $4B ; K
		dc.b $F9
		dc.b $DF
		dc.b  $F
		dc.b   0
		dc.b $A1
		dc.b $20
		dc.b   1
		dc.b   8
		dc.b $D5
		dc.b $22 ; "
		dc.b $D1
		dc.b $FA
		dc.b $33 ; 3
		dc.b $FA
		dc.b   1
		dc.b $3E ; >
		dc.b $6F ; o
		dc.b  $C
		dc.b $EB
		dc.b   5
		dc.b $28 ; (
		dc.b   8
		dc.b $95
		dc.b $CA
		dc.b $A1
		dc.b $FA
		dc.b $C4
		dc.b  $A
		dc.b $1D
		dc.b $16
		dc.b $88
		dc.b   3
		dc.b $E6
		dc.b $59 ; Y
		dc.b   1
		dc.b $2A ; *
		dc.b $EA
		dc.b  $E
		dc.b $EE
		dc.b $89
		dc.b $C9
		dc.b $FE
		dc.b   3
		dc.b $FD
		dc.b $1F
		dc.b $3F ; ?
		dc.b $7F ; 
		dc.b $F8
		dc.b $F7
		dc.b $EF
		dc.b $EF
		dc.b   0
		dc.b $FE
		dc.b $FF
		dc.b $E3
		dc.b $97
		dc.b $FC
		dc.b $F0
		dc.b $FC
		dc.b $FB
		dc.b $F7
		dc.b $F7
		dc.b   0
		dc.b $64 ; d
		dc.b $C1
		dc.b $C3
		dc.b $1B
		dc.b $FC
		dc.b  $F
		dc.b $EF
		dc.b $7C ; |
		dc.b $7B ; {
		dc.b $77 ; w
		dc.b $77 ; w
		dc.b $F0
		dc.b $FF
		dc.b $80
		dc.b $7E ; ~
		dc.b $78 ; x
		dc.b $FF
		dc.b   1
		dc.b $81
		dc.b $83
		dc.b $83
		dc.b   0
		dc.b $7C ; |
		dc.b $D4
		dc.b $FF
		dc.b $EF
		dc.b $D7
		dc.b $D7
		dc.b   1
		dc.b $FE
		dc.b $F8
		dc.b $E2
		dc.b $FF
		dc.b $EC
		dc.b $EE
		dc.b $EF
		dc.b $F7
		dc.b $F8
		dc.b $7F ; 
		dc.b $3F ; ?
		dc.b $F0
		dc.b  $F
		dc.b $1F
		dc.b $F5
		dc.b $F8
		dc.b $FC
		dc.b $3E ; >
		dc.b $DE
		dc.b $EE
		dc.b $EE
		dc.b $6E ; n
		dc.b $F6
		dc.b $61 ; a
		dc.b $64 ; d
		dc.b $BD
		dc.b $F0
		dc.b $FD
		dc.b $F7
		dc.b $F6
		dc.b $AC
		dc.b $A9
		dc.b $F0
		dc.b $C3
		dc.b $BE
		dc.b $FF
		dc.b $FC
		dc.b   0
		dc.b $7F ; 
		dc.b $7F ; 
		dc.b   3
		dc.b $7B ; {
		dc.b $FF
		dc.b $3B ; ;
		dc.b $87
		dc.b $87
		dc.b   3
		dc.b $87
		dc.b $87
		dc.b $8F
		dc.b $FF
		dc.b $9F
		dc.b $9E
		dc.b $D7
		dc.b $BB
		dc.b $FF
		dc.b $87
		dc.b $61 ; a
		dc.b $7D ; }
		dc.b $7D ; }
		dc.b $6D ; m
		dc.b $EE
		dc.b $26 ; &
		dc.b $C0
		dc.b $E0
		dc.b $FF
		dc.b $F0
		dc.b $F0
		dc.b $E1
		dc.b $87
		dc.b $99
		dc.b $FE
		dc.b $BD
		dc.b $DE
		dc.b $3E ; >
		dc.b $FC
		dc.b $F8
		dc.b $F0
		dc.b   0
		dc.b $BD
		dc.b $49 ; I
		dc.b $18
		dc.b $FB
		dc.b $FC
		dc.b $A8
		dc.b $E8
		dc.b $FE
		dc.b $BE
		dc.b $7B ; {
		dc.b $7C ; |
		dc.b  $E
		dc.b $E9
		dc.b $F1
		dc.b  $F
		dc.b   0
		dc.b $FB
		dc.b $FF
		dc.b   3
		dc.b $F0
		dc.b $9E
		dc.b $BE
		dc.b $71 ; q
		dc.b $78 ; x
		dc.b $BD
		dc.b $FD
		dc.b $F4
		dc.b   0
		dc.b $CE
		dc.b $72 ; r
		dc.b $80
		dc.b $BF
		dc.b $3F ; ?
		dc.b $3F ; ?
		dc.b $18
		dc.b $E1
		dc.b $81
		dc.b $F8
		dc.b $7C ; |
		dc.b $66 ; f
		dc.b $90
		dc.b $50 ; P
		dc.b $52 ; R
		dc.b $FF
		dc.b $FF
		dc.b $4F ; O
		dc.b $44 ; D
		dc.b $55 ; U
		dc.b $43 ; C
		dc.b $45 ; E
		dc.b $44 ; D
		dc.b $20
		dc.b $42 ; B
		dc.b $59 ; Y
		dc.b $20
		dc.b $4F ; O
		dc.b $52 ; R
		dc.b $20
		dc.b $55 ; U
		dc.b $4E ; N
		dc.b $44 ; D
		dc.b $30 ; 0
		dc.b $84
		dc.b $45 ; E
		dc.b $FA
		dc.b $4C ; L
		dc.b $49 ; I
		dc.b $EE
		dc.b $4E ; N
		dc.b $FD
		dc.b $21 ; !
		dc.b $FC
		dc.b $20
		dc.b $46 ; F
		dc.b $E3
		dc.b $4D ; M
		dc.b $56 ; V
		dc.b $4B ; K
		dc.b $41 ; A
		dc.b $42 ; B
		dc.b $55 ; U
		dc.b $53 ; S
		dc.b  $F
		dc.b $A1
		dc.b $48 ; H
		dc.b $49 ; I
		dc.b $4B ; K
		dc.b $49 ; I
		dc.b $20
		dc.b $F6
		dc.b $49 ; I
		dc.b $F7
		dc.b $41 ; A
		dc.b $21 ; !
		dc.b   0
		dc.b $F8
		dc.b $DB
		dc.b $20
		dc.b $DF
		dc.b $54 ; T
		dc.b $D6
		dc.b $C2
		dc.b $1C
		dc.b   4
		dc.b $EF
		dc.b $45 ; E
		dc.b $53 ; S
		dc.b $2E ; .
		dc.b $A1
		dc.b $DC
		dc.b $C1
		dc.b $FF
		dc.b $F8
		dc.b $3F ; ?
		dc.b $FC
		dc.b $57 ; W
		dc.b $A6
		dc.b $71 ; q
		dc.b $4B ; K
		dc.b $C6
		dc.b $19
		dc.b $A7
		dc.b $72 ; r
		dc.b $4C ; L
		dc.b $C7
		dc.b $1A
		dc.b $F0
		dc.b $FF
		dc.b $F2
		dc.b $EB
		dc.b $14
		dc.b $3A ; :
		dc.b $38 ; 8
		dc.b $12
		dc.b $1A
		dc.b   6
		dc.b $3B ; ;
		dc.b $39 ; 9
		dc.b $13
		dc.b $97
		dc.b $D2
		dc.b $1B
		dc.b   7
		dc.b   1
		dc.b $5F ; _
		dc.b $FF
		dc.b $F8
		dc.b   9
		dc.b $E3
		dc.b $40 ; @
		dc.b $B8
		dc.b $5F ; _
		dc.b $13
		dc.b $1D
		dc.b $43 ; C
		dc.b $44 ; D
		dc.b $5F ; _
		dc.b $9A
		dc.b $D1
		dc.b $52 ; R
		dc.b $41 ; A
		dc.b $4D ; M
		dc.b  $E
		dc.b $27 ; '
		dc.b $F1
		dc.b $41 ; A
		dc.b $52 ; R
		dc.b $54 ; T
		dc.b $AB
		dc.b $44 ; D
		dc.b $47 ; G
		dc.b $45 ; E
		dc.b $DB
		dc.b $D0
		dc.b $DA
		dc.b $61 ; a
		dc.b   2
		dc.b $C9
		dc.b $2C ; ,
		dc.b $CB
		dc.b $24 ; $
		dc.b $2C ; ,
		dc.b $C8
		dc.b   9
		dc.b $32 ; 2
		dc.b $CC
		dc.b $24 ; $
		dc.b $32 ; 2
		dc.b $CB
		dc.b $AE
		dc.b $5D ; ]
		dc.b   0
		dc.b $32 ; 2
		dc.b $61 ; a
		dc.b   1
		dc.b $D6
		dc.b $F2
		dc.b $59 ; Y
		dc.b $86
		dc.b $51 ; Q
		dc.b   3
		dc.b $86
		dc.b $51 ; Q
		dc.b   3
		dc.b $68 ; h
		dc.b $22 ; "
		dc.b $61 ; a
		dc.b $D7
		dc.b $C5
		dc.b $B4
		dc.b $B1
		dc.b   5
		dc.b $B2
		dc.b $52 ; R
		dc.b $61 ; a
		dc.b  $A
		dc.b $61 ; a
		dc.b   2
		dc.b $74 ; t
		dc.b $58 ; X
		dc.b $E2
		dc.b $FC
		dc.b $EF
		dc.b $EE
		dc.b $12
		dc.b $22 ; "
		dc.b $7A ; z
		dc.b $FF
		dc.b $B2
		dc.b $6E ; n
		dc.b $E9
		dc.b $40 ; @
		dc.b $C1
		dc.b $76 ; v
		dc.b $21 ; !
		dc.b  $B
		dc.b $32 ; 2
		dc.b $1A
		dc.b $13
		dc.b $30 ; 0
		dc.b $F1
		dc.b $BE
		dc.b $26 ; &
		dc.b $48 ; H
		dc.b $EA
		dc.b $9C
		dc.b $24 ; $
		dc.b $49 ; I
		dc.b $E8
		dc.b $FE
		dc.b  $C
		dc.b $78 ; x
		dc.b   1
		dc.b $4A ; J
		dc.b $8D
		dc.b $30 ; 0
		dc.b $FF
		dc.b $49 ; I
		dc.b $93
		dc.b $D2
		dc.b $EE
		dc.b  $C
		dc.b $9C
		dc.b $D8
		dc.b $20
		dc.b $38 ; 8
		dc.b $B6
		dc.b $18
		dc.b $D4
		dc.b $40 ; @
		dc.b   6
		dc.b $E9
		dc.b $7E ; ~
		dc.b $AA
		dc.b $DA
		dc.b $F8
		dc.b $82
		dc.b $38 ; 8
		dc.b   0
		dc.b $F8
		dc.b $F0
		dc.b $86
		dc.b $F8
		dc.b $4A ; J
		dc.b $B6
		dc.b $6D ; m
		dc.b $F8
		dc.b $8A
		dc.b $F8
		dc.b $FD
		dc.b $8E
		dc.b $E8
		dc.b $FD
		dc.b $92
		dc.b $F8
		dc.b $FD
		dc.b $96
		dc.b $E8
		dc.b $FD
		dc.b $D8
		dc.b $87
		dc.b $E0
		dc.b $F0
		dc.b $FD
		dc.b $E8
		dc.b $24 ; $
		dc.b $98
		dc.b   8
		dc.b $EE
		dc.b $54 ; T
		dc.b $E9
		dc.b $96
		dc.b  $F
		dc.b $83
		dc.b $43 ; C
		dc.b $FA
		dc.b $FE
		dc.b $CE
		dc.b $26 ; &
		dc.b $F8
		dc.b $86
		dc.b $28 ; (
		dc.b $FC
		dc.b $63 ; c
		dc.b $30 ; 0
		dc.b   4
		dc.b $B9
		dc.b   7
		dc.b $DA
		dc.b $E6
		dc.b   6
		dc.b $DC
		dc.b $E6
		dc.b $FD
		dc.b $C8
		dc.b $C6
		dc.b $F8
		dc.b $E6
		dc.b $8E
		dc.b $E6
		dc.b $92
		dc.b $E6
		dc.b $C0
		dc.b $42 ; B
		dc.b $AD
		dc.b $31 ; 1
		dc.b   6
		dc.b $5B ; [
		dc.b $AE
		dc.b $FC
		dc.b $B2
		dc.b $FC
		dc.b $E4
		dc.b $6E ; n
		dc.b  $F
		dc.b $C1
		dc.b $2A ; *
		dc.b $DA
		dc.b  $E
		dc.b $2A ; *
		dc.b $65 ; e
		dc.b $5B ; [
		dc.b $90
		dc.b $4A ; J
		dc.b $98
		dc.b $E1
		dc.b $18
		dc.b $A3
		dc.b $D8
		dc.b $CE
		dc.b $B6
		dc.b $A2
		dc.b $60 ; `
		dc.b $3E ; >
		dc.b $1F
		dc.b $FD
		dc.b $3A ; :
		dc.b $D9
		dc.b  $A
		dc.b $5A ; Z
		dc.b $22 ; "
		dc.b $4A ; J
		dc.b $24 ; $
		dc.b $EA
		dc.b $28 ; (
		dc.b $D9
		dc.b $B6
		dc.b $B5
		dc.b $88
		dc.b $67 ; g
		dc.b $18
		dc.b  $C
		dc.b  $A
		dc.b $FC
		dc.b   6
		dc.b $FC
		dc.b $FE
		dc.b $99
		dc.b $5C ; \
		dc.b $BA
		dc.b $43 ; C
		dc.b $D2
		dc.b $D6
		dc.b $FD
		dc.b $B0
		dc.b $22 ; "
		dc.b  $C
		dc.b $34 ; 4
		dc.b $CC
		dc.b $E1
		dc.b  $A
		dc.b $2E ; .
		dc.b $D4
		dc.b $45 ; E
		dc.b $D8
		dc.b $B1
		dc.b $D8
		dc.b $7E ; ~
		dc.b $32 ; 2
		dc.b $A0
		dc.b $69 ; i
		dc.b  $B
		dc.b $A6
		dc.b $DC
		dc.b $58 ; X
		dc.b $1F
		dc.b $43 ; C
		dc.b   4
		dc.b $E1
		dc.b $AE
		dc.b $E0
		dc.b $80
		dc.b $EA
		dc.b $80
		dc.b   4
		dc.b   0
		dc.b $96
		dc.b $1C
		dc.b   1
		dc.b   6
		dc.b $A4
		dc.b $49 ; I
		dc.b $CA
		dc.b $D6
		dc.b $D4
		dc.b $42 ; B
		dc.b $FE
		dc.b $3F ; ?
		dc.b $60 ; `
		dc.b $F0
		dc.b $E1
		dc.b $52 ; R
		dc.b $22 ; "
		dc.b $71 ; q
		dc.b $20
		dc.b   0
		dc.b $F2
		dc.b $C2
		dc.b  $D
		dc.b  $C
		dc.b $60 ; `
		dc.b $D0
		dc.b $AC
		dc.b $C4
		dc.b $C8
		dc.b $DC
		dc.b $F2
		dc.b $60 ; `
		dc.b $5F ; _
		dc.b $57 ; W
		dc.b $1C
		dc.b $B9
		dc.b  $D
		dc.b $C8
		dc.b $64 ; d
		dc.b  $A
		dc.b $96
		dc.b $23 ; #
		dc.b $4A ; J
		dc.b $51 ; Q
		dc.b $FF
		dc.b $CE
		dc.b $FC
		dc.b $CA
		dc.b $B6
		dc.b $FE
		dc.b $8C
		dc.b $F1
		dc.b $F0
		dc.b $BE
		dc.b $F0
		dc.b  $B
		dc.b $DC
		dc.b $DA
		dc.b $65 ; e
		dc.b $3A ; :
		dc.b $8C
		dc.b $E6
		dc.b $EA
		dc.b $FE
		dc.b $6C ; l
		dc.b $22 ; "
		dc.b $60 ; `
		dc.b $C2
		dc.b $D2
		dc.b $45 ; E
		dc.b $E2
		dc.b $FF
		dc.b $E1
		dc.b $FC
		dc.b $EE
		dc.b $4E ; N
		dc.b $4F ; O
		dc.b $54 ; T
		dc.b $5F ; _
		dc.b $45 ; E
		dc.b $58 ; X
		dc.b $49 ; I
		dc.b $53 ; S
		dc.b $FA
		dc.b $5F ; _
		dc.b   0
		dc.b $3F ; ?
		dc.b $C2
		dc.b $55 ; U
		dc.b $4E ; N
		dc.b $46 ; F
		dc.b $4F ; O
		dc.b $52 ; R
		dc.b $4D ; M
		dc.b $41 ; A
		dc.b $F5
		dc.b $F4
		dc.b $48 ; H
		dc.b $83
		dc.b $8F
		dc.b $E7
		dc.b $30 ; 0
		dc.b $20
		dc.b $AA
		dc.b $6C ; l
		dc.b $F1
		dc.b $E4
		dc.b $65 ; e
		dc.b $26 ; &
		dc.b $36 ; 6
		dc.b $7F ; 
		dc.b   1
		dc.b $F8
		dc.b  $D
		dc.b   8
		dc.b $65 ; e
		dc.b $1E
		dc.b $4A ; J
		dc.b $40 ; @
		dc.b $6C ; l
		dc.b $78 ; x
		dc.b $D9
		dc.b $6A ; j
		dc.b $26 ; &
		dc.b $8C
		dc.b $70 ; p
		dc.b $FD
		dc.b $C6
		dc.b $38 ; 8
		dc.b $76 ; v
		dc.b $22 ; "
		dc.b $61 ; a
		dc.b   7
		dc.b $76 ; v
		dc.b   3
		dc.b $52 ; R
		dc.b   4
		dc.b  $C
		dc.b $18
		dc.b $32 ; 2
		dc.b $FF
		dc.b $FF
		dc.b $EA
		dc.b $E0
		dc.b $78 ; x
		dc.b $FC
		dc.b $68 ; h
		dc.b $EC
		dc.b $C0
		dc.b $3A ; :
		dc.b $26 ; &
		dc.b $48 ; H
		dc.b $FC
		dc.b $74 ; t
		dc.b $C0
		dc.b $A4
		dc.b $32 ; 2
		dc.b   0
		dc.b $6F ; o
		dc.b $66 ; f
		dc.b   2
		dc.b $53 ; S
		dc.b $41 ; A
		dc.b $91
		dc.b $DC
		dc.b $EF
		dc.b $26 ; &
		dc.b   0
		dc.b $40 ; @
		dc.b $74 ; t
		dc.b $D9
		dc.b $F8
		dc.b $34 ; 4
		dc.b   0
		dc.b $53 ; S
		dc.b $42 ; B
		dc.b $D6
		dc.b $F2
		dc.b $4D ; M
		dc.b $3F ; ?
		dc.b $EA
		dc.b $ED
		dc.b $5B ; [
		dc.b $9A
		dc.b $26 ; &
		dc.b $16
		dc.b $42 ; B
		dc.b $96
		dc.b $BA
		dc.b $BE
		dc.b $D1
		dc.b $90
		dc.b $F1
		dc.b $D0
		dc.b $69 ; i
		dc.b $BF
		dc.b $65 ; e
		dc.b  $C
		dc.b $4E ; N
		dc.b $22 ; "
		dc.b $4B ; K
		dc.b $DE
		dc.b $F1
		dc.b $90
		dc.b $67 ; g
		dc.b   8
		dc.b $2C ; ,
		dc.b $83
		dc.b $FF
		dc.b $21 ; !
		dc.b $2C ; ,
		dc.b $21 ; !
		dc.b $E4
		dc.b $60 ; `
		dc.b $26 ; &
		dc.b $20
		dc.b $7A ; z
		dc.b $FD
		dc.b $74 ; t
		dc.b $34 ; 4
		dc.b $2A ; *
		dc.b $B3
		dc.b $6F ; o
		dc.b $84
		dc.b $14
		dc.b $C0
		dc.b $1C
		dc.b $C6
		dc.b $D1
		dc.b $B8
		dc.b $80
		dc.b $87
		dc.b $21 ; !
		dc.b $E6
		dc.b $F8
		dc.b $12
		dc.b $EC
		dc.b  $B
		dc.b $30 ; 0
		dc.b $FC
		dc.b  $E
		dc.b $44 ; D
		dc.b $6E ; n
		dc.b $7E ; ~
		dc.b $5C ; \
		dc.b $7E ; ~
		dc.b $86
		dc.b $F4
		dc.b $CE
		dc.b $E9
		dc.b $12
		dc.b $B7
		dc.b $13
		dc.b $10
		dc.b $12
		dc.b $FF
		dc.b $7E ; ~
		dc.b $58 ; X
		dc.b $F1
		dc.b $64 ; d
		dc.b $F8
		dc.b $C2
		dc.b   0
		dc.b $30 ; 0
		dc.b $98
		dc.b  $C
		dc.b   6
		dc.b $9A
		dc.b $53 ; S
		dc.b $40 ; @
		dc.b $88
		dc.b $24 ; $
		dc.b $F1
		dc.b $D8
		dc.b $A2
		dc.b $31 ; 1
		dc.b $E3
		dc.b $8E
		dc.b $EA
		dc.b $92
		dc.b $62 ; b
		dc.b $F6
		dc.b $88
		dc.b  $A
		dc.b $5E ; ^
		dc.b $48 ; H
		dc.b $24 ; $
		dc.b $7E ; ~
		dc.b $F1
		dc.b $3E ; >
		dc.b $D4
		dc.b $C1
		dc.b $24 ; $
		dc.b $C9
		dc.b $92
		dc.b $24 ; $
		dc.b $40 ; @
		dc.b $B4
		dc.b $DC
		dc.b $D4
		dc.b $DC
		dc.b $78 ; x
		dc.b   8
		dc.b $84
		dc.b $1F
		dc.b   0
		dc.b $F6
		dc.b $FE
		dc.b   9
		dc.b $FE
		dc.b $66 ; f
		dc.b $18
		dc.b $D4
		dc.b $9C
		dc.b $3E ; >
		dc.b $AD
		dc.b $35 ; 5
		dc.b $DA
		dc.b $5A ; Z
		dc.b $F4
		dc.b $48 ; H
		dc.b $5A ; Z
		dc.b $F1
		dc.b $E8
		dc.b $D2
		dc.b $60 ; `
		dc.b $F6
		dc.b $D1
		dc.b   6
		dc.b $FD
		dc.b $EA
		dc.b $56 ; V
		dc.b $7F ; 
		dc.b $80
		dc.b   2
		dc.b $4E ; N
		dc.b $EA
		dc.b $7C ; |
		dc.b $51 ; Q
		dc.b $CA
		dc.b $C1
		dc.b   2
		dc.b   0
		dc.b $48 ; H
		dc.b $A7
		dc.b $C0
		dc.b   0
		dc.b $CC
		dc.b $75 ; u
		dc.b $76 ; v
		dc.b $48 ; H
		dc.b $76 ; v
		dc.b $26 ; &
		dc.b $76 ; v
		dc.b $F8
		dc.b   9
		dc.b $7C ; |
		dc.b $FC
		dc.b   6
		dc.b $DE
		dc.b $EC
		dc.b $C1
		dc.b $B2
		dc.b $F6
		dc.b $BC
		dc.b $C9
		dc.b $9A
		dc.b   8
		dc.b $28 ; (
		dc.b $6F ; o
		dc.b $BA
		dc.b $C1
		dc.b $81
		dc.b $31 ; 1
		dc.b $10
		dc.b $60 ; `
		dc.b $1E
		dc.b $84
		dc.b $86
		dc.b  $A
		dc.b $F1
		dc.b $46 ; F
		dc.b $E4
		dc.b $96
		dc.b $9F
		dc.b   0
		dc.b $9A
		dc.b $F1
		dc.b $40 ; @
		dc.b $92
		dc.b  $E
		dc.b $AD
		dc.b $9C
		dc.b $F0
		dc.b $A0
		dc.b $3F ; ?
		dc.b $E0
		dc.b $C2
		dc.b $C0
		dc.b $90
		dc.b $B1
		dc.b $C3
		dc.b $FD
		dc.b $6E ; n
		dc.b $B9
		dc.b  $B
		dc.b $6C ; l
		dc.b $A0
		dc.b   1
		dc.b $1E
		dc.b $3A ; :
		dc.b $5A ; Z
		dc.b $F1
		dc.b $FE
		dc.b $8A
		dc.b $65 ; e
		dc.b $14
		dc.b $BE
		dc.b $5D ; ]
		dc.b $DA
		dc.b $38 ; 8
		dc.b $EA
		dc.b $C0
		dc.b $BA
		dc.b $68 ; h
		dc.b   0
		dc.b $4F ; O
		dc.b $71 ; q
		dc.b   1
		dc.b $4E ; N
		dc.b  $A
		dc.b  $A
		dc.b $60 ; `
		dc.b $96
		dc.b $B2
		dc.b $C7
		dc.b $D8
		dc.b $EE
		dc.b $FD
		dc.b   0
		dc.b $F6
		dc.b $D0
		dc.b $10
		dc.b $70 ; p
		dc.b $EE
		dc.b $6C ; l
		dc.b $F2
		dc.b  $F
		dc.b $55 ; U
		dc.b $32 ; 2
		dc.b   0
		dc.b $6E ; n
		dc.b   4
		dc.b $7C ; |
		dc.b $B0
		dc.b $2C ; ,
		dc.b $64 ; d
		dc.b $F0
		dc.b  $B
		dc.b $28 ; (
		dc.b $EA
		dc.b $5A ; Z
		dc.b $FC
		dc.b $1D
		dc.b $F7
		dc.b $66 ; f
		dc.b $E3
		dc.b $E2
		dc.b $F1
		dc.b   6
		dc.b $3A ; :
		dc.b $D0
		dc.b $BE
		dc.b $3C ; <
		dc.b $80
		dc.b $F1
		dc.b $DC
		dc.b $6A ; j
		dc.b $FF
		dc.b $35 ; 5
		dc.b   0
		dc.b  $E
		dc.b $20
		dc.b $7A ; z
		dc.b $FB
		dc.b $E8
		dc.b $34 ; 4
		dc.b   6
		dc.b $6F ; o
		dc.b  $C
		dc.b $78 ; x
		dc.b $F0
		dc.b  $B
		dc.b $34 ; 4
		dc.b $F1
		dc.b $C0
		dc.b $D6
		dc.b $C5
		dc.b $C8
		dc.b $C4
		dc.b $74 ; t
		dc.b $F1
		dc.b $5C ; \
		dc.b $F2
		dc.b $92
		dc.b $4A ; J
		dc.b $68 ; h
		dc.b $F1
		dc.b $12
		dc.b $8E
		dc.b $69 ; i
		dc.b $16
		dc.b $36 ; 6
		dc.b $FE
		dc.b   7
		dc.b $66 ; f
		dc.b $BE
		dc.b $7C ; |
		dc.b $32 ; 2
		dc.b $60 ; `
		dc.b  $E
		dc.b $93
		dc.b $71 ; q
		dc.b $22 ; "
		dc.b $FF
		dc.b $8A
		dc.b $F0
		dc.b $84
		dc.b $F1
		dc.b $82
		dc.b $E4
		dc.b $60 ; `
		dc.b $52 ; R
		dc.b $42 ; B
		dc.b $87
		dc.b $4A ; J
		dc.b $70 ; p
		dc.b $76 ; v
		dc.b $F8
		dc.b  $E
		dc.b $C0
		dc.b $45 ; E
		dc.b $76 ; v
		dc.b $5B ; [
		dc.b $27 ; '
		dc.b $C8
		dc.b $43 ; C
		dc.b $E9
		dc.b $56 ; V
		dc.b $E9
		dc.b $EA
		dc.b $E1
		dc.b $39 ; 9
		dc.b $34 ; 4
		dc.b $EB
		dc.b   8
		dc.b $AE
		dc.b $92
		dc.b $87
		dc.b $30 ; 0
		dc.b $C8
		dc.b $C1
		dc.b $C8
		dc.b $13
		dc.b $72 ; r
		dc.b  $B
		dc.b $FE
		dc.b $33 ; 3
		dc.b $46 ; F
		dc.b $84
		dc.b $E0
		dc.b $8C
		dc.b $33 ; 3
		dc.b $F6
		dc.b  $C
		dc.b $66 ; f
		dc.b $52 ; R
		dc.b $FD
		dc.b $FA
		dc.b $82
		dc.b $DB
		dc.b $65 ; e
		dc.b $9C
		dc.b $31 ; 1
		dc.b $E2
		dc.b $42 ; B
		dc.b $EA
		dc.b   8
		dc.b $BE
		dc.b $E6
		dc.b $E9
		dc.b $FC
		dc.b $E6
		dc.b $E8
		dc.b   9
		dc.b $7D ; }
		dc.b $58 ; X
		dc.b $38 ; 8
		dc.b $3E ; >
		dc.b $6C ; l
		dc.b $EA
		dc.b  $A
		dc.b $10
		dc.b $4A ; J
		dc.b $40 ; @
		dc.b $5A ; Z
		dc.b   1
		dc.b   8
		dc.b $8E
		dc.b $F8
		dc.b $11
		dc.b $DD
		dc.b $C7
		dc.b $68 ; h
		dc.b $E8
		dc.b  $B
		dc.b $6A ; j
		dc.b $E8
		dc.b   9
		dc.b   5
		dc.b $3A ; :
		dc.b $6A ; j
		dc.b $E8
		dc.b   9
		dc.b   7
		dc.b $FA
		dc.b $67 ; g
		dc.b   8
		dc.b  $E
		dc.b   6
		dc.b $93
		dc.b $E6
		dc.b $2C ; ,
		dc.b $D9
		dc.b $C8
		dc.b $E0
		dc.b $16
		dc.b $C9
		dc.b $20
		dc.b $5E ; ^
		dc.b $FB
		dc.b $C7
		dc.b   0
		dc.b $E4
		dc.b   8
		dc.b $14
		dc.b $F6
		dc.b $E1
		dc.b   1
		dc.b $36 ; 6
		dc.b   0
		dc.b $96
		dc.b $42 ; B
		dc.b $55 ; U
		dc.b $43 ; C
		dc.b $2C ; ,
		dc.b $2F ; /
		dc.b $54 ; T
		dc.b $96
		dc.b $26 ; &
		dc.b $7A ; z
		dc.b $FA
		dc.b $BE
		dc.b $4A ; J
		dc.b $EA
		dc.b $AC
		dc.b $D7
		dc.b $D6
		dc.b $F7
		dc.b $A6
		dc.b $FC
		dc.b $EE
		dc.b $38 ; 8
		dc.b $8E
		dc.b $80
		dc.b $A0
		dc.b $FE
		dc.b   4
		dc.b $DA
		dc.b $D2
		dc.b $7A ; z
		dc.b $28 ; (
		dc.b $B4
		dc.b $E3
		dc.b $D2
		dc.b $90
		dc.b $D2
		dc.b $FC
		dc.b $D9
		dc.b $D2
		dc.b $FF
		dc.b $74 ; t
		dc.b   0
		dc.b $EE
		dc.b  $E
		dc.b $FE
		dc.b $87
		dc.b $C4
		dc.b $8C
		dc.b $E9
		dc.b $D4
		dc.b $42 ; B
		dc.b $22 ; "
		dc.b  $B
		dc.b $92
		dc.b $BA
		dc.b $FA
		dc.b $6E ; n
		dc.b $82
		dc.b $F4
		dc.b $FF
		dc.b $C2
		dc.b $80
		dc.b $48 ; H
		dc.b $41 ; A
		dc.b $4A ; J
		dc.b $41 ; A
		dc.b $67 ; g
		dc.b   6
		dc.b   6
		dc.b $81
		dc.b $4B ; K
		dc.b $D2
		dc.b $F4
		dc.b $35 ; 5
		dc.b $EA
		dc.b $87
		dc.b $41 ; A
		dc.b $F7
		dc.b $31 ; 1
		dc.b $2E ; .
		dc.b $29 ; )
		dc.b $52 ; R
		dc.b $FF
		dc.b $FA
		dc.b $65 ; e
		dc.b $2C ; ,
		dc.b $35 ; 5
		dc.b $44 ; D
		dc.b $EC
		dc.b $77 ; w
		dc.b $D8
		dc.b $C7
		dc.b $4A ; J
		dc.b $22 ; "
		dc.b $4C ; L
		dc.b $A2
		dc.b $DA
		dc.b   7
		dc.b $9A
		dc.b $F6
		dc.b $D6
		dc.b $C2
		dc.b $36 ; 6
		dc.b $2A ; *
		dc.b $B7
		dc.b $18
		dc.b $51 ; Q
		dc.b $CB
		dc.b $FF
		dc.b $88
		dc.b $28 ; (
		dc.b $19
		dc.b   1
		dc.b $E2
		dc.b $F2
		dc.b $E8
		dc.b $A2
		dc.b $96
		dc.b $46 ; F
		dc.b $EC
		dc.b $7C ; |
		dc.b $1C
		dc.b $E4
		dc.b $F0
		dc.b   9
		dc.b $3E ; >
		dc.b   9
		dc.b $4E ; N
		dc.b $76 ; v
		dc.b $C7
		dc.b $2F ; /
		dc.b $6A ; j
		dc.b $91
		dc.b   9
		dc.b $74 ; t
		dc.b $F8
		dc.b $76 ; v
		dc.b $43 ; C
		dc.b $FA
		dc.b $F9
		dc.b $CE
		dc.b $DC
		dc.b $F3
		dc.b $5F ; _
		dc.b $1F
		dc.b $22 ; "
		dc.b   6
		dc.b $DA
		dc.b $70 ; p
		dc.b $C4
		dc.b $D2
		dc.b $3A ; :
		dc.b $DA
		dc.b $30 ; 0
		dc.b $30 ; 0
		dc.b   0
		dc.b $3F ; ?
		dc.b $FE
		dc.b $60 ; `
		dc.b $86
		dc.b $40 ; @
		dc.b $30 ; 0
		dc.b $1F
		dc.b $20
		dc.b $48 ; H
		dc.b   1
		dc.b $C8
		dc.b $C2
		dc.b $F8
		dc.b $EB
		dc.b   8
		dc.b $B2
		dc.b $C5
		dc.b $F6
		dc.b $DC
		dc.b $91
		dc.b $AC
		dc.b $DC
		dc.b $FD
		dc.b $20
		dc.b $DC
		dc.b $F8
		dc.b $17
		dc.b $AA
		dc.b $6A ; j
		dc.b $E9
		dc.b $88
		dc.b $F2
		dc.b $D0
		dc.b  $A
		dc.b $4E ; N
		dc.b $F2
		dc.b  $C
		dc.b $DD
		dc.b   8
		dc.b $C8
		dc.b  $D
		dc.b $72 ; r
		dc.b $3C ; <
		dc.b $3A ; :
		dc.b $7B ; {
		dc.b $F8
		dc.b $28 ; (
		dc.b $49 ; I
		dc.b $38 ; 8
		dc.b $B0
		dc.b $11
		dc.b $3A ; :
		dc.b   1
		dc.b $74 ; t
		dc.b $77 ; w
		dc.b  $A
		dc.b $24 ; $
		dc.b $48 ; H
		dc.b  $C
		dc.b $C3
		dc.b $18
		dc.b $1A
		dc.b   0
		dc.b $2A ; *
		dc.b  $C
		dc.b $52 ; R
		dc.b $42 ; B
		dc.b $3C ; <
		dc.b $F6
		dc.b $BC
		dc.b $45 ; E
		dc.b $F2
		dc.b $94
		dc.b $F1
		dc.b $4C ; L
		dc.b $36 ; 6
		dc.b   0
		dc.b $96
		dc.b $E9
		dc.b $58 ; X
		dc.b $E6
		dc.b $A1
		dc.b $B4
		dc.b $FD
		dc.b $DD
		dc.b $3E ; >
		dc.b $F4
		dc.b $46 ; F
		dc.b $E8
		dc.b   9
		dc.b $26 ; &
		dc.b $49 ; I
		dc.b $4A ; J
		dc.b $44 ; D
		dc.b $6F ; o
		dc.b $44 ; D
		dc.b $A2
		dc.b $FC
		dc.b   3
		dc.b $7C ; |
		dc.b $1A
		dc.b $E1
		dc.b $80
		dc.b $FF
		dc.b   2
		dc.b $C4
		dc.b $98
		dc.b $3E ; >
		dc.b $66 ; f
		dc.b $1E
		dc.b $4A ; J
		dc.b $45 ; E
		dc.b $6F ; o
		dc.b   4
		dc.b $A7
		dc.b $31 ; 1
		dc.b $53 ; S
		dc.b $45 ; E
		dc.b $60 ; `
		dc.b $10
		dc.b $2C ; ,
		dc.b $C5
		dc.b $4C ; L
		dc.b $EC
		dc.b $60 ; `
		dc.b $FC
		dc.b $2E ; .
		dc.b $FA
		dc.b $D8
		dc.b $C1
		dc.b $53 ; S
		dc.b $44 ; D
		dc.b  $C
		dc.b $42 ; B
		dc.b $4E ; N
		dc.b $E9
		dc.b   8
		dc.b $90
		dc.b $A2
		dc.b $F1
		dc.b $76 ; v
		dc.b $C3
		dc.b $9E
		dc.b $C4
		dc.b $70 ; p
		dc.b $FC
		dc.b $5C ; \
		dc.b $3C ; <
		dc.b $70 ; p
		dc.b $F8
		dc.b   9
		dc.b $21 ; !
		dc.b $32 ; 2
		dc.b   2
		dc.b $ED
		dc.b $F1
		dc.b $30 ; 0
		dc.b   1
		dc.b  $E
		dc.b   9
		dc.b $10
		dc.b $88
		dc.b $B1
		dc.b $1F
		dc.b $61 ; a
		dc.b $28 ; (
		dc.b $FA
		dc.b   1
		dc.b $20
		dc.b $87
		dc.b $AF
		dc.b $4F ; O
		dc.b $61 ; a
		dc.b $20
		dc.b $54 ; T
		dc.b $FC
		dc.b $10
		dc.b $62 ; b
		dc.b $FC
		dc.b $42 ; B
		dc.b $99
		dc.b $FE
		dc.b $FC
		dc.b $E1
		dc.b $7F ; 
		dc.b $40 ; @
		dc.b $99
		dc.b $84
		dc.b $CC
		dc.b $32 ; 2
		dc.b   0
		dc.b $E0
		dc.b $49 ; I
		dc.b $12
		dc.b $C1
		dc.b $ED
		dc.b $48 ; H
		dc.b $5D ; ]
		dc.b $42 ; B
		dc.b $E3
		dc.b $FF
		dc.b $C4
		dc.b $19
		dc.b $F2
		dc.b $A6
		dc.b   8
		dc.b $64 ; d
		dc.b $F8
		dc.b $72 ; r
		dc.b   8
		dc.b $92
		dc.b $42 ; B
		dc.b $E2
		dc.b $68 ; h
		dc.b $FF
		dc.b $D2
		dc.b $10
		dc.b $18
		dc.b $E3
		dc.b $68 ; h
		dc.b $50 ; P
		dc.b $42 ; B
		dc.b $53 ; S
		dc.b $47 ; G
		dc.b $64 ; d
		dc.b $7C ; |
		dc.b $11
		dc.b $AC
		dc.b $10
		dc.b   0
		dc.b $3B ; ;
		dc.b $19
		dc.b $DA
		dc.b $FC
		dc.b $E5
		dc.b $48 ; H
		dc.b $B8
		dc.b $A9
		dc.b $A8
		dc.b $E9
		dc.b $6E ; n
		dc.b $3C ; <
		dc.b $F6
		dc.b $E8
		dc.b $58 ; X
		dc.b $1A
		dc.b $B1
		dc.b $A9
		dc.b $A4
		dc.b $2A ; *
		dc.b $74 ; t
		dc.b   2
		dc.b $1C
		dc.b   1
		dc.b $9C
		dc.b $61 ; a
		dc.b $1A
		dc.b $E8
		dc.b $EC
		dc.b $E8
		dc.b   3
		dc.b $8C
		dc.b $E2
		dc.b $AA
		dc.b $DC
		dc.b $F6
		dc.b $E4
		dc.b $48 ; H
		dc.b $FD
		dc.b $18
		dc.b $E2
		dc.b $AB
		dc.b $9C
		dc.b $F8
		dc.b   9
		dc.b $10
		dc.b $C1
		dc.b $E1
		dc.b $48 ; H
		dc.b $51 ; Q
		dc.b $9C
		dc.b $60 ; `
		dc.b $D2
		dc.b $68 ; h
		dc.b $D4
		dc.b $F0
		dc.b $9A
		dc.b $62 ; b
		dc.b $F8
		dc.b $2A ; *
		dc.b $98
		dc.b $FC
		dc.b $19
		dc.b $68 ; h
		dc.b $F7
		dc.b $98
		dc.b $5C ; \
		dc.b $98
		dc.b $FF
		dc.b   3
		dc.b $48 ; H
		dc.b $F2
		dc.b $82
		dc.b $D0
		dc.b $CC
		dc.b $E2
		dc.b $9E
		dc.b $7E ; ~
		dc.b $FE
		dc.b  $F
		dc.b   7
		dc.b $64 ; d
		dc.b $DA
		dc.b $10
		dc.b $10
		dc.b $7C ; |
		dc.b   7
		dc.b $12
		dc.b $11
		dc.b $E3
		dc.b   8
		dc.b $E3
		dc.b $11
		dc.b $6F ; o
		dc.b $D8
		dc.b $58 ; X
		dc.b $51 ; Q
		dc.b $CE
		dc.b $FF
		dc.b $F6
		dc.b $58 ; X
		dc.b $DA
		dc.b $50 ; P
		dc.b $B4
		dc.b $CF
		dc.b $FF
		dc.b $1C
		dc.b $C9
		dc.b  $D
		dc.b $98
		dc.b   0
		dc.b $C0
		dc.b $CC
		dc.b $F8
		dc.b $14
		dc.b $80
		dc.b $AC
		dc.b $CC
		dc.b $10
		dc.b $46 ; F
		dc.b $A8
		dc.b $CC
		dc.b $10
		dc.b $81
		dc.b $D4
		dc.b $CA
		dc.b $F4
		dc.b $AC
		dc.b $EB
		dc.b $44 ; D
		dc.b $C2
		dc.b $CC
		dc.b $FF
		dc.b $D0
		dc.b $D2
		dc.b   0
		dc.b $A2
		dc.b $C8
		dc.b $72 ; r
		dc.b $F0
		dc.b $A8
		dc.b   4
		dc.b $14
		dc.b $E4
		dc.b   8
		dc.b $12
		dc.b $C0
		dc.b $D6
		dc.b $84
		dc.b $A9
		dc.b $FF
		dc.b  $F
		dc.b $F8
		dc.b $9A
		dc.b $72 ; r
		dc.b   0
		dc.b $12
		dc.b $3B ; ;
		dc.b   0
		dc.b $1C
		dc.b $12
		dc.b $30 ; 0
		dc.b $10
		dc.b   0
		dc.b $E4
		dc.b   9
		dc.b $B0
		dc.b $31 ; 1
		dc.b $8A
		dc.b $F8
		dc.b   0
		dc.b $30 ; 0
		dc.b $F8
		dc.b $FD
		dc.b $38 ; 8
		dc.b $F8
		dc.b $81
		dc.b $FC
		dc.b $FB
		dc.b $C0
		dc.b $2D ; -
		dc.b $2E ; .
		dc.b $2F ; /
		dc.b   8
		dc.b $11
		dc.b $1A
		dc.b $23 ; #
		dc.b $2C ; ,
		dc.b $B8
		dc.b $F8
		dc.b $10
		dc.b $19
		dc.b $E5
		dc.b   8
		dc.b $CE
		dc.b $29 ; )
		dc.b $10
		dc.b $B8
		dc.b $F8
		dc.b  $A
		dc.b $3F ; ?
		dc.b   0
		dc.b $B6
		dc.b $D2
		dc.b $E8
		dc.b $11
		dc.b $40 ; @
		dc.b $FA
		dc.b $6A ; j
		dc.b $B9
		dc.b $1F
		dc.b $CE
		dc.b $12
		dc.b $2D ; -
		dc.b $5B ; [
		dc.b $A4
		dc.b   7
		dc.b $CC
		dc.b $E5
		dc.b   9
		dc.b $11
		dc.b $81
		dc.b $F1
		dc.b $F6
		dc.b $A5
		dc.b $FD
		dc.b $FF
		dc.b $F6
		dc.b $38 ; 8
		dc.b $38 ; 8
		dc.b $FC
		dc.b $48 ; H
		dc.b $42 ; B
		dc.b $7E ; ~
		dc.b   0
		dc.b $16
		dc.b $87
		dc.b $10
		dc.b $87
		dc.b $18
		dc.b $87
		dc.b $70 ; p
		dc.b   1
		dc.b $1F
		dc.b   0
		dc.b $7E ; ~
		dc.b   1
		dc.b $17
		dc.b $80
		dc.b $70 ; p
		dc.b   0
		dc.b $CA
		dc.b $FC
		dc.b $C2
		dc.b $1F
		dc.b $38 ; 8
		dc.b $19
		dc.b $F0
		dc.b   0
		dc.b $52 ; R
		dc.b $47 ; G
		dc.b $B4
		dc.b $47 ; G
		dc.b $64 ; d
		dc.b $EC
		dc.b   6
		dc.b $18
		dc.b $DE
		dc.b $42 ; B
		dc.b $33 ; 3
		dc.b $F4
		dc.b $FA
		dc.b $7C ; |
		dc.b   0
		dc.b $FE
		dc.b $7F ; 
		dc.b $FA
		dc.b $4A ; J
		dc.b $31 ; 1
		dc.b $60 ; `
		dc.b   0
		dc.b $67 ; g
		dc.b  $E
		dc.b $32 ; 2
		dc.b   7
		dc.b $92
		dc.b $46 ; F
		dc.b $53 ; S
		dc.b $41 ; A
		dc.b $10
		dc.b $33 ; 3
		dc.b $88
		dc.b $3F ; ?
		dc.b $A2
		dc.b $B1
		dc.b $E6
		dc.b $52 ; R
		dc.b $46 ; F
		dc.b $BC
		dc.b $42 ; B
		dc.b $65 ; e
		dc.b $E4
		dc.b  $C
		dc.b $60 ; `
		dc.b $E0
		dc.b $11
		dc.b $B3
		dc.b $F4
		dc.b $FE
		dc.b $C8
		dc.b $FC
		dc.b $BE
		dc.b $38 ; 8
		dc.b $C0
		dc.b $EE
		dc.b $CA
		dc.b $32 ; 2
		dc.b   2
		dc.b $DC
		dc.b $A4
		dc.b $3C ; <
		dc.b $30 ; 0
		dc.b $F4
		dc.b   7
		dc.b $E0
		dc.b $10
		dc.b $30 ; 0
		dc.b $EC
		dc.b $B0
		dc.b $26 ; &
		dc.b $81
		dc.b $65 ; e
		dc.b $18
		dc.b $12
		dc.b $8C
		dc.b $11
		dc.b $40 ; @
		dc.b   9
		dc.b $9E
		dc.b $FA
		dc.b $10
		dc.b $34 ; 4
		dc.b $22 ; "
		dc.b $72 ; r
		dc.b $D4
		dc.b $BA
		dc.b $11
		dc.b $FA
		dc.b $F2
		dc.b $BC
		dc.b $D8
		dc.b $BC
		dc.b $DB
		dc.b $C8
		dc.b $41 ; A
		dc.b $65 ; e
		dc.b $CE
		dc.b $9C
		dc.b $F6
		dc.b $21 ; !
		dc.b   0
		dc.b   8
		dc.b $D1
		dc.b $9E
		dc.b  $C



