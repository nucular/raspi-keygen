


; =============== S U B	R O U T	I N E =======================================


sub_EC96290:				; CODE XREF: sub_EC64B68+10Ap
					; sub_EC960D4+D8p ...
		stm	r6-r16,	lr, (--sp)
		mov	r7, r0
		lea	sp, 0xFFFFFFF0(sp)
		mov	r6, r1
		cmp	r7, 0x48323633
		beq	loc_EC96316
		cmp	r7, 0x48323634
		beq	loc_EC96316
		cmp	r7, 0x4D564330
		beq	loc_EC96316
		cmp	r7, 0x4D504734
		beq	loc_EC96316
		cmp	r7, 0x4D4A5041
		beq	loc_EC96316
		cmp	r7, 0x4D4A5042
		beq	loc_EC96316
		cmp	r7, 0x4D4A5047
		beq	loc_EC96316
		cmp	r7, 0x41474946
		beq	loc_EC96316
		cmp	r7, 0x50434D
		beq	loc_EC96316
		cmp	r7, 0x574D5639
		bne	loc_EC962EE
		mov	r7, 0x57564331

loc_EC962EE:				; CODE XREF: sub_EC96290+56j
		cmp	r7, 0x4D504732
		cmpeq	r6, 0
		bne	loc_EC96302
		ld	r1, 0x1DC0(gp) ; XREF 0xEE86680	dword_EE86680
		addcmpbne r1, 0, 0, loc_EC96316

loc_EC96302:				; CODE XREF: sub_EC96290+68j
		cmp	r7, 0x57564331
		cmpeq	r6, 0
		bne	loc_EC9631C
		ld	r2, 0x2120(gp) ; XREF 0xEE869E0	dword_EE869E0
		addcmpbeq r2, 0, 0, loc_EC9631C

loc_EC96316:				; CODE XREF: sub_EC96290+Ej
					; sub_EC96290+16j ...
		mov	r0, 1
		b	loc_EC96446
; ---------------------------------------------------------------------------

loc_EC9631C:				; CODE XREF: sub_EC96290+7Cj
					; sub_EC96290+82j
		mov	r5, r7
		lea	r8, 0x4(sp)
		and	r5, 0xFF000000
		addcmpbeq r5, 0, 0, loc_EC96354
		lea	r1, 0x12E(pc)	; "%s_%c%c%c%c"
		addcmpbeq r6, 0, 0, loc_EC96338
		lea	r2, 0x764(gp) ;	XREF 0xEE85024 aEncode ; "encode"
		b	loc_EC9633C
; ---------------------------------------------------------------------------

loc_EC96338:				; CODE XREF: sub_EC96290+9Ej
		lea	r2, 0x76B(gp) ;	XREF 0xEE8502B aDecode ; "decode"

loc_EC9633C:				; CODE XREF: sub_EC96290+A6j
		lsr	r4, r7,	0x10
		lsr	r5, r7,	0x8
		bmask	r0, r7,	0x8
		lsr	r3, r7,	0x18
		st	r0, (sp)
		bmask	r4, 0x8
		bmask	r5, 0x8
		b	loc_EC96376
; ---------------------------------------------------------------------------

loc_EC96354:				; CODE XREF: sub_EC96290+96j
		lea	r1, 0xF8(pc)
		addcmpbeq r6, 0, 0, loc_EC96362
		lea	r2, 0x772(gp) ;	XREF 0xEE85032 aEncode_0 ; "encode"
		b	loc_EC96366
; ---------------------------------------------------------------------------

loc_EC96362:				; CODE XREF: sub_EC96290+C8j
		lea	r2, 0x779(gp) ;	XREF 0xEE85039 aDecode_0 ; "decode"

loc_EC96366:				; CODE XREF: sub_EC96290+D0j
		lsr	r3, r7,	0x10
		lsr	r4, r7,	0x8
		bmask	r3, 0x8
		bmask	r4, 0x8
		bmask	r5, r7,	0x8

loc_EC96376:				; CODE XREF: sub_EC96290+C2j
		mov	r0, r8
		bl	sub_EDCA1AA
		bl	sub_EC8242E
		cmp	r7, 0x4D504732
		mov	r9, r0
		cmpeq	r6, 0
		bne	loc_EC963A8
		mov	r0, 0x2D
		mov	r1, 0
		bl	sub_ECE7894
		mov	r3, r0
		mov	r0, r9
		mov	r1, r7
		mov	r2, 0
		bl	sub_EC9DB40
		addcmpbne r0, 0, 0, loc_EC963DA

loc_EC963A8:				; CODE XREF: sub_EC96290+FCj
		cmp	r7, 0x57564331
		cmpeq	r6, 0
		bne	loc_EC963CE
		mov	r0, 0x2E
		mov	r1, 0
		bl	sub_ECE7894
		mov	r3, r0
		mov	r0, r9
		mov	r1, r7
		mov	r2, 0
		bl	sub_EC9DB40
		addcmpbne r0, 0, 0, loc_EC963DA

loc_EC963CE:				; CODE XREF: sub_EC96290+122j
		mov	r0, r8
		mov	r1, 0
		bl	sub_ED60C5A
		mov	r8, r0
		b	loc_EC963E0
; ---------------------------------------------------------------------------

loc_EC963DA:				; CODE XREF: sub_EC96290+114j
					; sub_EC96290+13Aj ...
		mov	r0, 0x2
		b	loc_EC96446
; ---------------------------------------------------------------------------

loc_EC963DE:				; CODE XREF: sub_EC96290+180j
		add	r8, 1

loc_EC963E0:				; CODE XREF: sub_EC96290+148j
					; sub_EC96290+17Cj
		addcmpbeq r8, 0, 0, loc_EC96444
		mov	r0, r8
		mov	r1, 0
		mov	r2, 0
		bl	sub_EDCC4FA
		mov	r10, r0
		mov	r0, r9
		mov	r1, r7
		mov	r2, 0
		mov	r3, r10
		bl	sub_EC9DB40
		addcmpbne r0, 0, 0, loc_EC96412
		mov	r0, r8
		mov	r1, 0x2C
		bl	sub_EDCBC50
		mov	r8, r0
		addcmpbeq r8, 0, 0, loc_EC963E0
		b	loc_EC963DE
; ---------------------------------------------------------------------------

loc_EC96412:				; CODE XREF: sub_EC96290+16Cj
		cmp	r7, 0x4D504732
		cmpeq	r6, 0
		bne	loc_EC9642A
		mov	r0, 0x2D
		mov	r1, 0
		mov	r2, r10
		bl	sub_EDBF492

loc_EC9642A:				; CODE XREF: sub_EC96290+18Cj
		cmp	r7, 0x57564331
		cmpeq	r6, 0
		bne	loc_EC963DA
		mov	r0, 0x2E
		mov	r1, 0
		mov	r2, r10
		bl	sub_EDBF492
		b	loc_EC963DA
; ---------------------------------------------------------------------------

loc_EC96444:				; CODE XREF: sub_EC96290:loc_EC963E0j
		mov	r0, 0

loc_EC96446:				; CODE XREF: sub_EC96290+88j
					; sub_EC96290+14Cj
		lea	sp, 0x10(sp)
		ldm	r6-r16,	pc, (sp++)
; End of function sub_EC96290

; ---------------------------------------------------------------------------
		nop

loc_EC9644C:				; DATA XREF: sub_EC96290:loc_EC96354r
		bitclear r5, 0x12
		ld	r15, (r5+0x14)
		ld	r3, (r6+0x14)
		ld	r3, (r6+0x14)
		bl	r3
		bkpt
; ---------------------------------------------------------------------------
aS_CCCC		.ascii "%s_%c%c%c%c",0  ; DATA XREF: sub_EC96290+9Ar
