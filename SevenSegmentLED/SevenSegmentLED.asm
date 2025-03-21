;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (MINGW64)
;--------------------------------------------------------
	.module SevenSegmentLED
	
	.optsdcc -mmcs51 --model-small
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_main_n_10000_2:
	.ds 4
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
; restartable atomic support routines
	.ds	5
sdcc_atomic_exchange_rollback_start::
	nop
	nop
sdcc_atomic_exchange_pdata_impl:
	movx	a, @r0
	mov	r3, a
	mov	a, r2
	movx	@r0, a
	sjmp	sdcc_atomic_exchange_exit
	nop
	nop
sdcc_atomic_exchange_xdata_impl:
	movx	a, @dptr
	mov	r3, a
	mov	a, r2
	movx	@dptr, a
	sjmp	sdcc_atomic_exchange_exit
sdcc_atomic_compare_exchange_idata_impl:
	mov	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	mov	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_pdata_impl:
	movx	a, @r0
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@r0, a
	ret
	nop
sdcc_atomic_compare_exchange_xdata_impl:
	movx	a, @dptr
	cjne	a, ar2, .+#5
	mov	a, r3
	movx	@dptr, a
	ret
sdcc_atomic_exchange_rollback_end::

sdcc_atomic_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_exchange_pdata_impl
sdcc_atomic_exchange_idata_impl:
	mov	a, r2
	xch	a, @r0
	mov	dpl, a
	ret
sdcc_atomic_exchange_exit:
	mov	dpl, r3
	ret
sdcc_atomic_compare_exchange_gptr_impl::
	jnb	b.6, sdcc_atomic_compare_exchange_xdata_impl
	mov	r0, dpl
	jb	b.5, sdcc_atomic_compare_exchange_pdata_impl
	sjmp	sdcc_atomic_compare_exchange_idata_impl
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;n             Allocated with name '_main_n_10000_2'
;i             Allocated to registers r6 r7 
;reset_flag    Allocated to registers r5 
;d             Allocated to registers r4 
;j             Allocated to registers r3 
;x             Allocated to registers r4 
;------------------------------------------------------------
;	SevenSegmentLED.c:3: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	SevenSegmentLED.c:11: unsigned char n[4] = { 0, 0, 0, 0 };
	mov	_main_n_10000_2,#0x00
	mov	(_main_n_10000_2 + 0x0001),#0x00
	mov	(_main_n_10000_2 + 0x0002),#0x00
	mov	(_main_n_10000_2 + 0x0003),#0x00
;	SevenSegmentLED.c:14: unsigned int i = 0;
	mov	r6,#0x00
	mov	r7,#0x00
;	SevenSegmentLED.c:17: unsigned char reset_flag = 0;
	mov	r5,#0x00
;	SevenSegmentLED.c:26: for (char d = 0; d < 4; d++)
00142$:
	mov	r4,#0x00
00127$:
	cjne	r4,#0x04,00229$
00229$:
	jnc	00108$
;	SevenSegmentLED.c:28: P1 = 4 + d;
	mov	ar3,r4
	mov	a,#0x04
	add	a, r3
	mov	_P1,a
;	SevenSegmentLED.c:34: if (d == 3 || n[d] != 0 || (d > 0 && n[d - 1] != 0))
	cjne	r4,#0x03,00231$
	sjmp	00101$
00231$:
	mov	a,r4
	add	a, #_main_n_10000_2
	mov	r1,a
	mov	a,@r1
	jnz	00101$
	mov	a,r4
	jz	00102$
	mov	a,r3
	dec	a
	add	a, #_main_n_10000_2
	mov	r1,a
	mov	a,@r1
	jz	00102$
00101$:
;	SevenSegmentLED.c:36: P2 = seg[n[d]];
	mov	a,r4
	add	a, #_main_n_10000_2
	mov	r1,a
	mov	a,@r1
	mov	dptr,#_main_seg_10000_2
	movc	a,@a+dptr
	mov	_P2,a
	sjmp	00141$
00102$:
;	SevenSegmentLED.c:40: P2 = 0x00;
	mov	_P2,#0x00
;	SevenSegmentLED.c:44: for (char j = 0; j < 100; j++)
00141$:
	mov	r3,#0x00
00124$:
	cjne	r3,#0x64,00235$
00235$:
	jnc	00107$
	inc	r3
	sjmp	00124$
00107$:
;	SevenSegmentLED.c:50: P2 = 0x00;
	mov	_P2,#0x00
;	SevenSegmentLED.c:26: for (char d = 0; d < 4; d++)
	inc	r4
	sjmp	00127$
00108$:
;	SevenSegmentLED.c:57: if (P3_2 == 0)
	jb	_P3_2,00118$
;	SevenSegmentLED.c:60: i++;
	inc	r6
	cjne	r6,#0x00,00238$
	inc	r7
00238$:
;	SevenSegmentLED.c:63: if (i > 500)
	clr	c
	mov	a,#0xf4
	subb	a,r6
	mov	a,#0x01
	subb	a,r7
	jnc	00142$
;	SevenSegmentLED.c:65: n[0] = n[1] = n[2] = n[3] = 0;
	mov	(_main_n_10000_2 + 0x0003),#0x00
	mov	(_main_n_10000_2 + 0x0002),#0x00
	mov	(_main_n_10000_2 + 0x0001),#0x00
	mov	_main_n_10000_2,#0x00
;	SevenSegmentLED.c:66: i = 0;
	mov	r6,#0x00
	mov	r7,#0x00
;	SevenSegmentLED.c:67: reset_flag = 1;  // 做了重置，放開後不再加 1
	mov	r5,#0x01
	sjmp	00142$
00118$:
;	SevenSegmentLED.c:74: if (!reset_flag && i > 10)
	mov	a,r5
	jnz	00115$
	clr	c
	mov	a,#0x0a
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00115$
;	SevenSegmentLED.c:76: n[3]++;
	mov	a,(_main_n_10000_2 + 0x0003)
	inc	a
	mov	(_main_n_10000_2 + 0x0003),a
;	SevenSegmentLED.c:78: for (char x = 3; x > 0; x--)
	mov	r4,#0x03
00130$:
	mov	a,r4
	jz	00115$
;	SevenSegmentLED.c:80: if (n[x] >= 10)
	mov	a,r4
	add	a, #_main_n_10000_2
	mov	r1,a
	mov	ar3,@r1
	cjne	r3,#0x0a,00243$
00243$:
	jc	00131$
;	SevenSegmentLED.c:82: n[x] = 0;
	mov	@r1,#0x00
;	SevenSegmentLED.c:83: n[x - 1]++;
	mov	ar3,r4
	mov	a,r3
	dec	a
	add	a, #_main_n_10000_2
	mov	r1,a
	inc	@r1
	mov	a,@r1
00131$:
;	SevenSegmentLED.c:78: for (char x = 3; x > 0; x--)
	dec	r4
	sjmp	00130$
00115$:
;	SevenSegmentLED.c:88: i = 0;
	mov	r6,#0x00
	mov	r7,#0x00
;	SevenSegmentLED.c:90: reset_flag = 0;
	mov	r5,#0x00
;	SevenSegmentLED.c:93: }
	ljmp	00142$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
_main_seg_10000_2:
	.db #0x3f	; 63
	.db #0x06	; 6
	.db #0x5b	; 91
	.db #0x4f	; 79	'O'
	.db #0x66	; 102	'f'
	.db #0x6d	; 109	'm'
	.db #0x7d	; 125
	.db #0x27	; 39
	.db #0x7f	; 127
	.db #0x6f	; 111	'o'
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
