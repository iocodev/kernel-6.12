// SPDX-License-Identifier: GPL-2.0
/*
 * Copyright (c) 2020-2024 Rockchip Electronics Co., Ltd.
 *
 * Author: Zorro Liu <zorro.liu@rock-chips.com>
 */

	.text
	.file	"rkf_waveform.c"
	.globl	rkf_wf_input                    // -- Begin function rkf_wf_input
	.p2align	2
	.type	rkf_wf_input,@function
	.word	3228165220                      // 0xc069e464
rkf_wf_input:                           // @rkf_wf_input
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-80]!           // 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             // 16-byte Folded Spill
	adrp	x21, global_waveform
	mov	x29, sp
	ldr	x8, [x21, :lo12:global_waveform]
	str	x25, [sp, #16]                  // 8-byte Folded Spill
	stp	x24, x23, [sp, #32]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             // 16-byte Folded Spill
	cbz	x8, .LBB0_3
// %bb.1:
	mov	w0, #-16                        // =0xfffffff0
.LBB0_2:
	ldp	x20, x19, [sp, #64]             // 16-byte Folded Reload
	ldr	x25, [sp, #16]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #48]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #80             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB0_3:
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	mov	x22, x0
	add	x0, x0, #20
	mov	w2, #8                          // =0x8
	bl	strncmp
	cbz	w0, .LBB0_6
// %bb.4:
	mov	w19, w0
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	add	x0, x22, #20
	mov	w2, #8                          // =0x8
	bl	strncmp
	cbnz	w0, .LBB0_16
// %bb.5:
	mov	w2, #32                         // =0x20
	mov	w0, w19
	b	.LBB0_7
.LBB0_6:
	mov	w2, #16                         // =0x10
.LBB0_7:
	cmp	w0, #0
	adrp	x9, maxpic
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	cset	w8, ne
	add	x1, x22, #20
	strb	w8, [x9, :lo12:maxpic]
	bl	_printk
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	add	x0, x22, #4
	mov	w2, #12                         // =0xc
	bl	strncmp
	cbnz	w0, .LBB0_17
// %bb.8:
	ldr	w23, [x22]
	cmp	w23, #256, lsl #12              // =1048576
	b.gt	.LBB0_19
// %bb.9:
	adrp	x20, crc32_table
	add	x20, x20, :lo12:crc32_table
	ldr	w19, [x22, w23, sxtw]
	mov	w24, #7022                      // =0x1b6e
	mov	w25, #3511                      // =0xdb7
	mov	x0, x20
	mov	w1, wzr
	mov	w2, #1024                       // =0x400
	movk	w24, #2434, lsl #16
	movk	w25, #1217, lsl #16
	bl	memset
	mov	w12, #28088                     // =0x6db8
	mov	w13, #14044                     // =0x36dc
	mov	w8, wzr
	mov	w9, wzr
	mov	w10, wzr
	mov	x11, xzr
	movk	w12, #9736, lsl #16
	movk	w13, #4868, lsl #16
	mov	w14, #-2147483648               // =0x80000000
	mov	w15, #1073741824                // =0x40000000
	mov	w16, #268435456                 // =0x10000000
.LBB0_10:                               // =>This Inner Loop Header: Depth=1
	lsl	w17, w11, #24
	tst	w11, #0x40
	and	w17, w12, w17, asr #31
	eor	w0, w17, w13
	csel	w17, w17, w0, eq
	tst	w11, #0x20
	eor	w0, w17, w24
	csel	w17, w17, w0, eq
	tst	w11, #0x10
	eor	w0, w17, w25
	csel	w17, w17, w0, eq
	lsl	w0, w17, #2
	eor	w17, w17, w8
	add	w8, w8, w16
	cmp	w17, #0
	eor	w1, w0, w24
	csel	w17, w1, w0, lt
	tst	w11, #0x4
	eor	w0, w17, w25
	csel	w17, w17, w0, eq
	lsl	w0, w17, #1
	eor	w17, w17, w9
	add	w9, w9, w15
	cmp	w17, #0
	eor	w1, w0, w25
	csel	w17, w1, w0, lt
	lsl	w0, w17, #1
	eor	w17, w17, w10
	add	w10, w10, w14
	cmp	w17, #0
	eor	w1, w0, w25
	csel	w17, w1, w0, lt
	str	w17, [x20, x11, lsl #2]
	add	x11, x11, #1
	cmp	x11, #256
	b.ne	.LBB0_10
// %bb.11:
	mov	w2, wzr
	cbz	w23, .LBB0_14
// %bb.12:
	mov	x8, x22
.LBB0_13:                               // =>This Inner Loop Header: Depth=1
	ldrb	w9, [x8], #1
	subs	w23, w23, #1
	eor	w9, w9, w2, lsr #24
	ldr	w9, [x20, w9, uxtw #2]
	eor	w2, w9, w2, lsl #8
	b.ne	.LBB0_13
.LBB0_14:
	cmp	w19, w2
	b.ne	.LBB0_18
// %bb.15:
	mov	w0, wzr
	str	x22, [x21, :lo12:global_waveform]
	b	.LBB0_2
.LBB0_16:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	b	.LBB0_20
.LBB0_17:
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	bl	_printk
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	b	.LBB0_20
.LBB0_18:
	adrp	x0, .L.str.9
	add	x0, x0, :lo12:.L.str.9
	mov	w1, w19
	bl	_printk
.LBB0_19:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
.LBB0_20:
	bl	_printk
	mov	w0, #-1                         // =0xffffffff
	b	.LBB0_2
.Lfunc_end0:
	.size	rkf_wf_input, .Lfunc_end0-rkf_wf_input
                                        // -- End function
	.globl	rkf_wf_get_version              // -- Begin function rkf_wf_get_version
	.p2align	2
	.type	rkf_wf_get_version,@function
	.word	1371061343                      // 0x51b8bc5f
rkf_wf_get_version:                     // @rkf_wf_get_version
// %bb.0:
	adrp	x8, global_waveform
	ldr	x8, [x8, :lo12:global_waveform]
	add	x9, x8, #84
	cmp	x8, #0
	csel	x0, xzr, x9, eq
	ret
.Lfunc_end1:
	.size	rkf_wf_get_version, .Lfunc_end1-rkf_wf_get_version
                                        // -- End function
	.globl	rkf_wf_get_wf_bit               // -- Begin function rkf_wf_get_wf_bit
	.p2align	2
	.type	rkf_wf_get_wf_bit,@function
	.word	1874538549                      // 0x6fbb3035
rkf_wf_get_wf_bit:                      // @rkf_wf_get_wf_bit
// %bb.0:
	adrp	x8, maxpic
	adrp	x9, global_waveform
	mov	w10, #32                        // =0x20
	ldrb	w8, [x8, :lo12:maxpic]
	ldr	x9, [x9, :lo12:global_waveform]
	cmp	w8, #0
	mov	w8, #16                         // =0x10
	csel	w8, w10, w8, ne
	cmp	x9, #0
	csel	w0, wzr, w8, eq
	ret
.Lfunc_end2:
	.size	rkf_wf_get_wf_bit, .Lfunc_end2-rkf_wf_get_wf_bit
                                        // -- End function
	.globl	rkf_wf_get_lut                  // -- Begin function rkf_wf_get_lut
	.p2align	2
	.type	rkf_wf_get_lut,@function
	.word	4161009509                      // 0xf803f765
rkf_wf_get_lut:                         // @rkf_wf_get_lut
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #112
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
                                        // kill: def $w2 killed $w2 def $x2
	stp	x28, x27, [sp, #32]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #48]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             // 16-byte Folded Spill
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1608]
	str	x8, [sp, #8]
	adrp	x8, global_waveform
	ldr	x8, [x8, :lo12:global_waveform]
	str	wzr, [sp, #4]
	cbz	x8, .LBB3_17
// %bb.1:
	mov	x19, x0
	cbz	x0, .LBB3_18
// %bb.2:
	ldr	w8, [x3]
	mov	w20, w1
	adrp	x9, need_pic
	cmp	w1, #10
	str	w8, [x9, :lo12:need_pic]
	b.ne	.LBB3_19
// %bb.3:
	ldr	x8, [x19, #32]
	cbz	x8, .LBB3_28
// %bb.4:
	adrp	x22, rkf_wf_get_lut.sftemp
	mov	w9, #26215                      // =0x6667
	and	w23, w2, #0xffff
	ldr	w8, [x22, :lo12:rkf_wf_get_lut.sftemp]
	movk	w9, #26214, lsl #16
	asr	w8, w8, #8
	smull	x8, w8, w9
	mov	w9, #52429                      // =0xcccd
	mul	w9, w23, w9
	lsr	x10, x8, #63
	asr	x8, x8, #33
	add	w8, w8, w10
	cmp	w8, w9, lsr #26
	b.eq	.LBB3_28
// %bb.5:
	ldr	x0, [x19, #16]
	ubfx	w20, w2, #8, #8
	cbz	x0, .LBB3_7
// %bb.6:
	bl	kfree
	str	xzr, [x19, #16]
.LBB3_7:
	bl	epd_overlay_lut
	mov	w21, w0
	mov	x0, x19
	mov	w2, w20
	mov	w1, w21
	bl	parse_wf_data
	tbnz	w0, #31, .LBB3_60
// %bb.8:
	mov	w20, w0
	ldr	x1, [x19, #32]
	mov	x0, x19
	mov	w2, w20
	bl	rkf_lut_wf_table
	cmp	w21, #1
	b.ne	.LBB3_16
// %bb.9:
	ldr	x21, [x19, #32]
	cbz	w20, .LBB3_14
// %bb.10:
	mov	w8, wzr
	mov	x9, xzr
	mov	w10, w20
	add	x11, x21, #31
	add	x12, x21, #992
.LBB3_11:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB3_12 Depth 2
	sxtw	x14, w8
	mov	x15, #-16                       // =0xfffffffffffffff0
	add	x13, x11, x14
	add	x14, x12, x14
.LBB3_12:                               //   Parent Loop BB3_11 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldurb	w16, [x13, #-1]
	add	x15, x15, #16
	cmp	x15, #224
	strb	w16, [x13]
	sturb	w16, [x13, #-2]
	add	x13, x13, #64
	ldurb	w16, [x14, #-32]
	sturb	w16, [x14, #-64]
	strb	w16, [x14], #2
	b.lo	.LBB3_12
// %bb.13:                              //   in Loop: Header=BB3_11 Depth=1
	add	x9, x9, #1
	add	w8, w8, #1024
	cmp	x9, x10
	b.ne	.LBB3_11
.LBB3_14:
	mov	x0, x21
	mov	w1, w20
	bl	epd_overlay_gray2_repair
	cbnz	w0, .LBB3_16
// %bb.15:
	lsl	w8, w20, #10
	mov	w9, #2                          // =0x2
	sub	w8, w8, #2048
	add	x8, x21, w8, sxtw
	strb	w9, [x8, #991]
	strb	w9, [x8, #959]
	strb	w9, [x8, #1023]
.LBB3_16:
	ldrb	w8, [x22, :lo12:rkf_wf_get_lut.sftemp]
	and	w9, w23, #0xff00
	str	w20, [x19, #4]
	mov	w0, #2                          // =0x2
	orr	w8, w8, w9
	str	w8, [x22, :lo12:rkf_wf_get_lut.sftemp]
	b	.LBB3_78
.LBB3_17:
	mov	w0, #-19                        // =0xffffffed
	b	.LBB3_78
.LBB3_18:
	mov	w0, #-22                        // =0xffffffea
	b	.LBB3_78
.LBB3_19:
	adrp	x8, rkf_wf_get_lut.sftemp
	mov	w10, #13108                     // =0x3334
	and	x9, x2, #0xff
	ldrb	w8, [x8, :lo12:rkf_wf_get_lut.sftemp]
	movk	w10, #13107, lsl #16
	adrp	x26, rkf_wf_get_lut.stype
	umull	x9, w9, w10
	adrp	x25, rkf_wf_get_lut.normal_repair
	umull	x8, w8, w10
	lsr	x9, x9, #32
	lsr	x8, x8, #32
	cmp	w9, w8
	b.ne	.LBB3_23
// %bb.20:
	ldr	w8, [x26, :lo12:rkf_wf_get_lut.stype]
	cmp	w8, w20
	b.eq	.LBB3_23
// %bb.21:
	ldr	w8, [x25, :lo12:rkf_wf_get_lut.normal_repair]
	ldr	w9, [x3, #8]
	cmp	w8, w9
	b.ne	.LBB3_23
// %bb.22:
	ldr	w8, [x3, #12]
	cbz	w8, .LBB3_28
.LBB3_23:
	ldr	x0, [x19, #16]
	mov	x27, x3
	and	w21, w2, #0xff
	cbz	x0, .LBB3_25
// %bb.24:
	bl	kfree
	str	xzr, [x19, #16]
.LBB3_25:
	mov	x0, x19
	mov	w1, w20
	mov	w2, w21
	bl	parse_wf_data
	tbnz	w0, #31, .LBB3_60
// %bb.26:
	ldr	x1, [x19, #24]
	mov	w22, w0
	cbz	w20, .LBB3_29
// %bb.27:
	mov	x0, x19
	mov	w2, w22
	bl	rkf_lut_wf_table
	mov	x8, x27
	b	.LBB3_34
.LBB3_28:
	mov	w0, wzr
	b	.LBB3_78
.LBB3_29:
	mov	x8, x27
	cbz	w22, .LBB3_34
// %bb.30:
	mov	w9, wzr
	mov	x10, xzr
	mov	w11, w22
	add	x12, x1, #7
.LBB3_31:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB3_32 Depth 2
	ldr	x14, [x19, #16]
	and	x13, x10, #0x3fffff
	mov	x15, xzr
	add	x13, x12, x13, lsl #10
	add	x14, x14, w9, sxtw #2
.LBB3_32:                               //   Parent Loop BB3_31 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	add	x16, x14, x15
	add	x15, x15, #4
	ldrb	w17, [x16]
	cmp	x15, #64
	and	w17, w17, #0x3
	sturb	w17, [x13, #-7]
	ldrb	w17, [x16]
	ubfx	w17, w17, #2, #2
	sturb	w17, [x13, #-6]
	ldrb	w17, [x16]
	ubfx	w17, w17, #4, #2
	sturb	w17, [x13, #-5]
	ldrb	w17, [x16]
	lsr	w17, w17, #6
	sturb	w17, [x13, #-4]
	ldrb	w17, [x16, #1]
	and	w17, w17, #0x3
	sturb	w17, [x13, #-3]
	ldr	w17, [x16]
	ubfx	w17, w17, #10, #2
	sturb	w17, [x13, #-2]
	ldr	w17, [x16]
	ubfx	w17, w17, #12, #2
	sturb	w17, [x13, #-1]
	ldr	w17, [x16]
	ubfx	w17, w17, #14, #2
	strb	w17, [x13]
	ldrb	w17, [x16, #2]
	and	w17, w17, #0x3
	strb	w17, [x13, #1]
	ldr	w17, [x16]
	ubfx	w17, w17, #18, #2
	strb	w17, [x13, #2]
	ldr	w17, [x16]
	ubfx	w17, w17, #20, #2
	strb	w17, [x13, #3]
	ldr	w17, [x16]
	ubfx	w17, w17, #22, #2
	strb	w17, [x13, #4]
	ldrb	w17, [x16, #3]
	and	w17, w17, #0x3
	strb	w17, [x13, #5]
	ldr	w17, [x16]
	ubfx	w17, w17, #26, #2
	strb	w17, [x13, #6]
	ldr	w17, [x16]
	ubfx	w17, w17, #28, #2
	strb	w17, [x13, #7]
	ldr	w16, [x16]
	lsr	w16, w16, #30
	strb	w16, [x13, #8]
	add	x13, x13, #32
	b.ne	.LBB3_32
// %bb.33:                              //   in Loop: Header=BB3_31 Depth=1
	add	x10, x10, #1
	add	w9, w9, #16
	cmp	x10, x11
	b.ne	.LBB3_31
.LBB3_34:
	ldr	w9, [x8, #4]
	cbz	w9, .LBB3_77
// %bb.35:
	cmp	w20, #7
	b.eq	.LBB3_37
// %bb.36:
	cmp	w20, #1
	b.ne	.LBB3_40
.LBB3_37:
	ldr	w24, [x8, #24]
	ldr	x23, [x19, #24]
	lsl	w9, w22, #10
	mov	w1, wzr
	cmp	w24, #0
	add	x0, x23, w9, sxtw
	cset	w8, gt
	lsl	w28, w22, w8
	sub	w8, w28, w22
	str	w28, [sp, #4]
	lsl	w8, w8, #10
	sxtw	x2, w8
	bl	memset
	cbz	w22, .LBB3_54
// %bb.38:
	cmp	w22, #1
	mov	w8, w22
	b.ne	.LBB3_42
// %bb.39:
	mov	x9, xzr
	b	.LBB3_52
.LBB3_40:
	sub	w9, w20, #13
	cmp	w9, #1
	b.hi	.LBB3_58
// %bb.41:
	ldr	x0, [x19, #24]
	ldr	w2, [x8, #8]
	mov	w1, w22
	bl	rkf_wf_normal_fix
	mov	x8, x27
	b	.LBB3_77
.LBB3_42:
	sub	x10, x8, #1
	add	x9, x23, #992
	lsl	x11, x10, #10
	add	x12, x9, x11
	cmp	x12, x9
	mov	x9, xzr
	b.lo	.LBB3_52
// %bb.43:
	add	x12, x23, #1022
	add	x13, x12, x11
	cmp	x13, x12
	b.lo	.LBB3_52
// %bb.44:
	add	x12, x23, #928
	add	x13, x12, x11
	cmp	x13, x12
	b.lo	.LBB3_52
// %bb.45:
	add	x12, x23, #958
	add	x13, x12, x11
	cmp	x13, x12
	b.lo	.LBB3_52
// %bb.46:
	add	x12, x23, #990
	add	x13, x12, x11
	cmp	x13, x12
	b.lo	.LBB3_52
// %bb.47:
	add	x11, x23, x11
	cmp	x11, x23
	b.lo	.LBB3_52
// %bb.48:
	lsr	x10, x10, #21
	cbnz	x10, .LBB3_52
// %bb.49:
	and	x9, x8, #0x7ffffffe
	mov	w10, #1024                      // =0x400
	mov	x11, x9
.LBB3_50:                               // =>This Inner Loop Header: Depth=1
	sub	w13, w10, #1024
	add	x12, x23, w10, sxtw
	subs	x11, x11, #2
	add	x13, x23, w13, sxtw
	add	w10, w10, #2048
	strb	wzr, [x12, #992]
	strb	wzr, [x12, #1022]
	strb	wzr, [x13, #992]
	strb	wzr, [x13, #1022]
	strb	wzr, [x13, #928]
	strb	wzr, [x12, #928]
	strb	wzr, [x13, #958]
	strb	wzr, [x12, #958]
	strb	wzr, [x13]
	strb	wzr, [x12]
	strb	wzr, [x13, #990]
	strb	wzr, [x12, #990]
	b.ne	.LBB3_50
// %bb.51:
	cmp	x9, x8
	b.eq	.LBB3_54
.LBB3_52:
	lsl	w10, w9, #10
	sub	x8, x8, x9
.LBB3_53:                               // =>This Inner Loop Header: Depth=1
	add	x9, x23, w10, sxtw
	subs	x8, x8, #1
	add	w10, w10, #1024
	strb	wzr, [x9, #992]
	strb	wzr, [x9, #1022]
	strb	wzr, [x9, #928]
	strb	wzr, [x9, #958]
	strb	wzr, [x9]
	strb	wzr, [x9, #990]
	b.ne	.LBB3_53
.LBB3_54:
	add	x2, sp, #4
	mov	x0, x23
	mov	w1, w22
	mov	w3, w24
	bl	epd_gray2_last_repair
	mov	x8, x27
	cbnz	w0, .LBB3_77
// %bb.55:
	sub	w9, w28, #1
	cmp	w24, w9
	csel	w9, w24, w9, lt
	cmp	w9, #1
	b.lt	.LBB3_77
// %bb.56:
	mov	w10, wzr
	mov	w11, #1                         // =0x1
	mov	w12, #2                         // =0x2
	mov	w13, w28
	mov	w14, w9
.LBB3_57:                               // =>This Inner Loop Header: Depth=1
	lsl	w15, w10, #10
	sdiv	w10, w13, w9
	subs	w14, w14, #1
	add	w13, w13, w28
	add	x15, x23, w15, sxtw
	strb	w11, [x15, #992]
	strb	w11, [x15, #928]
	strb	w12, [x15, #1022]
	strb	w12, [x15, #958]
	b.ne	.LBB3_57
	b	.LBB3_77
.LBB3_58:
	sub	w9, w20, #5
	cmp	w9, #1
	b.hi	.LBB3_61
// %bb.59:
	ldr	x0, [x19, #24]
	ldr	w2, [x8, #12]
	mov	w1, w22
	bl	rkf_wf_regal_fix
	mov	x8, x27
	b	.LBB3_77
.LBB3_60:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	_printk
	mov	w0, #-5                         // =0xfffffffb
	b	.LBB3_78
.LBB3_61:
	cmp	w20, #15
	b.ne	.LBB3_77
// %bb.62:
	cbz	w22, .LBB3_77
// %bb.63:
	ldr	x9, [x19, #24]
	cmp	w22, #1
	mov	w10, w22
	b.ne	.LBB3_65
// %bb.64:
	mov	x11, xzr
	b	.LBB3_75
.LBB3_65:
	sub	x12, x10, #1
	add	x11, x9, #958
	lsl	x13, x12, #10
	add	x14, x11, x13
	cmp	x14, x11
	mov	x11, xzr
	b.lo	.LBB3_75
// %bb.66:
	add	x14, x9, #990
	add	x15, x14, x13
	cmp	x15, x14
	b.lo	.LBB3_75
// %bb.67:
	add	x14, x9, #1022
	add	x15, x14, x13
	cmp	x15, x14
	b.lo	.LBB3_75
// %bb.68:
	add	x14, x9, #991
	add	x15, x14, x13
	cmp	x15, x14
	b.lo	.LBB3_75
// %bb.69:
	add	x14, x9, #1023
	add	x15, x14, x13
	cmp	x15, x14
	b.lo	.LBB3_75
// %bb.70:
	add	x14, x9, #957
	add	x13, x14, x13
	cmp	x13, x14
	b.lo	.LBB3_75
// %bb.71:
	lsr	x12, x12, #21
	cbnz	x12, .LBB3_75
// %bb.72:
	and	x11, x10, #0x7ffffffe
	mov	w12, #1024                      // =0x400
	mov	x13, x11
.LBB3_73:                               // =>This Inner Loop Header: Depth=1
	sub	w15, w12, #1024
	add	x14, x9, w12, sxtw
	subs	x13, x13, #2
	add	x15, x9, w15, sxtw
	add	w12, w12, #2048
	ldrb	w16, [x14, #957]
	ldrb	w17, [x15, #957]
	strb	w16, [x14, #958]
	strb	w16, [x14, #990]
	strb	w16, [x14, #1022]
	strb	w17, [x15, #958]
	strb	w17, [x15, #990]
	strb	w17, [x15, #1022]
	strb	w17, [x15, #991]
	strb	w16, [x14, #991]
	strb	w17, [x15, #1023]
	strb	w16, [x14, #1023]
	b.ne	.LBB3_73
// %bb.74:
	cmp	x11, x10
	b.eq	.LBB3_77
.LBB3_75:
	lsl	w12, w11, #10
	sub	x10, x10, x11
.LBB3_76:                               // =>This Inner Loop Header: Depth=1
	add	x11, x9, w12, sxtw
	subs	x10, x10, #1
	add	w12, w12, #1024
	ldrb	w13, [x11, #957]
	strb	w13, [x11, #958]
	strb	w13, [x11, #990]
	strb	w13, [x11, #1022]
	strb	w13, [x11, #991]
	strb	w13, [x11, #1023]
	b.ne	.LBB3_76
.LBB3_77:
	str	w22, [x19]
	ldr	w9, [sp, #4]
	adrp	x10, rkf_wf_get_lut.sftemp
	add	x10, x10, :lo12:rkf_wf_get_lut.sftemp
	mov	w0, #1                          // =0x1
	str	w20, [x26, :lo12:rkf_wf_get_lut.stype]
	ldrb	w11, [x10, #1]
	str	w9, [x19, #8]
	ldr	w8, [x8, #8]
	orr	w9, w21, w11, lsl #8
	str	w8, [x25, :lo12:rkf_wf_get_lut.normal_repair]
	str	w9, [x10]
.LBB3_78:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1608]
	ldr	x9, [sp, #8]
	cmp	x8, x9
	b.ne	.LBB3_80
// %bb.79:
	ldp	x20, x19, [sp, #96]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #112
	ldr	x30, [x18, #-8]!
	ret
.LBB3_80:
	bl	__stack_chk_fail
.Lfunc_end3:
	.size	rkf_wf_get_lut, .Lfunc_end3-rkf_wf_get_lut
                                        // -- End function
	.p2align	2                               // -- Begin function parse_wf_data
	.type	parse_wf_data,@function
parse_wf_data:                          // @parse_wf_data
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-64]!           // 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	cmp	w1, #15
	mov	w20, #-1                        // =0xffffffff
	stp	x24, x23, [sp, #16]             // 16-byte Folded Spill
	mov	x29, sp
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	b.hi	.LBB4_81
// %bb.1:
	mov	w8, w1
	adrp	x9, .LJTI4_0
	add	x9, x9, :lo12:.LJTI4_0
	adr	x10, .LBB4_2
	ldrh	w11, [x9, x8, lsl #1]
	add	x10, x10, x11, lsl #2
	mov	x19, x0
	br	x10
.LBB4_2:
	adrp	x8, global_waveform
	bic	w9, w2, w2, asr #31
	mov	w10, #50                        // =0x32
	ldr	x8, [x8, :lo12:global_waveform]
	cmp	w9, #50
	ldrb	w11, [x8, #212]
	csel	w9, w9, w10, lt
	cmp	w11, w9
	b.hi	.LBB4_23
// %bb.3:
	mov	x10, xzr
	mov	x11, x8
.LBB4_4:                                // =>This Inner Loop Header: Depth=1
	ldrb	w12, [x11, #213]
	cmp	w12, w9
	b.hi	.LBB4_57
// %bb.5:                               //   in Loop: Header=BB4_4 Depth=1
	ldrb	w13, [x11, #212]
	cmp	w12, w13
	b.lo	.LBB4_57
// %bb.6:                               //   in Loop: Header=BB4_4 Depth=1
	sub	x10, x10, #1
	add	x11, x11, #1
	cmn	x10, #50
	b.ne	.LBB4_4
	b	.LBB4_56
.LBB4_7:
	adrp	x8, global_waveform
	bic	w9, w2, w2, asr #31
	mov	w10, #50                        // =0x32
	ldr	x8, [x8, :lo12:global_waveform]
	cmp	w9, #50
	ldrb	w11, [x8, #340]
	csel	w9, w9, w10, lt
	cmp	w11, w9
	b.ls	.LBB4_13
// %bb.8:
	mov	w9, #-1                         // =0xffffffff
	b	.LBB4_37
.LBB4_9:
	adrp	x8, global_waveform
	bic	w9, w2, w2, asr #31
	mov	w10, #50                        // =0x32
	ldr	x8, [x8, :lo12:global_waveform]
	cmp	w9, #50
	ldrb	w11, [x8, #276]
	csel	w9, w9, w10, lt
	cmp	w11, w9
	b.ls	.LBB4_26
// %bb.10:
	mov	w9, #-1                         // =0xffffffff
	b	.LBB4_39
.LBB4_11:
	adrp	x8, global_waveform
	bic	w9, w2, w2, asr #31
	mov	w10, #50                        // =0x32
	ldr	x8, [x8, :lo12:global_waveform]
	cmp	w9, #50
	ldrb	w11, [x8, #404]
	csel	w9, w9, w10, lt
	cmp	w11, w9
	b.ls	.LBB4_31
// %bb.12:
	mov	w9, #-1                         // =0xffffffff
	b	.LBB4_41
.LBB4_13:
	mov	x10, xzr
	mov	x11, x8
.LBB4_14:                               // =>This Inner Loop Header: Depth=1
	ldrb	w12, [x11, #341]
	cmp	w12, w9
	b.hi	.LBB4_36
// %bb.15:                              //   in Loop: Header=BB4_14 Depth=1
	ldrb	w13, [x11, #340]
	cmp	w12, w13
	b.lo	.LBB4_36
// %bb.16:                              //   in Loop: Header=BB4_14 Depth=1
	sub	x10, x10, #1
	add	x11, x11, #1
	cmn	x10, #50
	b.ne	.LBB4_14
// %bb.17:
	mov	x9, xzr
	b	.LBB4_37
.LBB4_18:
	adrp	x8, global_waveform
	bic	w9, w2, w2, asr #31
	mov	w10, #50                        // =0x32
	ldr	x8, [x8, :lo12:global_waveform]
	cmp	w9, #50
	ldrb	w11, [x8, #148]
	csel	w9, w9, w10, lt
	cmp	w11, w9
	b.ls	.LBB4_42
// %bb.19:
	mov	w9, #-1                         // =0xffffffff
	b	.LBB4_65
.LBB4_20:
	adrp	x8, global_waveform
	bic	w9, w2, w2, asr #31
	mov	w10, #50                        // =0x32
	ldr	x8, [x8, :lo12:global_waveform]
	cmp	w9, #50
	ldrb	w11, [x8, #532]
	csel	w9, w9, w10, lt
	cmp	w11, w9
	b.ls	.LBB4_47
// %bb.21:
	mov	w9, #-1                         // =0xffffffff
	b	.LBB4_74
.LBB4_22:
	adrp	x8, global_waveform
	bic	w9, w2, w2, asr #31
	mov	w10, #50                        // =0x32
	ldr	x8, [x8, :lo12:global_waveform]
	cmp	w9, #50
	ldrb	w11, [x8, #212]
	csel	w9, w9, w10, lt
	cmp	w11, w9
	b.ls	.LBB4_52
.LBB4_23:
	mov	w9, #-1                         // =0xffffffff
	b	.LBB4_58
.LBB4_24:
	adrp	x8, global_waveform
	bic	w9, w2, w2, asr #31
	mov	w10, #50                        // =0x32
	ldr	x8, [x8, :lo12:global_waveform]
	cmp	w9, #50
	ldrb	w11, [x8, #468]
	csel	w9, w9, w10, lt
	cmp	w11, w9
	b.ls	.LBB4_59
// %bb.25:
	mov	w9, #-1                         // =0xffffffff
	b	.LBB4_76
.LBB4_26:
	mov	x10, xzr
	mov	x11, x8
.LBB4_27:                               // =>This Inner Loop Header: Depth=1
	ldrb	w12, [x11, #277]
	cmp	w12, w9
	b.hi	.LBB4_38
// %bb.28:                              //   in Loop: Header=BB4_27 Depth=1
	ldrb	w13, [x11, #276]
	cmp	w12, w13
	b.lo	.LBB4_38
// %bb.29:                              //   in Loop: Header=BB4_27 Depth=1
	sub	x10, x10, #1
	add	x11, x11, #1
	cmn	x10, #50
	b.ne	.LBB4_27
// %bb.30:
	mov	x9, xzr
	b	.LBB4_39
.LBB4_31:
	mov	x10, xzr
	mov	x11, x8
.LBB4_32:                               // =>This Inner Loop Header: Depth=1
	ldrb	w12, [x11, #405]
	cmp	w12, w9
	b.hi	.LBB4_40
// %bb.33:                              //   in Loop: Header=BB4_32 Depth=1
	ldrb	w13, [x11, #404]
	cmp	w12, w13
	b.lo	.LBB4_40
// %bb.34:                              //   in Loop: Header=BB4_32 Depth=1
	sub	x10, x10, #1
	add	x11, x11, #1
	cmn	x10, #50
	b.ne	.LBB4_32
// %bb.35:
	mov	x9, xzr
	b	.LBB4_41
.LBB4_36:
	neg	x9, x10
.LBB4_37:
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #1364]
	b	.LBB4_77
.LBB4_38:
	neg	x9, x10
.LBB4_39:
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #1108]
	b	.LBB4_77
.LBB4_40:
	neg	x9, x10
.LBB4_41:
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #1620]
	b	.LBB4_77
.LBB4_42:
	mov	x10, xzr
	mov	x11, x8
.LBB4_43:                               // =>This Inner Loop Header: Depth=1
	ldrb	w12, [x11, #149]
	cmp	w12, w9
	b.hi	.LBB4_64
// %bb.44:                              //   in Loop: Header=BB4_43 Depth=1
	ldrb	w13, [x11, #148]
	cmp	w12, w13
	b.lo	.LBB4_64
// %bb.45:                              //   in Loop: Header=BB4_43 Depth=1
	sub	x10, x10, #1
	add	x11, x11, #1
	cmn	x10, #50
	b.ne	.LBB4_43
// %bb.46:
	mov	x9, xzr
	b	.LBB4_65
.LBB4_47:
	mov	x10, xzr
	mov	x11, x8
.LBB4_48:                               // =>This Inner Loop Header: Depth=1
	ldrb	w12, [x11, #533]
	cmp	w12, w9
	b.hi	.LBB4_73
// %bb.49:                              //   in Loop: Header=BB4_48 Depth=1
	ldrb	w13, [x11, #532]
	cmp	w12, w13
	b.lo	.LBB4_73
// %bb.50:                              //   in Loop: Header=BB4_48 Depth=1
	sub	x10, x10, #1
	add	x11, x11, #1
	cmn	x10, #50
	b.ne	.LBB4_48
// %bb.51:
	mov	x9, xzr
	b	.LBB4_74
.LBB4_52:
	mov	x10, xzr
	mov	x11, x8
.LBB4_53:                               // =>This Inner Loop Header: Depth=1
	ldrb	w12, [x11, #213]
	cmp	w12, w9
	b.hi	.LBB4_57
// %bb.54:                              //   in Loop: Header=BB4_53 Depth=1
	ldrb	w13, [x11, #212]
	cmp	w12, w13
	b.lo	.LBB4_57
// %bb.55:                              //   in Loop: Header=BB4_53 Depth=1
	sub	x10, x10, #1
	add	x11, x11, #1
	cmn	x10, #50
	b.ne	.LBB4_53
.LBB4_56:
	mov	x9, xzr
	b	.LBB4_58
.LBB4_57:
	neg	x9, x10
.LBB4_58:
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #852]
	b	.LBB4_77
.LBB4_59:
	mov	x10, xzr
	mov	x11, x8
.LBB4_60:                               // =>This Inner Loop Header: Depth=1
	ldrb	w12, [x11, #469]
	cmp	w12, w9
	b.hi	.LBB4_75
// %bb.61:                              //   in Loop: Header=BB4_60 Depth=1
	ldrb	w13, [x11, #468]
	cmp	w12, w13
	b.lo	.LBB4_75
// %bb.62:                              //   in Loop: Header=BB4_60 Depth=1
	sub	x10, x10, #1
	add	x11, x11, #1
	cmn	x10, #50
	b.ne	.LBB4_60
// %bb.63:
	mov	x9, xzr
	b	.LBB4_76
.LBB4_64:
	neg	x9, x10
.LBB4_65:
	add	x9, x8, x9, lsl #2
	mov	w1, #3520                       // =0xdc0
	ldr	w9, [x9, #596]
	add	x23, x8, x9
	ldrb	w20, [x23]
	add	x22, x20, #15
	lsr	x24, x22, #2
	and	x0, x24, #0x7c
	bl	__kmalloc_noprof
	cbz	x0, .LBB4_80
// %bb.66:
	add	x1, x23, #4
	and	x2, x24, #0x7c
	mov	x21, x0
	bl	memcpy
	lsr	w23, w22, #4
	mov	w1, #3520                       // =0xdc0
	lsl	w0, w23, #10
	bl	__kmalloc_noprof
	mov	x22, x0
	cbz	w20, .LBB4_72
// %bb.67:
	cbz	x22, .LBB4_72
// %bb.68:
	mov	w10, #16385                     // =0x4001
	mov	w11, #5460                      // =0x1554
	mov	w8, wzr
	mov	w9, wzr
	movk	w10, #85, lsl #16
	movk	w11, #21760, lsl #16
	mov	x12, x21
.LBB4_69:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB4_70 Depth 2
	ldr	w15, [x12]
	mov	w14, wzr
	mov	w13, wzr
.LBB4_70:                               //   Parent Loop BB4_69 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	asr	w16, w15, w14
	add	w0, w9, w13
	add	w13, w13, #16
	add	w1, w0, #1
	cmp	w13, #256
	add	w14, w14, #2
	and	w16, w16, #0x3
	mul	w17, w16, w10
	mul	w16, w16, w11
	orr	w16, w16, w17
	add	w17, w0, #2
	str	w16, [x22, w1, sxtw #2]
	str	w16, [x22, w17, sxtw #2]
	add	w17, w0, #3
	str	w16, [x22, w17, sxtw #2]
	add	w17, w0, #4
	str	w16, [x22, w17, sxtw #2]
	add	w17, w0, #5
	str	w16, [x22, w17, sxtw #2]
	add	w17, w0, #6
	str	w16, [x22, w17, sxtw #2]
	add	w17, w0, #7
	str	w16, [x22, w17, sxtw #2]
	add	w17, w0, #8
	str	w16, [x22, w17, sxtw #2]
	add	w17, w0, #9
	str	w16, [x22, w17, sxtw #2]
	add	w17, w0, #10
	str	w16, [x22, w17, sxtw #2]
	add	w17, w0, #11
	str	w16, [x22, w17, sxtw #2]
	add	w17, w0, #12
	str	w16, [x22, w17, sxtw #2]
	add	w17, w0, #13
	str	w16, [x22, w17, sxtw #2]
	add	w17, w0, #14
	str	w16, [x22, w17, sxtw #2]
	add	w17, w0, #15
	str	w16, [x22, w0, sxtw #2]
	str	w16, [x22, w17, sxtw #2]
	b.ne	.LBB4_70
// %bb.71:                              //   in Loop: Header=BB4_69 Depth=1
	add	w8, w8, #1
	add	x12, x12, #4
	add	w9, w9, w13
	cmp	w8, w23
	b.ne	.LBB4_69
.LBB4_72:
	mov	x0, x21
	str	x22, [x19, #16]
	bl	kfree
	cbnz	x22, .LBB4_81
	b	.LBB4_80
.LBB4_73:
	neg	x9, x10
.LBB4_74:
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #2132]
	b	.LBB4_77
.LBB4_75:
	neg	x9, x10
.LBB4_76:
	add	x9, x8, x9, lsl #2
	ldr	w9, [x9, #1876]
.LBB4_77:
	adrp	x10, maxpic
	add	x22, x8, x9
	mov	w8, #4                          // =0x4
	ldrb	w10, [x10, :lo12:maxpic]
	ldrb	w20, [x22]
	mov	w1, #3520                       // =0xdc0
	cmp	w10, #0
	cinc	w8, w8, ne
	lsl	w9, w20, w8
	lsl	w8, w9, w8
	lsr	w21, w8, #2
	mov	x0, x21
	bl	__kmalloc_noprof
	cbz	x0, .LBB4_79
// %bb.78:
	add	x1, x22, #4
	mov	x2, x21
	mov	x22, x0
	bl	memcpy
	str	x22, [x19, #16]
	b	.LBB4_81
.LBB4_79:
	str	xzr, [x19, #16]
.LBB4_80:
	mov	w20, #-1                        // =0xffffffff
.LBB4_81:
	mov	w0, w20
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end4:
	.size	parse_wf_data, .Lfunc_end4-parse_wf_data
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
.LJTI4_0:
	.hword	(.LBB4_18-.LBB4_2)>>2
	.hword	(.LBB4_24-.LBB4_2)>>2
	.hword	(.LBB4_22-.LBB4_2)>>2
	.hword	(.LBB4_2-.LBB4_2)>>2
	.hword	(.LBB4_9-.LBB4_2)>>2
	.hword	(.LBB4_7-.LBB4_2)>>2
	.hword	(.LBB4_11-.LBB4_2)>>2
	.hword	(.LBB4_20-.LBB4_2)>>2
	.hword	(.LBB4_2-.LBB4_2)>>2
	.hword	(.LBB4_81-.LBB4_2)>>2
	.hword	(.LBB4_81-.LBB4_2)>>2
	.hword	(.LBB4_7-.LBB4_2)>>2
	.hword	(.LBB4_11-.LBB4_2)>>2
	.hword	(.LBB4_9-.LBB4_2)>>2
	.hword	(.LBB4_2-.LBB4_2)>>2
	.hword	(.LBB4_7-.LBB4_2)>>2
                                        // -- End function
	.text
	.p2align	2                               // -- Begin function rkf_lut_wf_table
	.type	rkf_lut_wf_table,@function
rkf_lut_wf_table:                       // @rkf_lut_wf_table
// %bb.0:
	cmp	w2, #1
	b.lt	.LBB5_14
// %bb.1:
	adrp	x8, maxpic
	mov	w11, #32                        // =0x20
	mov	x9, xzr
	ldrb	w10, [x8, :lo12:maxpic]
	mov	w8, #16                         // =0x10
	cmp	w10, #0
	csel	w11, w11, w8, ne
	mov	w8, #4                          // =0x4
	lsr	w12, w11, #4
	cinc	w13, w8, ne
	mov	w8, w2
.LBB5_2:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB5_3 Depth 2
                                        //       Child Loop BB5_4 Depth 3
	lsl	w14, w9, w13
	ldr	x15, [x0, #16]
	lsl	w16, w14, w10
	and	x14, x9, #0x3fffff
	add	x14, x1, x14, lsl #10
	add	x15, x15, w16, sxtw #2
	mov	x16, xzr
.LBB5_3:                                //   Parent Loop BB5_2 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB5_4 Depth 3
	mul	x3, x16, x12
	mov	w17, wzr
	mov	x4, xzr
	add	x3, x15, x3, lsl #2
.LBB5_4:                                //   Parent Loop BB5_2 Depth=1
                                        //     Parent Loop BB5_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ubfx	x5, x4, #4, #28
	and	w6, w17, #0x1e
	add	w17, w17, #2
	ldr	w5, [x3, x5, lsl #2]
	lsr	w5, w5, w6
	and	w5, w5, #0x3
	strb	w5, [x14, x4]
	add	x4, x4, #1
	cmp	x11, x4
	b.ne	.LBB5_4
// %bb.5:                               //   in Loop: Header=BB5_3 Depth=2
	add	x16, x16, #1
	add	x14, x14, #32
	cmp	x16, x11
	b.ne	.LBB5_3
// %bb.6:                               //   in Loop: Header=BB5_2 Depth=1
	add	x9, x9, #1
	cmp	x9, x8
	b.ne	.LBB5_2
// %bb.7:
	cbz	w10, .LBB5_14
// %bb.8:
	adrp	x9, need_pic
	ldr	w9, [x9, :lo12:need_pic]
	cmp	w9, #16
	b.ne	.LBB5_14
// %bb.9:
	cmp	w2, #1
	b.lt	.LBB5_14
// %bb.10:
	mov	w9, wzr
	mov	x10, xzr
	add	x11, x1, #7
	add	x12, x1, #16
.LBB5_11:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB5_12 Depth 2
	and	x13, x10, #0x3fffff
	and	x14, x9, #0x3ffffff
	mov	x15, #-2                        // =0xfffffffffffffffe
	add	x13, x11, x13, lsl #10
	add	x14, x12, x14, lsl #6
.LBB5_12:                               //   Parent Loop BB5_11 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldurb	w16, [x14, #-16]
	add	x15, x15, #2
	cmp	x15, #30
	sturb	w16, [x13, #-7]
	ldurb	w16, [x14, #-14]
	sturb	w16, [x13, #-6]
	ldurb	w16, [x14, #-12]
	sturb	w16, [x13, #-5]
	ldurb	w16, [x14, #-10]
	sturb	w16, [x13, #-4]
	ldurb	w16, [x14, #-8]
	sturb	w16, [x13, #-3]
	ldurb	w16, [x14, #-6]
	sturb	w16, [x13, #-2]
	ldurb	w16, [x14, #-4]
	sturb	w16, [x13, #-1]
	ldurb	w16, [x14, #-2]
	strb	w16, [x13]
	ldrb	w16, [x14]
	strb	w16, [x13, #1]
	ldrb	w16, [x14, #2]
	strb	w16, [x13, #2]
	ldrb	w16, [x14, #4]
	strb	w16, [x13, #3]
	ldrb	w16, [x14, #6]
	strb	w16, [x13, #4]
	ldrb	w16, [x14, #8]
	strb	w16, [x13, #5]
	ldrb	w16, [x14, #10]
	strb	w16, [x13, #6]
	ldrb	w16, [x14, #12]
	strb	w16, [x13, #7]
	ldrb	w16, [x14, #14]
	add	x14, x14, #64
	strb	w16, [x13, #8]
	add	x13, x13, #32
	b.lo	.LBB5_12
// %bb.13:                              //   in Loop: Header=BB5_11 Depth=1
	add	x10, x10, #1
	add	w9, w9, #16
	cmp	x10, x8
	b.ne	.LBB5_11
.LBB5_14:
	ret
.Lfunc_end5:
	.size	rkf_lut_wf_table, .Lfunc_end5-rkf_lut_wf_table
                                        // -- End function
	.p2align	2                               // -- Begin function rkf_wf_normal_fix
	.type	rkf_wf_normal_fix,@function
rkf_wf_normal_fix:                      // @rkf_wf_normal_fix
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	mov	x21, x0
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	mov	w20, w2
	mov	w19, w1
	bl	epd_normal_repair
	cbnz	w0, .LBB6_12
// %bb.1:
	cmp	w19, #1
	b.lt	.LBB6_12
// %bb.2:
	sub	w9, w19, #5
	sub	w10, w19, #4
	sub	w11, w19, #3
	ubfiz	x9, x9, #10, #32
	ubfiz	x10, x10, #10, #32
	ubfiz	x11, x11, #10, #32
	ubfiz	x12, x19, #10, #32
	mov	x8, xzr
	mov	w13, #1                         // =0x1
	mov	w14, #2                         // =0x2
	b	.LBB6_6
.LBB6_3:                                //   in Loop: Header=BB6_6 Depth=1
	strb	w13, [x15, #991]
	mov	w16, #2                         // =0x2
	strb	w13, [x15, #959]
	strb	w13, [x15, #1023]
.LBB6_4:                                //   in Loop: Header=BB6_6 Depth=1
	strb	w16, [x15]
.LBB6_5:                                //   in Loop: Header=BB6_6 Depth=1
	ldrb	w16, [x15, #30]
	add	x8, x8, #1024
	strb	wzr, [x15, #958]
	cmp	x12, x8
	strb	wzr, [x15, #1022]
	strb	w16, [x15, #31]
	strb	w16, [x15, #63]
	strb	w16, [x15, #127]
	strb	w16, [x15, #29]
	strb	w16, [x15, #61]
	strb	w16, [x15, #125]
	ldrb	w16, [x15, #960]
	strb	wzr, [x15, #96]
	strb	wzr, [x15, #32]
	strb	w16, [x15, #961]
	strb	w16, [x15, #993]
	strb	w16, [x15, #929]
	strb	w16, [x15, #963]
	strb	w16, [x15, #995]
	strb	w16, [x15, #931]
	b.eq	.LBB6_12
.LBB6_6:                                // =>This Inner Loop Header: Depth=1
	add	x15, x21, w8, sxtw
	cbz	w20, .LBB6_5
// %bb.7:                               //   in Loop: Header=BB6_6 Depth=1
	ldrb	w16, [x15, #990]
	ldrb	w17, [x15]
	cmp	x9, x8
	strb	wzr, [x15, #990]
	strb	w16, [x15, #989]
	strb	w16, [x15, #1021]
	strb	w16, [x15, #957]
	strb	w17, [x15, #3]
	strb	w17, [x15, #35]
	strb	w17, [x15, #99]
	b.eq	.LBB6_3
// %bb.8:                               //   in Loop: Header=BB6_6 Depth=1
	cmp	x10, x8
	b.eq	.LBB6_10
// %bb.9:                               //   in Loop: Header=BB6_6 Depth=1
	cmp	x11, x8
	b.ne	.LBB6_11
.LBB6_10:                               //   in Loop: Header=BB6_6 Depth=1
	strb	w14, [x15, #991]
	mov	w16, #1                         // =0x1
	strb	w14, [x15, #959]
	strb	w14, [x15, #1023]
	b	.LBB6_4
.LBB6_11:                               //   in Loop: Header=BB6_6 Depth=1
	mov	w16, wzr
	strb	wzr, [x15, #991]
	strb	wzr, [x15, #959]
	strb	wzr, [x15, #1023]
	b	.LBB6_4
.LBB6_12:
	mov	w0, w19
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end6:
	.size	rkf_wf_normal_fix, .Lfunc_end6-rkf_wf_normal_fix
                                        // -- End function
	.p2align	2                               // -- Begin function rkf_wf_regal_fix
	.type	rkf_wf_regal_fix,@function
rkf_wf_regal_fix:                       // @rkf_wf_regal_fix
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	w19, w1
	mov	x29, sp
	tbz	w2, #1, .LBB7_4
// %bb.1:
	cmp	w19, #1
	b.lt	.LBB7_4
// %bb.2:
	ubfiz	x8, x19, #10, #32
	mov	x9, xzr
.LBB7_3:                                // =>This Inner Loop Header: Depth=1
	add	x10, x0, w9, sxtw
	add	x9, x9, #1024
	ldrb	w11, [x10, #991]
	ldrb	w12, [x10, #989]
	strb	wzr, [x10]
	eor	w13, w11, #0x3
	cmp	w11, #0
	eor	w11, w12, #0x3
	csel	w13, wzr, w13, eq
	cmp	w12, #0
	csel	w11, wzr, w11, eq
	cmp	x8, x9
	strb	w13, [x10, #1]
	strb	w11, [x10, #3]
	b.ne	.LBB7_3
.LBB7_4:
	cmp	w19, #1
	b.lt	.LBB7_21
// %bb.5:
	mov	w8, w19
	mov	x9, xzr
	ubfiz	x10, x8, #10, #32
	mov	w8, w19
.LBB7_6:                                // =>This Inner Loop Header: Depth=1
	add	x11, x0, w9, sxtw
	add	x9, x9, #1024
	cmp	x10, x9
	ldrb	w12, [x11, #30]
	ldrb	w13, [x11, #94]
	strb	wzr, [x11, #96]
	strb	wzr, [x11, #32]
	strb	w12, [x11, #31]
	strb	w12, [x11, #29]
	ldrb	w12, [x11, #158]
	strb	w13, [x11, #95]
	strb	w13, [x11, #93]
	ldrb	w13, [x11, #222]
	strb	w12, [x11, #159]
	strb	w12, [x11, #157]
	ldrb	w12, [x11, #286]
	strb	w13, [x11, #223]
	strb	w13, [x11, #221]
	ldrb	w13, [x11, #350]
	strb	w12, [x11, #287]
	strb	w12, [x11, #285]
	ldrb	w12, [x11, #414]
	strb	w13, [x11, #351]
	strb	w13, [x11, #349]
	ldrb	w13, [x11, #478]
	strb	w12, [x11, #415]
	strb	w12, [x11, #413]
	ldrb	w12, [x11, #542]
	strb	w13, [x11, #479]
	strb	w13, [x11, #477]
	ldrb	w13, [x11, #606]
	strb	w12, [x11, #543]
	strb	w12, [x11, #541]
	ldrb	w12, [x11, #670]
	strb	w13, [x11, #607]
	strb	w13, [x11, #605]
	ldrb	w13, [x11, #734]
	strb	w12, [x11, #671]
	strb	w12, [x11, #669]
	ldrb	w12, [x11, #798]
	strb	w13, [x11, #735]
	strb	w13, [x11, #733]
	ldrb	w13, [x11, #862]
	strb	w12, [x11, #799]
	strb	w12, [x11, #797]
	ldrb	w12, [x11, #926]
	strb	w13, [x11, #863]
	strb	w13, [x11, #861]
	ldrb	w13, [x11, #960]
	strb	w12, [x11, #927]
	strb	w12, [x11, #925]
	ldrb	w12, [x11, #896]
	strb	w13, [x11, #963]
	strb	w13, [x11, #961]
	ldrb	w13, [x11, #832]
	strb	w12, [x11, #899]
	strb	w12, [x11, #897]
	ldrb	w12, [x11, #768]
	strb	w13, [x11, #835]
	strb	w13, [x11, #833]
	ldrb	w13, [x11, #704]
	strb	w12, [x11, #771]
	strb	w12, [x11, #769]
	ldrb	w12, [x11, #640]
	strb	w13, [x11, #707]
	strb	w13, [x11, #705]
	ldrb	w13, [x11, #576]
	strb	w12, [x11, #643]
	strb	w12, [x11, #641]
	ldrb	w12, [x11, #512]
	strb	w13, [x11, #579]
	strb	w13, [x11, #577]
	ldrb	w13, [x11, #448]
	strb	w12, [x11, #515]
	strb	w12, [x11, #513]
	ldrb	w12, [x11, #384]
	strb	w13, [x11, #451]
	strb	w13, [x11, #449]
	ldrb	w13, [x11, #320]
	strb	w12, [x11, #387]
	strb	w12, [x11, #385]
	ldrb	w12, [x11, #256]
	strb	w13, [x11, #323]
	strb	w13, [x11, #321]
	ldrb	w13, [x11, #192]
	strb	w12, [x11, #259]
	strb	w12, [x11, #257]
	ldrb	w12, [x11, #128]
	strb	w13, [x11, #195]
	strb	w13, [x11, #193]
	ldrb	w13, [x11, #64]
	strb	w12, [x11, #131]
	strb	w12, [x11, #129]
	strb	w13, [x11, #67]
	strb	w13, [x11, #65]
	b.ne	.LBB7_6
// %bb.7:
	tbnz	w2, #0, .LBB7_21
// %bb.8:
	cmp	w19, #1
	b.lt	.LBB7_21
// %bb.9:
	b.ne	.LBB7_11
// %bb.10:
	mov	x9, xzr
	b	.LBB7_19
.LBB7_11:
	sub	x10, x8, #1
	add	x9, x0, #991
	lsl	x11, x10, #10
	add	x12, x9, x11
	cmp	x12, x9
	mov	x9, xzr
	b.lo	.LBB7_19
// %bb.12:
	add	x12, x0, #989
	add	x13, x12, x11
	cmp	x13, x12
	b.lo	.LBB7_19
// %bb.13:
	add	x12, x0, #1023
	add	x13, x12, x11
	cmp	x13, x12
	b.lo	.LBB7_19
// %bb.14:
	add	x11, x0, x11
	cmp	x11, x0
	b.lo	.LBB7_19
// %bb.15:
	lsr	x10, x10, #21
	cbnz	x10, .LBB7_19
// %bb.16:
	and	x9, x8, #0x3ffffe
	mov	w10, #1024                      // =0x400
	mov	x11, x9
.LBB7_17:                               // =>This Inner Loop Header: Depth=1
	sub	w12, w10, #1024
	add	x13, x0, w10, sxtw
	add	w10, w10, #2048
	add	x12, x0, w12, sxtw
	ldrb	w15, [x13]
	strb	wzr, [x13, #991]
	ldrb	w14, [x12]
	strb	wzr, [x12, #991]
	strb	wzr, [x12, #989]
	eor	w16, w14, #0x3
	cmp	w14, #0
	eor	w14, w15, #0x3
	csel	w16, wzr, w16, eq
	cmp	w15, #0
	strb	wzr, [x13, #989]
	csel	w14, wzr, w14, eq
	subs	x11, x11, #2
	strb	w16, [x12, #1023]
	strb	w14, [x13, #1023]
	b.ne	.LBB7_17
// %bb.18:
	cmp	x9, x8
	b.eq	.LBB7_21
.LBB7_19:
	lsl	w10, w9, #10
	sub	x8, x8, x9
.LBB7_20:                               // =>This Inner Loop Header: Depth=1
	add	x9, x0, w10, sxtw
	add	w10, w10, #1024
	ldrb	w11, [x9]
	strb	wzr, [x9, #991]
	strb	wzr, [x9, #989]
	eor	w12, w11, #0x3
	cmp	w11, #0
	csel	w11, wzr, w12, eq
	subs	x8, x8, #1
	strb	w11, [x9, #1023]
	b.ne	.LBB7_20
.LBB7_21:
	mov	w1, w19
	bl	epd_regal_repair
	mov	w0, w19
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end7:
	.size	rkf_wf_regal_fix, .Lfunc_end7-rkf_wf_regal_fix
                                        // -- End function
	.type	global_waveform,@object         // @global_waveform
	.local	global_waveform
	.comm	global_waveform,8,8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rkf: failed to check RKF file version\n"
	.size	.L.str, 39

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"rkf: failed to check RKF file format\n"
	.size	.L.str.1, 38

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"rkf: failed to check crc RKF waveform\n"
	.size	.L.str.2, 39

	.type	maxpic,@object                  // @maxpic
	.local	maxpic
	.comm	maxpic,1,4
	.type	rkf_wf_get_lut.stype,@object    // @rkf_wf_get_lut.stype
	.data
	.p2align	2, 0x0
rkf_wf_get_lut.stype:
	.word	16                              // 0x10
	.size	rkf_wf_get_lut.stype, 4

	.type	rkf_wf_get_lut.sftemp,@object   // @rkf_wf_get_lut.sftemp
	.p2align	2, 0x0
rkf_wf_get_lut.sftemp:
	.word	4294967295                      // 0xffffffff
	.size	rkf_wf_get_lut.sftemp, 4

	.type	rkf_wf_get_lut.normal_repair,@object // @rkf_wf_get_lut.normal_repair
	.local	rkf_wf_get_lut.normal_repair
	.comm	rkf_wf_get_lut.normal_repair,4,4
	.type	need_pic,@object                // @need_pic
	.p2align	2, 0x0
need_pic:
	.word	16                              // 0x10
	.size	need_pic, 4

	.type	.L.str.3,@object                // @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"rkf waveform get frame number failed\n"
	.size	.L.str.3, 38

	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"rkf:v1.0"
	.size	.L.str.4, 9

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"rkf:v2.0"
	.size	.L.str.5, 9

	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"rkf: input waveform version: %s, gray level: %d\n"
	.size	.L.str.6, 49

	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"rkf waveform"
	.size	.L.str.7, 13

	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"rkf: check format failed\n"
	.size	.L.str.8, 26

	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"[EBOOK]: waveform crc err readcrc = %x crccheck = %x\n"
	.size	.L.str.9, 54

	.type	crc32_table,@object             // @crc32_table
	.local	crc32_table
	.comm	crc32_table,1024,4
	.ident	"Android (13290119, +pgo, +bolt, +lto, +mlgo, based on r547379) clang version 20.0.0 (https://android.googlesource.com/toolchain/llvm-project b718bcaf8c198c82f3021447d943401e3ab5bd54)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
