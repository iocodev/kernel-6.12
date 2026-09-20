// SPDX-License-Identifier: GPL-2.0
/*
 * Copyright (c) 2020-2024 Rockchip Electronics Co., Ltd.
 *
 * Author: Zorro Liu <zorro.liu@rock-chips.com>
 */

	.text
	.file	"ebc_dev_y8.c"
                                        // Start of file scope inline assembly
	.section	.initcall6s.init,"a",@progbits
__initcall__kmod_rkebc__649_4908_ebc_init6s:
.Ltmp0:
	.word	ebc_init-.Ltmp0
	.text

	.weak	__kcfi_typeid_delayed_work_timer_fn
.set __kcfi_typeid_delayed_work_timer_fn, 1184366065

                                        // End of file scope inline assembly
	.section	.exit.text,"ax",@progbits
	.p2align	2                               // -- Begin function ebc_exit
	.type	ebc_exit,@function
	.word	3854859616                      // 0xe5c47d60
ebc_exit:                               // @ebc_exit
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	adrp	x0, ebc_driver
	add	x0, x0, :lo12:ebc_driver
	mov	x29, sp
	bl	platform_driver_unregister
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end0:
	.size	ebc_exit, .Lfunc_end0-ebc_exit
                                        // -- End function
	.section	.init.text,"ax",@progbits
	.p2align	2                               // -- Begin function ebc_init
	.type	ebc_init,@function
	.word	1874538549                      // 0x6fbb3035
ebc_init:                               // @ebc_init
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	adrp	x0, ebc_driver
	add	x0, x0, :lo12:ebc_driver
	mov	x1, xzr
	mov	x29, sp
	bl	__platform_driver_register
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end1:
	.size	ebc_init, .Lfunc_end1-ebc_init
                                        // -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	2                               // -- Begin function ebc_probe
	.type	ebc_probe,@function
	.word	3354970236                      // 0xc7f8c87c
ebc_probe:                              // @ebc_probe
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #224
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	stp	x28, x27, [sp, #144]            // 16-byte Folded Spill
	adrp	x2, .L.str.3
	add	x2, x2, :lo12:.L.str.3
	stp	x26, x25, [sp, #160]            // 16-byte Folded Spill
	stp	x24, x23, [sp, #176]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #192]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #208]            // 16-byte Folded Spill
	mrs	x8, SP_EL0
	add	x19, x0, #16
	ldr	x8, [x8, #1608]
	mov	x20, x0
	mov	x0, x19
	stur	x8, [x29, #-8]
	str	xzr, [sp, #32]
	str	wzr, [sp, #28]
	str	xzr, [sp, #16]
	bl	_dev_info
	mov	x0, x19
	mov	w1, #18672                      // =0x48f0
	mov	w2, #3520                       // =0xdc0
	bl	devm_kmalloc
	cbz	x0, .LBB2_6
// %bb.1:
	adrp	x8, global_ebc
	mov	x21, x0
	str	x19, [x0]
	str	x0, [x8, :lo12:global_ebc]
	ldr	x0, [x20, #712]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	add	x5, sp, #40
	mov	x2, xzr
	mov	w3, wzr
	mov	w4, wzr
	stp	xzr, xzr, [sp, #104]
	stp	xzr, xzr, [sp, #88]
	stp	xzr, xzr, [sp, #72]
	stp	xzr, xzr, [sp, #56]
	stp	xzr, xzr, [sp, #40]
	bl	__of_parse_phandle_with_args
	cbnz	w0, .LBB2_9
// %bb.2:
	ldr	x0, [sp, #40]
	cbz	x0, .LBB2_9
// %bb.3:
	bl	of_find_device_by_node
	cbz	x0, .LBB2_5
// %bb.4:
	ldr	x8, [x0, #168]
	str	x8, [x21, #8]
	cbnz	x8, .LBB2_11
.LBB2_5:
	mov	w0, #-517                       // =0xfffffdfb
	b	.LBB2_7
.LBB2_6:
	mov	w0, #-12                        // =0xfffffff4
.LBB2_7:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1608]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB2_98
// %bb.8:
	ldp	x20, x19, [sp, #208]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #192]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #176]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #160]            // 16-byte Folded Reload
	ldp	x28, x27, [sp, #144]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #224
	ldr	x30, [x18, #-8]!
	ret
.LBB2_9:
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
.LBB2_10:
	mov	x0, x19
	bl	_dev_err
	mov	w0, #-19                        // =0xffffffed
	b	.LBB2_7
.LBB2_11:
	adrp	x9, frame_done_callback
	add	x9, x9, :lo12:frame_done_callback
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	mov	x0, x19
	str	x9, [x8, #232]
	bl	nvmem_cell_get
	cmn	x0, #4095
	b.lo	.LBB2_13
// %bb.12:
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	b	.LBB2_25
.LBB2_13:
	add	x1, sp, #16
	mov	x22, x0
	bl	nvmem_cell_read
	mov	x23, x0
	mov	x0, x22
	bl	nvmem_cell_put
	cmn	x23, #4095
	b.lo	.LBB2_15
// %bb.14:
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	b	.LBB2_25
.LBB2_15:
	ldrb	w8, [x23]
	cmp	w8, #51
	b.eq	.LBB2_22
// %bb.16:
	cmp	w8, #53
	b.ne	.LBB2_24
// %bb.17:
	ldrb	w8, [x23, #1]
	mov	w22, #3566                      // =0xdee
	cmp	w8, #103
	b.le	.LBB2_28
// %bb.18:
	cmp	w8, #104
	b.eq	.LBB2_32
// %bb.19:
	cmp	w8, #114
	b.eq	.LBB2_30
// %bb.20:
	cmp	w8, #118
	b.ne	.LBB2_24
// %bb.21:
	mov	w22, #3576                      // =0xdf8
	b	.LBB2_32
.LBB2_22:
	ldrb	w8, [x23, #1]
	mov	w22, #3326                      // =0xcfe
	cmp	w8, #38
	b.eq	.LBB2_32
// %bb.23:
	cmp	w8, #48
	b.eq	.LBB2_32
.LBB2_24:
	mov	x0, x23
	bl	kfree
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
.LBB2_25:
	mov	x0, x19
	bl	_dev_err
	ldr	x0, [x21, #8]
	ldr	x8, [x0, #256]
	ldur	w16, [x8, #-4]
	movk	w17, #20618
	movk	w17, #6284, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp1
	brk	#0x8228
.Ltmp1:
	blr	x8
	cmp	w0, #5
	b.hs	.LBB2_27
// %bb.26:
	adrp	x8, .Lswitch.table.ebc_probe.275
	add	x8, x8, :lo12:.Lswitch.table.ebc_probe.275
	ldr	w22, [x8, w0, uxtw #2]
	b	.LBB2_33
.LBB2_27:
	mov	w22, #-1                        // =0xffffffff
	b	.LBB2_33
.LBB2_28:
	cmp	w8, #6
	b.eq	.LBB2_31
// %bb.29:
	cmp	w8, #102
	b.eq	.LBB2_32
	b	.LBB2_24
.LBB2_30:
	mov	w22, #3572                      // =0xdf4
	b	.LBB2_32
.LBB2_31:
	mov	w22, #3506                      // =0xdb2
.LBB2_32:
	mov	x0, x23
	bl	kfree
.LBB2_33:
	ldr	x0, [x20, #712]
	adrp	x1, .L.str.10
	add	x1, x1, :lo12:.L.str.10
	add	x2, sp, #28
	bl	of_get_property
	ldr	w9, [sp, #28]
	asr	w8, w9, #2
	cmp	w9, #4
	str	w8, [sp, #28]
	b.hs	.LBB2_35
// %bb.34:
	adrp	x1, .L.str.11
	add	x1, x1, :lo12:.L.str.11
	mov	x0, x19
	bl	_dev_err
	mov	w0, #-22                        // =0xffffffea
	b	.LBB2_7
.LBB2_35:
	cmp	w8, #1
	b.lt	.LBB2_87
// %bb.36:
	mov	x23, x0
	mov	x24, xzr
	mov	w28, wzr
	adrp	x25, .L.str.15
	add	x25, x25, :lo12:.L.str.15
	adrp	x26, .L.str.16
	add	x26, x26, :lo12:.L.str.16
	adrp	x27, .L.str.17
	add	x27, x27, :lo12:.L.str.17
	str	w22, [sp, #12]                  // 4-byte Folded Spill
	b	.LBB2_40
.LBB2_37:                               //   in Loop: Header=BB2_40 Depth=1
	mov	x0, x19
	mov	x1, x26
.LBB2_38:                               //   in Loop: Header=BB2_40 Depth=1
	bl	_dev_warn
.LBB2_39:                               //   in Loop: Header=BB2_40 Depth=1
	ldr	w8, [sp, #28]
	add	x24, x24, #1
	cmp	w24, w8
	b.ge	.LBB2_52
.LBB2_40:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [x23, x24, lsl #2]
	rev	w0, w8
	bl	of_find_node_by_phandle
	cbz	x0, .LBB2_49
// %bb.41:                              //   in Loop: Header=BB2_40 Depth=1
	add	x0, x0, #24
	bl	i2c_find_device_by_fwnode
	cbz	x0, .LBB2_50
// %bb.42:                              //   in Loop: Header=BB2_40 Depth=1
	ldr	x8, [x0, #184]
	mov	x22, x0
	str	x8, [x21, #16]
	cbnz	x8, .LBB2_51
// %bb.43:                              //   in Loop: Header=BB2_40 Depth=1
	add	x0, x22, #32
	mov	x1, x25
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #24]
	b.hs	.LBB2_37
// %bb.44:                              //   in Loop: Header=BB2_40 Depth=1
	add	x0, x22, #32
	add	x2, sp, #32
	mov	x1, x27
	bl	device_property_read_string
	cbnz	w0, .LBB2_47
// %bb.45:                              //   in Loop: Header=BB2_40 Depth=1
	ldr	x0, [sp, #32]
	bl	thermal_zone_get_zone_by_name
	cmn	x0, #4095
	str	x0, [x21, #104]
	b.hs	.LBB2_48
// %bb.46:                              //   in Loop: Header=BB2_40 Depth=1
	mov	w28, #1                         // =0x1
	b	.LBB2_39
.LBB2_47:                               //   in Loop: Header=BB2_40 Depth=1
	mov	x0, x19
	adrp	x1, .L.str.18
	add	x1, x1, :lo12:.L.str.18
	b	.LBB2_38
.LBB2_48:                               //   in Loop: Header=BB2_40 Depth=1
	mov	x0, x19
	adrp	x1, .L.str.19
	add	x1, x1, :lo12:.L.str.19
	bl	_dev_err
	b	.LBB2_39
.LBB2_49:
	adrp	x1, .L.str.12
	add	x1, x1, :lo12:.L.str.12
	b	.LBB2_10
.LBB2_50:
	adrp	x1, .L.str.13
	add	x1, x1, :lo12:.L.str.13
	b	.LBB2_10
.LBB2_51:
	adrp	x1, .L.str.14
	add	x1, x1, :lo12:.L.str.14
	mov	x0, x19
	mov	w2, w24
	bl	_dev_info
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	b	.LBB2_53
.LBB2_52:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	tbz	w28, #0, .LBB2_87
.LBB2_53:
	cmp	w8, #3326
	str	x19, [x21, #304]
	str	w8, [x21, #2132]
	str	wzr, [x21, #2140]
	b.eq	.LBB2_56
// %bb.54:
	cmp	w8, #3506
	b.eq	.LBB2_56
// %bb.55:
	adrp	x1, .L.str.21
	add	x1, x1, :lo12:.L.str.21
	mov	x0, x19
	bl	device_property_present
	tbz	w0, #0, .LBB2_57
.LBB2_56:
	mov	w8, #1                          // =0x1
	str	w8, [x21, #2140]
.LBB2_57:
	mov	x23, x21
	adrp	x1, .L.str.22
	add	x1, x1, :lo12:.L.str.22
	str	x19, [x23, #112]!
	mov	x0, x19
	ldp	x8, x9, [x23, #-104]
	stp	x8, x9, [x23, #8]
	bl	device_property_present
	tbz	w0, #0, .LBB2_59
// %bb.58:
	mov	w8, #3576                       // =0xdf8
	str	w8, [x21, #2136]
.LBB2_59:
	adrp	x1, .L.str.23
	add	x1, x1, :lo12:.L.str.23
	mov	x0, x19
	bl	device_property_present
	tbz	w0, #0, .LBB2_61
// %bb.60:
	mov	w8, #1                          // =0x1
	str	w8, [x21, #2124]
.LBB2_61:
	mov	x0, x21
	bl	ebc_panel_probe
	cbnz	w0, .LBB2_88
// %bb.62:
	ldp	w9, w8, [x21, #188]
	ldr	w10, [x21, #2140]
	str	w8, [x21, #544]
	str	w9, [x21, #548]
	cbnz	w10, .LBB2_89
.LBB2_63:
	ldr	w8, [x21, #264]
	cmp	w8, #230
	b.ne	.LBB2_83
// %bb.64:
	ldr	w8, [x21, #272]
	cbnz	w8, .LBB2_92
// %bb.65:
	ldr	w8, [x21, #280]
	cbnz	w8, .LBB2_92
// %bb.66:
	adrp	x1, .L.str.27
	add	x1, x1, :lo12:.L.str.27
	add	x0, x22, #32
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #32]
	b.lo	.LBB2_68
// %bb.67:
	adrp	x1, .L.str.28
	add	x1, x1, :lo12:.L.str.28
	mov	x0, x19
	bl	_dev_warn
.LBB2_68:
	adrp	x1, .L.str.29
	add	x1, x1, :lo12:.L.str.29
	add	x0, x22, #32
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #40]
	b.lo	.LBB2_70
// %bb.69:
	adrp	x1, .L.str.30
	add	x1, x1, :lo12:.L.str.30
	mov	x0, x19
	bl	_dev_warn
.LBB2_70:
	adrp	x1, .L.str.31
	add	x1, x1, :lo12:.L.str.31
	add	x0, x22, #32
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #48]
	b.lo	.LBB2_72
// %bb.71:
	adrp	x1, .L.str.32
	add	x1, x1, :lo12:.L.str.32
	mov	x0, x19
	bl	_dev_warn
.LBB2_72:
	adrp	x1, .L.str.33
	add	x1, x1, :lo12:.L.str.33
	add	x0, x22, #32
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #56]
	b.lo	.LBB2_74
// %bb.73:
	adrp	x1, .L.str.34
	add	x1, x1, :lo12:.L.str.34
	mov	x0, x19
	bl	_dev_warn
.LBB2_74:
	adrp	x1, .L.str.35
	add	x1, x1, :lo12:.L.str.35
	add	x0, x22, #32
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #64]
	b.lo	.LBB2_76
// %bb.75:
	adrp	x1, .L.str.36
	add	x1, x1, :lo12:.L.str.36
	mov	x0, x19
	bl	_dev_warn
.LBB2_76:
	adrp	x1, .L.str.37
	add	x1, x1, :lo12:.L.str.37
	add	x0, x22, #32
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #72]
	b.lo	.LBB2_78
// %bb.77:
	adrp	x1, .L.str.38
	add	x1, x1, :lo12:.L.str.38
	mov	x0, x19
	bl	_dev_warn
.LBB2_78:
	adrp	x1, .L.str.39
	add	x1, x1, :lo12:.L.str.39
	add	x0, x22, #32
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #80]
	b.lo	.LBB2_80
// %bb.79:
	adrp	x1, .L.str.40
	add	x1, x1, :lo12:.L.str.40
	mov	x0, x19
	bl	_dev_warn
.LBB2_80:
	adrp	x1, .L.str.41
	add	x1, x1, :lo12:.L.str.41
	add	x0, x22, #32
	bl	devm_regulator_get
	cmn	x0, #4095
	str	x0, [x21, #88]
	b.lo	.LBB2_82
// %bb.81:
	adrp	x1, .L.str.42
	add	x1, x1, :lo12:.L.str.42
	mov	x0, x19
	bl	_dev_warn
.LBB2_82:
	ldr	x8, [x21, #24]
	str	x8, [x21, #96]
.LBB2_83:
	add	x0, x21, #304
	bl	ebc_lut_table_init
	cbnz	w0, .LBB2_95
// %bb.84:
	mov	x0, x21
	bl	ebc_ability_init
	mov	x0, x21
	bl	ebc_buffer_manage_init
	cbnz	w0, .LBB2_96
// %bb.85:
	adrp	x8, __cpu_possible_mask
	ldrb	w0, [x8, :lo12:__cpu_possible_mask]
	bl	__sw_hweight64
	str	w0, [x21, #2120]
	add	x0, x21, #304
	bl	ebc_task_init
	cbnz	w0, .LBB2_97
// %bb.86:
	add	x0, x21, #304
	bl	ebc_other_init
	mov	x0, x21
	mov	x1, x23
	bl	ebc_logo_init
	add	x0, x21, #304
	str	x21, [x20, #168]
	bl	ebc_sysfs_init
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.46
	add	x1, x1, :lo12:.L.str.46
	adrp	x2, .L.str.3
	add	x2, x2, :lo12:.L.str.3
	bl	_dev_info
	b	.LBB2_94
.LBB2_87:
	adrp	x1, .L.str.20
	add	x1, x1, :lo12:.L.str.20
	mov	x0, x19
	bl	_dev_err
	b	.LBB2_5
.LBB2_88:
	mov	w20, w0
	adrp	x1, .L.str.24
	add	x1, x1, :lo12:.L.str.24
	mov	x0, x19
	mov	w2, w20
	bl	_dev_err
	mov	w0, w20
	b	.LBB2_7
.LBB2_89:
	ldr	w8, [x21, #272]
	cbnz	w8, .LBB2_91
// %bb.90:
	ldr	w8, [x21, #280]
	cbz	w8, .LBB2_63
.LBB2_91:
	adrp	x1, .L.str.25
	add	x1, x1, :lo12:.L.str.25
	b	.LBB2_93
.LBB2_92:
	adrp	x1, .L.str.26
	add	x1, x1, :lo12:.L.str.26
.LBB2_93:
	mov	x0, x19
	bl	_dev_err
.LBB2_94:
	mov	w0, wzr
	b	.LBB2_7
.LBB2_95:
	adrp	x1, .L.str.43
	add	x1, x1, :lo12:.L.str.43
	mov	w20, w0
	mov	x0, x19
	bl	_dev_err
	mov	w0, w20
	b	.LBB2_7
.LBB2_96:
	mov	w22, w0
	adrp	x1, .L.str.44
	add	x1, x1, :lo12:.L.str.44
	mov	x0, x19
	bl	_dev_err
	mov	w0, w22
	b	.LBB2_7
.LBB2_97:
	adrp	x1, .L.str.45
	add	x1, x1, :lo12:.L.str.45
	mov	x0, x19
	bl	_dev_err
	mov	w0, #-1                         // =0xffffffff
	b	.LBB2_7
.LBB2_98:
	bl	__stack_chk_fail
.Lfunc_end2:
	.size	ebc_probe, .Lfunc_end2-ebc_probe
                                        // -- End function
	.text
	.p2align	2                               // -- Begin function ebc_remove
	.type	ebc_remove,@function
	.word	614538169                       // 0x24a11bb9
ebc_remove:                             // @ebc_remove
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	adrp	x0, ebc_misc
	add	x0, x0, :lo12:ebc_misc
	ldr	x19, [x8, :lo12:global_ebc]
	mov	x29, sp
	bl	misc_deregister
	mov	x0, x19
	bl	ebc_buffer_manage_uninit
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end3:
	.size	ebc_remove, .Lfunc_end3-ebc_remove
                                        // -- End function
	.p2align	2                               // -- Begin function frame_done_callback
	.type	frame_done_callback,@function
	.word	3854859616                      // 0xe5c47d60
frame_done_callback:                    // @frame_done_callback
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	adrp	x19, global_ebc
	mov	x29, sp
	ldr	x20, [x19, :lo12:global_ebc]
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	add	x21, x20, #4, lsl #12           // =16384
	ldrb	w8, [x21, #2281]
	ldrb	w9, [x21, #2282]
	orr	w8, w9, w8
	tst	w8, #0xff
	strb	w8, [x21, #2283]
	b.ne	.LBB4_13
// %bb.1:
	ldrb	w8, [x20, #2118]
	tbnz	w8, #0, .LBB4_13
// %bb.2:
	ldrb	w8, [x21, #2249]
	cmp	w8, #1
	b.ne	.LBB4_7
// %bb.3:
	ldrb	w8, [x21, #2276]
	cmp	w8, #1
	b.ne	.LBB4_6
// %bb.4:
	ldrb	w8, [x21, #2277]
	cmp	w8, #1
	b.ne	.LBB4_6
// %bb.5:
	strb	w8, [x21, #2278]
.LBB4_6:
	ldrb	w8, [x21, #2278]
	tbnz	w8, #0, .LBB4_8
	b	.LBB4_13
.LBB4_7:
	ldr	w8, [x21, #2184]
	cmp	w8, #1
	b.ge	.LBB4_13
.LBB4_8:
	ldrb	w8, [x20, #2116]
	tbnz	w8, #0, .LBB4_13
// %bb.9:
	ldrb	w8, [x20, #2117]
	tbnz	w8, #0, .LBB4_13
// %bb.10:
	ldr	x0, [x20, #8]
	mov	w1, wzr
	mov	w2, wzr
	ldr	x8, [x0, #240]
	ldur	w16, [x8, #-4]
	movk	w17, #16353
	movk	w17, #28435, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp2
	brk	#0x8228
.Ltmp2:
	blr	x8
	ldrb	w8, [x20, #1912]
	tbz	w8, #3, .LBB4_12
// %bb.11:
	ldrb	w8, [x21, #2224]
	tbnz	w8, #1, .LBB4_13
.LBB4_12:
	ldr	x21, [x19, :lo12:global_ebc]
	ldr	x19, [x21, #312]
	bl	ebc_get_power_off_delay
	bl	__msecs_to_jiffies
	mov	x3, x0
	add	x2, x21, #320
	mov	w0, #8                          // =0x8
	mov	x1, x19
	bl	queue_delayed_work_on
.LBB4_13:
	ldr	w8, [x20, #2128]
	cmp	w8, #1
	b.gt	.LBB4_15
.LBB4_14:
	adrp	x0, ebc_flip_wq
	add	x0, x0, :lo12:ebc_flip_wq
	mov	w1, #1                          // =0x1
	strb	wzr, [x20, #1904]
	bl	__wake_up_sync
	adrp	x8, ebc_task
	ldr	x0, [x8, :lo12:ebc_task]
	bl	wake_up_process
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB4_15:
	ldr	w8, [x20, #184]
	ldr	x0, [x20, #304]
	mov	w9, #1                          // =0x1
	adrp	x1, .L.str.47
	add	x1, x1, :lo12:.L.str.47
	adrp	x2, .L.str.48
	add	x2, x2, :lo12:.L.str.48
	sub	w3, w9, w8
	bl	_dev_info
	b	.LBB4_14
.Lfunc_end4:
	.size	frame_done_callback, .Lfunc_end4-frame_done_callback
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_panel_probe
	.type	ebc_panel_probe,@function
ebc_panel_probe:                        // @ebc_panel_probe
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	mov	x2, x0
	stp	x22, x21, [sp, #16]             // 16-byte Folded Spill
	adrp	x1, .L.str.50
	add	x1, x1, :lo12:.L.str.50
	ldr	x21, [x2], #188
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	mov	x19, x0
	mov	w3, #1                          // =0x1
	ldr	x0, [x21, #696]
	mov	x4, xzr
	mov	x29, sp
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_40
// %bb.1:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.51
	add	x1, x1, :lo12:.L.str.51
	add	x2, x19, #192
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_40
// %bb.2:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.52
	add	x1, x1, :lo12:.L.str.52
	add	x2, x19, #196
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_40
// %bb.3:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.53
	add	x1, x1, :lo12:.L.str.53
	add	x2, x19, #200
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_40
// %bb.4:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.54
	add	x1, x1, :lo12:.L.str.54
	add	x2, x19, #216
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_40
// %bb.5:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.55
	add	x1, x1, :lo12:.L.str.55
	add	x2, x19, #220
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_40
// %bb.6:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.56
	add	x1, x1, :lo12:.L.str.56
	add	x2, x19, #224
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_40
// %bb.7:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.57
	add	x1, x1, :lo12:.L.str.57
	add	x2, x19, #228
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_40
// %bb.8:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.58
	add	x1, x1, :lo12:.L.str.58
	add	x2, x19, #232
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_40
// %bb.9:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.59
	add	x1, x1, :lo12:.L.str.59
	add	x2, x19, #236
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_40
// %bb.10:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.60
	add	x1, x1, :lo12:.L.str.60
	add	x2, x19, #240
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_40
// %bb.11:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.61
	add	x1, x1, :lo12:.L.str.61
	add	x2, x19, #244
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_40
// %bb.12:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.62
	add	x1, x1, :lo12:.L.str.62
	add	x2, x19, #248
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_40
// %bb.13:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.63
	add	x1, x1, :lo12:.L.str.63
	add	x2, x19, #252
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_40
// %bb.14:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.64
	add	x1, x1, :lo12:.L.str.64
	add	x2, x19, #256
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB5_40
// %bb.15:
	ldr	x0, [x21, #696]
	add	x20, x19, #260
	adrp	x1, .L.str.65
	add	x1, x1, :lo12:.L.str.65
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB5_18
// %bb.16:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.66
	add	x1, x1, :lo12:.L.str.66
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB5_18
// %bb.17:
	str	wzr, [x20]
.LBB5_18:
	ldr	x0, [x21, #696]
	add	x20, x19, #264
	adrp	x1, .L.str.67
	add	x1, x1, :lo12:.L.str.67
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB5_20
// %bb.19:
	str	wzr, [x20]
.LBB5_20:
	ldr	x0, [x21, #696]
	add	x20, x19, #268
	adrp	x1, .L.str.68
	add	x1, x1, :lo12:.L.str.68
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB5_22
// %bb.21:
	str	wzr, [x20]
.LBB5_22:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.69
	add	x1, x1, :lo12:.L.str.69
	add	x2, x19, #204
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB5_24
// %bb.23:
	stur	wzr, [x19, #204]
.LBB5_24:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.70
	add	x1, x1, :lo12:.L.str.70
	add	x2, x19, #208
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB5_26
// %bb.25:
	stur	wzr, [x19, #208]
.LBB5_26:
	ldr	x0, [x21, #696]
	add	x20, x19, #272
	adrp	x1, .L.str.71
	add	x1, x1, :lo12:.L.str.71
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB5_28
// %bb.27:
	str	wzr, [x20]
.LBB5_28:
	ldr	x0, [x21, #696]
	add	x20, x19, #284
	adrp	x1, .L.str.72
	add	x1, x1, :lo12:.L.str.72
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB5_30
// %bb.29:
	str	wzr, [x20]
.LBB5_30:
	ldr	x0, [x21, #696]
	add	x20, x19, #288
	adrp	x1, .L.str.73
	add	x1, x1, :lo12:.L.str.73
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB5_32
// %bb.31:
	str	wzr, [x20]
.LBB5_32:
	ldr	x0, [x21, #696]
	add	x20, x19, #292
	adrp	x1, .L.str.74
	add	x1, x1, :lo12:.L.str.74
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	mov	w22, #1                         // =0x1
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB5_34
// %bb.33:
	str	w22, [x20]
.LBB5_34:
	ldr	x0, [x21, #696]
	add	x20, x19, #276
	adrp	x1, .L.str.75
	add	x1, x1, :lo12:.L.str.75
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB5_36
// %bb.35:
	str	wzr, [x20]
.LBB5_36:
	ldr	x0, [x21, #696]
	add	x20, x19, #280
	adrp	x1, .L.str.76
	add	x1, x1, :lo12:.L.str.76
	mov	x2, x20
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	mov	w22, #1                         // =0x1
	bl	of_property_read_variable_u32_array
	tbz	w0, #31, .LBB5_38
// %bb.37:
	str	wzr, [x20]
.LBB5_38:
	ldr	x0, [x21, #696]
	adrp	x1, .L.str.77
	add	x1, x1, :lo12:.L.str.77
	mov	x2, xzr
	bl	of_find_property
	ldr	x8, [x19, #120]
	cmp	x0, #0
	cset	w9, ne
	strb	w9, [x19, #296]
	str	wzr, [x8, #104]
	ldr	x8, [x19, #120]
	str	wzr, [x8, #116]
	ldr	w8, [x19, #264]
	ldr	w9, [x19, #188]
	ldr	x10, [x19, #120]
	cmp	w8, #230
	cinc	w8, w22, ne
	lsr	w8, w9, w8
	str	w8, [x10, #120]
	ldr	w8, [x19, #2140]
	cbz	w8, .LBB5_42
// %bb.39:
	ldp	w8, w9, [x19, #220]
	ldp	w10, w11, [x19, #228]
	mov	w0, wzr
	add	w8, w9, w8
	ldr	x9, [x19, #120]
	add	w10, w10, w11
	add	w8, w8, w10
	str	w8, [x9, #108]
	ldp	w8, w9, [x19, #244]
	ldp	w10, w11, [x19, #252]
	add	w8, w9, w8
	add	w9, w10, w11
	ldr	x10, [x19, #120]
	add	w8, w8, w9
	mov	w9, #4                          // =0x4
	str	w8, [x10, #112]
	ldr	x8, [x19, #120]
	str	w9, [x8, #116]
	ldr	x8, [x19, #120]
	ldr	w9, [x8, #108]
	ldr	w10, [x8, #116]
	mul	w9, w10, w9
	str	w9, [x8, #120]
	ldp	w8, w9, [x19, #220]
	ldr	x10, [x19, #120]
	add	w8, w9, w8
	str	w8, [x10, #104]
	b	.LBB5_41
.LBB5_40:
	mov	w0, #-22                        // =0xffffffea
.LBB5_41:
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB5_42:
	mov	w0, wzr
	b	.LBB5_41
.Lfunc_end5:
	.size	ebc_panel_probe, .Lfunc_end5-ebc_panel_probe
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_lut_table_init
	.type	ebc_lut_table_init,@function
ebc_lut_table_init:                     // @ebc_lut_table_init
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #240
	stp	x29, x30, [sp, #192]            // 16-byte Folded Spill
	add	x29, sp, #192
	adrp	x1, .L.str.78
	add	x1, x1, :lo12:.L.str.78
	stp	x22, x21, [sp, #208]            // 16-byte Folded Spill
	sub	x5, x29, #88
	stp	x20, x19, [sp, #224]            // 16-byte Folded Spill
	mrs	x8, SP_EL0
	mov	x19, x0
	ldr	x8, [x8, #1608]
	mov	x2, xzr
	mov	w3, wzr
	mov	w4, wzr
	stur	x8, [x29, #-8]
	sub	x8, x29, #88
	ldr	x20, [x0]
	stp	xzr, xzr, [sp, #88]
	stp	xzr, xzr, [sp, #72]
	ldr	x22, [x20, #696]
	stp	xzr, xzr, [sp, #56]
	stp	xzr, xzr, [sp, #40]
	mov	x0, x22
	stp	xzr, xzr, [sp, #24]
	stp	xzr, xzr, [sp, #8]
	str	wzr, [sp, #4]
	stp	xzr, xzr, [x8, #64]
	stp	xzr, xzr, [x8, #48]
	stp	xzr, xzr, [x8, #32]
	stp	xzr, xzr, [x29, #-72]
	stp	xzr, xzr, [x29, #-88]
	bl	__of_parse_phandle_with_args
	mov	w8, w0
	mov	w0, #-19                        // =0xffffffed
	cbnz	w8, .LBB6_9
// %bb.1:
	ldur	x21, [x29, #-88]
	cbz	x21, .LBB6_9
// %bb.2:
	adrp	x1, .L.str.79
	add	x1, x1, :lo12:.L.str.79
	add	x2, sp, #4
	mov	x0, x22
	bl	of_get_property
	ldr	w1, [sp, #4]
	cmp	w1, #1
	b.lt	.LBB6_5
// %bb.3:
	bl	pvi_wf_add_custom_mode_table
	cbz	w0, .LBB6_5
// %bb.4:
	mov	w0, #-19                        // =0xffffffed
	b	.LBB6_9
.LBB6_5:
	add	x2, sp, #8
	mov	x0, x21
	mov	w1, wzr
	bl	of_address_to_resource
	cbnz	w0, .LBB6_9
// %bb.6:
	ldp	x1, x8, [sp, #8]
	mov	x0, x20
	mov	w3, #1                          // =0x1
	sub	x8, x8, x1
	str	x1, [x19, #1520]
	add	x21, x8, #1
	sxtw	x2, w21
	str	w21, [x19, #1528]
	bl	devm_memremap
	str	x0, [x19, #1592]
	cbz	x0, .LBB6_11
// %bb.7:
	bl	epd_lut_from_mem_init
	tbnz	w0, #31, .LBB6_12
.LBB6_8:
	mov	w0, wzr
.LBB6_9:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1608]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB6_14
// %bb.10:
	ldp	x20, x19, [sp, #224]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #208]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #192]            // 16-byte Folded Reload
	add	sp, sp, #240
	ldr	x30, [x18, #-8]!
	ret
.LBB6_11:
	ldr	x0, [x19]
	adrp	x1, .L.str.80
	add	x1, x1, :lo12:.L.str.80
	adrp	x2, .L__func__.ebc_lut_table_init
	add	x2, x2, :lo12:.L__func__.ebc_lut_table_init
	mov	w3, #4032                       // =0xfc0
	bl	_dev_err
	mov	w0, #-12                        // =0xfffffff4
	b	.LBB6_9
.LBB6_12:
	ldr	x0, [x19]
	adrp	x1, .L.str.81
	add	x1, x1, :lo12:.L.str.81
	bl	_dev_err
	ldr	x0, [x19]
	ldr	x1, [x19, #1592]
	mov	w2, w21
	bl	epd_lut_from_file_init
	tbz	w0, #31, .LBB6_8
// %bb.13:
	ldr	x0, [x19]
	adrp	x1, .L.str.82
	add	x1, x1, :lo12:.L.str.82
	bl	_dev_err
	mov	w0, #-1                         // =0xffffffff
	b	.LBB6_9
.LBB6_14:
	bl	__stack_chk_fail
.Lfunc_end6:
	.size	ebc_lut_table_init, .Lfunc_end6-ebc_lut_table_init
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_ability_init
	.type	ebc_ability_init,@function
ebc_ability_init:                       // @ebc_ability_init
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	ldr	x20, [x0]
	mov	x29, sp
	mov	x19, x0
	bl	epd_lut_get_wf_bit
	ldr	w8, [x19, #2132]
	cmp	w0, #32
	mov	w10, #257                       // =0x101
	cset	w9, eq
	strh	w10, [x19, #2144]
	cmp	w8, #3572
	strb	w9, [x19, #2146]
	b.ne	.LBB7_3
// %bb.1:
	ldr	w8, [x19, #272]
	cbnz	w8, .LBB7_3
// %bb.2:
	ldr	w8, [x19, #268]
	cbz	w8, .LBB7_9
.LBB7_3:
	mov	w8, wzr
.LBB7_4:
	ldr	w9, [x19, #2140]
	strb	w8, [x19, #2149]
	cbnz	w9, .LBB7_6
// %bb.5:
	ldr	w8, [x19, #264]
	cmp	w8, #230
	b.ne	.LBB7_8
.LBB7_6:
	mov	w8, wzr
.LBB7_7:
	strb	w8, [x19, #2147]
	adrp	x1, .L.str.84
	add	x1, x1, :lo12:.L.str.84
	ldr	x0, [x20, #696]
	mov	x2, xzr
	bl	of_find_property
	cmp	x0, #0
	cset	w8, eq
	strb	w8, [x19, #2148]
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB7_8:
	ldr	x0, [x20, #696]
	adrp	x1, .L.str.83
	add	x1, x1, :lo12:.L.str.83
	mov	x2, xzr
	bl	of_find_property
	cmp	x0, #0
	cset	w8, eq
	b	.LBB7_7
.LBB7_9:
	mov	w8, #1                          // =0x1
	b	.LBB7_4
.Lfunc_end7:
	.size	ebc_ability_init, .Lfunc_end7-ebc_ability_init
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_buffer_manage_init
	.type	ebc_buffer_manage_init,@function
ebc_buffer_manage_init:                 // @ebc_buffer_manage_init
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-64]!           // 16-byte Folded Spill
	ldp	w8, w9, [x0, #188]
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	ldr	x20, [x0]
	mov	x19, x0
	str	x23, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	mul	w8, w9, w8
	ldr	w9, [x0, #2140]
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	str	wzr, [x0, #556]
	str	w8, [x0, #536]
	cbz	w9, .LBB8_2
// %bb.1:
	ldp	w8, w9, [x19, #244]
	ldp	w12, w11, [x19, #252]
	ldr	x10, [x19, #120]
	add	w9, w9, w8
	ldr	w13, [x10, #108]
	add	w8, w11, w12
	ldr	w10, [x10, #116]
	add	w8, w8, w9
	mul	w8, w8, w13
	mul	w21, w13, w9
	mul	w8, w8, w10
	b	.LBB8_5
.LBB8_2:
	ldr	w9, [x19, #264]
	cmp	w9, #230
	b.ne	.LBB8_4
// %bb.3:
	mov	w21, wzr
	lsr	w8, w8, #1
	b	.LBB8_5
.LBB8_4:
	lsr	w8, w8, #2
	mov	w21, wzr
.LBB8_5:
	sxtw	x2, w8
	add	x1, x19, #568
	mov	x0, x20
	str	w8, [x19, #540]
	bl	ebc_alloc_dma_cma_buf
	cbnz	w0, .LBB8_74
// %bb.6:
	ldr	x8, [x19, #568]
	ldr	x9, [x19, #576]
	add	x1, x19, #640
	ldr	x10, [x19, #584]
	ldrsw	x2, [x19, #540]
	mov	x0, x20
	stp	x9, x8, [x19, #136]
	str	x10, [x19, #152]
	bl	ebc_alloc_dma_cma_buf
	cbnz	w0, .LBB8_76
// %bb.7:
	ldr	x8, [x19, #640]
	ldr	x0, [x19, #648]
	ldr	x9, [x19, #656]
	ldr	w10, [x19, #2140]
	stp	x0, x8, [x19, #160]
	str	x9, [x19, #176]
	cbz	w10, .LBB8_39
// %bb.8:
	ldr	x11, [x19, #120]
	ldr	w8, [x11, #112]
	cbz	w8, .LBB8_37
// %bb.9:
	ldr	w12, [x19, #284]
	ldr	w11, [x11, #108]
	mov	x9, xzr
	mov	w10, wzr
	mov	w15, wzr
	mov	w14, wzr
	cmp	w12, #0
	mov	w12, #1                         // =0x1
	cset	w13, ne
	b	.LBB8_11
.LBB8_10:                               //   in Loop: Header=BB8_11 Depth=1
	add	w10, w10, #1
	add	x9, x9, x11
	cmp	w10, w8
	b.eq	.LBB8_36
.LBB8_11:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB8_15 Depth 2
	cbz	w11, .LBB8_10
// %bb.12:                              //   in Loop: Header=BB8_11 Depth=1
	mov	x16, xzr
	b	.LBB8_15
.LBB8_13:                               //   in Loop: Header=BB8_15 Depth=2
	lsl	w0, w0, #11
	and	w1, w12, #0xff
	cmp	x16, x17
	bfi	w0, w13, #12, #8
	orr	w0, w0, w1, lsl #15
	and	w1, w14, #0xff
	orr	w0, w0, w15, lsl #14
	orr	w17, w0, w1, lsl #13
	cset	w0, lo
	add	w1, w9, w16
	orr	w17, w17, w0, lsl #10
	ldr	x0, [x19, #136]
	orr	w17, w17, #0xff000000
	str	w17, [x0, w1, uxtw #2]
.LBB8_14:                               //   in Loop: Header=BB8_15 Depth=2
	add	x16, x16, #1
	cmp	x11, x16
	b.eq	.LBB8_10
.LBB8_15:                               //   Parent Loop BB8_11 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldp	w0, w17, [x19, #244]
	add	w17, w17, w0
	cmp	w10, w17
	b.hs	.LBB8_19
// %bb.16:                              //   in Loop: Header=BB8_15 Depth=2
	ldp	w17, w3, [x19, #220]
	ldp	w1, w2, [x19, #236]
	add	w1, w1, w17
	cmp	x16, x1
	add	w1, w2, w1
	cset	w2, hs
	cmp	w10, w0
	add	w0, w3, w17
	cset	w4, hs
	cmp	x16, w1, uxtw
	csel	w1, wzr, w2, hs
	csel	w12, w12, w4, lo
	cmp	x16, x0
	b.lo	.LBB8_21
// %bb.17:                              //   in Loop: Header=BB8_15 Depth=2
	ldr	w2, [x19, #228]
	add	w0, w2, w0
	cmp	x16, x0
	b.hs	.LBB8_21
// %bb.18:                              //   in Loop: Header=BB8_15 Depth=2
	mov	w0, wzr
	b	.LBB8_22
.LBB8_19:                               //   in Loop: Header=BB8_15 Depth=2
	ldr	w14, [x19, #252]
	add	w14, w14, w17
	cmp	w10, w14
	b.ls	.LBB8_23
// %bb.20:                              //   in Loop: Header=BB8_15 Depth=2
	ldr	w15, [x19, #284]
	mov	w14, wzr
	cmp	w15, #0
	csel	w13, wzr, w13, eq
	b	.LBB8_24
.LBB8_21:                               //   in Loop: Header=BB8_15 Depth=2
	mov	w0, #1                          // =0x1
.LBB8_22:                               //   in Loop: Header=BB8_15 Depth=2
	tst	w15, #0xff
	mov	w15, w1
	cset	w2, eq
	tst	w2, w1
	csinc	w14, w14, wzr, eq
	b	.LBB8_34
.LBB8_23:                               //   in Loop: Header=BB8_15 Depth=2
	mov	w13, #1                         // =0x1
	mov	w14, #1                         // =0x1
.LBB8_24:                               //   in Loop: Header=BB8_15 Depth=2
	ldr	w17, [x19, #220]
	ldr	w15, [x19, #236]
	add	w15, w15, w17
	cmp	x16, x15
	b.lo	.LBB8_27
// %bb.25:                              //   in Loop: Header=BB8_15 Depth=2
	ldr	w0, [x19, #240]
	add	w15, w0, w15
	cmp	x16, x15
	b.hs	.LBB8_27
// %bb.26:                              //   in Loop: Header=BB8_15 Depth=2
	mov	w15, #1                         // =0x1
	b	.LBB8_28
.LBB8_27:                               //   in Loop: Header=BB8_15 Depth=2
	mov	w15, wzr
.LBB8_28:                               //   in Loop: Header=BB8_15 Depth=2
	ldr	w0, [x19, #224]
	add	w0, w0, w17
	cmp	x16, x0
	b.lo	.LBB8_33
// %bb.29:                              //   in Loop: Header=BB8_15 Depth=2
	ldr	w1, [x19, #288]
	cbnz	w1, .LBB8_31
// %bb.30:                              //   in Loop: Header=BB8_15 Depth=2
	ldr	w1, [x19, #228]
.LBB8_31:                               //   in Loop: Header=BB8_15 Depth=2
	add	w0, w1, w0
	cmp	x16, x0
	b.hs	.LBB8_33
// %bb.32:                              //   in Loop: Header=BB8_15 Depth=2
	mov	w0, wzr
	b	.LBB8_34
.LBB8_33:                               //   in Loop: Header=BB8_15 Depth=2
	mov	w0, #1                          // =0x1
.LBB8_34:                               //   in Loop: Header=BB8_15 Depth=2
	ldr	x1, [x19, #120]
	mov	w17, w17
	ldr	w1, [x1, #116]
	cmp	w1, #2
	b.ne	.LBB8_13
// %bb.35:                              //   in Loop: Header=BB8_15 Depth=2
	lsl	w1, w13, #12
	lsl	w2, w12, #15
	cmp	x16, x17
	cset	w17, lo
	orr	w0, w1, w0, lsl #11
	orr	w1, w2, w15, lsl #14
	orr	w0, w0, w14, lsl #13
	orr	w0, w0, w1
	ldr	x1, [x19, #136]
	orr	w17, w0, w17, lsl #10
	add	w0, w9, w16
	strh	w17, [x1, w0, uxtw #1]
	b	.LBB8_14
.LBB8_36:
	ldr	x0, [x19, #160]
.LBB8_37:
	ldr	x1, [x19, #136]
	ldr	x2, [x19, #152]
	bl	memcpy
	ldr	w8, [x19, #2140]
	cbz	w8, .LBB8_39
// %bb.38:
	ldr	x8, [x19, #120]
	ldr	x10, [x19, #136]
	ldr	x11, [x19, #160]
	ldr	w9, [x8, #116]
	mul	w9, w9, w21
	add	x9, x10, x9
	str	x9, [x19, #1880]
	ldr	w9, [x8, #116]
	mul	w9, w9, w21
	add	x9, x11, x9
	str	x9, [x19, #1888]
	ldr	w9, [x8, #116]
	mul	w9, w9, w21
	add	x9, x10, x9
	str	x9, [x19, #1880]
	ldr	w8, [x8, #116]
	mul	w8, w8, w21
	add	x8, x11, x8
	str	x8, [x19, #1888]
	b	.LBB8_40
.LBB8_39:
	ldr	x8, [x19, #136]
	ldr	x9, [x19, #160]
	str	x8, [x19, #1880]
	str	x9, [x19, #1888]
.LBB8_40:
	ldrb	w8, [x19, #2149]
	cmp	w8, #1
	b.ne	.LBB8_43
// %bb.41:
	ldrsw	x2, [x19, #536]
	add	x1, x19, #1648
	mov	x0, x20
	bl	ebc_alloc_dma_cma_buf
	cbnz	w0, .LBB8_80
// %bb.42:
	ldrsw	x2, [x19, #536]
	add	x1, x19, #1720
	mov	x0, x20
	bl	ebc_alloc_dma_cma_buf
	cbnz	w0, .LBB8_82
.LBB8_43:
	bl	ebc_buf_list_init
	cbnz	w0, .LBB8_78
// %bb.44:
	ldr	x0, [x20, #696]
	add	x22, x19, #560
	adrp	x1, .L.str.89
	add	x1, x1, :lo12:.L.str.89
	mov	x2, x22
	mov	w3, #1                          // =0x1
	mov	x4, xzr
	bl	of_property_read_variable_u32_array
	tbnz	w0, #31, .LBB8_46
// %bb.45:
	ldr	w8, [x22]
	sub	w8, w8, #5
	cmn	w8, #3
	b.hi	.LBB8_47
.LBB8_46:
	mov	w8, #4                          // =0x4
	str	w8, [x22]
.LBB8_47:
	mov	x21, xzr
	add	x23, x19, #712
.LBB8_48:                               // =>This Inner Loop Header: Depth=1
	ldrsw	x2, [x19, #536]
	mov	x0, x20
	mov	x1, x23
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB8_79
// %bb.49:                              //   in Loop: Header=BB8_48 Depth=1
	ldr	w0, [x19, #556]
	add	w8, w0, #1
	str	w8, [x19, #556]
	ldp	x1, x2, [x23, #8]
	str	w0, [x23, #24]
	bl	ebc_dsp_buf_init
	cbnz	w0, .LBB8_73
// %bb.50:                              //   in Loop: Header=BB8_48 Depth=1
	ldrsw	x8, [x22]
	add	x21, x21, #1
	add	x23, x23, #72
	cmp	x21, x8
	b.lt	.LBB8_48
// %bb.51:
	ldrb	w8, [x19, #2147]
	cmp	w8, #1
	b.ne	.LBB8_54
// %bb.52:
	ldrsw	x2, [x19, #536]
	add	x1, x19, #1144
	mov	x0, x20
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB8_86
// %bb.53:
	ldr	w8, [x19, #556]
	ldr	x0, [x19, #1152]
	mov	w1, #255                        // =0xff
	ldrsw	x2, [x19, #536]
	add	w9, w8, #1
	str	w8, [x19, #1168]
	str	w9, [x19, #556]
	bl	memset
	ldr	w0, [x19, #1168]
	ldr	x1, [x19, #1152]
	ldr	x2, [x19, #1160]
	bl	ebc_osd_buf_init
	cbnz	w0, .LBB8_73
.LBB8_54:
	add	x1, x19, #1000
	mov	x0, x20
	mov	w2, #1048576                    // =0x100000
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB8_75
// %bb.55:
	ldr	x9, [x19, #1008]
	ldrb	w8, [x19, #2147]
	str	x9, [x19, #1864]
	tbz	w8, #0, .LBB8_58
// %bb.56:
	add	x1, x19, #1072
	mov	x0, x20
	mov	w2, #1048576                    // =0x100000
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB8_75
// %bb.57:
	ldrb	w8, [x19, #2147]
	ldr	x9, [x19, #1080]
	cmp	w8, #1
	str	x9, [x19, #1872]
	b.eq	.LBB8_59
.LBB8_58:
	str	xzr, [x19, #1872]
.LBB8_59:
	ldrb	w9, [x19, #2148]
	cmp	w9, #1
	b.ne	.LBB8_62
// %bb.60:
	ldrsw	x2, [x19, #536]
	add	x1, x19, #1216
	mov	x0, x20
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB8_89
// %bb.61:
	ldr	w8, [x19, #556]
	ldrb	w9, [x19, #2147]
	add	w10, w8, #1
	str	w8, [x19, #1240]
	str	w10, [x19, #556]
	tbz	w9, #0, .LBB8_63
	b	.LBB8_64
.LBB8_62:
	tbnz	w8, #0, .LBB8_64
.LBB8_63:
	ldrb	w8, [x19, #2144]
	cmp	w8, #1
	b.ne	.LBB8_71
.LBB8_64:
	ldrsw	x2, [x19, #536]
	add	x1, x19, #1288
	mov	x0, x20
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB8_81
// %bb.65:
	ldr	x0, [x19, #1296]
	ldrsw	x2, [x19, #536]
	mov	w1, #255                        // =0xff
	bl	memset
	ldr	w8, [x19, #556]
	ldrsw	x2, [x19, #536]
	add	x1, x19, #1360
	mov	x0, x20
	add	w9, w8, #1
	str	w8, [x19, #1312]
	str	w9, [x19, #556]
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB8_83
// %bb.66:
	ldr	x0, [x19, #1368]
	ldrsw	x2, [x19, #536]
	mov	w1, #255                        // =0xff
	bl	memset
	ldr	w8, [x19, #556]
	ldrsw	x2, [x19, #536]
	add	x1, x19, #1504
	mov	x0, x20
	add	w9, w8, #1
	str	w8, [x19, #1384]
	str	w9, [x19, #556]
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB8_84
// %bb.67:
	ldr	x0, [x19, #1512]
	ldrsw	x2, [x19, #536]
	mov	w1, wzr
	bl	memset
	ldr	w8, [x19, #556]
	ldrsw	x2, [x19, #536]
	add	x1, x19, #1576
	mov	x0, x20
	add	w9, w8, #1
	str	w8, [x19, #1528]
	str	w9, [x19, #556]
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB8_85
// %bb.68:
	ldr	x0, [x19, #1584]
	ldrsw	x2, [x19, #536]
	mov	w1, wzr
	bl	memset
	ldr	w8, [x19, #556]
	ldrb	w9, [x19, #2144]
	add	w10, w8, #1
	str	w8, [x19, #1600]
	str	w10, [x19, #556]
	tbz	w9, #0, .LBB8_72
.LBB8_69:
	ldrsw	x2, [x19, #536]
	add	x1, x19, #1432
	mov	x0, x20
	bl	ebc_alloc_dma_buf
	cbnz	w0, .LBB8_90
// %bb.70:
	ldr	x0, [x19, #1440]
	ldrsw	x2, [x19, #536]
	mov	w1, wzr
	bl	memset
	ldr	w8, [x19, #556]
	mov	w0, wzr
	add	w9, w8, #1
	str	w8, [x19, #1456]
	str	w9, [x19, #556]
	b	.LBB8_94
.LBB8_71:
	cbnz	w8, .LBB8_69
.LBB8_72:
	mov	w0, wzr
	b	.LBB8_94
.LBB8_73:
	adrp	x1, .L.str.91
	add	x1, x1, :lo12:.L.str.91
	b	.LBB8_87
.LBB8_74:
	mov	w21, w0
	mov	w2, wzr
	b	.LBB8_77
.LBB8_75:
	mov	w21, w0
	adrp	x1, .L.str.93
	add	x1, x1, :lo12:.L.str.93
	mov	x0, x20
	mov	w2, w21
	b	.LBB8_92
.LBB8_76:
	mov	w21, w0
	mov	w2, #1                          // =0x1
.LBB8_77:
	adrp	x1, .L.str.85
	add	x1, x1, :lo12:.L.str.85
	mov	x0, x20
	mov	w3, w21
	b	.LBB8_88
.LBB8_78:
	adrp	x1, .L.str.88
	add	x1, x1, :lo12:.L.str.88
	b	.LBB8_91
.LBB8_79:
	adrp	x1, .L.str.90
	add	x1, x1, :lo12:.L.str.90
	b	.LBB8_87
.LBB8_80:
	adrp	x1, .L.str.86
	add	x1, x1, :lo12:.L.str.86
	b	.LBB8_91
.LBB8_81:
	adrp	x1, .L.str.95
	add	x1, x1, :lo12:.L.str.95
	b	.LBB8_91
.LBB8_82:
	adrp	x1, .L.str.87
	add	x1, x1, :lo12:.L.str.87
	b	.LBB8_91
.LBB8_83:
	adrp	x1, .L.str.96
	add	x1, x1, :lo12:.L.str.96
	b	.LBB8_91
.LBB8_84:
	adrp	x1, .L.str.97
	add	x1, x1, :lo12:.L.str.97
	b	.LBB8_91
.LBB8_85:
	adrp	x1, .L.str.98
	add	x1, x1, :lo12:.L.str.98
	b	.LBB8_91
.LBB8_86:
	adrp	x1, .L.str.92
	add	x1, x1, :lo12:.L.str.92
.LBB8_87:
	mov	w3, w0
	mov	x0, x20
	mov	w2, w21
	mov	w21, w3
.LBB8_88:
	bl	_dev_err
	b	.LBB8_93
.LBB8_89:
	adrp	x1, .L.str.94
	add	x1, x1, :lo12:.L.str.94
	b	.LBB8_91
.LBB8_90:
	adrp	x1, .L.str.99
	add	x1, x1, :lo12:.L.str.99
.LBB8_91:
	mov	w2, w0
	mov	x0, x20
	mov	w21, w2
.LBB8_92:
	bl	_dev_err
.LBB8_93:
	mov	x0, x19
	bl	ebc_buffer_manage_uninit
	mov	w0, w21
.LBB8_94:
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldr	x23, [sp, #16]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end8:
	.size	ebc_buffer_manage_init, .Lfunc_end8-ebc_buffer_manage_init
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_task_init
	.type	ebc_task_init,@function
ebc_task_init:                          // @ebc_task_init
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #64
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	mov	w9, #99                         // =0x63
	adrp	x3, .L.str.100
	add	x3, x3, :lo12:.L.str.100
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	mov	w2, #-1                         // =0xffffffff
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	mrs	x8, SP_EL0
	mov	x19, x0
	ldr	x8, [x8, #1608]
	adrp	x0, ebc_assist_thread
	add	x0, x0, :lo12:ebc_assist_thread
	mov	x1, x19
	add	x29, sp, #16
	str	x8, [sp, #8]
	str	w9, [sp, #4]
	bl	kthread_create_on_node
	adrp	x20, ebc_assist_task
	cmn	x0, #4095
	str	x0, [x20, :lo12:ebc_assist_task]
	b.hs	.LBB9_15
// %bb.1:
	add	x2, sp, #4
	mov	w1, #1                          // =0x1
	bl	sched_setscheduler_nocheck
	ldr	w8, [x19, #1816]
	cmp	w8, #8
	b.lt	.LBB9_3
// %bb.2:
	ldr	x0, [x20, :lo12:ebc_assist_task]
	adrp	x1, cpu_bit_bitmap+56
	add	x1, x1, :lo12:cpu_bit_bitmap+56
	bl	set_cpus_allowed_ptr
.LBB9_3:
	ldr	x8, [x20, :lo12:ebc_assist_task]
	add	x0, x8, #64
	//APP
.Ltmp3:
	b	.LBB9_21
.Ltmp4:
	.section	.altinstructions,"a",@progbits
.Ltmp5:
	.word	.Ltmp3-.Ltmp5
.Ltmp6:
	.word	alt_cb_patch_nops-.Ltmp6
	.hword	32805
	.byte	.Ltmp4-.Ltmp3
	.byte	.Ltmp7-.Ltmp8
	.text

.Ltmp8:
.Ltmp7:

	//NO_APP
// %bb.4:
	mov	w8, #1                          // =0x1
	//APP
	ldadd	w8, w8, [x0]
	//NO_APP
	cbz	w8, .LBB9_22
.LBB9_5:
	add	w9, w8, #1
	orr	w8, w9, w8
	tbnz	w8, #31, .LBB9_18
.LBB9_6:
	adrp	x0, ebc_thread
	add	x0, x0, :lo12:ebc_thread
	adrp	x3, .L.str.102
	add	x3, x3, :lo12:.L.str.102
	mov	x1, x19
	mov	w2, #-1                         // =0xffffffff
	bl	kthread_create_on_node
	adrp	x20, ebc_task
	cmn	x0, #4095
	str	x0, [x20, :lo12:ebc_task]
	b.hs	.LBB9_16
// %bb.7:
	add	x2, sp, #4
	mov	w1, #1                          // =0x1
	bl	sched_setscheduler_nocheck
	ldr	w8, [x19, #1816]
	cmp	w8, #8
	b.lt	.LBB9_9
// %bb.8:
	ldr	x0, [x20, :lo12:ebc_task]
	adrp	x1, cpu_bit_bitmap+64
	add	x1, x1, :lo12:cpu_bit_bitmap+64
	bl	set_cpus_allowed_ptr
.LBB9_9:
	ldr	x8, [x20, :lo12:ebc_task]
	add	x0, x8, #64
	//APP
.Ltmp9:
	b	.LBB9_24
.Ltmp10:
	.section	.altinstructions,"a",@progbits
.Ltmp11:
	.word	.Ltmp9-.Ltmp11
.Ltmp12:
	.word	alt_cb_patch_nops-.Ltmp12
	.hword	32805
	.byte	.Ltmp10-.Ltmp9
	.byte	.Ltmp13-.Ltmp14
	.text

.Ltmp14:
.Ltmp13:

	//NO_APP
// %bb.10:
	mov	w8, #1                          // =0x1
	//APP
	ldadd	w8, w8, [x0]
	//NO_APP
	cbz	w8, .LBB9_25
.LBB9_11:
	add	w9, w8, #1
	orr	w8, w9, w8
	tbnz	w8, #31, .LBB9_19
.LBB9_12:
	adrp	x20, .L.str.104
	add	x20, x20, :lo12:.L.str.104
	mov	w1, #14                         // =0xe
	adrp	x3, .L.str.105
	add	x3, x3, :lo12:.L.str.105
	mov	x0, x20
	movk	w1, #2, lsl #16
	mov	w2, #1                          // =0x1
	bl	alloc_workqueue
	mov	x22, #4503599625273344          // =0xfffffffe00000
	add	x8, x19, #24
	adrp	x21, delayed_work_timer_fn
	add	x21, x21, :lo12:delayed_work_timer_fn
	stp	x0, x22, [x19, #8]
	add	x0, x19, #48
	str	x8, [x19, #24]
	mov	x1, x21
	mov	w2, #2097152                    // =0x200000
	str	x8, [x19, #32]
	adrp	x8, ebc_delay_power_off
	add	x8, x8, :lo12:ebc_delay_power_off
	mov	x3, xzr
	mov	x4, xzr
	str	x8, [x19, #40]
	bl	init_timer_key
	mov	w1, #14                         // =0xe
	adrp	x3, .L.str.106
	add	x3, x3, :lo12:.L.str.106
	mov	x0, x20
	movk	w1, #2, lsl #16
	mov	w2, #1                          // =0x1
	bl	alloc_workqueue
	add	x8, x19, #136
	stp	x0, x22, [x19, #120]
	add	x0, x19, #160
	str	x8, [x19, #136]
	mov	x1, x21
	mov	w2, #2097152                    // =0x200000
	str	x8, [x19, #144]
	adrp	x8, ebc_wake_up_for_ghost_rm_last
	add	x8, x8, :lo12:ebc_wake_up_for_ghost_rm_last
	mov	x3, xzr
	mov	x4, xzr
	str	x8, [x19, #152]
	bl	init_timer_key
	mov	w0, wzr
.LBB9_13:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1608]
	ldr	x9, [sp, #8]
	cmp	x8, x9
	b.ne	.LBB9_20
// %bb.14:
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #64
	ldr	x30, [x18, #-8]!
	ret
.LBB9_15:
	ldr	x0, [x19]
	adrp	x1, .L.str.101
	add	x1, x1, :lo12:.L.str.101
	b	.LBB9_17
.LBB9_16:
	ldr	x0, [x19]
	adrp	x1, .L.str.103
	add	x1, x1, :lo12:.L.str.103
.LBB9_17:
	bl	_dev_err
	mov	w0, #-1                         // =0xffffffff
	b	.LBB9_13
.LBB9_18:
	mov	w1, #1                          // =0x1
	b	.LBB9_23
.LBB9_19:
	mov	w1, #1                          // =0x1
	b	.LBB9_26
.LBB9_20:
	bl	__stack_chk_fail
.LBB9_21:                               // Block address taken
                                        // Label of block must be emitted
	//APP
	// atomic_fetch_add_relaxed
	prfm	pstl1strm, [x0]
.Ltmp15:
	ldxr	w8, [x0]
	add	w9, w8, #1
	stxr	w10, w9, [x0]
	cbnz	w10, .Ltmp15

	//NO_APP
	cbnz	w8, .LBB9_5
.LBB9_22:
	mov	w1, #2                          // =0x2
.LBB9_23:
	bl	refcount_warn_saturate
	b	.LBB9_6
.LBB9_24:                               // Block address taken
                                        // Label of block must be emitted
	//APP
	// atomic_fetch_add_relaxed
	prfm	pstl1strm, [x0]
.Ltmp16:
	ldxr	w8, [x0]
	add	w9, w8, #1
	stxr	w10, w9, [x0]
	cbnz	w10, .Ltmp16

	//NO_APP
	cbnz	w8, .LBB9_11
.LBB9_25:
	mov	w1, #2                          // =0x2
.LBB9_26:
	bl	refcount_warn_saturate
	b	.LBB9_12
.Lfunc_end9:
	.size	ebc_task_init, .Lfunc_end9-ebc_task_init
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_other_init
	.type	ebc_other_init,@function
ebc_other_init:                         // @ebc_other_init
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	mov	x8, #8589934592                 // =0x200000000
	add	x9, x0, #1604
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	mov	x29, sp
	mov	x19, x0
	str	xzr, [x0, #1848]
	str	x8, [x9]
	add	x20, x0, #4, lsl #12            // =16384
	strb	wzr, [x0, #1600]
	bl	ebc_get_init_log_level
	ldrb	w9, [x19, #1840]
	mov	w10, #18284                     // =0x476c
	mov	w8, #1                          // =0x1
	str	w0, [x19, #1824]
	add	x0, x19, #1616
	str	w9, [x20, #1896]
	mov	x9, #1                          // =0x1
	movk	x9, #2, lsl #32
	str	x9, [x19, x10]
	mov	w10, #18359                     // =0x47b7
	mov	x9, #4294967297                 // =0x100000001
	str	w8, [x20, #1892]
	add	x10, x19, x10
	str	x9, [x19, #18320]
	ldr	w9, [x19, #244]
	strb	w8, [x20, #1888]
	str	w9, [x20, #1964]
	mov	w9, #-1                         // =0xffffffff
	strb	w8, [x20, #1974]
	strb	w8, [x20, #1856]
	adrp	x8, .L.str.184
	add	x8, x8, :lo12:.L.str.184
	str	wzr, [x20, #1932]
	str	wzr, [x20, #1860]
	strh	wzr, [x20, #1956]
	str	wzr, [x20, #1968]
	strb	wzr, [x19, #1814]
	str	w9, [x20, #1884]
	str	xzr, [x19, #1496]
	str	xzr, [x19, #1512]
	strb	wzr, [x10, #4]
	str	wzr, [x10]
	str	w9, [x19, #1532]
	str	wzr, [x20, #1980]
	str	wzr, [x19, #248]
	str	xzr, [x19, #1624]
	str	xzr, [x19, #1632]
	str	xzr, [x19, #1640]
	str	xzr, [x19, #1648]
	str	xzr, [x19, #1656]
	str	xzr, [x19, #1664]
	str	xzr, [x19, #1672]
	str	xzr, [x19, #1680]
	str	xzr, [x19, #1688]
	str	xzr, [x19, #1696]
	str	xzr, [x19, #1704]
	str	xzr, [x19, #1712]
	str	xzr, [x19, #1720]
	str	xzr, [x19, #1728]
	str	xzr, [x19, #1736]
	str	xzr, [x19, #1744]
	str	xzr, [x19, #1752]
	str	xzr, [x19, #1760]
	str	xzr, [x19, #1768]
	str	xzr, [x19, #1776]
	str	xzr, [x19, #1784]
	str	xzr, [x19, #1792]
	str	xzr, [x19, #1800]
	str	x8, [x19, #1616]
	bl	wakeup_source_add
	str	wzr, [x19, #1808]
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end10:
	.size	ebc_other_init, .Lfunc_end10-ebc_other_init
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_logo_init
	.type	ebc_logo_init,@function
ebc_logo_init:                          // @ebc_logo_init
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #304
	stp	x29, x30, [sp, #208]            // 16-byte Folded Spill
	add	x29, sp, #208
	stp	x28, x27, [sp, #224]            // 16-byte Folded Spill
	stp	x26, x25, [sp, #240]            // 16-byte Folded Spill
	mov	x25, x0
	stp	x24, x23, [sp, #256]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #272]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #288]            // 16-byte Folded Spill
	mrs	x8, SP_EL0
	mov	x20, x1
	ldr	x8, [x8, #1608]
	adrp	x1, .L.str.185
	add	x1, x1, :lo12:.L.str.185
	stur	x8, [x29, #-16]
	adrp	x8, saved_command_line
	ldr	x21, [x8, :lo12:saved_command_line]
	ldr	x19, [x0]
	stur	wzr, [x29, #-100]
	str	wzr, [sp, #104]
	mov	x0, x21
	bl	strstr
	mov	x24, x0
	adrp	x1, .L.str.186
	add	x1, x1, :lo12:.L.str.186
	mov	x0, x21
	bl	strstr
	mov	x26, x0
	ldr	x0, [x19, #696]
	adrp	x1, .L.str.187
	add	x1, x1, :lo12:.L.str.187
	sub	x5, x29, #96
	mov	x2, xzr
	ldp	w21, w22, [x20, #76]
	mov	w3, wzr
	mov	w4, wzr
	stp	xzr, xzr, [sp, #88]
	stp	xzr, xzr, [sp, #72]
	stp	xzr, xzr, [sp, #56]
	stp	xzr, xzr, [sp, #40]
	stp	xzr, xzr, [sp, #24]
	stp	xzr, xzr, [sp, #8]
	stp	xzr, xzr, [x29, #-32]
	stp	xzr, xzr, [x29, #-48]
	stp	xzr, xzr, [x29, #-64]
	stp	xzr, xzr, [x29, #-80]
	stp	xzr, xzr, [x29, #-96]
	bl	__of_parse_phandle_with_args
	cbnz	w0, .LBB11_53
// %bb.1:
	ldur	x0, [x29, #-96]
	cbz	x0, .LBB11_53
// %bb.2:
	add	x2, sp, #8
	mov	w1, wzr
	bl	of_address_to_resource
	cbnz	w0, .LBB11_49
// %bb.3:
	mul	w8, w22, w21
	ldp	x21, x9, [sp, #8]
	lsr	w2, w8, #1
	sub	x8, x9, x21
	add	x8, x8, #1
	cmp	w2, w8
	b.gt	.LBB11_50
// %bb.4:
	mov	w22, w8
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	mov	w3, #1                          // =0x1
	bl	devm_memremap
	cbz	x0, .LBB11_51
// %bb.5:
	mov	x23, x0
	cbz	x24, .LBB11_8
// %bb.6:
	adrp	x1, .L.str.191
	add	x1, x1, :lo12:.L.str.191
	sub	x2, x29, #100
	mov	x0, x24
	bl	sscanf
	ldur	w2, [x29, #-100]
	cmp	x21, x2
	b.ls	.LBB11_55
// %bb.7:
	mov	x24, xzr
.LBB11_8:
	mov	w28, #1                         // =0x1
	cbz	x26, .LBB11_57
.LBB11_9:
	adrp	x1, .L.str.194
	add	x1, x1, :lo12:.L.str.194
	add	x2, sp, #104
	mov	x0, x26
	bl	sscanf
	ldr	w2, [sp, #104]
	cmp	x21, x2
	b.ls	.LBB11_60
// %bb.10:
	mov	x26, xzr
	mov	w27, #1                         // =0x1
	cbnz	w28, .LBB11_58
.LBB11_11:
	adrp	x0, .L.str.198
	add	x0, x0, :lo12:.L.str.198
	bl	ebc_empty_buf_get
	cbz	x0, .LBB11_17
// %bb.12:
	ldp	w8, w9, [x20, #76]
	mul	w8, w9, w8
	cmp	w8, #2
	b.lo	.LBB11_15
// %bb.13:
	lsr	w8, w8, #1
	ldr	x10, [x0, #8]
	mov	x9, x24
.LBB11_14:                              // =>This Inner Loop Header: Depth=1
	ldrb	w11, [x9], #1
	subs	w8, w8, #1
	lsl	w12, w11, #4
	and	w11, w11, #0xf0
	strb	w11, [x10, #1]
	strb	w12, [x10]
	add	x12, x10, #2
	mov	x10, x12
	b.ne	.LBB11_14
.LBB11_15:
	mov	w8, #7                          // =0x7
	str	xzr, [x0, #40]
	mov	w9, #1                          // =0x1
	str	w8, [x0, #32]
	ldr	w8, [x20, #76]
	str	w8, [x0, #48]
	ldr	w8, [x20, #80]
	stp	w8, w9, [x0, #52]
.LBB11_16:
	bl	ebc_add_to_dsp_buf_list_tail
.LBB11_17:
	tbnz	w27, #0, .LBB11_23
// %bb.18:
	adrp	x0, .L.str.198
	add	x0, x0, :lo12:.L.str.198
	bl	ebc_empty_buf_get
	cbz	x0, .LBB11_23
// %bb.19:
	ldp	w8, w9, [x20, #76]
	mul	w8, w9, w8
	cmp	w8, #2
	b.lo	.LBB11_22
// %bb.20:
	lsr	w8, w8, #1
	ldr	x10, [x0, #8]
	mov	x9, x26
.LBB11_21:                              // =>This Inner Loop Header: Depth=1
	ldrb	w11, [x9], #1
	subs	w8, w8, #1
	lsl	w12, w11, #4
	and	w11, w11, #0xf0
	strb	w11, [x10, #1]
	strb	w12, [x10]
	add	x12, x10, #2
	mov	x10, x12
	b.ne	.LBB11_21
.LBB11_22:
	mov	w8, #7                          // =0x7
	str	xzr, [x0, #40]
	mov	w9, #1                          // =0x1
	str	w8, [x0, #32]
	ldr	w8, [x20, #76]
	str	w8, [x0, #48]
	ldr	w8, [x20, #80]
	stp	w8, w9, [x0, #52]
	bl	ebc_add_to_dsp_buf_list_tail
.LBB11_23:
	adrp	x8, ebc_task
	ldr	x0, [x8, :lo12:ebc_task]
	bl	wake_up_process
	cbz	x24, .LBB11_25
.LBB11_24:
	mov	x0, x24
	bl	kfree
.LBB11_25:
	cbz	x26, .LBB11_27
// %bb.26:
	mov	x0, x26
	bl	kfree
.LBB11_27:
	mov	x0, x19
	mov	x1, x23
	bl	devm_memunmap
	add	x8, x21, x22
	and	x19, x21, #0xfffffffffffff000
	add	x8, x8, #4095
	and	x20, x8, #0xfffffffffffff000
	cmp	x19, x20
	b.hs	.LBB11_53
// %bb.28:
	lsr	x8, x21, #12
	mov	x9, #-8589934592                // =0xfffffffe00000000
	adrp	x22, memstart_addr
	movk	x9, #49152, lsl #16
	mov	x23, #281474976706560           // =0xfffffffff000
	adrp	x24, mem_section
	add	x21, x9, x8, lsl #6
	//APP
	mrs	x25, SP_EL0
	//NO_APP
	b	.LBB11_32
.LBB11_29:                              //   in Loop: Header=BB11_32 Depth=1
	//APP
	//NO_APP
	ldr	x8, [x25, #16]
	subs	x8, x8, #1
	str	w8, [x25, #16]
	b.eq	.LBB11_47
// %bb.30:                              //   in Loop: Header=BB11_32 Depth=1
	ldr	x8, [x25, #16]
	cbz	x8, .LBB11_47
.LBB11_31:                              //   in Loop: Header=BB11_32 Depth=1
	add	x19, x19, #1, lsl #12           // =4096
	add	x21, x21, #64
	cmp	x19, x20
	b.hs	.LBB11_53
.LBB11_32:                              // =>This Inner Loop Header: Depth=1
	cmp	x19, x23
	b.hi	.LBB11_31
// %bb.33:                              //   in Loop: Header=BB11_32 Depth=1
	ldr	x8, [x24, :lo12:mem_section]
	cbz	x8, .LBB11_36
// %bb.34:                              //   in Loop: Header=BB11_32 Depth=1
	lsr	x9, x19, #32
	and	x9, x9, #0xfffffff8
	ldr	x8, [x8, x9]
	cbz	x8, .LBB11_36
// %bb.35:                              //   in Loop: Header=BB11_32 Depth=1
	lsr	x9, x19, #27
	add	x8, x8, w9, uxtb #4
.LBB11_36:                              //   in Loop: Header=BB11_32 Depth=1
	ldr	x26, [x22, :lo12:memstart_addr]
	ldr	w9, [x25, #16]
	add	w9, w9, #1
	str	w9, [x25, #16]
	//APP
	//NO_APP
	cbz	x8, .LBB11_29
// %bb.37:                              //   in Loop: Header=BB11_32 Depth=1
	ldr	x9, [x8]
	tbz	w9, #1, .LBB11_29
// %bb.38:                              //   in Loop: Header=BB11_32 Depth=1
	tbnz	w9, #3, .LBB11_41
// %bb.39:                              //   in Loop: Header=BB11_32 Depth=1
	ldr	x8, [x8, #8]
	cbz	x8, .LBB11_42
// %bb.40:                              //   in Loop: Header=BB11_32 Depth=1
	lsr	x9, x19, #21
	ldr	x8, [x8, #16]
	lsr	x8, x8, x9
	and	w27, w8, #0x1
	b	.LBB11_43
.LBB11_41:                              //   in Loop: Header=BB11_32 Depth=1
	mov	w27, #1                         // =0x1
	b	.LBB11_43
.LBB11_42:                              //   in Loop: Header=BB11_32 Depth=1
	mov	w27, wzr
.LBB11_43:                              //   in Loop: Header=BB11_32 Depth=1
	//APP
	//NO_APP
	ldr	x8, [x25, #16]
	subs	x8, x8, #1
	str	w8, [x25, #16]
	b.eq	.LBB11_48
// %bb.44:                              //   in Loop: Header=BB11_32 Depth=1
	ldr	x8, [x25, #16]
	cbz	x8, .LBB11_48
// %bb.45:                              //   in Loop: Header=BB11_32 Depth=1
	cbz	w27, .LBB11_31
.LBB11_46:                              //   in Loop: Header=BB11_32 Depth=1
	asr	x8, x26, #12
	sub	x0, x21, x8, lsl #6
	bl	free_reserved_page
	b	.LBB11_31
.LBB11_47:                              //   in Loop: Header=BB11_32 Depth=1
	mov	w27, wzr
.LBB11_48:                              //   in Loop: Header=BB11_32 Depth=1
	bl	preempt_schedule
	cbnz	w27, .LBB11_46
	b	.LBB11_31
.LBB11_49:
	adrp	x1, .L.str.188
	add	x1, x1, :lo12:.L.str.188
	b	.LBB11_52
.LBB11_50:
	adrp	x1, .L.str.189
	add	x1, x1, :lo12:.L.str.189
	mov	x0, x19
	bl	_dev_err
	b	.LBB11_53
.LBB11_51:
	adrp	x1, .L.str.190
	add	x1, x1, :lo12:.L.str.190
.LBB11_52:
	mov	x0, x19
	bl	_dev_err
.LBB11_53:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1608]
	ldur	x9, [x29, #-16]
	cmp	x8, x9
	b.ne	.LBB11_66
// %bb.54:
	ldp	x20, x19, [sp, #288]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #272]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #256]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #240]            // 16-byte Folded Reload
	ldp	x28, x27, [sp, #224]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #208]            // 16-byte Folded Reload
	add	sp, sp, #304
	ldr	x30, [x18, #-8]!
	ret
.LBB11_55:
	ldr	x0, [x25, #304]
	adrp	x1, .L.str.192
	add	x1, x1, :lo12:.L.str.192
                                        // kill: def $w2 killed $w2 killed $x2
	bl	_dev_info
	ldp	w9, w8, [x20, #76]
	mov	w1, #3520                       // =0xdc0
	mul	w8, w8, w9
	lsr	w0, w8, #1
	bl	__kmalloc_noprof
	cbz	x0, .LBB11_64
// %bb.56:
	ldp	w8, w9, [x20, #76]
	mov	x24, x0
	mul	w8, w9, w8
	ldur	w9, [x29, #-100]
	lsr	w2, w8, #1
	sub	x8, x23, x21
	add	x1, x8, x9
	bl	memcpy
	mov	w28, wzr
	cbnz	x26, .LBB11_9
.LBB11_57:
	mov	w27, #1                         // =0x1
	cbz	w28, .LBB11_11
.LBB11_58:
	ldr	x0, [x25, #304]
	adrp	x1, .L.str.197
	add	x1, x1, :lo12:.L.str.197
	bl	_dev_info
	ldr	x0, [x25, #16]
	cbz	x0, .LBB11_62
// %bb.59:
	bl	ebc_pmic_verity_vcom
	b	.LBB11_63
.LBB11_60:
	ldr	x0, [x25, #304]
	adrp	x1, .L.str.195
	add	x1, x1, :lo12:.L.str.195
                                        // kill: def $w2 killed $w2 killed $x2
	bl	_dev_info
	ldp	w9, w8, [x20, #76]
	mov	w1, #3520                       // =0xdc0
	mul	w8, w8, w9
	lsr	w0, w8, #1
	bl	__kmalloc_noprof
	mov	x26, x0
	cbz	x0, .LBB11_65
// %bb.61:
	ldp	w8, w9, [x20, #76]
	mov	x0, x26
	mul	w8, w9, w8
	ldr	w9, [sp, #104]
	lsr	w2, w8, #1
	sub	x8, x23, x21
	add	x1, x8, x9
	bl	memcpy
	mov	w27, wzr
	cbz	w28, .LBB11_11
	b	.LBB11_58
.LBB11_62:
	ldr	x0, [x25, #24]
	bl	ebc_regulator_verity_vcom
.LBB11_63:
	adrp	x0, .L.str.199
	add	x0, x0, :lo12:.L.str.199
	bl	ebc_empty_buf_get
	ldp	w8, w9, [x20, #76]
	mov	x25, x0
	ldr	x0, [x0, #8]
	mov	w1, #240                        // =0xf0
	mul	w2, w9, w8
	bl	memset
	mov	w8, #17                         // =0x11
	str	xzr, [x25, #40]
	mov	w9, #1                          // =0x1
	str	w8, [x25, #32]
	mov	x0, x25
	ldr	w8, [x20, #76]
	str	w8, [x25, #48]
	ldr	w8, [x20, #80]
	stp	w8, w9, [x25, #52]
	b	.LBB11_16
.LBB11_64:
	ldr	x0, [x25, #304]
	adrp	x1, .L.str.193
	add	x1, x1, :lo12:.L.str.193
	bl	_dev_err
	b	.LBB11_27
.LBB11_65:
	ldr	x0, [x25, #304]
	adrp	x1, .L.str.196
	add	x1, x1, :lo12:.L.str.196
	bl	_dev_err
	cbnz	x24, .LBB11_24
	b	.LBB11_25
.LBB11_66:
	bl	__stack_chk_fail
.Lfunc_end11:
	.size	ebc_logo_init, .Lfunc_end11-ebc_logo_init
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_sysfs_init
	.type	ebc_sysfs_init,@function
ebc_sysfs_init:                         // @ebc_sysfs_init
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	x19, x0
	adrp	x0, ebc_misc
	add	x0, x0, :lo12:ebc_misc
	mov	x29, sp
	bl	misc_register
	adrp	x0, waveform_misc
	add	x0, x0, :lo12:waveform_misc
	bl	misc_register
	ldrb	w8, [x19, #1844]
	cmp	w8, #1
	b.ne	.LBB12_2
// %bb.1:
	adrp	x0, transition_lut_misc
	add	x0, x0, :lo12:transition_lut_misc
	bl	misc_register
.LBB12_2:
	ldr	x0, [x19]
	adrp	x1, dev_attr_waveform_version
	add	x1, x1, :lo12:dev_attr_waveform_version
	bl	device_create_file
	ldr	x0, [x19]
	adrp	x1, dev_attr_pmic_name
	add	x1, x1, :lo12:dev_attr_pmic_name
	bl	device_create_file
	ldr	x0, [x19]
	adrp	x1, dev_attr_pmic_temp
	add	x1, x1, :lo12:dev_attr_pmic_temp
	bl	device_create_file
	ldr	x0, [x19]
	adrp	x1, dev_attr_pmic_vcom
	add	x1, x1, :lo12:dev_attr_pmic_vcom
	bl	device_create_file
	ldr	x0, [x19]
	adrp	x1, dev_attr_ebc_version
	add	x1, x1, :lo12:dev_attr_ebc_version
	bl	device_create_file
	ldr	x0, [x19]
	adrp	x1, dev_attr_ebc_state
	add	x1, x1, :lo12:dev_attr_ebc_state
	bl	device_create_file
	ldr	x0, [x19]
	adrp	x1, dev_attr_ebc_buf_state
	add	x1, x1, :lo12:dev_attr_ebc_buf_state
	bl	device_create_file
	ldr	x0, [x19]
	adrp	x1, dev_attr_auto_frame_state
	add	x1, x1, :lo12:dev_attr_auto_frame_state
	bl	device_create_file
	ldr	x0, [x19]
	adrp	x1, dev_attr_ebc_debug_level
	add	x1, x1, :lo12:dev_attr_ebc_debug_level
	bl	device_create_file
	ldr	x0, [x19]
	adrp	x1, dev_attr_wf_data
	add	x1, x1, :lo12:dev_attr_wf_data
	bl	device_create_file
	ldr	x0, [x19]
	adrp	x1, dev_attr_overlay_wf_data
	add	x1, x1, :lo12:dev_attr_overlay_wf_data
	bl	device_create_file
	ldr	x0, [x19]
	adrp	x1, dev_attr_ori_wf_data
	add	x1, x1, :lo12:dev_attr_ori_wf_data
	bl	device_create_file
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end12:
	.size	ebc_sysfs_init, .Lfunc_end12-ebc_sysfs_init
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_buffer_manage_uninit
	.type	ebc_buffer_manage_uninit,@function
ebc_buffer_manage_uninit:               // @ebc_buffer_manage_uninit
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	ldr	x8, [x0, #1584]
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	mov	x19, x0
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	cbz	x8, .LBB13_2
// %bb.1:
	add	x0, x19, #1576
	bl	ebc_free_dma_buf
.LBB13_2:
	ldr	x8, [x19, #1440]
	cbz	x8, .LBB13_4
// %bb.3:
	add	x0, x19, #1432
	bl	ebc_free_dma_buf
.LBB13_4:
	ldr	x8, [x19, #1368]
	cbz	x8, .LBB13_6
// %bb.5:
	add	x0, x19, #1360
	bl	ebc_free_dma_buf
.LBB13_6:
	ldr	x8, [x19, #1296]
	cbz	x8, .LBB13_8
// %bb.7:
	add	x0, x19, #1288
	bl	ebc_free_dma_buf
.LBB13_8:
	ldr	x8, [x19, #1512]
	cbz	x8, .LBB13_10
// %bb.9:
	add	x0, x19, #1504
	bl	ebc_free_dma_buf
.LBB13_10:
	ldr	x8, [x19, #1224]
	cbz	x8, .LBB13_12
// %bb.11:
	add	x0, x19, #1216
	bl	ebc_free_dma_buf
.LBB13_12:
	ldr	x8, [x19, #1008]
	cbz	x8, .LBB13_14
// %bb.13:
	add	x0, x19, #1000
	bl	ebc_free_dma_buf
.LBB13_14:
	ldr	x8, [x19, #1080]
	cbz	x8, .LBB13_16
// %bb.15:
	add	x0, x19, #1072
	bl	ebc_free_dma_buf
.LBB13_16:
	ldr	x8, [x19, #1152]
	cbz	x8, .LBB13_18
// %bb.17:
	add	x0, x19, #1144
	bl	ebc_free_dma_buf
.LBB13_18:
	ldr	w8, [x19, #560]
	cmp	w8, #1
	b.lt	.LBB13_23
// %bb.19:
	mov	x21, xzr
	add	x20, x19, #712
	b	.LBB13_21
.LBB13_20:                              //   in Loop: Header=BB13_21 Depth=1
	add	x21, x21, #1
	add	x20, x20, #72
	cmp	x21, w8, sxtw
	b.ge	.LBB13_23
.LBB13_21:                              // =>This Inner Loop Header: Depth=1
	ldr	x9, [x20, #8]
	cbz	x9, .LBB13_20
// %bb.22:                              //   in Loop: Header=BB13_21 Depth=1
	mov	x0, x20
	bl	ebc_free_dma_buf
	ldr	w8, [x19, #560]
	b	.LBB13_20
.LBB13_23:
	bl	ebc_buf_uninit
	ldr	x8, [x19, #576]
	cbz	x8, .LBB13_25
// %bb.24:
	add	x0, x19, #568
	bl	ebc_free_dma_buf
.LBB13_25:
	ldr	x8, [x19, #648]
	cbz	x8, .LBB13_27
// %bb.26:
	add	x0, x19, #640
	bl	ebc_free_dma_buf
.LBB13_27:
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end13:
	.size	ebc_buffer_manage_uninit, .Lfunc_end13-ebc_buffer_manage_uninit
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_assist_thread
	.type	ebc_assist_thread,@function
	.word	3228165220                      // 0xc069e464
ebc_assist_thread:                      // @ebc_assist_thread
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-96]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	stp	x26, x25, [sp, #32]             // 16-byte Folded Spill
	mov	w26, #1                         // =0x1
	ldr	x25, [x8, :lo12:global_ebc]
	stp	x28, x27, [sp, #16]             // 16-byte Folded Spill
	mov	x29, sp
	stp	x24, x23, [sp, #48]             // 16-byte Folded Spill
	mov	w24, #2                         // =0x2
	//APP
	mrs	x23, SP_EL0
	//NO_APP
	stp	x22, x21, [sp, #64]             // 16-byte Folded Spill
	add	x27, x25, #4, lsl #12           // =16384
	add	x28, x25, #1880
	stp	x20, x19, [sp, #80]             // 16-byte Folded Spill
	adrp	x20, .L.str.109
	add	x20, x20, :lo12:.L.str.109
	adrp	x21, .L.str.110
	add	x21, x21, :lo12:.L.str.110
	mov	w19, #552                       // =0x228
	adrp	x22, ebc_assist_finished_flag_sem
	add	x22, x22, :lo12:ebc_assist_finished_flag_sem
	b	.LBB14_3
.LBB14_1:                               //   in Loop: Header=BB14_3 Depth=1
	ldrsw	x8, [x25, #184]
	add	x1, x25, #304
	mov	w2, #3                          // =0x3
	ldr	x0, [x28, x8, lsl #3]
	bl	get_full_or_part_data
.LBB14_2:                               //   in Loop: Header=BB14_3 Depth=1
	mov	x0, x22
	bl	up
	bl	schedule
.LBB14_3:                               // =>This Inner Loop Header: Depth=1
	str	w24, [x23, #48]
	//APP
	dmb	ish
	//NO_APP
	ldrb	w8, [x27, #2281]
	ldrb	w9, [x27, #2282]
	orr	w8, w9, w8
	tst	w8, #0xff
	strb	w8, [x27, #2283]
	b.ne	.LBB14_13
// %bb.4:                               //   in Loop: Header=BB14_3 Depth=1
	ldrb	w8, [x25, #2118]
	tbnz	w8, #0, .LBB14_13
// %bb.5:                               //   in Loop: Header=BB14_3 Depth=1
	ldrb	w8, [x27, #2249]
	cmp	w8, #1
	b.ne	.LBB14_10
// %bb.6:                               //   in Loop: Header=BB14_3 Depth=1
	ldrb	w8, [x27, #2276]
	cmp	w8, #1
	b.ne	.LBB14_9
// %bb.7:                               //   in Loop: Header=BB14_3 Depth=1
	ldrb	w8, [x27, #2277]
	cmp	w8, #1
	b.ne	.LBB14_9
// %bb.8:                               //   in Loop: Header=BB14_3 Depth=1
	strb	w26, [x27, #2278]
.LBB14_9:                               //   in Loop: Header=BB14_3 Depth=1
	ldrb	w8, [x27, #2278]
	tbnz	w8, #0, .LBB14_11
	b	.LBB14_13
.LBB14_10:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	w8, [x27, #2184]
	cmp	w8, #0
	b.gt	.LBB14_13
.LBB14_11:                              //   in Loop: Header=BB14_3 Depth=1
	ldrb	w8, [x25, #2116]
	tbnz	w8, #0, .LBB14_13
// %bb.12:                              //   in Loop: Header=BB14_3 Depth=1
	ldrb	w8, [x25, #2117]
	tbz	w8, #0, .LBB14_21
.LBB14_13:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	w8, [x27, #2168]
	cbz	w8, .LBB14_18
// %bb.14:                              //   in Loop: Header=BB14_3 Depth=1
	cmp	w8, #1
	b.ne	.LBB14_2
// %bb.15:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	w8, [x25, #2128]
	cmp	w8, #2
	b.lt	.LBB14_2
// %bb.16:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	x0, [x25, #304]
	mov	x1, x21
.LBB14_17:                              //   in Loop: Header=BB14_3 Depth=1
	mov	x2, x20
	bl	_dev_info
	b	.LBB14_2
.LBB14_18:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	w8, [x25, #1912]
	cmp	w8, #9
	b.hi	.LBB14_1
// %bb.19:                              //   in Loop: Header=BB14_3 Depth=1
	lsl	w8, w26, w8
	tst	w8, w19
	b.eq	.LBB14_1
// %bb.20:                              //   in Loop: Header=BB14_3 Depth=1
	ldrsw	x8, [x25, #184]
	add	x1, x25, #304
	mov	w2, #3                          // =0x3
	ldr	x0, [x28, x8, lsl #3]
	bl	get_auto_data
	b	.LBB14_2
.LBB14_21:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	w8, [x25, #2128]
	cmp	w8, #2
	b.lt	.LBB14_2
// %bb.22:                              //   in Loop: Header=BB14_3 Depth=1
	ldr	x0, [x25, #304]
	adrp	x1, .L.str.108
	add	x1, x1, :lo12:.L.str.108
	b	.LBB14_17
.Lfunc_end14:
	.size	ebc_assist_thread, .Lfunc_end14-ebc_assist_thread
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_thread
	.type	ebc_thread,@function
	.word	3228165220                      // 0xc069e464
ebc_thread:                             // @ebc_thread
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #240
	adrp	x8, global_ebc
	stp	x20, x19, [sp, #224]            // 16-byte Folded Spill
	ldr	x19, [x8, :lo12:global_ebc]
	stp	x29, x30, [sp, #144]            // 16-byte Folded Spill
	add	x29, sp, #144
	stp	x28, x27, [sp, #160]            // 16-byte Folded Spill
	stp	x26, x25, [sp, #176]            // 16-byte Folded Spill
	stp	x24, x23, [sp, #192]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #208]            // 16-byte Folded Spill
	add	x22, x19, #4, lsl #12           // =16384
	bl	ebc_empty_osd_buf_get
	add	x8, x19, #1880
	mov	w26, wzr
	mov	w21, #1                         // =0x1
	stp	xzr, x8, [sp, #48]              // 16-byte Folded Spill
	add	x8, x19, #136
	mov	w23, #2                         // =0x2
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	//APP
	mrs	x8, SP_EL0
	//NO_APP
	mov	w27, #1                         // =0x1
	stur	x8, [x29, #-64]                 // 8-byte Folded Spill
	mov	w8, #1                          // =0x1
	stur	wzr, [x29, #-52]                // 4-byte Folded Spill
	str	wzr, [sp, #72]                  // 4-byte Folded Spill
	str	wzr, [sp, #40]                  // 4-byte Folded Spill
	str	x0, [x19, #1816]
	str	w8, [sp, #68]                   // 4-byte Folded Spill
	stur	x22, [x29, #-48]                // 8-byte Folded Spill
	b	.LBB15_4
.LBB15_1:                               //   in Loop: Header=BB15_4 Depth=1
	ldrsw	x8, [x19, #184]
	ldr	x9, [sp, #56]                   // 8-byte Folded Reload
	add	x1, x19, #304
	mov	w2, #2                          // =0x2
	ldr	x0, [x9, x8, lsl #3]
	bl	get_full_or_part_data
.LBB15_2:                               //   in Loop: Header=BB15_4 Depth=1
	ldur	x8, [x29, #-64]                 // 8-byte Folded Reload
	str	wzr, [x8, #48]
	//APP
	dmb	ish
	//NO_APP
.LBB15_3:                               //   in Loop: Header=BB15_4 Depth=1
	bl	schedule
	mov	w8, #1                          // =0x1
	stur	w8, [x29, #-52]                 // 4-byte Folded Spill
.LBB15_4:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB15_9 Depth 2
                                        //     Child Loop BB15_19 Depth 2
                                        //       Child Loop BB15_21 Depth 3
                                        //         Child Loop BB15_23 Depth 4
                                        //     Child Loop BB15_48 Depth 2
                                        //       Child Loop BB15_53 Depth 3
                                        //     Child Loop BB15_137 Depth 2
                                        //     Child Loop BB15_154 Depth 2
                                        //     Child Loop BB15_161 Depth 2
                                        //       Child Loop BB15_165 Depth 3
                                        //     Child Loop BB15_179 Depth 2
                                        //     Child Loop BB15_172 Depth 2
                                        //     Child Loop BB15_150 Depth 2
                                        //     Child Loop BB15_185 Depth 2
                                        //       Child Loop BB15_188 Depth 3
                                        //         Child Loop BB15_191 Depth 4
                                        //     Child Loop BB15_276 Depth 2
                                        //     Child Loop BB15_241 Depth 2
                                        //     Child Loop BB15_287 Depth 2
                                        //     Child Loop BB15_319 Depth 2
                                        //     Child Loop BB15_251 Depth 2
                                        //       Child Loop BB15_254 Depth 3
                                        //         Child Loop BB15_260 Depth 4
                                        //     Child Loop BB15_351 Depth 2
                                        //       Child Loop BB15_356 Depth 3
                                        //     Child Loop BB15_388 Depth 2
                                        //       Child Loop BB15_393 Depth 3
	adrp	x0, ebc_assist_finished_flag_sem
	add	x0, x0, :lo12:ebc_assist_finished_flag_sem
	bl	down
	tbz	w26, #0, .LBB15_6
// %bb.5:                               //   in Loop: Header=BB15_4 Depth=1
	ldrsw	x8, [x19, #184]
	ldr	x10, [sp, #56]                  // 8-byte Folded Reload
	ldrsw	x2, [x19, #540]
	sub	w9, w21, w8
	ldr	x1, [x10, x8, lsl #3]
	ldr	x0, [x10, w9, sxtw #3]
	bl	memcpy
.LBB15_6:                               //   in Loop: Header=BB15_4 Depth=1
	ldur	w8, [x29, #-52]                 // 4-byte Folded Reload
	tbz	w8, #0, .LBB15_41
// %bb.7:                               //   in Loop: Header=BB15_4 Depth=1
	add	x0, x19, #304
	mov	w1, #128                        // =0x80
	bl	ebc_dump_debug_buffers
	ldr	w8, [x19, #552]
	ldrb	w9, [x19, #1904]
	add	w8, w8, #1
	cmp	w9, #1
	str	w8, [x19, #552]
	b.ne	.LBB15_12
// %bb.8:                               //   in Loop: Header=BB15_4 Depth=1
	sub	x0, x29, #40
	mov	w1, wzr
	stp	xzr, xzr, [x29, #-16]
	stp	xzr, xzr, [x29, #-32]
	stur	xzr, [x29, #-40]
	bl	init_wait_entry
	sub	x1, x29, #40
	adrp	x0, ebc_flip_wq
	add	x0, x0, :lo12:ebc_flip_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldrb	w8, [x19, #1904]
	cmp	w8, #1
	b.ne	.LBB15_11
.LBB15_9:                               //   Parent Loop BB15_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	cbnz	x0, .LBB15_12
// %bb.10:                              //   in Loop: Header=BB15_9 Depth=2
	bl	schedule
	sub	x1, x29, #40
	adrp	x0, ebc_flip_wq
	add	x0, x0, :lo12:ebc_flip_wq
	mov	w2, #1                          // =0x1
	bl	prepare_to_wait_event
	ldrb	w8, [x19, #1904]
	tbnz	w8, #0, .LBB15_9
.LBB15_11:                              //   in Loop: Header=BB15_4 Depth=1
	sub	x1, x29, #40
	adrp	x0, ebc_flip_wq
	add	x0, x0, :lo12:ebc_flip_wq
	bl	finish_wait
.LBB15_12:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #2128]
	cmp	w8, #2
	b.ge	.LBB15_107
.LBB15_13:                              //   in Loop: Header=BB15_4 Depth=1
	bl	ebc_power_on
	ldr	w8, [x22, #2168]
	cmp	w8, #1
	b.ne	.LBB15_24
// %bb.14:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #1912]
	stur	w27, [x29, #-68]                // 4-byte Folded Spill
	ldr	x0, [x19, #1656]
	ldp	w24, w25, [x19, #188]
	str	w8, [sp, #44]                   // 4-byte Folded Spill
	adrp	x8, global_ebc
	ldr	x23, [x19, #1728]
	ldr	x28, [x8, :lo12:global_ebc]
	ldr	w8, [x19, #2128]
	ldr	x26, [x19, #1648]
	ldr	x27, [x19, #1720]
	strb	w21, [x19, #1904]
	cmp	w8, #2
	b.ge	.LBB15_304
.LBB15_15:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x22, #2160]
	cmp	w8, #1
	b.ne	.LBB15_35
// %bb.16:                              //   in Loop: Header=BB15_4 Depth=1
	strb	wzr, [x22, #2160]
	str	x23, [sp, #16]                  // 8-byte Folded Spill
	ldr	w23, [x28, #1840]
	str	x0, [sp, #32]                   // 8-byte Folded Spill
	cmp	w23, #64
	b.gt	.LBB15_315
// %bb.17:                              //   in Loop: Header=BB15_4 Depth=1
	lsl	w8, w23, #8
	add	x20, x28, #2160
	ldr	x22, [x28, #1864]
	mov	x0, x20
	mov	w1, wzr
	sxtw	x2, w8
	bl	memset
	mov	x8, xzr
	b	.LBB15_19
.LBB15_18:                              //   in Loop: Header=BB15_19 Depth=2
	add	x8, x8, #1
	add	x22, x22, #1
	cmp	x8, #32
	b.eq	.LBB15_33
.LBB15_19:                              //   Parent Loop BB15_4 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB15_21 Depth 3
                                        //         Child Loop BB15_23 Depth 4
	lsl	x10, x8, #1
	mov	x9, xzr
	mov	x11, x22
	mov	x12, x20
	b	.LBB15_21
.LBB15_20:                              //   in Loop: Header=BB15_21 Depth=3
	add	x9, x9, #1
	add	x12, x12, #8
	add	x11, x11, #32
	cmp	x9, #32
	b.eq	.LBB15_18
.LBB15_21:                              //   Parent Loop BB15_4 Depth=1
                                        //     Parent Loop BB15_19 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB15_23 Depth 4
	cmp	w23, #1
	b.lt	.LBB15_20
// %bb.22:                              //   in Loop: Header=BB15_21 Depth=3
	mov	x13, x11
	mov	x14, x12
	mov	x15, x23
.LBB15_23:                              //   Parent Loop BB15_4 Depth=1
                                        //     Parent Loop BB15_19 Depth=2
                                        //       Parent Loop BB15_21 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	ldrb	w16, [x13]
	ldr	x17, [x14]
	subs	x15, x15, #1
	add	x13, x13, #1024
	lsl	x16, x16, x10
	orr	x16, x16, x17
	str	x16, [x14]
	add	x14, x14, #256
	b.ne	.LBB15_23
	b	.LBB15_20
.LBB15_24:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #2128]
	ldrsw	x20, [x19, #184]
	mov	w26, w27
	strb	w21, [x19, #1904]
	cmp	w8, #2
	mov	w8, w20
	b.ge	.LBB15_305
.LBB15_25:                              //   in Loop: Header=BB15_4 Depth=1
	mov	w10, #24                        // =0x18
	ldr	x9, [sp, #24]                   // 8-byte Folded Reload
	ldr	w22, [x19, #252]
	smaddl	x23, w20, w10, x9
	sub	w9, w21, w8
	ldr	w8, [x19, #280]
	ldp	w24, w25, [x19, #244]
	str	w9, [x19, #184]
	cbz	w8, .LBB15_27
// %bb.26:                              //   in Loop: Header=BB15_4 Depth=1
	ldp	w9, w10, [x19, #188]
	ldr	w11, [x19, #276]
	mul	w12, w9, w8
	add	w8, w11, w8
	sub	w10, w10, w11
	mul	w13, w11, w9
	mul	w8, w8, w9
	mul	w10, w10, w9
	ldr	x9, [x23]
	lsr	w20, w12, #2
	lsr	w27, w13, #2
	lsr	w8, w8, #2
	lsr	w2, w10, #2
	add	x1, x9, x27
	add	x0, x9, x8
	bl	memmove
	ldr	x8, [x23]
	mov	w1, wzr
	mov	x2, x20
	add	x0, x8, x27
	bl	memset
.LBB15_27:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x19, #112]
	ldrb	w8, [x0, #796]
	tbnz	w8, #6, .LBB15_29
// %bb.28:                              //   in Loop: Header=BB15_4 Depth=1
	ldrsw	x2, [x19, #540]
	ldr	x1, [x23, #8]
	mov	w3, #1                          // =0x1
	bl	__dma_sync_single_for_device
.LBB15_29:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x19, #120]
	mov	w1, wzr
	mov	w2, wzr
	mov	w3, wzr
	mov	w4, wzr
	add	w20, w25, w24
	ldr	x8, [x0, #184]
	ldur	w16, [x8, #-4]
	movk	w17, #41546
	movk	w17, #47068, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp17
	brk	#0x8228
.Ltmp17:
	blr	x8
	ldr	x0, [x19, #120]
	ldr	w1, [x23, #8]
	mov	w2, wzr
	ldr	x8, [x0, #192]
	ldur	w16, [x8, #-4]
	movk	w17, #51812
	movk	w17, #52182, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp18
	brk	#0x8228
.Ltmp18:
	blr	x8
	ldr	x0, [x19, #120]
	add	w1, w20, w22
	mov	w2, wzr
	ldr	x8, [x0, #240]
	ldur	w16, [x8, #-4]
	movk	w17, #16353
	movk	w17, #28435, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp19
	brk	#0x8228
.Ltmp19:
	blr	x8
	ldr	x0, [x19, #120]
	mov	w1, #1                          // =0x1
	ldr	x8, [x0, #224]
	ldur	w16, [x8, #-4]
	movk	w17, #5533
	movk	w17, #34655, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp20
	brk	#0x8228
.Ltmp20:
	blr	x8
	ldur	x22, [x29, #-48]                // 8-byte Folded Reload
	mov	w27, w26
	ldrb	w8, [x22, #2249]
	cmp	w8, #1
	b.ne	.LBB15_31
// %bb.30:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x22, #2264]
	mov	w23, #2                         // =0x2
	add	w8, w8, #1
	str	w8, [x22, #2264]
	ldrb	w8, [x19, #1912]
	tbnz	w8, #3, .LBB15_42
	b	.LBB15_64
.LBB15_31:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x22, #2184]
	mov	w23, #2                         // =0x2
	tbnz	w8, #31, .LBB15_41
// %bb.32:                              //   in Loop: Header=BB15_4 Depth=1
	sub	w8, w8, #1
	b	.LBB15_58
.LBB15_33:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x28, #8]
	mov	x1, x20
	mov	w2, w23
	mov	w3, #1                          // =0x1
	ldr	x8, [x0, #208]
	ldur	w16, [x8, #-4]
	movk	w17, #30241
	movk	w17, #54770, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp21
	brk	#0x8228
.Ltmp21:
	blr	x8
	mov	w20, wzr
.LBB15_34:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #2128]
	ldr	x23, [sp, #16]                  // 8-byte Folded Reload
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	cmp	w8, #2
	b.ge	.LBB15_316
.LBB15_35:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	x8, [x19, #1792]
	mul	w20, w25, w24
	ldr	x1, [x8, #8]
	mov	x2, x20
	bl	memcpy
	ldr	x8, [x19, #1800]
	mov	x0, x23
	mov	x2, x20
	ldr	x1, [x8, #8]
	bl	memcpy
	ldr	x0, [x19, #112]
	ldr	w22, [x19, #252]
	ldp	w23, w24, [x19, #244]
	ldrb	w8, [x0, #796]
	tbnz	w8, #6, .LBB15_37
// %bb.36:                              //   in Loop: Header=BB15_4 Depth=1
	mov	x1, x26
	mov	x2, x20
	mov	w3, #1                          // =0x1
	bl	__dma_sync_single_for_device
	ldr	x0, [x19, #112]
	ldrb	w8, [x0, #796]
.LBB15_37:                              //   in Loop: Header=BB15_4 Depth=1
	mov	x25, x27
	ldur	w27, [x29, #-68]                // 4-byte Folded Reload
	tbnz	w8, #6, .LBB15_39
// %bb.38:                              //   in Loop: Header=BB15_4 Depth=1
	mov	x1, x25
	mov	x2, x20
	mov	w3, #1                          // =0x1
	bl	__dma_sync_single_for_device
.LBB15_39:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x19, #120]
	ldr	w8, [sp, #44]                   // 4-byte Folded Reload
	mov	w1, #4                          // =0x4
	add	w23, w24, w23
	cmp	w8, #2
	ldr	x8, [x0, #216]
	cset	w20, eq
	ldur	w16, [x8, #-4]
	movk	w17, #63157
	movk	w17, #721, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp22
	brk	#0x8228
.Ltmp22:
	blr	x8
	ldr	x0, [x19, #120]
	mov	w1, w20
	mov	w2, #1                          // =0x1
	mov	w3, wzr
	mov	w4, wzr
	ldr	x8, [x0, #184]
	ldur	w16, [x8, #-4]
	movk	w17, #41546
	movk	w17, #47068, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp23
	brk	#0x8228
.Ltmp23:
	blr	x8
	ldr	x0, [x19, #120]
	mov	w1, w26
	mov	w2, w25
	ldr	x8, [x0, #192]
	ldur	w16, [x8, #-4]
	movk	w17, #51812
	movk	w17, #52182, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp24
	brk	#0x8228
.Ltmp24:
	blr	x8
	ldr	x0, [x19, #120]
	add	w1, w23, w22
	mov	w2, wzr
	ldr	x8, [x0, #240]
	ldur	w16, [x8, #-4]
	movk	w17, #16353
	movk	w17, #28435, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp25
	brk	#0x8228
.Ltmp25:
	blr	x8
	ldr	x0, [x19, #120]
	ldur	x22, [x29, #-48]                // 8-byte Folded Reload
	ldr	w1, [x22, #2172]
	ldr	x8, [x0, #224]
	ldur	w16, [x8, #-4]
	movk	w17, #5533
	movk	w17, #34655, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp26
	brk	#0x8228
.Ltmp26:
	blr	x8
	ldrb	w8, [x22, #2249]
	cmp	w8, #1
	b.ne	.LBB15_57
// %bb.40:                              //   in Loop: Header=BB15_4 Depth=1
	mov	w8, #257                        // =0x101
	strb	w21, [x22, #2278]
	mov	w23, #2                         // =0x2
	strh	w8, [x22, #2276]
.LBB15_41:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x19, #1912]
	tbz	w8, #3, .LBB15_64
.LBB15_42:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x22, #2232]
	cbnz	w8, .LBB15_64
// %bb.43:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x22, #2224]
	tbz	w8, #0, .LBB15_64
// %bb.44:                              //   in Loop: Header=BB15_4 Depth=1
	adrp	x8, global_ebc
	ldr	x10, [x8, :lo12:global_ebc]
	ldr	w8, [x10, #192]
	cmp	w8, #1
	b.lt	.LBB15_59
// %bb.45:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w10, [x10, #188]
	ldr	x11, [x19, #1584]
	mov	w12, wzr
	ldr	x13, [x19, #1512]
	ldr	x14, [x19, #1440]
	mov	w9, wzr
	ldr	x15, [x19, #1368]
	ldr	x16, [x19, #1296]
	sub	w17, w10, #1
	add	x17, x17, #1
	b	.LBB15_48
.LBB15_46:                              //   in Loop: Header=BB15_48 Depth=2
	add	x16, x16, x17
.LBB15_47:                              //   in Loop: Header=BB15_48 Depth=2
	add	w9, w9, #1
	cmp	w9, w8
	b.eq	.LBB15_60
.LBB15_48:                              //   Parent Loop BB15_4 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB15_53 Depth 3
	cmp	w10, #1
	b.lt	.LBB15_47
// %bb.49:                              //   in Loop: Header=BB15_48 Depth=2
	mov	w0, w10
	mov	x1, x16
	b	.LBB15_53
.LBB15_50:                              //   in Loop: Header=BB15_53 Depth=3
	mov	w12, #248                       // =0xf8
.LBB15_51:                              //   in Loop: Header=BB15_53 Depth=3
	and	w2, w2, #0xfc
	strb	w2, [x14]
	strb	wzr, [x13]
	strb	w12, [x15]
	mov	w12, #4                         // =0x4
	strb	w23, [x11]
.LBB15_52:                              //   in Loop: Header=BB15_53 Depth=3
	add	x1, x1, #1
	add	x15, x15, #1
	subs	w0, w0, #1
	add	x14, x14, #1
	add	x13, x13, #1
	add	x11, x11, #1
	b.eq	.LBB15_46
.LBB15_53:                              //   Parent Loop BB15_4 Depth=1
                                        //     Parent Loop BB15_48 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldrb	w2, [x1]
	ldrb	w3, [x15]
	cmp	w2, w3
	b.ne	.LBB15_52
// %bb.54:                              //   in Loop: Header=BB15_53 Depth=3
	ldrb	w2, [x14]
	tbnz	w2, #0, .LBB15_50
// %bb.55:                              //   in Loop: Header=BB15_53 Depth=3
	tbz	w2, #1, .LBB15_52
// %bb.56:                              //   in Loop: Header=BB15_53 Depth=3
	mov	w12, #232                       // =0xe8
	b	.LBB15_51
.LBB15_57:                              //   in Loop: Header=BB15_4 Depth=1
	mov	w8, #-1                         // =0xffffffff
	mov	w23, #2                         // =0x2
.LBB15_58:                              //   in Loop: Header=BB15_4 Depth=1
	str	w8, [x22, #2184]
	ldrb	w8, [x19, #1912]
	tbnz	w8, #3, .LBB15_42
	b	.LBB15_64
.LBB15_59:                              //   in Loop: Header=BB15_4 Depth=1
	mov	w12, wzr
.LBB15_60:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x22, #2282]
	ldrb	w9, [x22, #2281]
	orr	w10, w8, w12
	orr	w11, w9, w12
	strb	w10, [x22, #2282]
	strb	w11, [x22, #2281]
	cbz	w12, .LBB15_63
// %bb.61:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #2128]
	cmp	w8, #0
	b.le	.LBB15_64
// %bb.62:                              //   in Loop: Header=BB15_4 Depth=1
	adrp	x1, .L.str.154
	add	x1, x1, :lo12:.L.str.154
	b	.LBB15_431
.LBB15_63:                              //   in Loop: Header=BB15_4 Depth=1
	orr	w8, w9, w8
	ldr	w9, [x19, #2128]
	adrp	x10, .L.str.157
	add	x10, x10, :lo12:.L.str.157
	cmp	w8, #0
	adrp	x8, .L.str.156
	add	x8, x8, :lo12:.L.str.156
	csel	x1, x10, x8, eq
	cmp	w9, #1
	b.ge	.LBB15_431
.LBB15_64:                              //   in Loop: Header=BB15_4 Depth=1
	ldur	x8, [x29, #-64]                 // 8-byte Folded Reload
	str	w23, [x8, #48]
	//APP
	dmb	ish
	//NO_APP
	ldrb	w8, [x22, #2281]
	ldrb	w9, [x22, #2282]
	orr	w8, w9, w8
	cbz	w8, .LBB15_66
// %bb.65:                              //   in Loop: Header=BB15_4 Depth=1
	stur	wzr, [x29, #-68]                // 4-byte Folded Spill
	b	.LBB15_67
.LBB15_66:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w9, [x19, #2118]
	eor	w9, w9, #0x1
	stur	w9, [x29, #-68]                 // 4-byte Folded Spill
.LBB15_67:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w9, [x22, #2249]
	cmp	w9, #1
	b.ne	.LBB15_72
// %bb.68:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w10, [x22, #2276]
	cmp	w10, #1
	b.ne	.LBB15_71
// %bb.69:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w10, [x22, #2277]
	cmp	w10, #1
	b.ne	.LBB15_71
// %bb.70:                              //   in Loop: Header=BB15_4 Depth=1
	strb	w21, [x22, #2278]
.LBB15_71:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w28, [x22, #2278]
	strb	w8, [x22, #2283]
	cbnz	w8, .LBB15_74
	b	.LBB15_73
.LBB15_72:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w10, [x22, #2184]
	cmp	w10, #1
	cset	w28, lt
	strb	w8, [x22, #2283]
	cbnz	w8, .LBB15_74
.LBB15_73:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w10, [x19, #2118]
	tbz	w10, #0, .LBB15_83
.LBB15_74:                              //   in Loop: Header=BB15_4 Depth=1
	mov	w26, #2                         // =0x2
	mov	w23, wzr
.LBB15_75:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w9, [x19, #2128]
	cmp	w9, #2
	b.ge	.LBB15_93
.LBB15_76:                              //   in Loop: Header=BB15_4 Depth=1
	bl	ebc_get_osd_list_enum_num
	cmp	w0, #0
	mov	w24, w0
	cset	w20, ne
	strb	w20, [x19, #2117]
	bl	ebc_get_dsp_list_enum_num
	mov	w25, w0
	strb	wzr, [x19, #2116]
	cbz	w0, .LBB15_113
// %bb.77:                              //   in Loop: Header=BB15_4 Depth=1
	tbnz	w23, #0, .LBB15_79
// %bb.78:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x19, #1912]
	tbz	w8, #3, .LBB15_117
.LBB15_79:                              //   in Loop: Header=BB15_4 Depth=1
	bl	ebc_dsp_buf_get
	cbz	x0, .LBB15_113
// %bb.80:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x22, #2279]
	adrp	x10, global_ebc
	ldrb	w9, [x22, #2249]
	ldr	x10, [x10, :lo12:global_ebc]
	mov	x11, x22
	ldr	w22, [x22, #2200]
	cmp	w8, #0
	cset	w8, ne
	cmp	w9, #0
	ldr	w9, [x10, #264]
	ldrb	w10, [x11, #2261]
	csel	w11, w26, wzr, ne
	cmp	w22, #0
	orr	w8, w20, w8, lsl #1
	cset	w12, ne
	cmp	w9, #230
	orr	w9, w11, w10
	str	w12, [sp, #40]                  // 4-byte Folded Spill
	str	w9, [sp, #72]                   // 4-byte Folded Spill
	str	w8, [sp, #48]                   // 4-byte Folded Spill
	b.ne	.LBB15_88
// %bb.81:                              //   in Loop: Header=BB15_4 Depth=1
	mov	w6, #2                          // =0x2
.LBB15_82:                              //   in Loop: Header=BB15_4 Depth=1
	mov	w20, #4                         // =0x4
	str	w6, [x0, #32]
	b	.LBB15_95
.LBB15_83:                              //   in Loop: Header=BB15_4 Depth=1
	mov	w26, #2                         // =0x2
	cbz	w9, .LBB15_92
// %bb.84:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w9, [x22, #2276]
	cmp	w9, #1
	b.ne	.LBB15_87
// %bb.85:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w9, [x22, #2277]
	cmp	w9, #1
	b.ne	.LBB15_87
// %bb.86:                              //   in Loop: Header=BB15_4 Depth=1
	strb	w21, [x22, #2278]
.LBB15_87:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w23, [x22, #2278]
	b	.LBB15_75
.LBB15_88:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w6, [x0, #32]
	cmp	w8, #0
	cset	w8, ne
	cmp	w6, #21
	b.hi	.LBB15_308
// %bb.89:                              //   in Loop: Header=BB15_4 Depth=1
	ldur	w10, [x29, #-68]                // 4-byte Folded Reload
	lsl	w9, w21, w6
	orn	w8, w8, w10
	mov	w10, #124                       // =0x7c
	movk	w10, #34, lsl #16
	and	w8, w8, #0x1
	tst	w9, w10
	b.ne	.LBB15_94
// %bb.90:                              //   in Loop: Header=BB15_4 Depth=1
	mov	w10, #36736                     // =0x8f80
	tst	w9, w10
	b.eq	.LBB15_102
.LBB15_91:                              //   in Loop: Header=BB15_4 Depth=1
	orr	w20, w8, #0x2
	b	.LBB15_95
.LBB15_92:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w9, [x22, #2184]
	cmp	w9, #1
	cset	w23, lt
	b	.LBB15_75
.LBB15_93:                              //   in Loop: Header=BB15_4 Depth=1
	tst	w23, #0x1
	adrp	x9, .L.str.116
	add	x9, x9, :lo12:.L.str.116
	adrp	x10, .L.str.115
	add	x10, x10, :lo12:.L.str.115
	ldur	w11, [x29, #-68]                // 4-byte Folded Reload
	csel	x3, x10, x9, ne
	tst	w28, #0x1
	ldr	x0, [x19, #304]
	csel	x4, x10, x9, ne
	tst	w11, #0x1
	adrp	x1, .L.str.122
	add	x1, x1, :lo12:.L.str.122
	csel	x5, x10, x9, ne
	tst	w8, #0x4
	csel	x6, x10, x9, eq
	adrp	x2, .L.str.121
	add	x2, x2, :lo12:.L.str.121
	bl	_dev_info
	b	.LBB15_76
.LBB15_94:                              //   in Loop: Header=BB15_4 Depth=1
	orr	w20, w8, #0x4
.LBB15_95:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #2128]
	cmp	w8, #2
	b.ge	.LBB15_108
// %bb.96:                              //   in Loop: Header=BB15_4 Depth=1
	tbnz	w20, #3, .LBB15_109
.LBB15_97:                              //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x19, #1912]
	ldur	x22, [x29, #-48]                // 8-byte Folded Reload
	tbnz	w8, #3, .LBB15_99
// %bb.98:                              //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x0, #32]
	ldr	w9, [sp, #52]                   // 4-byte Folded Reload
	cmp	w9, w8
	b.eq	.LBB15_111
	b	.LBB15_115
.LBB15_99:                              //   in Loop: Header=BB15_4 Depth=1
	tbz	w23, #0, .LBB15_101
// %bb.100:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x22, #2236]
	cbz	w8, .LBB15_116
.LBB15_101:                             //   in Loop: Header=BB15_4 Depth=1
	str	w26, [x22, #2236]
	b	.LBB15_113
.LBB15_102:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w10, #28672                     // =0x7000
	movk	w10, #1, lsl #16
	tst	w9, w10
	b.eq	.LBB15_308
// %bb.103:                             //   in Loop: Header=BB15_4 Depth=1
	cbz	w22, .LBB15_91
// %bb.104:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w9, [sp, #72]                   // 4-byte Folded Reload
	cbnz	w9, .LBB15_91
// %bb.105:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [sp, #48]                   // 4-byte Folded Reload
	cbz	w8, .LBB15_430
// %bb.106:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w6, #14                         // =0xe
	mov	w20, #9                         // =0x9
	str	w6, [x0, #32]
	b	.LBB15_95
.LBB15_107:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.120
	add	x1, x1, :lo12:.L.str.120
	adrp	x2, .L.str.121
	add	x2, x2, :lo12:.L.str.121
	bl	_dev_info
	b	.LBB15_13
.LBB15_108:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x8, [x19, #304]
	cmp	w22, #0
	ldr	w4, [sp, #72]                   // 4-byte Folded Reload
	ldr	w5, [sp, #48]                   // 4-byte Folded Reload
	cset	w3, ne
	mov	x22, x0
	mov	x0, x8
	adrp	x1, .L.str.123
	add	x1, x1, :lo12:.L.str.123
	adrp	x2, .L.str.121
	add	x2, x2, :lo12:.L.str.121
	mov	w7, w20
	bl	_dev_info
	mov	x0, x22
	tbz	w20, #3, .LBB15_97
.LBB15_109:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x0, #32]
	ldr	w9, [sp, #52]                   // 4-byte Folded Reload
	ldur	x22, [x29, #-48]                // 8-byte Folded Reload
	cmp	w9, w8
	b.ne	.LBB15_115
// %bb.110:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x19, #1912]
	tbnz	w8, #3, .LBB15_208
.LBB15_111:                             //   in Loop: Header=BB15_4 Depth=1
	tbz	w28, #0, .LBB15_113
.LBB15_112:                             //   in Loop: Header=BB15_4 Depth=1
	strb	w21, [x19, #2116]
.LBB15_113:                             //   in Loop: Header=BB15_4 Depth=1
	tbz	w23, #0, .LBB15_117
.LBB15_114:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w8, #1                          // =0x1
	str	wzr, [x22, #2228]
	mov	w27, #1                         // =0x1
	str	w8, [sp, #68]                   // 4-byte Folded Spill
	b	.LBB15_119
.LBB15_115:                             //   in Loop: Header=BB15_4 Depth=1
	tbz	w23, #0, .LBB15_117
.LBB15_116:                             //   in Loop: Header=BB15_4 Depth=1
	strb	w21, [x19, #2116]
	b	.LBB15_114
.LBB15_117:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x22, #2228]
	ldr	w9, [x22, #2216]
	ldr	w10, [x22, #2232]
	ldr	w12, [x22, #2172]
	add	w11, w8, #1
	cmp	w11, w9
	add	w9, w10, #1
	csinc	w8, wzr, w8, ge
	cmp	w9, w12
	str	w9, [x22, #2232]
	str	w8, [x22, #2228]
	b.lt	.LBB15_120
// %bb.118:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x19, #2116]
	tbnz	w8, #0, .LBB15_120
.LBB15_119:                             //   in Loop: Header=BB15_4 Depth=1
	str	wzr, [x22, #2232]
.LBB15_120:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #2128]
	cmp	w8, #2
	b.ge	.LBB15_169
.LBB15_121:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x22, #2281]
	ldrb	w9, [x22, #2282]
	orr	w8, w9, w8
	tst	w8, #0xff
	strb	w8, [x22, #2283]
	b.ne	.LBB15_131
// %bb.122:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x19, #2118]
	tbnz	w8, #0, .LBB15_131
// %bb.123:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x22, #2249]
	cmp	w8, #1
	b.ne	.LBB15_128
// %bb.124:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x22, #2276]
	cmp	w8, #1
	b.ne	.LBB15_127
// %bb.125:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x22, #2277]
	cmp	w8, #1
	b.ne	.LBB15_127
// %bb.126:                             //   in Loop: Header=BB15_4 Depth=1
	strb	w21, [x22, #2278]
.LBB15_127:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x22, #2278]
	tbnz	w8, #0, .LBB15_129
	b	.LBB15_131
.LBB15_128:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x22, #2184]
	cmp	w8, #0
	b.gt	.LBB15_131
.LBB15_129:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x19, #2116]
	tbnz	w8, #0, .LBB15_131
// %bb.130:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x19, #2117]
	cmp	w8, #1
	b.ne	.LBB15_211
.LBB15_131:                             //   in Loop: Header=BB15_4 Depth=1
	bl	ebc_power_on
	ldrb	w8, [x19, #2117]
	tbz	w8, #0, .LBB15_212
.LBB15_132:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #548]
	ldr	w26, [x19, #544]
	add	w9, w8, #7
	cmp	w8, #0
	csel	w24, w9, w8, lt
	tbz	w27, #0, .LBB15_134
// %bb.133:                             //   in Loop: Header=BB15_4 Depth=1
	mov	x0, x19
	mov	w1, #1                          // =0x1
	mov	w2, #10                         // =0xa
	bl	ebc_lut_update
	ldr	w8, [x19, #1844]
	str	w8, [x22, #2180]
.LBB15_134:                             //   in Loop: Header=BB15_4 Depth=1
	bl	ebc_get_osd_list_enum_num
	cbz	w0, .LBB15_144
// %bb.135:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w27, w24
	mov	x25, xzr
	mov	w22, #-1                        // =0xffffffff
	mov	w24, #-1                        // =0xffffffff
	mov	w28, #-1                        // =0xffffffff
	mov	w20, #-1                        // =0xffffffff
	b	.LBB15_137
.LBB15_136:                             //   in Loop: Header=BB15_137 Depth=2
	bl	ebc_get_osd_list_enum_num
	cbz	w0, .LBB15_141
.LBB15_137:                             //   Parent Loop BB15_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	cbz	x25, .LBB15_139
// %bb.138:                             //   in Loop: Header=BB15_137 Depth=2
	mov	x0, x25
	bl	ebc_buf_release
.LBB15_139:                             //   in Loop: Header=BB15_137 Depth=2
	bl	ebc_osd_buf_pop_get
	mov	x25, x0
	cbz	x0, .LBB15_136
// %bb.140:                             //   in Loop: Header=BB15_137 Depth=2
	ldp	w8, w9, [x25, #40]
	cmp	w8, w20
	csel	w11, w8, w20, lt
	cmp	w20, #0
	csel	w20, w8, w11, lt
	ldp	w10, w8, [x25, #48]
	cmp	w10, w28
	csel	w11, w10, w28, gt
	cmp	w28, #0
	csel	w28, w10, w11, lt
	cmp	w9, w24
	csel	w10, w9, w24, lt
	cmp	w24, #0
	csel	w24, w9, w10, lt
	cmp	w8, w22
	csel	w9, w8, w22, gt
	cmp	w22, #0
	csel	w22, w8, w9, lt
	b	.LBB15_136
.LBB15_141:                             //   in Loop: Header=BB15_4 Depth=1
	cbz	x25, .LBB15_143
// %bb.142:                             //   in Loop: Header=BB15_4 Depth=1
	stp	w20, w24, [x25, #40]
	stp	w28, w22, [x25, #48]
.LBB15_143:                             //   in Loop: Header=BB15_4 Depth=1
	ldur	x22, [x29, #-48]                // 8-byte Folded Reload
	mov	w24, w27
	b	.LBB15_145
.LBB15_144:                             //   in Loop: Header=BB15_4 Depth=1
	mov	x25, xzr
.LBB15_145:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x19, #1912]
	mov	w9, #9                          // =0x9
	tst	w8, w9
	b.ne	.LBB15_181
// %bb.146:                             //   in Loop: Header=BB15_4 Depth=1
	tbz	w23, #0, .LBB15_151
// %bb.147:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w20, [x19, #536]
	ldr	x8, [x19, #1800]
	ldr	x0, [x19, #1368]
	sxtw	x2, w20
	ldr	x1, [x8, #8]
	add	w9, w20, #7
	cmp	w20, #0
	csel	w22, w9, w20, lt
	bl	memcpy
	ldrb	w8, [x19, #1912]
	tbnz	w8, #3, .LBB15_170
// %bb.148:                             //   in Loop: Header=BB15_4 Depth=1
	cmp	w20, #8
	b.lt	.LBB15_173
// %bb.149:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x10, [x19, #1800]
	asr	w8, w22, #3
	ldr	x9, [x19, #1296]
	ldr	x10, [x10, #8]
.LBB15_150:                             //   Parent Loop BB15_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x11, [x10], #8
	subs	w8, w8, #1
	and	x11, x11, #0xf8f8f8f8f8f8f8f8
	str	x11, [x9], #8
	b.ne	.LBB15_150
	b	.LBB15_173
.LBB15_151:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w12, [x19, #548]
	ldr	x8, [x19, #1792]
	mov	w27, w24
	ldr	x9, [x19, #1800]
	ldr	w10, [x19, #2128]
	ldr	w13, [x19, #544]
	add	w11, w12, #7
	cmp	w12, #0
	ldr	x20, [x19, #1368]
	ldr	x24, [x19, #1296]
	ldr	x22, [x8, #8]
	csel	w23, w11, w12, lt
	ldr	x28, [x9, #8]
	cmp	w10, #1
	str	w12, [sp, #32]                  // 4-byte Folded Spill
	str	w13, [sp, #44]                  // 4-byte Folded Spill
	b.gt	.LBB15_432
.LBB15_152:                             //   in Loop: Header=BB15_4 Depth=1
	asr	w8, w23, #3
	mul	w23, w8, w13
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	cmp	w23, #1
	b.lt	.LBB15_155
// %bb.153:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w8, w23
.LBB15_154:                             //   Parent Loop BB15_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x9, [x28], #8
	subs	w8, w8, #1
	and	x10, x9, #0xf8f8f8f8f8f8f8f8
	and	x9, x9, #0x404040404040404
	str	x10, [x24], #8
	ldr	x10, [x22], #8
	orr	x9, x10, x9
	str	x9, [x20], #8
	b.ne	.LBB15_154
.LBB15_155:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x19, #1584]
	ldrsw	x2, [x19, #536]
	mov	w1, wzr
	bl	memset
	ldur	x22, [x29, #-48]                // 8-byte Folded Reload
	ldrb	w8, [x22, #2249]
	cmp	w8, #1
	b.ne	.LBB15_175
// %bb.156:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x22, #2264]
	mov	w24, w27
	strb	wzr, [x22, #2249]
	cbz	w8, .LBB15_290
// %bb.157:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w17, [sp, #44]                  // 4-byte Folded Reload
	ldr	w16, [sp, #32]                  // 4-byte Folded Reload
	mov	x15, #72340172838076673         // =0x101010101010101
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	cmp	w17, #1
	b.lt	.LBB15_176
// %bb.158:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x8, [x19, #1512]
	mov	w9, wzr
	b	.LBB15_161
.LBB15_159:                             //   in Loop: Header=BB15_161 Depth=2
	add	x8, x8, x10
.LBB15_160:                             //   in Loop: Header=BB15_161 Depth=2
	add	w9, w9, #1
	cmp	w9, w17
	b.eq	.LBB15_176
.LBB15_161:                             //   Parent Loop BB15_4 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB15_165 Depth 3
	cmp	w16, #8
	b.lt	.LBB15_160
// %bb.162:                             //   in Loop: Header=BB15_161 Depth=2
	mov	x10, xzr
	mov	x11, x0
	b	.LBB15_165
.LBB15_163:                             //   in Loop: Header=BB15_165 Depth=3
	sub	w12, w12, w13
.LBB15_164:                             //   in Loop: Header=BB15_165 Depth=3
	and	x12, x12, #0xff
	subs	x11, x11, #1
	mul	x12, x12, x15
	str	x12, [x8, x10]
	add	x10, x10, #8
	b.eq	.LBB15_159
.LBB15_165:                             //   Parent Loop BB15_4 Depth=1
                                        //     Parent Loop BB15_161 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x12, [x19, #1224]
	cbz	x12, .LBB15_168
// %bb.166:                             //   in Loop: Header=BB15_165 Depth=3
	ldr	w13, [x19, #548]
	ldr	w14, [x22, #2256]
	asr	w13, w13, #1
	cmp	w14, #10
	mul	w13, w9, w13
	add	x13, x12, w13, sxtw #1
	ldr	w12, [x22, #2264]
	ldrh	w13, [x13, x10]
	b.ne	.LBB15_163
// %bb.167:                             //   in Loop: Header=BB15_165 Depth=3
	ldr	w14, [x22, #2252]
	sdiv	w13, w13, w14
	b	.LBB15_163
.LBB15_168:                             //   in Loop: Header=BB15_165 Depth=3
	mov	w12, #-1                        // =0xffffffff
	b	.LBB15_164
.LBB15_169:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x19, #2117]
	cmp	w24, #0
	adrp	x9, .L.str.116
	add	x9, x9, :lo12:.L.str.116
	adrp	x10, .L.str.115
	add	x10, x10, :lo12:.L.str.115
	csel	x3, x10, x9, ne
	cmp	w8, #0
	ldrb	w8, [x19, #2116]
	csel	x4, x10, x9, ne
	cmp	w25, #0
	ldr	x0, [x19, #304]
	csel	x5, x9, x10, eq
	cmp	w8, #0
	adrp	x1, .L.str.124
	add	x1, x1, :lo12:.L.str.124
	csel	x6, x10, x9, ne
	adrp	x2, .L.str.121
	add	x2, x2, :lo12:.L.str.121
	bl	_dev_info
	b	.LBB15_121
.LBB15_170:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #536]
	mov	w13, #240                       // =0xf0
	cmp	w8, #1
	b.lt	.LBB15_173
// %bb.171:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x9, [x19, #1792]
	ldr	x8, [x19, #1296]
	mov	x10, xzr
	ldr	x9, [x9, #8]
.LBB15_172:                             //   Parent Loop BB15_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldrb	w11, [x9, x10]
	and	w12, w11, #0xf0
	tst	w11, #0x8
	csel	w11, w12, w13, eq
	strb	w11, [x8, x10]
	add	x10, x10, #1
	ldr	w11, [x19, #536]
	cmp	w10, w11
	b.lt	.LBB15_172
.LBB15_173:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x19, #1584]
	ldrsw	x2, [x19, #536]
	mov	w1, wzr
	bl	memset
	ldr	x0, [x19, #1512]
	ldrsw	x2, [x19, #536]
	mov	w1, wzr
	bl	memset
	ldr	w8, [x19, #2128]
	ldur	x22, [x29, #-48]                // 8-byte Folded Reload
	cmp	w8, #1
	b.le	.LBB15_181
// %bb.174:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #1912]
	ldr	x0, [x19, #304]
	adrp	x9, .L.str.174
	add	x9, x9, :lo12:.L.str.174
	adrp	x1, .L.str.172
	add	x1, x1, :lo12:.L.str.172
	tst	w8, #0x2
	adrp	x8, .L.str.173
	add	x8, x8, :lo12:.L.str.173
	csel	x3, x9, x8, eq
	adrp	x2, .L.str.170
	add	x2, x2, :lo12:.L.str.170
	bl	_dev_info
	b	.LBB15_181
.LBB15_175:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x22, #2172]
	ldr	w9, [x22, #2184]
	ldr	x0, [x19, #1512]
	ldrsw	x2, [x19, #536]
	sub	w1, w8, w9
	bl	memset
	mov	w24, w27
.LBB15_176:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x19, #1912]
	tbz	w8, #2, .LBB15_181
.LBB15_177:                             //   in Loop: Header=BB15_4 Depth=1
	cmp	w23, #1
	b.lt	.LBB15_180
// %bb.178:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x8, [x19, #1296]
	ldr	x9, [x19, #1368]
.LBB15_179:                             //   Parent Loop BB15_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x10, [x9]
	subs	w23, w23, #1
	orr	x10, x10, #0x404040404040404
	str	x10, [x9], #8
	ldr	x10, [x8]
	and	x10, x10, #0xfbfbfbfbfbfbfbfb
	str	x10, [x8], #8
	b.ne	.LBB15_179
.LBB15_180:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w8, #3                          // =0x3
	str	w8, [x19, #1912]
.LBB15_181:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #1912]
	orr	w8, w8, #0x1
	str	w8, [x19, #1912]
	ldp	w9, w8, [x25, #40]
	ldp	w10, w11, [x25, #48]
	cmp	w9, #0
	add	w14, w9, #7
	csel	w12, w14, w9, lt
	add	w9, w10, #7
	cmp	w10, #0
	csel	w9, w9, w10, lt
	asr	w10, w24, #3
	asr	w9, w9, #3
	sub	w13, w10, #1
	add	w15, w9, #1
	cmp	w15, w10
	csinc	w10, w13, w9, ge
	sub	w9, w26, #1
	cmp	w11, w26
	csel	w11, w11, w9, lt
	cmp	w14, #15
	b.hs	.LBB15_202
// %bb.182:                             //   in Loop: Header=BB15_4 Depth=1
	cmp	w10, w13
	ldrb	w13, [x22, #2279]
	ccmp	w8, #0, #0, eq
	ccmp	w11, w9, #0, eq
	cset	w26, ne
	csel	w9, w13, wzr, ne
	cmp	w8, w11
	b.gt	.LBB15_203
.LBB15_183:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w13, [x19, #548]
	asr	w12, w12, #3
	ldr	x17, [x19, #1512]
	ldr	x2, [x19, #1584]
	ldr	x3, [x25, #8]
	mov	w23, wzr
	add	w14, w13, #7
	cmp	w13, #0
	sbfiz	x16, x12, #3, #32
	csel	w13, w14, w13, lt
	ldr	x14, [x19, #1800]
	ldr	x0, [x19, #1368]
	asr	w15, w13, #3
	ldr	x1, [x19, #1296]
	str	w26, [sp, #44]                  // 4-byte Folded Spill
	ldr	x4, [x14, #8]
	sxtw	x14, w12
	mul	w13, w15, w8
	sbfiz	x15, x15, #3, #32
	add	x5, x16, w13, sxtw #3
	add	w13, w10, #1
	add	x16, x0, x5
	add	x17, x17, x5
	add	x0, x4, x5
	add	x1, x1, x5
	add	x2, x2, x5
	add	x3, x3, x5
	b	.LBB15_185
.LBB15_184:                             //   in Loop: Header=BB15_185 Depth=2
	add	w8, w8, #1
	add	x16, x16, x15
	add	x17, x17, x15
	add	x0, x0, x15
	cmp	w8, w11
	add	x1, x1, x15
	add	x2, x2, x15
	add	x3, x3, x15
	b.gt	.LBB15_204
.LBB15_185:                             //   Parent Loop BB15_4 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB15_188 Depth 3
                                        //         Child Loop BB15_191 Depth 4
	cmp	w12, w10
	b.gt	.LBB15_184
// %bb.186:                             //   in Loop: Header=BB15_185 Depth=2
	mov	x4, x3
	mov	x5, x2
	mov	x6, x1
	mov	x7, x0
	mov	x22, x17
	mov	x24, x16
	mov	x28, x14
	b	.LBB15_188
.LBB15_187:                             //   in Loop: Header=BB15_188 Depth=3
	add	x28, x28, #1
	add	x24, x24, #8
	add	x22, x22, #8
	add	x7, x7, #8
	cmp	w13, w28
	add	x6, x6, #8
	add	x5, x5, #8
	add	x4, x4, #8
	b.eq	.LBB15_184
.LBB15_188:                             //   Parent Loop BB15_4 Depth=1
                                        //     Parent Loop BB15_185 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB15_191 Depth 4
	mov	x30, xzr
	b	.LBB15_191
.LBB15_189:                             //   in Loop: Header=BB15_191 Depth=4
	strb	w20, [x6, x30]
	strb	wzr, [x22, x30]
.LBB15_190:                             //   in Loop: Header=BB15_191 Depth=4
	add	x30, x30, #1
	cmp	x30, #8
	b.eq	.LBB15_187
.LBB15_191:                             //   Parent Loop BB15_4 Depth=1
                                        //     Parent Loop BB15_185 Depth=2
                                        //       Parent Loop BB15_188 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	ldrb	w20, [x4, x30]
	cmp	w20, #255
	b.ne	.LBB15_195
// %bb.192:                             //   in Loop: Header=BB15_191 Depth=4
	ldrb	w27, [x6, x30]
	ldrb	w20, [x7, x30]
	cmp	w27, w20
	b.eq	.LBB15_190
// %bb.193:                             //   in Loop: Header=BB15_191 Depth=4
	ldrb	w26, [x22, x30]
	orr	w9, w9, #0x1
	cbz	w26, .LBB15_189
// %bb.194:                             //   in Loop: Header=BB15_191 Depth=4
	ldrb	w26, [x24, x30]
	cmp	w27, w26
	b.eq	.LBB15_189
	b	.LBB15_201
.LBB15_195:                             //   in Loop: Header=BB15_191 Depth=4
	ldrb	w27, [x6, x30]
	orr	w9, w9, #0x3
	cmp	w27, w20
	b.eq	.LBB15_190
// %bb.196:                             //   in Loop: Header=BB15_191 Depth=4
	ldrb	w26, [x22, x30]
	cbz	w26, .LBB15_198
// %bb.197:                             //   in Loop: Header=BB15_191 Depth=4
	ldrb	w26, [x24, x30]
	cmp	w27, w26
	b.ne	.LBB15_201
.LBB15_198:                             //   in Loop: Header=BB15_191 Depth=4
	strb	w20, [x6, x30]
	strb	wzr, [x22, x30]
	ldrb	w20, [x6, x30]
	cmp	w20, #240
	b.eq	.LBB15_200
// %bb.199:                             //   in Loop: Header=BB15_191 Depth=4
	cbnz	w20, .LBB15_190
.LBB15_200:                             //   in Loop: Header=BB15_191 Depth=4
	strb	w21, [x5, x30]
	b	.LBB15_190
.LBB15_201:                             //   in Loop: Header=BB15_191 Depth=4
	mov	w23, #1                         // =0x1
	b	.LBB15_190
.LBB15_202:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w13, [x22, #2279]
	mov	w26, #1                         // =0x1
	mov	w9, w13
	cmp	w8, w11
	b.le	.LBB15_183
.LBB15_203:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w23, wzr
	b	.LBB15_205
.LBB15_204:                             //   in Loop: Header=BB15_4 Depth=1
	ldur	x22, [x29, #-48]                // 8-byte Folded Reload
	ldr	w26, [sp, #44]                  // 4-byte Folded Reload
	ldrb	w13, [x22, #2279]
.LBB15_205:                             //   in Loop: Header=BB15_4 Depth=1
	and	w8, w9, #0xff
	and	w10, w13, #0x2
	ldr	w11, [x19, #2128]
	cmp	w8, #1
	ccmp	w10, #0, #0, eq
	csel	w8, wzr, w9, eq
	cmp	w11, #2
	strb	w8, [x22, #2279]
	b.ge	.LBB15_209
// %bb.206:                             //   in Loop: Header=BB15_4 Depth=1
	mov	x0, x25
	tbz	w23, #0, .LBB15_210
.LBB15_207:                             //   in Loop: Header=BB15_4 Depth=1
	bl	ebc_add_to_osd_buf_list_head
	mov	w27, wzr
	mov	w26, wzr
	b	.LBB15_213
.LBB15_208:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x22, #2228]
	cbnz	w8, .LBB15_113
	b	.LBB15_112
.LBB15_209:                             //   in Loop: Header=BB15_4 Depth=1
	ldp	w3, w5, [x25, #40]
	ldp	w4, w6, [x25, #48]
	ldr	x0, [x19, #304]
	tst	w23, #0x1
	adrp	x9, .L.str.116
	add	x9, x9, :lo12:.L.str.116
	adrp	x10, .L.str.115
	add	x10, x10, :lo12:.L.str.115
	csel	x7, x9, x10, ne
	and	w8, w8, #0xff
	adrp	x1, .L.str.175
	add	x1, x1, :lo12:.L.str.175
	adrp	x2, .L.str.155
	add	x2, x2, :lo12:.L.str.155
	str	w8, [sp]
	bl	_dev_info
	mov	x0, x25
	tbnz	w23, #0, .LBB15_207
.LBB15_210:                             //   in Loop: Header=BB15_4 Depth=1
	bl	ebc_buf_release
	mov	w27, wzr
	b	.LBB15_213
.LBB15_211:                             //   in Loop: Header=BB15_4 Depth=1
	cbnz	w8, .LBB15_132
.LBB15_212:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w26, wzr
.LBB15_213:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x19, #2116]
	mov	w23, #2                         // =0x2
	cmp	w8, #1
	b.ne	.LBB15_336
// %bb.214:                             //   in Loop: Header=BB15_4 Depth=1
	bl	ebc_dsp_buf_pop_get
	cbz	x0, .LBB15_336
// %bb.215:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #2128]
	mov	x25, x0
	cmp	w8, #2
	b.ge	.LBB15_289
.LBB15_216:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x19, #1792]
	ldr	x8, [x19, #1800]
	cbz	x0, .LBB15_219
// %bb.217:                             //   in Loop: Header=BB15_4 Depth=1
	cmp	x0, x8
	b.eq	.LBB15_219
// %bb.218:                             //   in Loop: Header=BB15_4 Depth=1
	bl	ebc_buf_release
	ldr	x8, [x19, #1800]
.LBB15_219:                             //   in Loop: Header=BB15_4 Depth=1
	str	x8, [x19, #1792]
	str	x25, [x19, #1800]
	cbnz	x8, .LBB15_221
// %bb.220:                             //   in Loop: Header=BB15_4 Depth=1
	str	x25, [x19, #1792]
.LBB15_221:                             //   in Loop: Header=BB15_4 Depth=1
	adrp	x8, global_ebc
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	w8, [x8, #264]
	cmp	w8, #230
	b.ne	.LBB15_226
// %bb.222:                             //   in Loop: Header=BB15_4 Depth=1
	str	w23, [x25, #32]
	mov	w2, #3                          // =0x3
	mov	w22, #4                         // =0x4
.LBB15_223:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [sp, #68]                   // 4-byte Folded Reload
	str	w2, [x19, #1836]
	tbz	w8, #0, .LBB15_236
// %bb.224:                             //   in Loop: Header=BB15_4 Depth=1
	ldur	x20, [x29, #-48]                // 8-byte Folded Reload
	mov	x0, x19
	ldr	w8, [x20, #2196]
	ldr	w9, [x20, #2204]
	ldr	w10, [x20, #2208]
	str	w8, [x20, #2212]
	str	w9, [x20, #2220]
	str	w10, [x20, #2224]
	ldr	w1, [x25, #32]
	bl	ebc_lut_update
	ldr	w9, [x19, #1840]
	ldr	w10, [x19, #1848]
	ldr	w8, [x20, #2200]
	str	w9, [x20, #2172]
	str	w10, [x20, #2176]
	tbnz	w8, #31, .LBB15_234
// %bb.225:                             //   in Loop: Header=BB15_4 Depth=1
	cbnz	w8, .LBB15_235
	b	.LBB15_236
.LBB15_226:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [sp, #48]                   // 4-byte Folded Reload
	ldr	w3, [x25, #32]
	tst	w8, #0xff
	cset	w8, ne
	cmp	w3, #21
	b.hi	.LBB15_306
// %bb.227:                             //   in Loop: Header=BB15_4 Depth=1
	ldur	w10, [x29, #-68]                // 4-byte Folded Reload
	lsl	w9, w21, w3
	orn	w8, w8, w10
	mov	w10, #124                       // =0x7c
	movk	w10, #34, lsl #16
	and	w8, w8, #0x1
	tst	w9, w10
	b.ne	.LBB15_230
// %bb.228:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w10, #36736                     // =0x8f80
	tst	w9, w10
	b.eq	.LBB15_269
.LBB15_229:                             //   in Loop: Header=BB15_4 Depth=1
	orr	w22, w8, #0x2
	b	.LBB15_231
.LBB15_230:                             //   in Loop: Header=BB15_4 Depth=1
	orr	w22, w8, #0x4
.LBB15_231:                             //   in Loop: Header=BB15_4 Depth=1
	sub	w8, w3, #2
	cmp	w8, #19
	b.hi	.LBB15_301
// %bb.232:                             //   in Loop: Header=BB15_4 Depth=1
	adrp	x11, .LJTI15_0
	add	x11, x11, :lo12:.LJTI15_0
	mov	w2, wzr
.Ltmp27:
	adr	x9, .Ltmp27
	ldrsw	x10, [x11, x8, lsl #2]
	add	x9, x9, x10
	br	x9
.LBB15_233:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w2, #8                          // =0x8
	b	.LBB15_223
.LBB15_234:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w8, w9
.LBB15_235:                             //   in Loop: Header=BB15_4 Depth=1
	ldur	x9, [x29, #-48]                 // 8-byte Folded Reload
	str	w8, [x9, #2216]
.LBB15_236:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w9, [x25, #32]
	ldr	w8, [x19, #1912]
	tst	w22, #0xfffffff9
	str	w9, [sp, #52]                   // 4-byte Folded Spill
	mov	w9, #9                          // =0x9
	and	w9, w8, w9
	b.eq	.LBB15_242
// %bb.237:                             //   in Loop: Header=BB15_4 Depth=1
	cbnz	w9, .LBB15_245
// %bb.238:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w24, [x19, #536]
	ldr	x9, [x19, #1792]
	ldr	x0, [x19, #1368]
	add	w8, w24, #7
	cmp	w24, #0
	sxtw	x2, w24
	ldr	x1, [x9, #8]
	csel	w8, w8, w24, lt
	asr	w23, w8, #3
	bl	memcpy
	tbnz	w22, #3, .LBB15_274
// %bb.239:                             //   in Loop: Header=BB15_4 Depth=1
	cmp	w24, #8
	b.lt	.LBB15_277
// %bb.240:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x9, [x19, #1800]
	ldr	x8, [x19, #1296]
	mov	w10, w23
	ldr	x9, [x9, #8]
.LBB15_241:                             //   Parent Loop BB15_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x11, [x9], #8
	subs	w10, w10, #1
	and	x11, x11, #0xf8f8f8f8f8f8f8f8
	str	x11, [x8], #8
	b.ne	.LBB15_241
	b	.LBB15_277
.LBB15_242:                             //   in Loop: Header=BB15_4 Depth=1
	cbz	w9, .LBB15_245
// %bb.243:                             //   in Loop: Header=BB15_4 Depth=1
	tbnz	w8, #1, .LBB15_281
// %bb.244:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w9, [x19, #2128]
	tst	w8, #0x4
	adrp	x8, .L.str.178
	add	x8, x8, :lo12:.L.str.178
	adrp	x10, .L.str.179
	add	x10, x10, :lo12:.L.str.179
	csel	x1, x10, x8, eq
	cmp	w9, #2
	b.lt	.LBB15_294
	b	.LBB15_283
.LBB15_245:                             //   in Loop: Header=BB15_4 Depth=1
	and	w8, w22, w8
	tbnz	w8, #3, .LBB15_280
// %bb.246:                             //   in Loop: Header=BB15_4 Depth=1
	tbz	w8, #0, .LBB15_294
// %bb.247:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #548]
	ldr	w9, [x19, #544]
	add	w10, w8, #7
	cmp	w8, #0
	csel	w11, w10, w8, lt
	cmp	w9, #1
	b.lt	.LBB15_291
// %bb.248:                             //   in Loop: Header=BB15_4 Depth=1
	asr	w11, w11, #3
	ldr	x13, [x19, #1800]
	ldr	x14, [x19, #1816]
	ldr	x12, [x19, #1512]
	ldr	x16, [x19, #1296]
	mov	w23, wzr
	sub	w15, w11, #1
	ldr	x13, [x13, #8]
	ldr	x14, [x14, #8]
	ubfiz	x17, x15, #3, #32
	ldr	x15, [x19, #1368]
	mov	w10, wzr
	add	x17, x17, #8
	b	.LBB15_251
.LBB15_249:                             //   in Loop: Header=BB15_251 Depth=2
	add	x14, x14, x17
.LBB15_250:                             //   in Loop: Header=BB15_251 Depth=2
	add	w10, w10, #1
	cmp	w10, w9
	b.eq	.LBB15_292
.LBB15_251:                             //   Parent Loop BB15_4 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB15_254 Depth 3
                                        //         Child Loop BB15_260 Depth 4
	cmp	w8, #8
	b.lt	.LBB15_250
// %bb.252:                             //   in Loop: Header=BB15_251 Depth=2
	mov	w0, wzr
	mov	x1, x14
	b	.LBB15_254
.LBB15_253:                             //   in Loop: Header=BB15_254 Depth=3
	add	w0, w0, #1
	add	x16, x16, #8
	add	x15, x15, #8
	cmp	w0, w11
	add	x1, x1, #8
	add	x13, x13, #8
	add	x12, x12, #8
	b.eq	.LBB15_249
.LBB15_254:                             //   Parent Loop BB15_4 Depth=1
                                        //     Parent Loop BB15_251 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB15_260 Depth 4
	ldr	x2, [x16]
	ldr	x3, [x13]
	cmp	x2, x3
	b.ne	.LBB15_257
// %bb.255:                             //   in Loop: Header=BB15_254 Depth=3
	tbz	w22, #2, .LBB15_253
// %bb.256:                             //   in Loop: Header=BB15_254 Depth=3
	ldr	x2, [x15]
	orr	x2, x2, #0x404040404040404
	str	x2, [x15]
	b	.LBB15_253
.LBB15_257:                             //   in Loop: Header=BB15_254 Depth=3
	mov	x2, xzr
	b	.LBB15_260
.LBB15_258:                             //   in Loop: Header=BB15_260 Depth=4
	strb	wzr, [x12, x2]
.LBB15_259:                             //   in Loop: Header=BB15_260 Depth=4
	add	x2, x2, #1
	cmp	x2, #8
	b.eq	.LBB15_253
.LBB15_260:                             //   Parent Loop BB15_4 Depth=1
                                        //     Parent Loop BB15_251 Depth=2
                                        //       Parent Loop BB15_254 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	ldrb	w4, [x16, x2]
	ldrb	w3, [x13, x2]
	cmp	w4, w3
	b.ne	.LBB15_263
// %bb.261:                             //   in Loop: Header=BB15_260 Depth=4
	tbz	w22, #2, .LBB15_259
// %bb.262:                             //   in Loop: Header=BB15_260 Depth=4
	ldrb	w3, [x15, x2]
	orr	w3, w3, #0x4
	strb	w3, [x15, x2]
	b	.LBB15_259
.LBB15_263:                             //   in Loop: Header=BB15_260 Depth=4
	ldrb	w5, [x1, x2]
	cmp	w5, #255
	b.ne	.LBB15_259
// %bb.264:                             //   in Loop: Header=BB15_260 Depth=4
	ldrb	w5, [x12, x2]
	cbz	w5, .LBB15_266
// %bb.265:                             //   in Loop: Header=BB15_260 Depth=4
	ldrb	w5, [x15, x2]
	cmp	w4, w5
	b.ne	.LBB15_268
.LBB15_266:                             //   in Loop: Header=BB15_260 Depth=4
	strb	w3, [x16, x2]
	tbz	w3, #2, .LBB15_258
// %bb.267:                             //   in Loop: Header=BB15_260 Depth=4
	and	w3, w3, #0xfffffffb
	strb	w3, [x16, x2]
	ldrb	w3, [x15, x2]
	orr	w3, w3, #0x4
	strb	w3, [x15, x2]
	b	.LBB15_258
.LBB15_268:                             //   in Loop: Header=BB15_260 Depth=4
	mov	w23, #1                         // =0x1
	b	.LBB15_259
.LBB15_269:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w10, #28672                     // =0x7000
	movk	w10, #1, lsl #16
	tst	w9, w10
	b.eq	.LBB15_306
// %bb.270:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w9, [sp, #40]                   // 4-byte Folded Reload
	tst	w9, #0xff
	b.eq	.LBB15_229
// %bb.271:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w9, [sp, #72]                   // 4-byte Folded Reload
	tst	w9, #0xff
	b.ne	.LBB15_229
// %bb.272:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [sp, #48]                   // 4-byte Folded Reload
	tst	w8, #0xff
	b.eq	.LBB15_429
// %bb.273:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w8, #14                         // =0xe
	mov	w2, #1                          // =0x1
	mov	w22, #9                         // =0x9
	str	w8, [x25, #32]
	b	.LBB15_223
.LBB15_274:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #536]
	mov	w13, #240                       // =0xf0
	cmp	w8, #1
	b.lt	.LBB15_277
// %bb.275:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x9, [x19, #1792]
	ldr	x8, [x19, #1296]
	mov	x10, xzr
	ldr	x9, [x9, #8]
.LBB15_276:                             //   Parent Loop BB15_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldrb	w11, [x9, x10]
	and	w12, w11, #0xf0
	tst	w11, #0x8
	csel	w11, w12, w13, eq
	strb	w11, [x8, x10]
	add	x10, x10, #1
	ldr	w11, [x19, #536]
	cmp	w10, w11
	b.lt	.LBB15_276
.LBB15_277:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x19, #1584]
	ldrsw	x2, [x19, #536]
	mov	w1, wzr
	bl	memset
	ldr	x0, [x19, #1512]
	ldrsw	x2, [x19, #536]
	mov	w1, wzr
	bl	memset
	tbnz	w22, #2, .LBB15_284
// %bb.278:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #2128]
	cmp	w8, #2
	b.ge	.LBB15_435
// %bb.279:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w23, #2                         // =0x2
	tbz	w22, #3, .LBB15_294
.LBB15_280:                             //   in Loop: Header=BB15_4 Depth=1
	add	x0, x19, #304
	bl	fast_update_to_auto_image
	b	.LBB15_294
.LBB15_281:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #2128]
	cmp	w8, #1
	b.le	.LBB15_294
// %bb.282:                             //   in Loop: Header=BB15_4 Depth=1
	adrp	x1, .L.str.177
	add	x1, x1, :lo12:.L.str.177
.LBB15_283:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x19, #304]
	adrp	x2, .L.str.170
	add	x2, x2, :lo12:.L.str.170
	bl	_dev_info
	b	.LBB15_294
.LBB15_284:                             //   in Loop: Header=BB15_4 Depth=1
	cmp	w24, #8
	b.lt	.LBB15_320
// %bb.285:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x11, [x19, #1368]
	subs	w8, w23, #1
	b.eq	.LBB15_317
// %bb.286:                             //   in Loop: Header=BB15_4 Depth=1
	add	x10, x8, #1
	and	x9, x10, #0x1fffffffe
	add	x8, x11, x9, lsl #3
	add	x11, x11, #8
	mov	x12, x9
.LBB15_287:                             //   Parent Loop BB15_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldp	x13, x14, [x11, #-8]
	subs	x12, x12, #2
	orr	x13, x13, #0x404040404040404
	orr	x14, x14, #0x404040404040404
	stp	x13, x14, [x11, #-8]
	add	x11, x11, #16
	b.ne	.LBB15_287
// %bb.288:                             //   in Loop: Header=BB15_4 Depth=1
	cmp	x10, x9
	b.ne	.LBB15_318
	b	.LBB15_320
.LBB15_289:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.125
	add	x1, x1, :lo12:.L.str.125
	adrp	x2, .L.str.121
	add	x2, x2, :lo12:.L.str.121
	bl	_dev_info
	b	.LBB15_216
.LBB15_290:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x19, #1512]
	ldrsw	x2, [x19, #536]
	mov	w1, wzr
	bl	memset
	ldrb	w8, [x19, #1912]
	tbnz	w8, #2, .LBB15_177
	b	.LBB15_181
.LBB15_291:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w23, wzr
.LBB15_292:                             //   in Loop: Header=BB15_4 Depth=1
	and	w8, w22, #0xfffffffb
	ldr	w9, [x19, #2128]
	tst	w22, #0x4
	orr	w8, w8, #0x2
	csel	w24, w22, w8, eq
	cmp	w9, #1
	b.gt	.LBB15_434
.LBB15_293:                             //   in Loop: Header=BB15_4 Depth=1
	and	w8, w23, #0x1
	mov	w22, w24
	mov	w23, #2                         // =0x2
	strb	w8, [x19, #2118]
.LBB15_294:                             //   in Loop: Header=BB15_4 Depth=1
	str	w22, [x19, #1912]
	tbz	w22, #3, .LBB15_296
// %bb.295:                             //   in Loop: Header=BB15_4 Depth=1
	ldur	x8, [x29, #-48]                 // 8-byte Folded Reload
	str	w21, [x8, #2236]
.LBB15_296:                             //   in Loop: Header=BB15_4 Depth=1
	tbz	w22, #3, .LBB15_322
// %bb.297:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #2128]
	ldur	x22, [x29, #-48]                // 8-byte Folded Reload
	cmp	w8, #1
	b.lt	.LBB15_323
// %bb.298:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x19, #304]
	ldr	w3, [x25, #32]
	adrp	x1, .L.str.126
	add	x1, x1, :lo12:.L.str.126
	ldr	w4, [x22, #2172]
	ldr	w5, [x22, #2176]
	adrp	x2, .L.str.127
	add	x2, x2, :lo12:.L.str.127
	bl	_dev_info
	b	.LBB15_323
.LBB15_299:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w2, #7                          // =0x7
	b	.LBB15_223
.LBB15_300:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w2, #1                          // =0x1
	b	.LBB15_223
.LBB15_301:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w2, #3                          // =0x3
	b	.LBB15_223
.LBB15_302:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w2, #5                          // =0x5
	b	.LBB15_223
.LBB15_303:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w2, #6                          // =0x6
	b	.LBB15_223
.LBB15_304:                             //   in Loop: Header=BB15_4 Depth=1
	mov	x20, x0
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.149
	add	x1, x1, :lo12:.L.str.149
	adrp	x2, .L.str.150
	add	x2, x2, :lo12:.L.str.150
	bl	_dev_info
	mov	x0, x20
	b	.LBB15_15
.LBB15_305:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.153
	add	x1, x1, :lo12:.L.str.153
	adrp	x2, .L.str.150
	add	x2, x2, :lo12:.L.str.150
	mov	w3, w20
	bl	_dev_info
	ldr	w8, [x19, #184]
	b	.LBB15_25
.LBB15_306:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #2128]
	tbz	w8, #31, .LBB15_441
.LBB15_307:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w22, #4                         // =0x4
	mov	w2, #5                          // =0x5
	str	w22, [x25, #32]
	b	.LBB15_223
.LBB15_308:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #2128]
	tbz	w8, #31, .LBB15_442
.LBB15_309:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w6, #4                          // =0x4
	b	.LBB15_82
.LBB15_310:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w2, #2                          // =0x2
	b	.LBB15_223
.LBB15_311:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w2, #4                          // =0x4
	b	.LBB15_223
.LBB15_312:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w2, #14                         // =0xe
	b	.LBB15_223
.LBB15_313:                             //   in Loop: Header=BB15_4 Depth=1
	ldur	x8, [x29, #-48]                 // 8-byte Folded Reload
	mov	w9, #15                         // =0xf
	ldrb	w8, [x8, #2248]
	cmp	w8, #0
	mov	w8, #3                          // =0x3
	csel	w2, w9, w8, ne
	b	.LBB15_223
.LBB15_314:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w2, #13                         // =0xd
	b	.LBB15_223
.LBB15_315:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.151
	add	x1, x1, :lo12:.L.str.151
	mov	w2, #-12                        // =0xfffffff4
	mov	w20, #-12                       // =0xfffffff4
	bl	_dev_err
	b	.LBB15_34
.LBB15_316:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.152
	add	x1, x1, :lo12:.L.str.152
	adrp	x2, .L.str.150
	add	x2, x2, :lo12:.L.str.150
	mov	w3, w20
	bl	_dev_info
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	b	.LBB15_35
.LBB15_317:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w9, wzr
	mov	x8, x11
.LBB15_318:                             //   in Loop: Header=BB15_4 Depth=1
	sub	w9, w23, w9
.LBB15_319:                             //   Parent Loop BB15_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x10, [x8]
	subs	w9, w9, #1
	orr	x10, x10, #0x404040404040404
	str	x10, [x8], #8
	b.ne	.LBB15_319
.LBB15_320:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #2128]
	mov	w23, #2                         // =0x2
	cmp	w8, #2
	b.ge	.LBB15_436
.LBB15_321:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w8, #3                          // =0x3
	str	w8, [x19, #1912]
.LBB15_322:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #2128]
	ldur	x22, [x29, #-48]                // 8-byte Folded Reload
	cmp	w8, #1
	b.ge	.LBB15_428
.LBB15_323:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w9, [x19, #2148]
	ldrb	w8, [x22, #2261]
	cmp	w9, #1
	strb	w8, [x22, #2249]
	b.ne	.LBB15_334
// %bb.324:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w9, [x19, #1912]
	tbnz	w9, #0, .LBB15_334
// %bb.325:                             //   in Loop: Header=BB15_4 Depth=1
	cbz	w8, .LBB15_335
// %bb.326:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w24, [x22, #2272]
	ldr	w25, [x22, #2268]
	mov	x8, x22
	str	wzr, [x22, #2264]
	mov	w9, wzr
	str	w24, [x22, #2256]
	ldr	x22, [x19, #1224]
	str	w25, [x8, #2252]
	strh	wzr, [x8, #2276]
	strb	wzr, [x8, #2278]
	cbz	x22, .LBB15_433
// %bb.327:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w23, [x19, #548]
	cmp	w23, #1
	b.lt	.LBB15_427
// %bb.328:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w28, [x19, #544]
	cmp	w28, #1
	b.lt	.LBB15_427
// %bb.329:                             //   in Loop: Header=BB15_4 Depth=1
	cmp	w25, #1
	b.lt	.LBB15_427
// %bb.330:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #2128]
	cmp	w8, #1
	b.ge	.LBB15_438
// %bb.331:                             //   in Loop: Header=BB15_4 Depth=1
	cmp	w24, #10
	b.eq	.LBB15_439
.LBB15_332:                             //   in Loop: Header=BB15_4 Depth=1
	and	x8, x28, #0xffff
	cbz	w8, .LBB15_439
// %bb.333:                             //   in Loop: Header=BB15_4 Depth=1
	mul	w9, w25, w25
	ubfx	w10, w23, #1, #16
	ubfx	x11, x28, #1, #16
	mov	x13, xzr
	lsl	w12, w9, #2
	b	.LBB15_351
.LBB15_334:                             //   in Loop: Header=BB15_4 Depth=1
	strb	wzr, [x22, #2249]
.LBB15_335:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x22, #2172]
	str	wzr, [sp, #68]                  // 4-byte Folded Spill
	str	w8, [x22, #2184]
.LBB15_336:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #1912]
	mov	w9, #9                          // =0x9
	tst	w8, w9
	b.ne	.LBB15_341
// %bb.337:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w9, [sp, #72]                   // 4-byte Folded Reload
	tst	w9, #0xff
	b.ne	.LBB15_341
// %bb.338:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w9, [x19, #264]
	cmp	w9, #230
	b.eq	.LBB15_341
// %bb.339:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w9, [x22, #2280]
	cbnz	w9, .LBB15_341
// %bb.340:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w9, [x22, #2164]
	cmp	w9, #1
	b.eq	.LBB15_342
.LBB15_341:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w9, wzr
.LBB15_342:                             //   in Loop: Header=BB15_4 Depth=1
	str	w9, [x22, #2168]
	tbz	w8, #3, .LBB15_382
// %bb.343:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x22, #2281]
	ldrb	w9, [x22, #2282]
	orr	w8, w9, w8
	tst	w8, #0xff
	strb	w8, [x22, #2283]
	b.ne	.LBB15_382
// %bb.344:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x19, #2118]
	tbnz	w8, #0, .LBB15_382
// %bb.345:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x22, #2249]
	cmp	w8, #1
	b.ne	.LBB15_377
// %bb.346:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x22, #2276]
	cmp	w8, #1
	b.ne	.LBB15_349
// %bb.347:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x22, #2277]
	cmp	w8, #1
	b.ne	.LBB15_349
// %bb.348:                             //   in Loop: Header=BB15_4 Depth=1
	strb	w21, [x22, #2278]
.LBB15_349:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x22, #2278]
	tbnz	w8, #0, .LBB15_378
	b	.LBB15_382
.LBB15_350:                             //   in Loop: Header=BB15_351 Depth=2
	add	x13, x13, #1
	cmp	x13, x8
	b.eq	.LBB15_439
.LBB15_351:                             //   Parent Loop BB15_4 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB15_356 Depth 3
	cbz	w10, .LBB15_350
// %bb.352:                             //   in Loop: Header=BB15_351 Depth=2
	sub	w15, w28, w13
	subs	x1, x13, x11
	mov	w14, wzr
	sdiv	w15, w15, w25
	mul	x16, x1, x1
	asr	x0, x1, #63
	cinc	w17, w21, lt
	cmp	w1, #0
	and	w0, w0, #0x3
	cneg	w1, w1, mi
	b	.LBB15_356
.LBB15_353:                             //   in Loop: Header=BB15_356 Depth=3
	and	w2, w2, #0xffff
	subs	w2, w2, w10
	smaddl	x2, w2, w2, x16
	csel	w3, w17, w0, lt
	orr	w3, w3, #0x4
	udiv	x2, x2, x12
	mul	w2, w3, w2
.LBB15_354:                             //   in Loop: Header=BB15_356 Depth=3
	mov	w3, #65535                      // =0xffff
	cmp	w2, w3
	csel	w2, w2, w3, lo
.LBB15_355:                             //   in Loop: Header=BB15_356 Depth=3
	add	w14, w14, #1
	strh	w2, [x22], #2
	cmp	w10, w14
	b.eq	.LBB15_350
.LBB15_356:                             //   Parent Loop BB15_4 Depth=1
                                        //     Parent Loop BB15_351 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	lsl	w2, w14, #1
	cmp	w24, #4
	b.gt	.LBB15_361
// %bb.357:                             //   in Loop: Header=BB15_356 Depth=3
	cmp	w24, #2
	b.gt	.LBB15_365
// %bb.358:                             //   in Loop: Header=BB15_356 Depth=3
	cmp	w24, #1
	b.eq	.LBB15_371
// %bb.359:                             //   in Loop: Header=BB15_356 Depth=3
	cmp	w24, #2
	b.ne	.LBB15_375
// %bb.360:                             //   in Loop: Header=BB15_356 Depth=3
	and	w2, w2, #0xffff
	subs	w2, w2, w10
	cneg	w2, w2, mi
	add	w2, w2, w1
	b	.LBB15_373
.LBB15_361:                             //   in Loop: Header=BB15_356 Depth=3
	cmp	w24, #7
	b.gt	.LBB15_368
// %bb.362:                             //   in Loop: Header=BB15_356 Depth=3
	cmp	w24, #5
	b.eq	.LBB15_353
// %bb.363:                             //   in Loop: Header=BB15_356 Depth=3
	cmp	w24, #7
	b.ne	.LBB15_375
// %bb.364:                             //   in Loop: Header=BB15_356 Depth=3
	mov	w2, #65535                      // =0xffff
	cmp	w15, w2
	csel	w2, w15, w2, lt
	b	.LBB15_355
.LBB15_365:                             //   in Loop: Header=BB15_356 Depth=3
	cmp	w24, #3
	b.eq	.LBB15_372
// %bb.366:                             //   in Loop: Header=BB15_356 Depth=3
	cmp	w24, #4
	b.ne	.LBB15_375
// %bb.367:                             //   in Loop: Header=BB15_356 Depth=3
	and	w2, w2, #0xffff
	subs	w2, w2, w10
	cneg	w2, w2, mi
	cmp	w2, w1
	csel	w2, w2, w1, lo
	b	.LBB15_376
.LBB15_368:                             //   in Loop: Header=BB15_356 Depth=3
	cmp	w24, #8
	b.eq	.LBB15_374
// %bb.369:                             //   in Loop: Header=BB15_356 Depth=3
	cmp	w24, #9
	b.ne	.LBB15_375
// %bb.370:                             //   in Loop: Header=BB15_356 Depth=3
	udiv	w2, w13, w25
	b	.LBB15_355
.LBB15_371:                             //   in Loop: Header=BB15_356 Depth=3
	and	w2, w2, #0xffff
	mov	w3, #65535                      // =0xffff
	sub	w2, w2, w10
	smaddl	x2, w2, w2, x16
	udiv	x2, x2, x9
	cmp	x2, x3
	csel	x2, x2, x3, lo
	b	.LBB15_355
.LBB15_372:                             //   in Loop: Header=BB15_356 Depth=3
	and	w2, w2, #0xffff
	subs	w2, w2, w10
	cneg	w2, w2, mi
	cmp	w2, w1
	csel	w2, w2, w1, hi
.LBB15_373:                             //   in Loop: Header=BB15_356 Depth=3
	udiv	w2, w2, w25
	b	.LBB15_354
.LBB15_374:                             //   in Loop: Header=BB15_356 Depth=3
	sub	w2, w23, w2, uxth
	mov	w3, #65535                      // =0xffff
	sdiv	w2, w2, w25
	cmp	w2, w3
	csel	w2, w2, w3, lt
	b	.LBB15_355
.LBB15_375:                             //   in Loop: Header=BB15_356 Depth=3
	and	w2, w2, #0xffff
.LBB15_376:                             //   in Loop: Header=BB15_356 Depth=3
	udiv	w2, w2, w25
	b	.LBB15_355
.LBB15_377:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x22, #2184]
	cmp	w8, #0
	b.gt	.LBB15_382
.LBB15_378:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x19, #2116]
	tbnz	w8, #0, .LBB15_382
// %bb.379:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x19, #2117]
	tbnz	w8, #0, .LBB15_382
// %bb.380:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x22, #2236]
	cmp	w8, #1
	b.ne	.LBB15_383
// %bb.381:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x1, [x19, #424]
	add	x2, x19, #432
	mov	w0, #8                          // =0x8
	mov	w3, #3                          // =0x3
	bl	queue_delayed_work_on
.LBB15_382:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x22, #2236]
.LBB15_383:                             //   in Loop: Header=BB15_4 Depth=1
	cmp	w8, #2
	b.ne	.LBB15_402
// %bb.384:                             //   in Loop: Header=BB15_4 Depth=1
	bl	ebc_power_on
	adrp	x8, global_ebc
	ldr	x10, [x8, :lo12:global_ebc]
	ldr	w8, [x10, #192]
	cmp	w8, #1
	b.lt	.LBB15_397
// %bb.385:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w10, [x10, #188]
	ldr	x12, [x19, #1584]
	mov	w11, wzr
	ldr	x13, [x19, #1512]
	ldr	x14, [x19, #1440]
	mov	w9, wzr
	ldr	x15, [x19, #1368]
	ldr	x16, [x19, #1296]
	sub	w17, w10, #1
	add	x17, x17, #1
	b	.LBB15_388
.LBB15_386:                             //   in Loop: Header=BB15_388 Depth=2
	add	x16, x16, x17
.LBB15_387:                             //   in Loop: Header=BB15_388 Depth=2
	add	w9, w9, #1
	cmp	w9, w8
	b.eq	.LBB15_398
.LBB15_388:                             //   Parent Loop BB15_4 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB15_393 Depth 3
	cmp	w10, #1
	b.lt	.LBB15_387
// %bb.389:                             //   in Loop: Header=BB15_388 Depth=2
	mov	w0, w10
	mov	x1, x16
	b	.LBB15_393
.LBB15_390:                             //   in Loop: Header=BB15_393 Depth=3
	mov	w11, #248                       // =0xf8
.LBB15_391:                             //   in Loop: Header=BB15_393 Depth=3
	strb	wzr, [x14]
	strb	wzr, [x13]
	strb	w11, [x15]
	mov	w11, #4                         // =0x4
	strb	w23, [x12]
.LBB15_392:                             //   in Loop: Header=BB15_393 Depth=3
	add	x1, x1, #1
	add	x15, x15, #1
	subs	w0, w0, #1
	add	x14, x14, #1
	add	x13, x13, #1
	add	x12, x12, #1
	b.eq	.LBB15_386
.LBB15_393:                             //   Parent Loop BB15_4 Depth=1
                                        //     Parent Loop BB15_388 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldrb	w2, [x1]
	ldrb	w3, [x15]
	cmp	w2, w3
	b.ne	.LBB15_392
// %bb.394:                             //   in Loop: Header=BB15_393 Depth=3
	ldrb	w2, [x14]
	tbnz	w2, #2, .LBB15_390
// %bb.395:                             //   in Loop: Header=BB15_393 Depth=3
	tbz	w2, #3, .LBB15_392
// %bb.396:                             //   in Loop: Header=BB15_393 Depth=3
	mov	w11, #232                       // =0xe8
	b	.LBB15_391
.LBB15_397:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w11, wzr
.LBB15_398:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x22, #2282]
	ldrb	w9, [x22, #2281]
	str	wzr, [x22, #2236]
	orr	w10, w8, w11
	orr	w12, w9, w11
	strb	w10, [x22, #2282]
	strb	w12, [x22, #2281]
	cbz	w11, .LBB15_401
// %bb.399:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #2128]
	cmp	w8, #0
	b.le	.LBB15_402
// %bb.400:                             //   in Loop: Header=BB15_4 Depth=1
	adrp	x1, .L.str.154
	add	x1, x1, :lo12:.L.str.154
	b	.LBB15_420
.LBB15_401:                             //   in Loop: Header=BB15_4 Depth=1
	orr	w8, w9, w8
	ldr	w9, [x19, #2128]
	adrp	x10, .L.str.157
	add	x10, x10, :lo12:.L.str.157
	cmp	w8, #0
	adrp	x8, .L.str.156
	add	x8, x8, :lo12:.L.str.156
	csel	x1, x10, x8, eq
	cmp	w9, #1
	b.ge	.LBB15_420
.LBB15_402:                             //   in Loop: Header=BB15_4 Depth=1
	add	x0, x19, #304
	mov	w1, #-129                       // =0xffffff7f
	bl	ebc_dump_debug_buffers
	adrp	x8, ebc_assist_task
	ldr	x0, [x8, :lo12:ebc_assist_task]
	bl	wake_up_process
	ldrb	w8, [x22, #2281]
	ldrb	w9, [x22, #2282]
	orr	w8, w9, w8
	tst	w8, #0xff
	strb	w8, [x22, #2283]
	b.ne	.LBB15_412
// %bb.403:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x19, #2118]
	tbnz	w8, #0, .LBB15_412
// %bb.404:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x22, #2249]
	cmp	w8, #1
	b.ne	.LBB15_409
// %bb.405:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x22, #2276]
	cmp	w8, #1
	b.ne	.LBB15_408
// %bb.406:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x22, #2277]
	cmp	w8, #1
	b.ne	.LBB15_408
// %bb.407:                             //   in Loop: Header=BB15_4 Depth=1
	strb	w21, [x22, #2278]
.LBB15_408:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x22, #2278]
	tbnz	w8, #0, .LBB15_410
	b	.LBB15_412
.LBB15_409:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x22, #2184]
	cmp	w8, #0
	b.gt	.LBB15_412
.LBB15_410:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x19, #2116]
	tbnz	w8, #0, .LBB15_412
// %bb.411:                             //   in Loop: Header=BB15_4 Depth=1
	ldrb	w8, [x19, #2117]
	tbz	w8, #0, .LBB15_421
.LBB15_412:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x22, #2168]
	cbz	w8, .LBB15_416
// %bb.413:                             //   in Loop: Header=BB15_4 Depth=1
	cmp	w8, #1
	b.ne	.LBB15_423
// %bb.414:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #2128]
	cmp	w8, #2
	b.ge	.LBB15_425
.LBB15_415:                             //   in Loop: Header=BB15_4 Depth=1
	ldur	x8, [x29, #-64]                 // 8-byte Folded Reload
	str	wzr, [x8, #48]
	//APP
	dmb	ish
	//NO_APP
	b	.LBB15_3
.LBB15_416:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #2128]
	cmp	w8, #2
	b.ge	.LBB15_426
.LBB15_417:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #1912]
	cmp	w8, #9
	b.hi	.LBB15_1
// %bb.418:                             //   in Loop: Header=BB15_4 Depth=1
	lsl	w8, w21, w8
	mov	w9, #552                        // =0x228
	tst	w8, w9
	b.eq	.LBB15_1
// %bb.419:                             //   in Loop: Header=BB15_4 Depth=1
	ldrsw	x8, [x19, #184]
	ldr	x9, [sp, #56]                   // 8-byte Folded Reload
	add	x1, x19, #304
	mov	w2, #2                          // =0x2
	ldr	x0, [x9, x8, lsl #3]
	bl	get_auto_data
	b	.LBB15_2
.LBB15_420:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x19, #304]
	adrp	x2, .L.str.155
	add	x2, x2, :lo12:.L.str.155
	bl	_dev_info
	b	.LBB15_402
.LBB15_421:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	w8, [x19, #2128]
	cmp	w8, #1
	b.ge	.LBB15_437
.LBB15_422:                             //   in Loop: Header=BB15_4 Depth=1
	stur	wzr, [x29, #-52]                // 4-byte Folded Spill
.LBB15_423:                             //   in Loop: Header=BB15_4 Depth=1
	bl	schedule
	ldr	w8, [x19, #2128]
	cmp	w8, #1
	b.le	.LBB15_4
// %bb.424:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.132
	add	x1, x1, :lo12:.L.str.132
	adrp	x2, .L.str.121
	add	x2, x2, :lo12:.L.str.121
	bl	_dev_info
	b	.LBB15_4
.LBB15_425:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.130
	add	x1, x1, :lo12:.L.str.130
	adrp	x2, .L.str.121
	add	x2, x2, :lo12:.L.str.121
	bl	_dev_info
	b	.LBB15_415
.LBB15_426:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x19, #304]
	ldr	w3, [x19, #184]
	adrp	x1, .L.str.131
	add	x1, x1, :lo12:.L.str.131
	ldr	w4, [x19, #552]
	ldr	w5, [x19, #1912]
	adrp	x2, .L.str.121
	add	x2, x2, :lo12:.L.str.121
	bl	_dev_info
	b	.LBB15_417
.LBB15_427:                             //   in Loop: Header=BB15_4 Depth=1
	str	w9, [sp, #68]                   // 4-byte Folded Spill
	b	.LBB15_440
.LBB15_428:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x19, #304]
	ldr	w3, [x25, #32]
	adrp	x1, .L.str.128
	add	x1, x1, :lo12:.L.str.128
	ldr	w4, [x22, #2172]
	adrp	x2, .L.str.127
	add	x2, x2, :lo12:.L.str.127
	bl	_dev_info
	b	.LBB15_323
.LBB15_429:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w22, #9                         // =0x9
	b	.LBB15_231
.LBB15_430:                             //   in Loop: Header=BB15_4 Depth=1
	mov	w20, #9                         // =0x9
	b	.LBB15_95
.LBB15_431:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x19, #304]
	adrp	x2, .L.str.155
	add	x2, x2, :lo12:.L.str.155
	bl	_dev_info
	b	.LBB15_64
.LBB15_432:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.169
	add	x1, x1, :lo12:.L.str.169
	adrp	x2, .L.str.170
	add	x2, x2, :lo12:.L.str.170
	bl	_dev_info
	ldr	w13, [sp, #44]                  // 4-byte Folded Reload
	b	.LBB15_152
.LBB15_433:                             //   in Loop: Header=BB15_4 Depth=1
	ldur	x22, [x29, #-48]                // 8-byte Folded Reload
	str	w9, [sp, #68]                   // 4-byte Folded Spill
	b	.LBB15_336
.LBB15_434:                             //   in Loop: Header=BB15_4 Depth=1
	tst	w22, #0x4
	adrp	x8, .L.str.173
	add	x8, x8, :lo12:.L.str.173
	adrp	x9, .L.str.181
	add	x9, x9, :lo12:.L.str.181
	ldr	x0, [x19, #304]
	csel	x3, x8, x9, eq
	tst	w23, #0x1
	adrp	x8, .L.str.116
	add	x8, x8, :lo12:.L.str.116
	adrp	x9, .L.str.115
	add	x9, x9, :lo12:.L.str.115
	csel	x4, x8, x9, ne
	adrp	x1, .L.str.180
	add	x1, x1, :lo12:.L.str.180
	adrp	x2, .L.str.155
	add	x2, x2, :lo12:.L.str.155
	bl	_dev_info
	b	.LBB15_293
.LBB15_435:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x19, #304]
	tst	w22, #0x2
	adrp	x8, .L.str.173
	add	x8, x8, :lo12:.L.str.173
	adrp	x9, .L.str.174
	add	x9, x9, :lo12:.L.str.174
	csel	x3, x9, x8, eq
	adrp	x1, .L.str.172
	add	x1, x1, :lo12:.L.str.172
	adrp	x2, .L.str.170
	add	x2, x2, :lo12:.L.str.170
	bl	_dev_info
	mov	w23, #2                         // =0x2
	tbnz	w22, #3, .LBB15_280
	b	.LBB15_294
.LBB15_436:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.171
	add	x1, x1, :lo12:.L.str.171
	adrp	x2, .L.str.170
	add	x2, x2, :lo12:.L.str.170
	bl	_dev_info
	b	.LBB15_321
.LBB15_437:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.129
	add	x1, x1, :lo12:.L.str.129
	adrp	x2, .L.str.121
	add	x2, x2, :lo12:.L.str.121
	bl	_dev_info
	b	.LBB15_422
.LBB15_438:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.182
	add	x1, x1, :lo12:.L.str.182
	adrp	x2, .L.str.183
	add	x2, x2, :lo12:.L.str.183
	mov	w3, w24
	mov	w4, w25
	bl	_dev_info
	cmp	w24, #10
	b.ne	.LBB15_332
.LBB15_439:                             //   in Loop: Header=BB15_4 Depth=1
	str	wzr, [sp, #68]                  // 4-byte Folded Spill
.LBB15_440:                             //   in Loop: Header=BB15_4 Depth=1
	ldur	x22, [x29, #-48]                // 8-byte Folded Reload
	mov	w23, #2                         // =0x2
	b	.LBB15_336
.LBB15_441:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.158
	add	x1, x1, :lo12:.L.str.158
	adrp	x2, .L.str.121
	add	x2, x2, :lo12:.L.str.121
	bl	_dev_info
	b	.LBB15_307
.LBB15_442:                             //   in Loop: Header=BB15_4 Depth=1
	ldr	x8, [x19, #304]
	mov	x20, x0
	adrp	x1, .L.str.158
	add	x1, x1, :lo12:.L.str.158
	adrp	x2, .L.str.121
	add	x2, x2, :lo12:.L.str.121
	mov	x0, x8
	mov	w3, w6
	bl	_dev_info
	mov	x0, x20
	b	.LBB15_309
.Lfunc_end15:
	.size	ebc_thread, .Lfunc_end15-ebc_thread
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI15_0:
	.word	.LBB15_301-.Ltmp27
	.word	.LBB15_311-.Ltmp27
	.word	.LBB15_302-.Ltmp27
	.word	.LBB15_303-.Ltmp27
	.word	.LBB15_233-.Ltmp27
	.word	.LBB15_312-.Ltmp27
	.word	.LBB15_314-.Ltmp27
	.word	.LBB15_302-.Ltmp27
	.word	.LBB15_303-.Ltmp27
	.word	.LBB15_233-.Ltmp27
	.word	.LBB15_299-.Ltmp27
	.word	.LBB15_299-.Ltmp27
	.word	.LBB15_300-.Ltmp27
	.word	.LBB15_310-.Ltmp27
	.word	.LBB15_300-.Ltmp27
	.word	.LBB15_223-.Ltmp27
	.word	.LBB15_301-.Ltmp27
	.word	.LBB15_301-.Ltmp27
	.word	.LBB15_301-.Ltmp27
	.word	.LBB15_313-.Ltmp27
                                        // -- End function
	.text
	.p2align	2                               // -- Begin function ebc_delay_power_off
	.type	ebc_delay_power_off,@function
	.word	2785506444                      // 0xa607748c
ebc_delay_power_off:                    // @ebc_delay_power_off
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	mov	x29, sp
	ldr	x20, [x8, :lo12:global_ebc]
	ldr	w8, [x20, #1908]
	cbz	w8, .LBB16_9
// %bb.1:
	ldr	w8, [x20, #2124]
	cbz	w8, .LBB16_3
// %bb.2:
	mov	x0, xzr
	bl	ebc_notify
.LBB16_3:
	ldr	x0, [x20, #8]
	str	wzr, [x20, #1908]
	ldr	x8, [x0, #176]
	ldur	w16, [x8, #-4]
	movk	w17, #17751
	movk	w17, #43251, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp28
	brk	#0x8228
.Ltmp28:
	blr	x8
	ldrb	w8, [x20, #296]
	cmp	w8, #1
	b.ne	.LBB16_5
// %bb.4:
	mov	w0, #10                         // =0xa
	bl	msleep
.LBB16_5:
	ldr	x0, [x20, #16]
	cbz	x0, .LBB16_10
// %bb.6:
	ldr	x8, [x0, #32]
	mov	w1, wzr
	ldur	w16, [x8, #-4]
	movk	w17, #41737
	movk	w17, #43957, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp29
	brk	#0x8228
.Ltmp29:
	blr	x8
	mov	w19, wzr
	ldr	w8, [x20, #2112]
	cbz	w8, .LBB16_8
.LBB16_7:
	add	x0, x20, #1920
	str	wzr, [x20, #2112]
	bl	__pm_relax
.LBB16_8:
	ldr	w8, [x20, #2128]
	cmp	w8, #1
	b.ge	.LBB16_11
.LBB16_9:
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB16_10:
	ldr	x0, [x20, #24]
	bl	regulator_disable
	mov	w19, w0
	ldr	w8, [x20, #2112]
	cbnz	w8, .LBB16_7
	b	.LBB16_8
.LBB16_11:
	ldr	x0, [x20, #304]
	adrp	x1, .L.str.148
	add	x1, x1, :lo12:.L.str.148
	adrp	x2, .L.str.147
	add	x2, x2, :lo12:.L.str.147
	mov	w3, w19
	bl	_dev_info
	b	.LBB16_9
.Lfunc_end16:
	.size	ebc_delay_power_off, .Lfunc_end16-ebc_delay_power_off
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_wake_up_for_ghost_rm_last
	.type	ebc_wake_up_for_ghost_rm_last,@function
	.word	2785506444                      // 0xa607748c
ebc_wake_up_for_ghost_rm_last:          // @ebc_wake_up_for_ghost_rm_last
// %bb.0:
	adrp	x8, global_ebc
	ldr	x8, [x8, :lo12:global_ebc]
	add	x8, x8, #4, lsl #12             // =16384
	ldrb	w9, [x8, #2224]
	tbz	w9, #1, .LBB17_3
// %bb.1:
	ldr	w9, [x8, #2236]
	cbz	w9, .LBB17_3
// %bb.2:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	w9, #2                          // =0x2
	mov	x29, sp
	str	w9, [x8, #2236]
	adrp	x8, ebc_task
	ldr	x0, [x8, :lo12:ebc_task]
	bl	wake_up_process
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
.LBB17_3:
	ret
.Lfunc_end17:
	.size	ebc_wake_up_for_ghost_rm_last, .Lfunc_end17-ebc_wake_up_for_ghost_rm_last
                                        // -- End function
	.p2align	2                               // -- Begin function get_auto_data
	.type	get_auto_data,@function
get_auto_data:                          // @get_auto_data
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #208
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	add	x11, x1, #4, lsl #12            // =16384
	stp	x28, x27, [sp, #128]            // 16-byte Folded Spill
	stp	x26, x25, [sp, #144]            // 16-byte Folded Spill
	stp	x24, x23, [sp, #160]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #176]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #192]            // 16-byte Folded Spill
	str	x0, [sp, #40]                   // 8-byte Folded Spill
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1608]
	stur	x8, [x29, #-8]
	adrp	x8, global_ebc
	ldr	x23, [x8, :lo12:global_ebc]
	str	w2, [sp, #24]                   // 4-byte Folded Spill
	stp	x11, x1, [sp, #8]               // 16-byte Folded Spill
	ldr	w8, [x23, #272]
	cbz	w8, .LBB18_3
// %bb.1:
	ldr	w8, [x11, #1868]
	ldr	w9, [x11, #1876]
	cmp	w2, #2
	ldp	w12, w19, [x23, #188]
	stp	w8, w9, [x29, #-20]
	ldr	x8, [x1, #1560]
	ldr	x9, [x1, #1568]
	ldr	w10, [x11, #1872]
	ldr	x25, [x1, #992]
	ldr	x26, [x1, #1064]
	stp	x8, x9, [x29, #-48]
	mov	x9, #2048                       // =0x800
	ldr	x27, [x1, #1208]
	movk	x9, #6160, lsl #16
	stur	w10, [x29, #-12]
	add	w10, w19, w19, lsr #31
	movk	x9, #10272, lsl #32
	stur	x8, [x29, #-32]
	ldr	x8, [x23, #120]
	movk	x9, #14384, lsl #48
	lsr	x23, x12, #3
	asr	w28, w10, #1
	str	x9, [sp, #56]
	mov	x9, #3076                       // =0xc04
	ldr	x22, [x1, #1280]
	movk	x9, #7188, lsl #16
	ldr	w20, [x8, #120]
	str	x12, [sp, #32]                  // 8-byte Folded Spill
	movk	x9, #11300, lsl #32
	movk	x9, #15412, lsl #48
	str	x9, [sp, #48]
	b.ne	.LBB18_9
// %bb.2:
	mov	w19, w28
	mov	w28, wzr
	b	.LBB18_10
.LBB18_3:
	ldr	x16, [x23, #120]
	ldr	x24, [x1, #992]
	ldr	x25, [x1, #1064]
	ldr	x26, [x1, #1208]
	ldr	x27, [x1, #1280]
	ldr	w8, [x16, #116]
	cbz	w8, .LBB18_31
// %bb.4:
	ldp	w13, w0, [x23, #188]
	ldr	w9, [x11, #1868]
	ldr	w10, [x11, #1876]
	cmp	w2, #2
	ldr	w12, [x11, #1872]
	stp	w9, w10, [x29, #-20]
	ldr	x9, [x1, #1560]
	ldr	x10, [x1, #1568]
	stur	w12, [x29, #-12]
	add	w12, w0, w0, lsr #31
	stp	x9, x10, [x29, #-48]
	lsr	w10, w13, #3
	asr	w12, w12, #1
	str	w13, [sp, #32]                  // 4-byte Folded Spill
	stur	x9, [x29, #-32]
	b.ne	.LBB18_33
// %bb.5:
	mov	w0, w12
	mov	w12, wzr
	cmp	w12, w0
	b.lt	.LBB18_34
.LBB18_6:
	mov	w13, wzr
.LBB18_7:
	ldr	w10, [sp, #24]                  // 4-byte Folded Reload
	cmp	w10, #2
	b.ne	.LBB18_66
// %bb.8:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	strb	w13, [x8, #1978]
	b	.LBB18_67
.LBB18_9:
	mul	w8, w28, w23
	sbfiz	x8, x8, #3, #32
	add	x25, x25, x8
	add	x26, x26, x8
	add	x27, x27, x8
	add	x22, x22, x8
.LBB18_10:
	mul	w8, w28, w20
	subs	w9, w19, w28
	mov	w1, wzr
	mul	w2, w9, w20
	ldr	x9, [sp, #40]                   // 8-byte Folded Reload
	add	x0, x9, x8
	bl	memset
	cmp	w19, w28
	mov	w8, wzr
	b.le	.LBB18_26
// %bb.11:
	mov	w8, wzr
	mov	x9, xzr
	adrp	x11, _8_8bit_mask
	add	x11, x11, :lo12:_8_8bit_mask
	adrp	x13, .L__const.get_normal_panel_auto_data.offset
	add	x13, x13, :lo12:.L__const.get_normal_panel_auto_data.offset
	sub	x14, x29, #48
	sub	x15, x29, #20
	mov	w16, #1                         // =0x1
	b	.LBB18_13
.LBB18_12:                              //   in Loop: Header=BB18_13 Depth=1
	add	w28, w28, #1
	cmp	w28, w19
	b.eq	.LBB18_26
.LBB18_13:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB18_18 Depth 2
                                        //       Child Loop BB18_22 Depth 3
	mul	w17, w28, w20
	ldr	x10, [sp, #40]                  // 8-byte Folded Reload
	tst	w28, #0x1
	add	x12, sp, #56
	add	x0, x10, x17
	add	x10, sp, #48
	csel	x17, x12, x10, eq
	ldr	x10, [sp, #32]                  // 8-byte Folded Reload
	csel	x9, x0, x9, eq
	cmp	w10, #8
	b.lo	.LBB18_12
// %bb.14:                              //   in Loop: Header=BB18_13 Depth=1
	mov	x0, xzr
	b	.LBB18_18
.LBB18_15:                              //   in Loop: Header=BB18_18 Depth=2
	str	x3, [x26]
.LBB18_16:                              //   in Loop: Header=BB18_18 Depth=2
	ldr	w10, [x9, x0, lsl #2]
	orr	w10, w10, w1
	str	w10, [x9, x0, lsl #2]
.LBB18_17:                              //   in Loop: Header=BB18_18 Depth=2
	add	x0, x0, #1
	add	x25, x25, #8
	add	x26, x26, #8
	cmp	x0, x23
	add	x27, x27, #8
	add	x22, x22, #8
	b.eq	.LBB18_12
.LBB18_18:                              //   Parent Loop BB18_13 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB18_22 Depth 3
	ldr	x2, [x25]
	ldr	x3, [x26]
	cmp	x2, x3
	b.eq	.LBB18_17
// %bb.19:                              //   in Loop: Header=BB18_18 Depth=2
	mov	x4, xzr
	mov	w6, wzr
	mov	w1, wzr
	eor	x5, x3, x2
	b	.LBB18_22
.LBB18_20:                              //   in Loop: Header=BB18_22 Depth=3
	lsl	w10, w16, w30
	and	w10, w10, #0xff
	orr	w8, w8, w10
.LBB18_21:                              //   in Loop: Header=BB18_22 Depth=3
	add	x4, x4, #1
	cmp	x4, #8
	b.eq	.LBB18_25
.LBB18_22:                              //   Parent Loop BB18_13 Depth=1
                                        //     Parent Loop BB18_18 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x7, [x11, x4, lsl #3]
	tst	x7, x5
	b.eq	.LBB18_21
// %bb.23:                              //   in Loop: Header=BB18_22 Depth=3
	ldr	w30, [x13, x4, lsl #2]
	ldrb	w21, [x22, x4]
	ldrb	w12, [x27, x4]
	lsr	x10, x2, x30
	ldr	x21, [x14, x21, lsl #3]
	lsr	x30, x3, x30
	and	x10, x10, #0x1f
	add	x21, x21, x12, lsl #10
	add	w12, w12, #1
	bfi	x10, x30, #5, #5
	ldrb	w10, [x21, x10]
	ldrb	w21, [x17, x4]
	strb	w12, [x27, x4]
	ldrb	w30, [x22, x4]
	lsl	w10, w10, w21
	ldr	w24, [x15, x30, lsl #2]
	orr	w1, w10, w1
	cmp	w24, w12, uxtb
	b.gt	.LBB18_20
// %bb.24:                              //   in Loop: Header=BB18_22 Depth=3
	bic	x10, x3, x7
	and	x12, x7, x2
	strb	wzr, [x27, x4]
	cmp	x4, #7
	strb	wzr, [x22, x4]
	add	x4, x4, #1
	orr	x3, x10, x12
	mov	w6, #1                          // =0x1
	b.ne	.LBB18_22
	b	.LBB18_15
.LBB18_25:                              //   in Loop: Header=BB18_18 Depth=2
	tbnz	w6, #0, .LBB18_15
	b	.LBB18_16
.LBB18_26:
	ldr	w11, [sp, #24]                  // 4-byte Folded Reload
	ldr	x10, [sp, #16]                  // 8-byte Folded Reload
	cmp	w11, #2
	b.ne	.LBB18_28
// %bb.27:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	strb	w8, [x9, #1978]
	b	.LBB18_29
.LBB18_28:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	strb	w8, [x9, #1977]
.LBB18_29:
	ldr	w9, [x10, #1824]
	cmp	w9, #2
	b.lt	.LBB18_92
// %bb.30:
	ldr	x0, [x10]
	adrp	x9, .L.str.114
	add	x9, x9, :lo12:.L.str.114
	cmp	w11, #2
	adrp	x10, .L.str.113
	add	x10, x10, :lo12:.L.str.113
	csel	x9, x10, x9, eq
	adrp	x10, .L.str.112
	add	x10, x10, :lo12:.L.str.112
	cmp	w11, #3
	adrp	x1, .L.str.111
	add	x1, x1, :lo12:.L.str.111
	ldp	w4, w5, [x29, #-20]
	csel	x2, x10, x9, eq
	adrp	x9, .L.str.115
	add	x9, x9, :lo12:.L.str.115
	cmp	w8, #0
	adrp	x8, .L.str.116
	add	x8, x8, :lo12:.L.str.116
	csel	x3, x8, x9, eq
	bl	_dev_info
	b	.LBB18_92
.LBB18_31:
	ldp	w12, w20, [x23, #188]
	ldr	w8, [x11, #1868]
	ldr	w9, [x11, #1876]
	cmp	w2, #2
	ldr	w10, [x11, #1872]
	stp	w8, w9, [x29, #-20]
	ldr	x8, [x1, #1560]
	ldr	x9, [x1, #1568]
	stur	w10, [x29, #-12]
	add	w10, w20, w20, lsr #31
	lsr	x19, x12, #3
	stp	x8, x9, [x29, #-48]
	ldr	w9, [x16, #120]
	asr	w22, w10, #1
	str	x12, [sp, #32]                  // 8-byte Folded Spill
	str	w9, [sp, #28]                   // 4-byte Folded Spill
	stur	x8, [x29, #-32]
	b.ne	.LBB18_69
// %bb.32:
	mov	w20, w22
	mov	w22, wzr
	b	.LBB18_70
.LBB18_33:
	mul	w9, w12, w10
	sbfiz	x9, x9, #3, #32
	add	x24, x24, x9
	add	x25, x25, x9
	add	x26, x26, x9
	add	x27, x27, x9
	cmp	w12, w0
	b.ge	.LBB18_6
.LBB18_34:
	ldr	w14, [x23, #260]
	ldr	w9, [x16, #120]
	mov	w13, wzr
	adrp	x15, _8_8bit_mask
	add	x15, x15, :lo12:_8_8bit_mask
	adrp	x17, .L__const.get_normal_panel_auto_data.offset
	add	x17, x17, :lo12:.L__const.get_normal_panel_auto_data.offset
	adrp	x1, .L__const.get_normal_panel_soft_tcon_auto_data.shift_table
	add	x1, x1, :lo12:.L__const.get_normal_panel_soft_tcon_auto_data.shift_table
	sub	x2, x29, #48
	sub	x3, x29, #20
	mov	w4, #1                          // =0x1
	str	w9, [sp, #4]                    // 4-byte Folded Spill
	str	w0, [sp, #28]                   // 4-byte Folded Spill
	b	.LBB18_36
.LBB18_35:                              //   in Loop: Header=BB18_36 Depth=1
	ldr	w0, [sp, #28]                   // 4-byte Folded Reload
	add	w12, w12, #1
	cmp	w12, w0
	b.eq	.LBB18_7
.LBB18_36:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB18_42 Depth 2
                                        //       Child Loop BB18_49 Depth 3
	ldr	w9, [x23, #268]
	mov	w16, w12
	cbz	w9, .LBB18_38
// %bb.37:                              //   in Loop: Header=BB18_36 Depth=1
	ldr	w9, [x23, #192]
	mvn	w16, w12
	add	w16, w9, w16
.LBB18_38:                              //   in Loop: Header=BB18_36 Depth=1
	ldr	w9, [sp, #32]                   // 4-byte Folded Reload
	cmp	w9, #8
	b.lo	.LBB18_35
// %bb.39:                              //   in Loop: Header=BB18_36 Depth=1
	ldr	x9, [x23, #120]
	ldr	w11, [sp, #4]                   // 4-byte Folded Reload
	mov	w5, wzr
	ldr	w9, [x9, #104]
	mul	w16, w16, w11
	ldr	x11, [sp, #40]                  // 8-byte Folded Reload
	mul	w9, w9, w8
	add	x16, x11, x16
	add	x6, x16, x9
	b	.LBB18_42
.LBB18_40:                              //   in Loop: Header=BB18_42 Depth=2
	ldrb	w9, [x6, #1]
	ldrb	w11, [x6, #3]
	mov	w16, #4                         // =0x4
	lsl	w9, w9, #8
	orr	w9, w9, w7, lsr #8
	bfi	w7, w11, #8, #8
	strh	w9, [x6]
	strh	w7, [x6, #2]
.LBB18_41:                              //   in Loop: Header=BB18_42 Depth=2
	add	w5, w5, #1
	add	x6, x6, x16
	add	x24, x24, #8
	cmp	w5, w10
	add	x25, x25, #8
	add	x26, x26, #8
	add	x27, x27, #8
	b.eq	.LBB18_35
.LBB18_42:                              //   Parent Loop BB18_36 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB18_49 Depth 3
	ldr	x19, [x24]
	ldr	x20, [x25]
	cmp	x19, x20
	b.ne	.LBB18_46
// %bb.43:                              //   in Loop: Header=BB18_42 Depth=2
	cmp	w8, #4
	b.eq	.LBB18_57
// %bb.44:                              //   in Loop: Header=BB18_42 Depth=2
	cmp	w8, #2
	b.ne	.LBB18_62
// %bb.45:                              //   in Loop: Header=BB18_42 Depth=2
	ldrb	w9, [x6, #1]
	ldrb	w11, [x6, #3]
	mov	w16, #4                         // =0x4
	lsl	w9, w9, #8
	lsl	w11, w11, #8
	strh	w9, [x6]
	strh	w11, [x6, #2]
	b	.LBB18_41
.LBB18_46:                              //   in Loop: Header=BB18_42 Depth=2
	mov	x22, xzr
	mov	w30, wzr
	mov	w7, wzr
	eor	x28, x20, x19
	b	.LBB18_49
.LBB18_47:                              //   in Loop: Header=BB18_49 Depth=3
	lsl	w9, w4, w9
	orr	w13, w13, w9
.LBB18_48:                              //   in Loop: Header=BB18_49 Depth=3
	add	x22, x22, #1
	cmp	x22, #8
	b.eq	.LBB18_52
.LBB18_49:                              //   Parent Loop BB18_36 Depth=1
                                        //     Parent Loop BB18_42 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x16, [x15, x22, lsl #3]
	tst	x16, x28
	b.eq	.LBB18_48
// %bb.50:                              //   in Loop: Header=BB18_49 Depth=3
	ldr	w9, [x17, x22, lsl #2]
	ldrb	w21, [x27, x22]
	ldrb	w0, [x26, x22]
	lsr	x11, x19, x9
	ldr	x21, [x2, x21, lsl #3]
	lsr	x9, x20, x9
	and	x11, x11, #0x1f
	add	x21, x21, x0, lsl #10
	add	w0, w0, #1
	bfi	x11, x9, #5, #5
	ldrb	w11, [x21, x11]
	ldrb	w21, [x1, x22]
	strb	w0, [x26, x22]
	ldrb	w9, [x27, x22]
	lsl	w11, w11, w21
	ldr	w21, [x3, x9, lsl #2]
	and	w11, w11, #0xffff
	cmp	w21, w0, uxtb
	orr	w7, w7, w11
	b.gt	.LBB18_47
// %bb.51:                              //   in Loop: Header=BB18_49 Depth=3
	bic	x9, x20, x16
	and	x11, x16, x19
	strb	wzr, [x26, x22]
	cmp	x22, #7
	strb	wzr, [x27, x22]
	add	x22, x22, #1
	orr	x20, x9, x11
	mov	w30, #1                         // =0x1
	b.ne	.LBB18_49
	b	.LBB18_53
.LBB18_52:                              //   in Loop: Header=BB18_42 Depth=2
	tbz	w30, #0, .LBB18_54
.LBB18_53:                              //   in Loop: Header=BB18_42 Depth=2
	str	x20, [x25]
.LBB18_54:                              //   in Loop: Header=BB18_42 Depth=2
	cmp	w8, #4
	b.eq	.LBB18_59
// %bb.55:                              //   in Loop: Header=BB18_42 Depth=2
	cmp	w8, #2
	b.eq	.LBB18_40
// %bb.56:                              //   in Loop: Header=BB18_42 Depth=2
	strh	w7, [x6]
	b	.LBB18_63
.LBB18_57:                              //   in Loop: Header=BB18_42 Depth=2
	cbz	w14, .LBB18_64
// %bb.58:                              //   in Loop: Header=BB18_42 Depth=2
	ldr	x9, [x23, #120]
	mov	w16, #255                       // =0xff
	ldp	w9, w11, [x9, #96]
	lsl	w11, w16, w11
	lsl	w9, w16, w9
	ldr	w16, [x6]
	orr	w9, w9, w11
	bic	w9, w16, w9
	b	.LBB18_61
.LBB18_59:                              //   in Loop: Header=BB18_42 Depth=2
	cbz	w14, .LBB18_65
// %bb.60:                              //   in Loop: Header=BB18_42 Depth=2
	ldr	x9, [x23, #120]
	mov	w0, #255                        // =0xff
	ldr	w11, [x6]
	and	w16, w7, #0xff00
	ldr	w9, [x9, #100]
	lsl	w9, w0, w9
	bic	w9, w11, w9
	str	w9, [x6]
	ldr	x11, [x23, #120]
	ldr	w11, [x11, #100]
	sub	w11, w11, #8
	lsl	w11, w16, w11
	and	w16, w7, #0xff
	orr	w9, w11, w9
	str	w9, [x6]
	ldr	x11, [x23, #120]
	ldr	w11, [x11, #96]
	lsl	w11, w0, w11
	bic	w9, w9, w11
	str	w9, [x6]
	ldr	x11, [x23, #120]
	ldr	w11, [x11, #96]
	lsl	w11, w16, w11
	orr	w9, w11, w9
.LBB18_61:                              //   in Loop: Header=BB18_42 Depth=2
	str	w9, [x6]
	mov	w16, #4                         // =0x4
	b	.LBB18_41
.LBB18_62:                              //   in Loop: Header=BB18_42 Depth=2
	strh	wzr, [x6]
.LBB18_63:                              //   in Loop: Header=BB18_42 Depth=2
	mov	w16, #2                         // =0x2
	b	.LBB18_41
.LBB18_64:                              //   in Loop: Header=BB18_42 Depth=2
	ldp	w9, w11, [x6]
	mov	w16, #8                         // =0x8
	and	w9, w9, #0xffffff00
	and	w11, w11, #0xffffff00
	stp	w9, w11, [x6]
	b	.LBB18_41
.LBB18_65:                              //   in Loop: Header=BB18_42 Depth=2
	ldr	w9, [x6]
	strb	w7, [x6, #4]
	mov	w16, #8                         // =0x8
	and	w9, w9, #0xffffff00
	orr	w9, w9, w7, lsr #8
	str	w9, [x6]
	b	.LBB18_41
.LBB18_66:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	strb	w13, [x8, #1977]
.LBB18_67:
	ldr	x11, [sp, #16]                  // 8-byte Folded Reload
	ldr	w8, [x11, #1824]
	cmp	w8, #2
	b.lt	.LBB18_92
// %bb.68:
	adrp	x8, .L.str.114
	add	x8, x8, :lo12:.L.str.114
	adrp	x9, .L.str.113
	add	x9, x9, :lo12:.L.str.113
	cmp	w10, #2
	ldr	x0, [x11]
	ldp	w4, w5, [x29, #-20]
	csel	x8, x9, x8, eq
	cmp	w10, #3
	ldur	w6, [x29, #-12]
	adrp	x9, .L.str.112
	add	x9, x9, :lo12:.L.str.112
	adrp	x1, .L.str.117
	add	x1, x1, :lo12:.L.str.117
	csel	x2, x9, x8, eq
	and	w3, w13, #0xff
	b	.LBB18_95
.LBB18_69:
	mul	w8, w22, w19
	sbfiz	x8, x8, #3, #32
	add	x24, x24, x8
	add	x25, x25, x8
	add	x26, x26, x8
	add	x27, x27, x8
.LBB18_70:
	ldr	w10, [sp, #28]                  // 4-byte Folded Reload
	subs	w9, w20, w22
	mov	w1, wzr
	mul	w8, w22, w10
	mul	w2, w9, w10
	ldr	x9, [sp, #40]                   // 8-byte Folded Reload
	add	x0, x9, x8
	bl	memset
	cmp	w20, w22
	mov	w8, wzr
	b.le	.LBB18_88
// %bb.71:
	mov	w8, wzr
	adrp	x9, _8_8bit_mask
	add	x9, x9, :lo12:_8_8bit_mask
	adrp	x10, .L__const.get_normal_panel_auto_data.offset
	add	x10, x10, :lo12:.L__const.get_normal_panel_auto_data.offset
	adrp	x11, .L__const.get_normal_panel_auto_data.shift_table
	add	x11, x11, :lo12:.L__const.get_normal_panel_auto_data.shift_table
	sub	x12, x29, #48
	sub	x13, x29, #20
	mov	w14, #1                         // =0x1
	b	.LBB18_73
.LBB18_72:                              //   in Loop: Header=BB18_73 Depth=1
	add	w22, w22, #1
	cmp	w22, w20
	b.eq	.LBB18_88
.LBB18_73:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB18_80 Depth 2
                                        //       Child Loop BB18_84 Depth 3
	ldr	w15, [x23, #268]
	mov	w16, w22
	cbz	w15, .LBB18_75
// %bb.74:                              //   in Loop: Header=BB18_73 Depth=1
	ldr	w15, [x23, #192]
	mvn	w16, w22
	add	w16, w15, w16
.LBB18_75:                              //   in Loop: Header=BB18_73 Depth=1
	ldr	x15, [sp, #32]                  // 8-byte Folded Reload
	cmp	w15, #8
	b.lo	.LBB18_72
// %bb.76:                              //   in Loop: Header=BB18_73 Depth=1
	ldr	w17, [sp, #28]                  // 4-byte Folded Reload
	mov	x15, xzr
	mul	w16, w16, w17
	ldr	x17, [sp, #40]                  // 8-byte Folded Reload
	add	x16, x17, x16
	b	.LBB18_80
.LBB18_77:                              //   in Loop: Header=BB18_80 Depth=2
	str	x1, [x25]
.LBB18_78:                              //   in Loop: Header=BB18_80 Depth=2
	strh	w17, [x16, x15, lsl #1]
.LBB18_79:                              //   in Loop: Header=BB18_80 Depth=2
	add	x15, x15, #1
	add	x24, x24, #8
	add	x25, x25, #8
	cmp	x15, x19
	add	x26, x26, #8
	add	x27, x27, #8
	b.eq	.LBB18_72
.LBB18_80:                              //   Parent Loop BB18_73 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB18_84 Depth 3
	ldr	x0, [x24]
	ldr	x1, [x25]
	cmp	x0, x1
	b.eq	.LBB18_79
// %bb.81:                              //   in Loop: Header=BB18_80 Depth=2
	mov	x2, xzr
	mov	w4, wzr
	mov	w17, wzr
	eor	x3, x1, x0
	b	.LBB18_84
.LBB18_82:                              //   in Loop: Header=BB18_84 Depth=3
	lsl	w5, w14, w6
	orr	w8, w8, w5
.LBB18_83:                              //   in Loop: Header=BB18_84 Depth=3
	add	x2, x2, #1
	cmp	x2, #8
	b.eq	.LBB18_87
.LBB18_84:                              //   Parent Loop BB18_73 Depth=1
                                        //     Parent Loop BB18_80 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x5, [x9, x2, lsl #3]
	tst	x5, x3
	b.eq	.LBB18_83
// %bb.85:                              //   in Loop: Header=BB18_84 Depth=3
	ldr	w6, [x10, x2, lsl #2]
	ldrb	w7, [x27, x2]
	ldrb	w30, [x26, x2]
	lsr	x21, x0, x6
	ldr	x7, [x12, x7, lsl #3]
	lsr	x6, x1, x6
	and	x21, x21, #0x1f
	add	x7, x7, x30, lsl #10
	add	w30, w30, #1
	bfi	x21, x6, #5, #5
	ldrb	w7, [x7, x21]
	ldrb	w21, [x11, x2]
	strb	w30, [x26, x2]
	ldrb	w6, [x27, x2]
	lsl	w7, w7, w21
	ldr	w28, [x13, x6, lsl #2]
	orr	w17, w17, w7
	cmp	w28, w30, uxtb
	b.gt	.LBB18_82
// %bb.86:                              //   in Loop: Header=BB18_84 Depth=3
	bic	x1, x1, x5
	and	x4, x5, x0
	strb	wzr, [x26, x2]
	cmp	x2, #7
	strb	wzr, [x27, x2]
	add	x2, x2, #1
	orr	x1, x1, x4
	mov	w4, #1                          // =0x1
	b.ne	.LBB18_84
	b	.LBB18_77
.LBB18_87:                              //   in Loop: Header=BB18_80 Depth=2
	tbnz	w4, #0, .LBB18_77
	b	.LBB18_78
.LBB18_88:
	ldr	w11, [sp, #24]                  // 4-byte Folded Reload
	ldr	x12, [sp, #16]                  // 8-byte Folded Reload
	cmp	w11, #2
	b.ne	.LBB18_90
// %bb.89:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	strb	w8, [x9, #1978]
	b	.LBB18_91
.LBB18_90:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	strb	w8, [x9, #1977]
.LBB18_91:
	ldr	w9, [x12, #1824]
	cmp	w9, #2
	b.ge	.LBB18_94
.LBB18_92:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1608]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB18_96
// %bb.93:
	ldp	x20, x19, [sp, #192]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #176]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #160]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #144]            // 16-byte Folded Reload
	ldp	x28, x27, [sp, #128]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #208
	ldr	x30, [x18, #-8]!
	ret
.LBB18_94:
	adrp	x9, .L.str.114
	add	x9, x9, :lo12:.L.str.114
	adrp	x10, .L.str.113
	add	x10, x10, :lo12:.L.str.113
	cmp	w11, #2
	ldr	x0, [x12]
	ldp	w4, w5, [x29, #-20]
	csel	x9, x10, x9, eq
	cmp	w11, #3
	ldur	w6, [x29, #-12]
	adrp	x10, .L.str.112
	add	x10, x10, :lo12:.L.str.112
	adrp	x1, .L.str.117
	add	x1, x1, :lo12:.L.str.117
	csel	x2, x10, x9, eq
	and	w3, w8, #0xff
.LBB18_95:
	bl	_dev_info
	b	.LBB18_92
.LBB18_96:
	bl	__stack_chk_fail
.Lfunc_end18:
	.size	get_auto_data, .Lfunc_end18-get_auto_data
                                        // -- End function
	.p2align	2                               // -- Begin function get_full_or_part_data
	.type	get_full_or_part_data,@function
get_full_or_part_data:                  // @get_full_or_part_data
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #208
	adrp	x8, global_ebc
	stp	x24, x23, [sp, #160]            // 16-byte Folded Spill
	add	x23, x1, #4, lsl #12            // =16384
	ldr	x24, [x8, :lo12:global_ebc]
	stp	x20, x19, [sp, #192]            // 16-byte Folded Spill
	mov	x19, x1
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	ldr	w8, [x24, #272]
	stp	x28, x27, [sp, #128]            // 16-byte Folded Spill
	stp	x26, x25, [sp, #144]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #176]            // 16-byte Folded Spill
	str	w2, [sp, #4]                    // 4-byte Folded Spill
	cbz	w8, .LBB19_25
// %bb.1:
	ldp	w10, w8, [x24, #188]
	ldr	x11, [x19, #1488]
	ldr	x12, [x19, #1496]
	cmp	w2, #2
	ldr	x13, [x24, #120]
	ldr	w26, [x23, #1868]
	mov	w1, wzr
	add	w9, w8, w8, lsr #31
	str	x10, [sp, #24]                  // 8-byte Folded Spill
	lsr	x10, x10, #3
	ldr	x11, [x11, #8]
	ldr	x12, [x12, #8]
	ldr	w13, [x13, #120]
	asr	w9, w9, #1
	str	x10, [sp, #8]                   // 8-byte Folded Spill
	ldr	x24, [x19, #1560]
	ldrb	w25, [x23, #1945]
	str	x0, [sp, #32]                   // 8-byte Folded Spill
	mul	w10, w9, w10
	csel	w27, w9, w8, eq
	csel	w28, wzr, w9, eq
	str	w13, [sp, #20]                  // 4-byte Folded Spill
	sbfiz	x10, x10, #3, #32
	add	x8, x11, x10
	add	x9, x12, x10
	ldr	w10, [x23, #1880]
	csel	x20, x11, x8, eq
	csel	x21, x12, x9, eq
	mul	w8, w28, w13
	subs	w9, w27, w28
	sub	w22, w26, w10
	mul	w2, w9, w13
	add	x0, x0, x8
	bl	memset
	cmp	w27, w28
	str	w27, [sp, #16]                  // 4-byte Folded Spill
	b.le	.LBB19_31
// %bb.2:
	lsl	w9, w22, #10
	mov	x12, xzr
	mov	w8, #1                          // =0x1
	mov	w6, w22
	add	x0, x24, w9, sxtw
	b	.LBB19_4
.LBB19_3:                               //   in Loop: Header=BB19_4 Depth=1
	ldr	w9, [sp, #16]                   // 4-byte Folded Reload
	add	w28, w28, #1
	ldr	x12, [sp, #48]                  // 8-byte Folded Reload
	cmp	w28, w9
	b.eq	.LBB19_32
.LBB19_4:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB19_8 Depth 2
	ldr	w9, [sp, #20]                   // 4-byte Folded Reload
	ldr	x11, [sp, #32]                  // 8-byte Folded Reload
	mul	w10, w28, w9
	ands	w9, w28, #0x1
	add	x10, x11, x10
	csel	x12, x10, x12, eq
	ldr	x10, [sp, #24]                  // 8-byte Folded Reload
	str	x12, [sp, #48]                  // 8-byte Folded Spill
	cmp	w10, #8
	b.lo	.LBB19_3
// %bb.5:                               //   in Loop: Header=BB19_4 Depth=1
	cmp	w9, #0
	lsl	w30, w9, #1
	mov	w9, #192                        // =0xc0
	mov	w10, #48                        // =0x30
	ldr	x17, [sp, #8]                   // 8-byte Folded Reload
	mov	w7, wzr
	csel	w9, w10, w9, eq
	mov	w10, #768                       // =0x300
	stur	w9, [x29, #-4]                  // 4-byte Folded Spill
	mov	w9, #3072                       // =0xc00
	csel	w9, w10, w9, eq
	mov	w10, #12288                     // =0x3000
	stur	w9, [x29, #-16]                 // 4-byte Folded Spill
	mov	w9, #49152                      // =0xc000
	csel	w9, w10, w9, eq
	mov	w10, #196608                    // =0x30000
	stur	w9, [x29, #-24]                 // 4-byte Folded Spill
	mov	w9, #786432                     // =0xc0000
	csel	w13, w10, w9, eq
	mov	w9, #12582912                   // =0xc00000
	mov	w10, #3145728                   // =0x300000
	csel	w14, w10, w9, eq
	mov	w9, #3                          // =0x3
	mov	w10, #50331648                  // =0x3000000
	lsl	w15, w9, w30
	mov	w9, #201326592                  // =0xc000000
	csel	w16, w10, w9, eq
	mov	w9, #-1073741824                // =0xc0000000
	mov	w10, #805306368                 // =0x30000000
	csel	w9, w10, w9, eq
	mov	w10, #4                         // =0x4
	str	w9, [sp, #44]                   // 4-byte Folded Spill
	mov	w9, #6                          // =0x6
	csel	w11, w10, w9, eq
	mov	w9, #10                         // =0xa
	mov	w10, #8                         // =0x8
	csel	w9, w10, w9, eq
	mov	w10, #12                        // =0xc
	stp	w9, w11, [x29, #-32]            // 8-byte Folded Spill
	mov	w9, #14                         // =0xe
	csel	w11, w10, w9, eq
	mov	w9, #18                         // =0x12
	mov	w10, #16                        // =0x10
	csel	w9, w10, w9, eq
	mov	w10, #20                        // =0x14
	stp	w9, w11, [x29, #-40]            // 8-byte Folded Spill
	mov	w9, #22                         // =0x16
	csel	w11, w10, w9, eq
	mov	w9, #26                         // =0x1a
	mov	w10, #24                        // =0x18
	csel	w9, w10, w9, eq
	mov	w10, #28                        // =0x1c
	stp	w9, w11, [x29, #-48]            // 8-byte Folded Spill
	mov	w9, #30                         // =0x1e
	csel	w9, w10, w9, eq
	stur	w9, [x29, #-52]                 // 4-byte Folded Spill
	mov	x9, x12
	b	.LBB19_8
.LBB19_6:                               //   in Loop: Header=BB19_8 Depth=2
	cmp	w26, #0
	mov	w22, #-1                        // =0xffffffff
	cset	w1, lt
	and	w8, w1, w8
.LBB19_7:                               //   in Loop: Header=BB19_8 Depth=2
	add	x21, x21, #8
	subs	x17, x17, #1
	add	x20, x20, #8
	add	w7, w7, #8
	add	x9, x9, #4
	b.eq	.LBB19_3
.LBB19_8:                               //   Parent Loop BB19_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x1, [x21]
	ldr	x2, [x20]
	cbz	w25, .LBB19_16
// %bb.9:                               //   in Loop: Header=BB19_8 Depth=2
	ldr	x3, [x19, #920]
	cbz	x3, .LBB19_6
// %bb.10:                              //   in Loop: Header=BB19_8 Depth=2
	ldr	w22, [x19, #244]
	ldr	w4, [x23, #1952]
	asr	w22, w22, #1
	cmp	w4, #10
	mul	w22, w22, w28
	add	x3, x3, w22, sxtw #1
	asr	w22, w7, #1
	ldrh	w3, [x3, w22, sxtw #1]
	b.ne	.LBB19_12
// %bb.11:                              //   in Loop: Header=BB19_8 Depth=2
	ldr	w4, [x23, #1948]
	sdiv	w3, w3, w4
.LBB19_12:                              //   in Loop: Header=BB19_8 Depth=2
	ldr	w4, [x23, #1960]
	sub	w22, w4, w3
	cmp	w22, w26
	cset	w3, ge
	cmp	w22, w6
	and	w8, w3, w8
	b.eq	.LBB19_16
// %bb.13:                              //   in Loop: Header=BB19_8 Depth=2
	tbnz	w22, #31, .LBB19_16
// %bb.14:                              //   in Loop: Header=BB19_8 Depth=2
	cmp	w22, w26
	b.ge	.LBB19_16
// %bb.15:                              //   in Loop: Header=BB19_8 Depth=2
	ldr	x0, [x19, #1560]
	lsl	w3, w22, #10
	mov	w6, w22
	add	x0, x0, w3, sxtw
.LBB19_16:                              //   in Loop: Header=BB19_8 Depth=2
	tbnz	w22, #31, .LBB19_7
// %bb.17:                              //   in Loop: Header=BB19_8 Depth=2
	cmp	w22, w26
	b.ge	.LBB19_7
// %bb.18:                              //   in Loop: Header=BB19_8 Depth=2
	ldr	w3, [x19, #1608]
	cmp	w3, #8
	b.eq	.LBB19_20
// %bb.19:                              //   in Loop: Header=BB19_8 Depth=2
	cmp	w3, #2
	b.ne	.LBB19_7
.LBB19_20:                              //   in Loop: Header=BB19_8 Depth=2
	and	x3, x2, #0xf8f8f8f8f8f8f8f8
	cmp	x3, x1
	b.eq	.LBB19_7
// %bb.21:                              //   in Loop: Header=BB19_8 Depth=2
	eor	x3, x3, x1
	ldur	w10, [x29, #-4]                 // 4-byte Folded Reload
	tst	x3, #0xff
	csel	w4, wzr, w15, eq
	tst	x3, #0xff00
	csel	w5, wzr, w10, eq
	ldur	w10, [x29, #-16]                // 4-byte Folded Reload
	tst	x3, #0xff0000
	orr	w4, w4, w5
	csel	w24, wzr, w10, eq
	ldur	w10, [x29, #-24]                // 4-byte Folded Reload
	tst	x3, #0xff000000
	csel	w27, wzr, w10, eq
	tst	x3, #0xff00000000
	lsr	x10, x3, #56
	csel	w5, wzr, w13, eq
	tst	x3, #0xff0000000000
	orr	w24, w24, w27
	csel	w27, wzr, w14, eq
	tst	x3, #0xff000000000000
	orr	w3, w4, w24
	orr	w5, w5, w27
	csel	w27, wzr, w16, eq
	orr	w4, w5, w27
	orr	w3, w3, w4
	cbnz	x10, .LBB19_23
// %bb.22:                              //   in Loop: Header=BB19_8 Depth=2
	cbnz	w3, .LBB19_24
	b	.LBB19_7
.LBB19_23:                              //   in Loop: Header=BB19_8 Depth=2
	ldr	w10, [sp, #44]                  // 4-byte Folded Reload
	orr	w3, w3, w10
.LBB19_24:                              //   in Loop: Header=BB19_8 Depth=2
	lsr	x4, x2, #6
	lsr	x5, x2, #14
	lsr	x24, x2, #22
	lsr	x27, x2, #30
	lsl	x10, x2, #2
	lsr	x11, x2, #38
	and	x4, x4, #0x3e0
	and	x5, x5, #0x3e0
	and	x24, x24, #0x3e0
	and	x27, x27, #0x3e0
	lsr	x12, x2, #46
	lsr	x2, x2, #54
	bfxil	x4, x1, #11, #5
	bfxil	x5, x1, #19, #5
	bfxil	x24, x1, #27, #5
	bfxil	x27, x1, #35, #5
	and	x10, x10, #0x3e0
	and	x11, x11, #0x3e0
	and	x12, x12, #0x3e0
	and	x2, x2, #0x3e0
	bfxil	x10, x1, #3, #5
	bfxil	x11, x1, #43, #5
	bfxil	x12, x1, #51, #5
	bfxil	x2, x1, #59, #5
	ldrb	w1, [x0, x4]
	ldrb	w4, [x0, x5]
	ldrb	w5, [x0, x24]
	ldrb	w24, [x0, x27]
	ldur	w27, [x29, #-28]                // 4-byte Folded Reload
	ldrb	w11, [x0, x11]
	ldrb	w12, [x0, x12]
	ldrb	w10, [x0, x10]
	ldrb	w2, [x0, x2]
	lsl	w1, w1, w27
	ldur	w27, [x29, #-32]                // 4-byte Folded Reload
	lsl	w10, w10, w30
	lsl	w4, w4, w27
	ldur	w27, [x29, #-36]                // 4-byte Folded Reload
	orr	w10, w1, w10
	lsl	w5, w5, w27
	ldur	w27, [x29, #-40]                // 4-byte Folded Reload
	lsl	w24, w24, w27
	ldur	w27, [x29, #-44]                // 4-byte Folded Reload
	orr	w1, w4, w5
	orr	w10, w10, w1
	lsl	w11, w11, w27
	ldur	w27, [x29, #-48]                // 4-byte Folded Reload
	lsl	w12, w12, w27
	orr	w11, w24, w11
	orr	w11, w11, w12
	ldur	w12, [x29, #-52]                // 4-byte Folded Reload
	orr	w10, w10, w11
	ldr	w11, [x9]
	lsl	w12, w2, w12
	orr	w10, w10, w12
	and	w10, w10, w3
	orr	w10, w10, w11
	str	w10, [x9]
	b	.LBB19_7
.LBB19_25:
	ldr	w8, [x24, #264]
	cmp	w8, #230
	b.ne	.LBB19_37
// %bb.26:
	ldp	w8, w12, [x24, #188]
	ldr	x9, [x19, #1496]
	ldr	x10, [x19, #1488]
	cmp	w2, #2
	ldr	w11, [x23, #1868]
	ldr	w15, [x23, #1880]
	add	w14, w12, w12, lsr #31
	ldr	x9, [x9, #8]
	ldr	x10, [x10, #8]
	stur	w8, [x29, #-4]                  // 4-byte Folded Spill
	lsr	w8, w8, #2
	sub	w3, w11, w15
	asr	w14, w14, #1
	b.ne	.LBB19_43
// %bb.27:
	mov	w12, w14
	mov	w14, wzr
	cmp	w14, w12
	b.lt	.LBB19_44
.LBB19_28:
	mov	w1, #1                          // =0x1
.LBB19_29:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	cmp	w8, #2
	and	w8, w1, #0x1
	b.ne	.LBB19_78
// %bb.30:
	strb	w8, [x23, #1973]
	b	.LBB19_79
.LBB19_31:
	mov	w8, #1                          // =0x1
.LBB19_32:
	ldr	w9, [sp, #4]                    // 4-byte Folded Reload
	and	w8, w8, #0x1
	cmp	w9, #2
	b.ne	.LBB19_34
// %bb.33:
	strb	w8, [x23, #1973]
	b	.LBB19_35
.LBB19_34:
	strb	w8, [x23, #1972]
.LBB19_35:
	ldr	w9, [x19, #1824]
	cmp	w9, #2
	b.lt	.LBB19_112
// %bb.36:
	ldr	w11, [sp, #4]                   // 4-byte Folded Reload
	adrp	x9, .L.str.114
	add	x9, x9, :lo12:.L.str.114
	adrp	x10, .L.str.113
	add	x10, x10, :lo12:.L.str.113
	ldr	x0, [x19]
	cmp	w11, #2
	adrp	x1, .L.str.118
	add	x1, x1, :lo12:.L.str.118
	csel	x9, x10, x9, eq
	cmp	w11, #3
	adrp	x10, .L.str.112
	add	x10, x10, :lo12:.L.str.112
	mov	w3, w22
	b	.LBB19_81
.LBB19_37:
	ldr	w26, [x23, #1868]
	ldr	w8, [x23, #1880]
	ldr	x15, [x24, #120]
	ldr	x9, [x19, #1496]
	ldr	x11, [x19, #1488]
	ldr	x12, [x19, #1560]
	sub	w22, w26, w8
	ldr	w10, [x15, #116]
	ldrb	w25, [x23, #1945]
	lsl	w13, w22, #10
	ldr	x8, [x9, #8]
	ldr	x9, [x11, #8]
	add	x27, x12, w13, sxtw
	cbz	w10, .LBB19_82
// %bb.38:
	ldp	w11, w14, [x24, #188]
	ldr	w12, [sp, #4]                   // 4-byte Folded Reload
	add	w13, w14, w14, lsr #31
	lsr	w17, w11, #3
	cmp	w12, #2
	asr	w13, w13, #1
	b.ne	.LBB19_113
// %bb.39:
	mov	w14, w13
	mov	w13, wzr
	cmp	w13, w14
	b.lt	.LBB19_114
.LBB19_40:
	mov	w15, #1                         // =0x1
.LBB19_41:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	cmp	w8, #2
	and	w8, w15, #0x1
	b.ne	.LBB19_110
.LBB19_42:
	strb	w8, [x23, #1973]
	b	.LBB19_111
.LBB19_43:
	mul	w15, w14, w8
	sbfiz	x15, x15, #2, #32
	add	x9, x9, x15
	add	x10, x10, x15
	cmp	w14, w12
	b.ge	.LBB19_28
.LBB19_44:
	ldr	x15, [x24, #120]
	stur	w8, [x29, #-16]                 // 4-byte Folded Spill
	mov	w7, #12                         // =0xc
	ldr	x1, [x19, #1560]
	str	x0, [sp, #32]                   // 8-byte Folded Spill
	mov	w5, #8                          // =0x8
	ldp	w16, w8, [x15, #116]
	lsl	w15, w3, #10
	ldrb	w17, [x23, #1945]
	ldr	w0, [x24, #260]
	mov	w20, #4                         // =0x4
	mov	w21, w3
	cmp	w16, #0
	add	x6, x1, w15, sxtw
	mov	w1, #1                          // =0x1
	csel	w2, wzr, w7, eq
	csel	w4, w20, w5, eq
	csel	w5, w5, w20, eq
	csel	w7, w7, wzr, eq
	mov	w20, #255                       // =0xff
	stur	w8, [x29, #-24]                 // 4-byte Folded Spill
	b	.LBB19_46
.LBB19_45:                              //   in Loop: Header=BB19_46 Depth=1
	add	w14, w14, #1
	cmp	w14, w12
	b.eq	.LBB19_29
.LBB19_46:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB19_52 Depth 2
	ldr	w22, [x24, #268]
	mov	w15, w14
	cbz	w22, .LBB19_48
// %bb.47:                              //   in Loop: Header=BB19_46 Depth=1
	ldr	w15, [x24, #192]
	mvn	w22, w14
	add	w15, w15, w22
.LBB19_48:                              //   in Loop: Header=BB19_46 Depth=1
	ldur	w8, [x29, #-4]                  // 4-byte Folded Reload
	cmp	w8, #4
	b.lo	.LBB19_45
// %bb.49:                              //   in Loop: Header=BB19_46 Depth=1
	ldr	x25, [x24, #120]
	ldur	w8, [x29, #-24]                 // 4-byte Folded Reload
	mov	w22, wzr
	ldur	w26, [x29, #-16]                // 4-byte Folded Reload
	ldr	w25, [x25, #104]
	mul	w15, w15, w8
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	mul	w25, w25, w16
	add	x15, x8, x15
	add	x25, x15, x25
	b	.LBB19_52
.LBB19_50:                              //   in Loop: Header=BB19_52 Depth=2
	ldrb	w8, [x25, #1]
	ldrb	w13, [x25, #3]
	mov	w27, #4                         // =0x4
	lsl	w8, w8, #8
	lsl	w13, w13, #8
	strh	w8, [x25]
	strh	w13, [x25, #2]
.LBB19_51:                              //   in Loop: Header=BB19_52 Depth=2
	subs	w26, w26, #1
	add	x25, x25, x27
	add	w22, w22, #8
	b.eq	.LBB19_45
.LBB19_52:                              //   Parent Loop BB19_46 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w27, [x9]
	ldr	w28, [x10]
	cbz	w17, .LBB19_60
// %bb.53:                              //   in Loop: Header=BB19_52 Depth=2
	ldr	x15, [x19, #920]
	cbz	x15, .LBB19_65
// %bb.54:                              //   in Loop: Header=BB19_52 Depth=2
	ldr	w3, [x19, #244]
	ldr	w30, [x23, #1952]
	asr	w3, w3, #1
	cmp	w30, #10
	mul	w3, w3, w14
	add	x15, x15, w3, sxtw #1
	asr	w3, w22, #1
	ldrh	w15, [x15, w3, sxtw #1]
	b.ne	.LBB19_56
// %bb.55:                              //   in Loop: Header=BB19_52 Depth=2
	ldr	w3, [x23, #1948]
	sdiv	w15, w15, w3
.LBB19_56:                              //   in Loop: Header=BB19_52 Depth=2
	ldr	w3, [x23, #1960]
	sub	w3, w3, w15
	cmp	w3, w11
	cset	w15, ge
	cmp	w3, w21
	and	w1, w15, w1
	b.eq	.LBB19_60
// %bb.57:                              //   in Loop: Header=BB19_52 Depth=2
	tbnz	w3, #31, .LBB19_60
// %bb.58:                              //   in Loop: Header=BB19_52 Depth=2
	cmp	w3, w11
	b.ge	.LBB19_60
// %bb.59:                              //   in Loop: Header=BB19_52 Depth=2
	ldr	x15, [x19, #1560]
	lsl	w6, w3, #10
	mov	w21, w3
	add	x6, x15, w6, sxtw
.LBB19_60:                              //   in Loop: Header=BB19_52 Depth=2
	tbnz	w3, #31, .LBB19_66
// %bb.61:                              //   in Loop: Header=BB19_52 Depth=2
	cmp	w3, w11
	b.ge	.LBB19_66
// %bb.62:                              //   in Loop: Header=BB19_52 Depth=2
	lsl	x15, x28, #2
	lsr	x30, x28, #6
	cmp	w16, #4
	and	x15, x15, #0x3e0
	and	x13, x30, #0x3e0
	bfxil	x15, x27, #3, #5
	bfxil	x13, x27, #11, #5
	ldrb	w30, [x6, x15]
	ldrb	w15, [x6, x13]
	b.eq	.LBB19_71
// %bb.63:                              //   in Loop: Header=BB19_52 Depth=2
	cmp	w16, #2
	b.ne	.LBB19_74
// %bb.64:                              //   in Loop: Header=BB19_52 Depth=2
	lsr	x13, x28, #14
	ubfx	x28, x28, #22, #10
	lsl	w15, w15, #8
	and	x13, x13, #0x3e0
	and	w28, w28, #0x3e0
	orr	w15, w15, w30, lsl #12
	bfxil	x13, x27, #19, #5
	orr	w27, w28, w27, lsr #27
	ldrb	w13, [x6, x13]
	ldrb	w27, [x6, w27, uxtw]
	lsl	w13, w13, #4
	orr	w15, w15, w13
	orr	w13, w27, w13
	mov	w27, #4                         // =0x4
	lsr	w15, w15, #8
	strb	w13, [x25, #2]
	strb	w15, [x25]
	b	.LBB19_51
.LBB19_65:                              //   in Loop: Header=BB19_52 Depth=2
	cmp	w11, #0
	mov	w3, #-1                         // =0xffffffff
	cset	w15, lt
	and	w1, w15, w1
.LBB19_66:                              //   in Loop: Header=BB19_52 Depth=2
	cmp	w16, #2
	b.eq	.LBB19_50
// %bb.67:                              //   in Loop: Header=BB19_52 Depth=2
	cmp	w16, #4
	b.ne	.LBB19_70
// %bb.68:                              //   in Loop: Header=BB19_52 Depth=2
	cbz	w0, .LBB19_76
// %bb.69:                              //   in Loop: Header=BB19_52 Depth=2
	ldr	x8, [x24, #120]
	ldr	w15, [x25]
	ldp	w8, w13, [x8, #96]
	lsl	w13, w20, w13
	lsl	w8, w20, w8
	orr	w8, w8, w13
	bic	w8, w15, w8
	b	.LBB19_73
.LBB19_70:                              //   in Loop: Header=BB19_52 Depth=2
	strh	wzr, [x25]
	b	.LBB19_75
.LBB19_71:                              //   in Loop: Header=BB19_52 Depth=2
	lsr	x13, x28, #14
	ubfx	x28, x28, #22, #10
	and	x13, x13, #0x3e0
	and	w28, w28, #0x3e0
	bfxil	x13, x27, #19, #5
	orr	w27, w28, w27, lsr #27
	lsl	w28, w30, #12
	lsl	w30, w15, #8
	ldrb	w13, [x6, x13]
	ldrb	w27, [x6, w27, uxtw]
	lsl	w15, w13, #4
	cbz	w0, .LBB19_77
// %bb.72:                              //   in Loop: Header=BB19_52 Depth=2
	ldr	x13, [x24, #120]
	ldr	w8, [x25]
	orr	w30, w15, w30
	orr	w28, w30, w28
	orr	w15, w27, w15
	ldr	w13, [x13, #100]
	and	w28, w28, #0xff00
	and	w15, w15, #0xff
	lsl	w13, w20, w13
	bic	w8, w8, w13
	str	w8, [x25]
	ldr	x13, [x24, #120]
	ldr	w13, [x13, #100]
	sub	w13, w13, #8
	lsl	w13, w28, w13
	orr	w8, w13, w8
	str	w8, [x25]
	ldr	x13, [x24, #120]
	ldr	w13, [x13, #96]
	lsl	w13, w20, w13
	bic	w8, w8, w13
	str	w8, [x25]
	ldr	x13, [x24, #120]
	ldr	w13, [x13, #96]
	lsl	w13, w15, w13
	orr	w8, w13, w8
.LBB19_73:                              //   in Loop: Header=BB19_52 Depth=2
	str	w8, [x25]
	mov	w27, #4                         // =0x4
	b	.LBB19_51
.LBB19_74:                              //   in Loop: Header=BB19_52 Depth=2
	ubfx	x8, x28, #14, #18
	ubfx	x13, x28, #22, #10
	lsl	w15, w15, w4
	and	w8, w8, #0x3e0
	and	w13, w13, #0x3e0
	bfxil	w8, w27, #19, #5
	orr	w13, w13, w27, lsr #27
	lsl	w27, w30, w2
	ldrb	w8, [x6, w8, uxtw]
	ldrb	w13, [x6, w13, uxtw]
	orr	w15, w15, w27
	lsl	w8, w8, w5
	lsl	w13, w13, w7
	orr	w8, w8, w13
	orr	w8, w15, w8
	strh	w8, [x25]
.LBB19_75:                              //   in Loop: Header=BB19_52 Depth=2
	mov	w27, #2                         // =0x2
	b	.LBB19_51
.LBB19_76:                              //   in Loop: Header=BB19_52 Depth=2
	ldp	w8, w13, [x25]
	mov	w27, #8                         // =0x8
	and	w8, w8, #0xffffff00
	and	w13, w13, #0xffffff00
	stp	w8, w13, [x25]
	b	.LBB19_51
.LBB19_77:                              //   in Loop: Header=BB19_52 Depth=2
	and	w13, w28, #0xf000
	orr	w28, w30, w15
	orr	w15, w27, w15
	orr	w13, w13, w28
	strb	w15, [x25, #4]
	mov	w27, #8                         // =0x8
	lsr	w13, w13, #8
	strb	w13, [x25]
	b	.LBB19_51
.LBB19_78:
	strb	w8, [x23, #1972]
.LBB19_79:
	ldr	w9, [x19, #1824]
	cmp	w9, #2
	b.lt	.LBB19_112
// %bb.80:
	ldr	w11, [sp, #4]                   // 4-byte Folded Reload
	adrp	x9, .L.str.114
	add	x9, x9, :lo12:.L.str.114
	adrp	x10, .L.str.113
	add	x10, x10, :lo12:.L.str.113
	ldr	x0, [x19]
	cmp	w11, #2
	adrp	x1, .L.str.118
	add	x1, x1, :lo12:.L.str.118
	csel	x9, x10, x9, eq
	cmp	w11, #3
	adrp	x10, .L.str.112
	add	x10, x10, :lo12:.L.str.112
.LBB19_81:
	csel	x2, x10, x9, eq
	adrp	x9, .L.str.116
	add	x9, x9, :lo12:.L.str.116
	cmp	w8, #0
	adrp	x8, .L.str.115
	add	x8, x8, :lo12:.L.str.115
	csel	x4, x8, x9, ne
	bl	_dev_info
	b	.LBB19_112
.LBB19_82:
	ldp	w12, w10, [x24, #188]
	ldr	w13, [sp, #4]                   // 4-byte Folded Reload
	str	x0, [sp, #32]                   // 8-byte Folded Spill
	mov	w1, wzr
	add	w11, w10, w10, lsr #31
	stur	x12, [x29, #-16]                // 8-byte Folded Spill
	lsr	x12, x12, #3
	cmp	w13, #2
	ldr	w13, [x15, #120]
	asr	w11, w11, #1
	stur	x12, [x29, #-24]                // 8-byte Folded Spill
	stur	w13, [x29, #-28]                // 4-byte Folded Spill
	mul	w12, w11, w12
	csel	w14, w11, w10, eq
	csel	w28, wzr, w11, eq
	stur	w14, [x29, #-4]                 // 4-byte Folded Spill
	sbfiz	x12, x12, #3, #32
	add	x10, x8, x12
	add	x11, x9, x12
	csel	x20, x8, x10, eq
	csel	x21, x9, x11, eq
	mul	w8, w28, w13
	subs	w9, w14, w28
	mul	w2, w9, w13
	add	x0, x0, x8
	bl	memset
	ldur	w30, [x29, #-4]                 // 4-byte Folded Reload
	mov	w8, #1                          // =0x1
	cmp	w30, w28
	b.le	.LBB19_109
// %bb.83:
	ldp	x6, x5, [x29, #-24]             // 16-byte Folded Reload
	mov	w9, #3                          // =0x3
	ldr	x4, [sp, #32]                   // 8-byte Folded Reload
	ldur	w7, [x29, #-28]                 // 4-byte Folded Reload
	mov	w10, w22
	b	.LBB19_85
.LBB19_84:                              //   in Loop: Header=BB19_85 Depth=1
	add	w28, w28, #1
	cmp	w28, w30
	b.eq	.LBB19_109
.LBB19_85:                              // =>This Loop Header: Depth=1
                                        //     Child Loop BB19_91 Depth 2
	ldr	w11, [x24, #268]
	mov	w12, w28
	cbz	w11, .LBB19_87
// %bb.86:                              //   in Loop: Header=BB19_85 Depth=1
	ldr	w11, [x24, #192]
	mvn	w12, w28
	add	w12, w11, w12
.LBB19_87:                              //   in Loop: Header=BB19_85 Depth=1
	cmp	w5, #8
	b.lo	.LBB19_84
// %bb.88:                              //   in Loop: Header=BB19_85 Depth=1
	mul	w12, w12, w7
	mov	w11, wzr
	mov	x13, x6
	add	x12, x4, x12
	b	.LBB19_91
.LBB19_89:                              //   in Loop: Header=BB19_91 Depth=2
	cmp	w26, #0
	mov	w22, #-1                        // =0xffffffff
	cset	w14, lt
	and	w8, w14, w8
.LBB19_90:                              //   in Loop: Header=BB19_91 Depth=2
	subs	x13, x13, #1
	add	w11, w11, #8
	add	x12, x12, #2
	b.eq	.LBB19_84
.LBB19_91:                              //   Parent Loop BB19_85 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x14, [x20], #8
	ldr	x15, [x21], #8
	cbz	w25, .LBB19_99
// %bb.92:                              //   in Loop: Header=BB19_91 Depth=2
	ldr	x16, [x19, #920]
	cbz	x16, .LBB19_89
// %bb.93:                              //   in Loop: Header=BB19_91 Depth=2
	ldr	w17, [x19, #244]
	ldr	w0, [x23, #1952]
	asr	w17, w17, #1
	cmp	w0, #10
	mul	w17, w17, w28
	add	x16, x16, w17, sxtw #1
	asr	w17, w11, #1
	ldrh	w16, [x16, w17, sxtw #1]
	b.ne	.LBB19_95
// %bb.94:                              //   in Loop: Header=BB19_91 Depth=2
	ldr	w17, [x23, #1948]
	sdiv	w16, w16, w17
.LBB19_95:                              //   in Loop: Header=BB19_91 Depth=2
	ldr	w17, [x23, #1960]
	sub	w22, w17, w16
	cmp	w22, w26
	cset	w16, ge
	cmp	w22, w10
	and	w8, w16, w8
	b.eq	.LBB19_99
// %bb.96:                              //   in Loop: Header=BB19_91 Depth=2
	tbnz	w22, #31, .LBB19_99
// %bb.97:                              //   in Loop: Header=BB19_91 Depth=2
	cmp	w22, w26
	b.ge	.LBB19_99
// %bb.98:                              //   in Loop: Header=BB19_91 Depth=2
	ldr	x10, [x19, #1560]
	lsl	w16, w22, #10
	add	x27, x10, w16, sxtw
	mov	w10, w22
.LBB19_99:                              //   in Loop: Header=BB19_91 Depth=2
	tbnz	w22, #31, .LBB19_90
// %bb.100:                             //   in Loop: Header=BB19_91 Depth=2
	cmp	w22, w26
	b.ge	.LBB19_90
// %bb.101:                             //   in Loop: Header=BB19_91 Depth=2
	ldr	w16, [x19, #1608]
	cmp	w16, #8
	b.eq	.LBB19_103
// %bb.102:                             //   in Loop: Header=BB19_91 Depth=2
	cmp	w16, #2
	b.ne	.LBB19_106
.LBB19_103:                             //   in Loop: Header=BB19_91 Depth=2
	and	x16, x15, #0xf8f8f8f8f8f8f8f8
	cmp	x16, x14
	b.eq	.LBB19_90
// %bb.104:                             //   in Loop: Header=BB19_91 Depth=2
	eor	x16, x16, x14
	tst	x16, #0xff
	csel	w17, wzr, w9, eq
	tst	x16, #0xff00
	orr	w0, w17, #0xc
	csel	w17, w17, w0, eq
	tst	x16, #0xff0000
	orr	w0, w17, #0x30
	csel	w17, w17, w0, eq
	tst	x16, #0xff000000
	orr	w0, w17, #0xc0
	csel	w17, w17, w0, eq
	tst	x16, #0xff00000000
	orr	w0, w17, #0x300
	csel	w17, w17, w0, eq
	tst	x16, #0xff0000000000
	orr	w0, w17, #0xc00
	csel	w17, w17, w0, eq
	lsr	x0, x16, #56
	tst	x16, #0xff000000000000
	orr	w16, w17, #0x3000
	csel	w16, w17, w16, eq
	cbnz	x0, .LBB19_107
// %bb.105:                             //   in Loop: Header=BB19_91 Depth=2
	cbnz	w16, .LBB19_108
	b	.LBB19_90
.LBB19_106:                             //   in Loop: Header=BB19_91 Depth=2
	mov	w16, #65535                     // =0xffff
	b	.LBB19_108
.LBB19_107:                             //   in Loop: Header=BB19_91 Depth=2
	orr	w16, w16, #0xc000
.LBB19_108:                             //   in Loop: Header=BB19_91 Depth=2
	lsl	x17, x15, #2
	lsr	x0, x15, #6
	lsr	x1, x15, #14
	lsr	x2, x15, #22
	lsr	x3, x15, #30
	and	x17, x17, #0x3e0
	and	x0, x0, #0x3e0
	and	x1, x1, #0x3e0
	bfxil	x17, x14, #3, #5
	bfxil	x0, x14, #11, #5
	bfxil	x1, x14, #19, #5
	and	x2, x2, #0x3e0
	ldrb	w17, [x27, x17]
	ldrb	w0, [x27, x0]
	bfxil	x2, x14, #27, #5
	orr	w17, w17, w0, lsl #2
	ldrb	w0, [x27, x1]
	and	x1, x3, #0x3e0
	lsr	x3, x15, #38
	bfxil	x1, x14, #35, #5
	orr	w17, w17, w0, lsl #4
	ldrb	w0, [x27, x2]
	and	x2, x3, #0x3e0
	lsr	x3, x15, #46
	lsr	x15, x15, #54
	orr	w17, w17, w0, lsl #6
	ldrb	w0, [x27, x1]
	bfxil	x2, x14, #43, #5
	and	x1, x3, #0x3e0
	and	x15, x15, #0x3e0
	orr	w17, w17, w0, lsl #8
	ldrb	w0, [x27, x2]
	bfxil	x1, x14, #51, #5
	bfxil	x15, x14, #59, #5
	orr	w17, w17, w0, lsl #10
	ldrb	w0, [x27, x1]
	ldrb	w15, [x27, x15]
	orr	w14, w17, w0, lsl #12
	orr	w14, w14, w15, lsl #14
	and	w14, w14, w16
	strh	w14, [x12]
	b	.LBB19_90
.LBB19_109:
	ldr	w9, [sp, #4]                    // 4-byte Folded Reload
	and	w8, w8, #0x1
	cmp	w9, #2
	b.eq	.LBB19_42
.LBB19_110:
	strb	w8, [x23, #1972]
.LBB19_111:
	ldr	w9, [x19, #1824]
	cmp	w9, #2
	b.ge	.LBB19_155
.LBB19_112:
	ldp	x20, x19, [sp, #192]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #176]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #160]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #144]            // 16-byte Folded Reload
	ldp	x28, x27, [sp, #128]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #208
	ldr	x30, [x18, #-8]!
	ret
.LBB19_113:
	mul	w16, w13, w17
	sbfiz	x16, x16, #3, #32
	add	x8, x8, x16
	add	x9, x9, x16
	cmp	w13, w14
	b.ge	.LBB19_40
.LBB19_114:
	ldr	w16, [x24, #260]
	ldr	w12, [x15, #120]
	mov	w15, #1                         // =0x1
	str	x0, [sp, #32]                   // 8-byte Folded Spill
	mov	w0, #255                        // =0xff
	mov	w1, #49152                      // =0xc000
	mov	w2, w22
	stur	w17, [x29, #-4]                 // 4-byte Folded Spill
	stur	w12, [x29, #-16]                // 4-byte Folded Spill
	b	.LBB19_116
.LBB19_115:                             //   in Loop: Header=BB19_116 Depth=1
	add	w13, w13, #1
	cmp	w13, w14
	b.eq	.LBB19_41
.LBB19_116:                             // =>This Loop Header: Depth=1
                                        //     Child Loop BB19_122 Depth 2
	ldr	w3, [x24, #268]
	mov	w4, w13
	cbz	w3, .LBB19_118
// %bb.117:                             //   in Loop: Header=BB19_116 Depth=1
	ldr	w3, [x24, #192]
	mvn	w4, w13
	add	w4, w3, w4
.LBB19_118:                             //   in Loop: Header=BB19_116 Depth=1
	cmp	w11, #8
	b.lo	.LBB19_115
// %bb.119:                             //   in Loop: Header=BB19_116 Depth=1
	ldr	x5, [x24, #120]
	ldur	w12, [x29, #-16]                // 4-byte Folded Reload
	mov	w3, wzr
	ldr	w5, [x5, #104]
	mul	w4, w4, w12
	ldr	x12, [sp, #32]                  // 8-byte Folded Reload
	mul	w5, w5, w10
	add	x4, x12, x4
	add	x4, x4, x5
	ldur	w5, [x29, #-4]                  // 4-byte Folded Reload
	b	.LBB19_122
.LBB19_120:                             //   in Loop: Header=BB19_122 Depth=2
	ldrb	w12, [x4, #1]
	ldrb	w17, [x4, #3]
	mov	w6, #4                          // =0x4
	lsl	w12, w12, #8
	lsl	w17, w17, #8
	strh	w12, [x4]
	strh	w17, [x4, #2]
.LBB19_121:                             //   in Loop: Header=BB19_122 Depth=2
	subs	w5, w5, #1
	add	x4, x4, x6
	add	w3, w3, #8
	b.eq	.LBB19_115
.LBB19_122:                             //   Parent Loop BB19_116 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x6, [x8], #8
	ldr	x7, [x9], #8
	cbz	w25, .LBB19_130
// %bb.123:                             //   in Loop: Header=BB19_122 Depth=2
	ldr	x20, [x19, #920]
	cbz	x20, .LBB19_137
// %bb.124:                             //   in Loop: Header=BB19_122 Depth=2
	ldr	w21, [x19, #244]
	ldr	w22, [x23, #1952]
	asr	w21, w21, #1
	cmp	w22, #10
	mul	w21, w21, w13
	add	x20, x20, w21, sxtw #1
	asr	w21, w3, #1
	ldrh	w20, [x20, w21, sxtw #1]
	b.ne	.LBB19_126
// %bb.125:                             //   in Loop: Header=BB19_122 Depth=2
	ldr	w21, [x23, #1948]
	sdiv	w20, w20, w21
.LBB19_126:                             //   in Loop: Header=BB19_122 Depth=2
	ldr	w21, [x23, #1960]
	sub	w22, w21, w20
	cmp	w22, w26
	cset	w20, ge
	cmp	w22, w2
	and	w15, w20, w15
	b.eq	.LBB19_130
// %bb.127:                             //   in Loop: Header=BB19_122 Depth=2
	tbnz	w22, #31, .LBB19_130
// %bb.128:                             //   in Loop: Header=BB19_122 Depth=2
	cmp	w22, w26
	b.ge	.LBB19_130
// %bb.129:                             //   in Loop: Header=BB19_122 Depth=2
	ldr	x2, [x19, #1560]
	lsl	w20, w22, #10
	add	x27, x2, w20, sxtw
	mov	w2, w22
.LBB19_130:                             //   in Loop: Header=BB19_122 Depth=2
	tbnz	w22, #31, .LBB19_138
// %bb.131:                             //   in Loop: Header=BB19_122 Depth=2
	cmp	w22, w26
	b.ge	.LBB19_138
// %bb.132:                             //   in Loop: Header=BB19_122 Depth=2
	ldr	w20, [x19, #1608]
	cmp	w20, #8
	b.eq	.LBB19_134
// %bb.133:                             //   in Loop: Header=BB19_122 Depth=2
	cmp	w20, #2
	b.ne	.LBB19_143
.LBB19_134:                             //   in Loop: Header=BB19_122 Depth=2
	and	x20, x7, #0xf8f8f8f8f8f8f8f8
	cmp	x20, x6
	b.eq	.LBB19_138
// %bb.135:                             //   in Loop: Header=BB19_122 Depth=2
	eor	x20, x20, x6
	tst	x20, #0xff
	csel	w21, wzr, w1, eq
	tst	x20, #0xff00
	orr	w28, w21, #0x3000
	csel	w21, w21, w28, eq
	tst	x20, #0xff0000
	orr	w28, w21, #0xc00
	csel	w21, w21, w28, eq
	tst	x20, #0xff000000
	orr	w28, w21, #0x300
	csel	w21, w21, w28, eq
	tst	x20, #0xff00000000
	orr	w28, w21, #0xc0
	csel	w21, w21, w28, eq
	tst	x20, #0xff0000000000
	orr	w28, w21, #0x30
	csel	w21, w21, w28, eq
	lsr	x28, x20, #56
	tst	x20, #0xff000000000000
	orr	w20, w21, #0xc
	csel	w20, w21, w20, eq
	cbnz	x28, .LBB19_145
// %bb.136:                             //   in Loop: Header=BB19_122 Depth=2
	cbnz	w20, .LBB19_146
	b	.LBB19_138
.LBB19_137:                             //   in Loop: Header=BB19_122 Depth=2
	cmp	w26, #0
	mov	w22, #-1                        // =0xffffffff
	cset	w6, lt
	and	w15, w6, w15
.LBB19_138:                             //   in Loop: Header=BB19_122 Depth=2
	cmp	w10, #4
	b.eq	.LBB19_141
// %bb.139:                             //   in Loop: Header=BB19_122 Depth=2
	cmp	w10, #2
	b.eq	.LBB19_120
// %bb.140:                             //   in Loop: Header=BB19_122 Depth=2
	strh	wzr, [x4]
	b	.LBB19_153
.LBB19_141:                             //   in Loop: Header=BB19_122 Depth=2
	cbz	w16, .LBB19_144
// %bb.142:                             //   in Loop: Header=BB19_122 Depth=2
	ldr	x12, [x24, #120]
	ldr	w6, [x4]
	ldp	w12, w17, [x12, #96]
	lsl	w17, w0, w17
	lsl	w12, w0, w12
	orr	w12, w12, w17
	bic	w12, w6, w12
	b	.LBB19_151
.LBB19_143:                             //   in Loop: Header=BB19_122 Depth=2
	mov	w20, #65535                     // =0xffff
	b	.LBB19_146
.LBB19_144:                             //   in Loop: Header=BB19_122 Depth=2
	ldp	w12, w17, [x4]
	mov	w6, #8                          // =0x8
	and	w12, w12, #0xffffff00
	and	w17, w17, #0xffffff00
	stp	w12, w17, [x4]
	b	.LBB19_121
.LBB19_145:                             //   in Loop: Header=BB19_122 Depth=2
	orr	w20, w20, #0x3
.LBB19_146:                             //   in Loop: Header=BB19_122 Depth=2
	lsr	x21, x7, #6
	lsl	x28, x7, #2
	lsr	x30, x7, #14
	lsr	x17, x7, #22
	lsr	x12, x7, #30
	cmp	w10, #4
	and	x21, x21, #0x3e0
	and	x28, x28, #0x3e0
	and	x30, x30, #0x3e0
	bfxil	x21, x6, #11, #5
	bfxil	x28, x6, #3, #5
	bfxil	x30, x6, #19, #5
	and	x17, x17, #0x3e0
	and	x12, x12, #0x3e0
	ldrb	w21, [x27, x21]
	ldrb	w28, [x27, x28]
	bfxil	x17, x6, #27, #5
	bfxil	x12, x6, #35, #5
	lsl	w21, w21, #12
	ldrb	w17, [x27, x17]
	ldrb	w12, [x27, x12]
	orr	w21, w21, w28, lsl #14
	ldrb	w28, [x27, x30]
	lsr	x30, x7, #38
	orr	w21, w21, w28, lsl #10
	and	x28, x30, #0x3e0
	lsr	x30, x7, #46
	bfxil	x28, x6, #43, #5
	lsr	x7, x7, #54
	orr	w17, w21, w17, lsl #8
	and	x21, x30, #0x3e0
	bfxil	x21, x6, #51, #5
	and	x7, x7, #0x3e0
	orr	w12, w17, w12, lsl #6
	ldrb	w17, [x27, x28]
	bfxil	x7, x6, #59, #5
	orr	w12, w12, w17, lsl #4
	ldrb	w17, [x27, x21]
	orr	w12, w12, w17, lsl #2
	ldrb	w17, [x27, x7]
	orr	w12, w12, w17
	and	w6, w12, w20
	b.eq	.LBB19_149
// %bb.147:                             //   in Loop: Header=BB19_122 Depth=2
	cmp	w10, #2
	b.ne	.LBB19_152
// %bb.148:                             //   in Loop: Header=BB19_122 Depth=2
	lsr	w12, w6, #8
	strb	w6, [x4, #2]
	mov	w6, #4                          // =0x4
	strb	w12, [x4]
	b	.LBB19_121
.LBB19_149:                             //   in Loop: Header=BB19_122 Depth=2
	cbz	w16, .LBB19_154
// %bb.150:                             //   in Loop: Header=BB19_122 Depth=2
	ldr	x12, [x24, #120]
	ldr	w17, [x4]
	and	w7, w6, #0xff00
	and	w6, w6, #0xff
	ldr	w12, [x12, #100]
	lsl	w12, w0, w12
	bic	w12, w17, w12
	str	w12, [x4]
	ldr	x17, [x24, #120]
	ldr	w17, [x17, #100]
	sub	w17, w17, #8
	lsl	w17, w7, w17
	orr	w12, w17, w12
	str	w12, [x4]
	ldr	x17, [x24, #120]
	ldr	w17, [x17, #96]
	lsl	w17, w0, w17
	bic	w12, w12, w17
	str	w12, [x4]
	ldr	x17, [x24, #120]
	ldr	w17, [x17, #96]
	lsl	w17, w6, w17
	orr	w12, w17, w12
.LBB19_151:                             //   in Loop: Header=BB19_122 Depth=2
	str	w12, [x4]
	mov	w6, #4                          // =0x4
	b	.LBB19_121
.LBB19_152:                             //   in Loop: Header=BB19_122 Depth=2
	strh	w6, [x4]
.LBB19_153:                             //   in Loop: Header=BB19_122 Depth=2
	mov	w6, #2                          // =0x2
	b	.LBB19_121
.LBB19_154:                             //   in Loop: Header=BB19_122 Depth=2
	ldr	w12, [x4]
	strb	w6, [x4, #4]
	and	w12, w12, #0xffffff00
	orr	w12, w12, w6, lsr #8
	mov	w6, #8                          // =0x8
	str	w12, [x4]
	b	.LBB19_121
.LBB19_155:
	ldr	w11, [sp, #4]                   // 4-byte Folded Reload
	adrp	x9, .L.str.114
	add	x9, x9, :lo12:.L.str.114
	adrp	x10, .L.str.113
	add	x10, x10, :lo12:.L.str.113
	ldr	x0, [x19]
	cmp	w11, #2
	adrp	x1, .L.str.119
	add	x1, x1, :lo12:.L.str.119
	csel	x9, x10, x9, eq
	adrp	x10, .L.str.112
	add	x10, x10, :lo12:.L.str.112
	cmp	w11, #3
	mov	w3, w22
	csel	x2, x10, x9, eq
	adrp	x9, .L.str.116
	add	x9, x9, :lo12:.L.str.116
	adrp	x10, .L.str.115
	add	x10, x10, :lo12:.L.str.115
	cmp	w25, #0
	csel	x4, x10, x9, ne
	cmp	w8, #0
	csel	x5, x10, x9, ne
	bl	_dev_info
	b	.LBB19_112
.Lfunc_end19:
	.size	get_full_or_part_data, .Lfunc_end19-get_full_or_part_data
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_dump_debug_buffers
	.type	ebc_dump_debug_buffers,@function
ebc_dump_debug_buffers:                 // @ebc_dump_debug_buffers
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-64]!           // 16-byte Folded Spill
	stp	x28, x23, [sp, #16]             // 16-byte Folded Spill
	mov	x29, sp
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	sub	sp, sp, #1040
	mrs	x8, SP_EL0
	add	x23, x0, #4, lsl #12            // =16384
	adrp	x10, global_ebc
	ldr	x8, [x8, #1608]
	mov	w21, w1
	mov	x19, x0
	stur	x8, [x29, #-8]
	ldrb	w8, [x23, #1977]
	ldrb	w9, [x23, #1978]
	ldr	x22, [x10, :lo12:global_ebc]
	ldr	w20, [x0, #248]
	orr	w8, w9, w8
	tst	w8, #0xff
	strb	w8, [x23, #1979]
	b.ne	.LBB20_9
// %bb.1:
	ldrb	w8, [x19, #1814]
	tbnz	w8, #0, .LBB20_9
// %bb.2:
	ldrb	w8, [x23, #1945]
	cmp	w8, #1
	b.ne	.LBB20_7
// %bb.3:
	ldrb	w8, [x23, #1972]
	cmp	w8, #1
	b.ne	.LBB20_6
// %bb.4:
	ldrb	w8, [x23, #1973]
	cmp	w8, #1
	b.ne	.LBB20_6
// %bb.5:
	strb	w8, [x23, #1974]
.LBB20_6:
	ldrb	w8, [x23, #1974]
	tbz	w8, #0, .LBB20_9
	b	.LBB20_8
.LBB20_7:
	ldr	w8, [x23, #1880]
	cmp	w8, #0
	b.gt	.LBB20_9
.LBB20_8:
	ldrb	w8, [x19, #1812]
	tbz	w8, #0, .LBB20_28
.LBB20_9:
	mov	w8, wzr
	cbz	w21, .LBB20_26
.LBB20_10:
	tbnz	w8, #0, .LBB20_26
// %bb.11:
	add	x0, sp, #8
	mov	w1, wzr
	mov	w2, #1024                       // =0x400
	bl	memset
	ldr	w8, [x23, #1980]
	and	w9, w21, w8
	tbz	w9, #0, .LBB20_13
// %bb.12:
	ldr	x9, [x19, #1488]
	ldr	x9, [x9, #8]
	cbnz	x9, .LBB20_29
.LBB20_13:
	and	w9, w21, w8
	tbz	w9, #1, .LBB20_15
.LBB20_14:
	ldr	x9, [x19, #1496]
	ldr	x9, [x9, #8]
	cbnz	x9, .LBB20_30
.LBB20_15:
	and	w9, w21, w8
	tbz	w9, #2, .LBB20_17
// %bb.16:
	ldr	x9, [x19, #1064]
	cbnz	x9, .LBB20_31
.LBB20_17:
	and	w9, w21, w8
	tbz	w9, #3, .LBB20_19
.LBB20_18:
	ldr	x9, [x19, #992]
	cbnz	x9, .LBB20_32
.LBB20_19:
	and	w9, w21, w8
	tbz	w9, #4, .LBB20_21
// %bb.20:
	ldr	x9, [x19, #1208]
	cbnz	x9, .LBB20_33
.LBB20_21:
	and	w9, w21, w8
	tbz	w9, #5, .LBB20_23
.LBB20_22:
	ldr	x9, [x19, #1136]
	cbnz	x9, .LBB20_34
.LBB20_23:
	and	w9, w21, w8
	tbz	w9, #6, .LBB20_25
// %bb.24:
	ldr	x9, [x19, #1280]
	cbnz	x9, .LBB20_35
.LBB20_25:
	and	w8, w21, w8
	tbnz	w8, #7, .LBB20_36
.LBB20_26:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1608]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB20_37
// %bb.27:
	add	sp, sp, #1040
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x28, x23, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB20_28:
	ldrb	w8, [x19, #1813]
	eor	w8, w8, #0x1
	cbnz	w21, .LBB20_10
	b	.LBB20_26
.LBB20_29:
	ldp	w3, w4, [x22, #188]
	adrp	x2, .L.str.133
	add	x2, x2, :lo12:.L.str.133
	add	x0, sp, #8
	mov	w1, #1024                       // =0x400
	bl	snprintf
	ldr	x8, [x19, #1488]
	ldrsw	x2, [x19, #232]
	add	x0, sp, #8
	mov	w3, w20
	ldr	x1, [x8, #8]
	bl	write_buffer_to_file
	ldr	w8, [x23, #1980]
	and	w9, w21, w8
	tbnz	w9, #1, .LBB20_14
	b	.LBB20_15
.LBB20_30:
	ldp	w3, w4, [x22, #188]
	adrp	x2, .L.str.134
	add	x2, x2, :lo12:.L.str.134
	add	x0, sp, #8
	mov	w1, #1024                       // =0x400
	bl	snprintf
	ldr	x8, [x19, #1496]
	ldrsw	x2, [x19, #232]
	add	x0, sp, #8
	mov	w3, w20
	ldr	x1, [x8, #8]
	bl	write_buffer_to_file
	ldr	w8, [x23, #1980]
	b	.LBB20_15
.LBB20_31:
	ldp	w3, w4, [x22, #188]
	adrp	x2, .L.str.135
	add	x2, x2, :lo12:.L.str.135
	add	x0, sp, #8
	mov	w1, #1024                       // =0x400
	bl	snprintf
	ldr	x1, [x19, #1064]
	ldrsw	x2, [x19, #232]
	add	x0, sp, #8
	mov	w3, w20
	bl	write_buffer_to_file
	ldr	w8, [x23, #1980]
	and	w9, w21, w8
	tbnz	w9, #3, .LBB20_18
	b	.LBB20_19
.LBB20_32:
	ldp	w3, w4, [x22, #188]
	adrp	x2, .L.str.136
	add	x2, x2, :lo12:.L.str.136
	add	x0, sp, #8
	mov	w1, #1024                       // =0x400
	bl	snprintf
	ldr	x1, [x19, #992]
	ldrsw	x2, [x19, #232]
	add	x0, sp, #8
	mov	w3, w20
	bl	write_buffer_to_file
	ldr	w8, [x23, #1980]
	b	.LBB20_19
.LBB20_33:
	ldp	w3, w4, [x22, #188]
	adrp	x2, .L.str.137
	add	x2, x2, :lo12:.L.str.137
	add	x0, sp, #8
	mov	w1, #1024                       // =0x400
	bl	snprintf
	ldr	x1, [x19, #1208]
	ldrsw	x2, [x19, #232]
	add	x0, sp, #8
	mov	w3, w20
	bl	write_buffer_to_file
	ldr	w8, [x23, #1980]
	and	w9, w21, w8
	tbnz	w9, #5, .LBB20_22
	b	.LBB20_23
.LBB20_34:
	ldp	w3, w4, [x22, #188]
	adrp	x2, .L.str.138
	add	x2, x2, :lo12:.L.str.138
	add	x0, sp, #8
	mov	w1, #1024                       // =0x400
	bl	snprintf
	ldr	x1, [x19, #1136]
	ldrsw	x2, [x19, #232]
	add	x0, sp, #8
	mov	w3, w20
	bl	write_buffer_to_file
	ldr	w8, [x23, #1980]
	b	.LBB20_23
.LBB20_35:
	ldp	w3, w4, [x22, #188]
	adrp	x2, .L.str.139
	add	x2, x2, :lo12:.L.str.139
	add	x0, sp, #8
	mov	w1, #1024                       // =0x400
	bl	snprintf
	ldr	x1, [x19, #1280]
	ldrsw	x2, [x19, #232]
	add	x0, sp, #8
	mov	w3, w20
	bl	write_buffer_to_file
	ldr	w8, [x23, #1980]
	and	w8, w21, w8
	tbz	w8, #7, .LBB20_26
.LBB20_36:
	ldp	w3, w4, [x22, #188]
	adrp	x2, .L.str.140
	add	x2, x2, :lo12:.L.str.140
	add	x0, sp, #8
	mov	w1, #1024                       // =0x400
	bl	snprintf
	ldrsw	x8, [x22, #184]
	ldrsw	x2, [x19, #236]
	add	x0, sp, #8
	mov	w3, w20
	add	x8, x19, x8, lsl #3
	ldr	x1, [x8, #1576]
	bl	write_buffer_to_file
	b	.LBB20_26
.LBB20_37:
	bl	__stack_chk_fail
.Lfunc_end20:
	.size	ebc_dump_debug_buffers, .Lfunc_end20-ebc_dump_debug_buffers
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_power_on
	.type	ebc_power_on,@function
ebc_power_on:                           // @ebc_power_on
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	mov	x29, sp
	ldr	x20, [x8, :lo12:global_ebc]
	add	x0, x20, #320
	bl	cancel_delayed_work_sync
	ldr	w8, [x20, #1908]
	cmp	w8, #1
	b.eq	.LBB21_11
// %bb.1:
	ldr	w8, [x20, #2124]
	cbz	w8, .LBB21_3
// %bb.2:
	mov	w0, #1                          // =0x1
	bl	ebc_notify
.LBB21_3:
	ldr	w8, [x20, #2112]
	cbnz	w8, .LBB21_5
// %bb.4:
	mov	w8, #1                          // =0x1
	add	x0, x20, #1920
	str	w8, [x20, #2112]
	bl	__pm_stay_awake
.LBB21_5:
	ldr	x0, [x20, #16]
	mov	w8, #1                          // =0x1
	str	w8, [x20, #1908]
	cbz	x0, .LBB21_7
// %bb.6:
	ldr	x8, [x0, #32]
	mov	w1, #1                          // =0x1
	ldur	w16, [x8, #-4]
	movk	w17, #41737
	movk	w17, #43957, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp30
	brk	#0x8228
.Ltmp30:
	blr	x8
	mov	w19, wzr
	b	.LBB21_8
.LBB21_7:
	ldr	x0, [x20, #24]
	bl	regulator_enable
	mov	w19, w0
.LBB21_8:
	ldrb	w8, [x20, #296]
	cmp	w8, #1
	b.ne	.LBB21_10
// %bb.9:
	mov	w0, #50                         // =0x32
	bl	msleep
.LBB21_10:
	ldr	x0, [x20, #8]
	add	x1, x20, #112
	ldr	x8, [x0, #168]
	ldur	w16, [x8, #-4]
	movk	w17, #14072
	movk	w17, #10706, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp31
	brk	#0x8228
.Ltmp31:
	blr	x8
	ldr	w8, [x20, #2128]
	cmp	w8, #1
	b.ge	.LBB21_12
.LBB21_11:
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB21_12:
	ldr	x0, [x20, #304]
	adrp	x1, .L.str.146
	add	x1, x1, :lo12:.L.str.146
	adrp	x2, .L.str.147
	add	x2, x2, :lo12:.L.str.147
	mov	w3, w19
	bl	_dev_info
	b	.LBB21_11
.Lfunc_end21:
	.size	ebc_power_on, .Lfunc_end21-ebc_power_on
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_lut_update
	.type	ebc_lut_update,@function
ebc_lut_update:                         // @ebc_lut_update
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #112
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stp	x24, x23, [sp, #64]             // 16-byte Folded Spill
	add	x23, x0, #4, lsl #12            // =16384
	stp	x22, x21, [sp, #80]             // 16-byte Folded Spill
	mov	w21, w1
	stp	x20, x19, [sp, #96]             // 16-byte Folded Spill
	mrs	x8, SP_EL0
	mov	w20, w2
	ldr	x8, [x8, #1608]
	mov	x19, x0
	stur	x8, [x29, #-8]
	mov	w8, #25                         // =0x19
	ldr	w3, [x23, #2188]
	stur	w8, [x29, #-12]
	tbnz	w3, #31, .LBB22_5
// %bb.1:
	ldr	w8, [x19, #2128]
	stur	w3, [x29, #-12]
	tbz	w8, #31, .LBB22_28
.LBB22_2:
	cmp	w3, #51
	b.lo	.LBB22_12
// %bb.3:
	ldr	w8, [x19, #2128]
	tbz	w8, #31, .LBB22_32
.LBB22_4:
	mov	w3, #50                         // =0x32
	stur	w3, [x29, #-12]
	b	.LBB22_12
.LBB22_5:
	ldr	x0, [x19, #16]
	cbz	x0, .LBB22_10
// %bb.6:
	ldr	x8, [x0, #56]
	sub	x1, x29, #12
	ldur	w16, [x8, #-4]
	movk	w17, #22883
	movk	w17, #39863, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp32
	brk	#0x8228
.Ltmp32:
	blr	x8
	cbnz	w0, .LBB22_11
.LBB22_7:
	ldur	w3, [x29, #-12]
	tbz	w3, #31, .LBB22_2
.LBB22_8:
	ldr	w8, [x19, #2128]
	tbz	w8, #31, .LBB22_36
.LBB22_9:
	mov	w3, wzr
	stur	wzr, [x29, #-12]
	b	.LBB22_12
.LBB22_10:
	ldr	x0, [x19, #104]
	sub	x1, x29, #12
	bl	thermal_zone_get_temp
	ldursw	x8, [x29, #-12]
	mov	w9, #19923                      // =0x4dd3
	movk	w9, #4194, lsl #16
	smull	x8, w8, w9
	lsr	x9, x8, #63
	asr	x8, x8, #38
	add	w8, w8, w9
	stur	w8, [x29, #-12]
	cbz	w0, .LBB22_7
.LBB22_11:
	ldr	w8, [x19, #2128]
	mov	w3, #25                         // =0x19
	stur	w3, [x29, #-12]
	tbz	w8, #31, .LBB22_35
.LBB22_12:
	mov	w0, w3
	bl	ebc_overlay_temp_fix
	ldur	w1, [x29, #-12]
	mov	w22, w0
	mov	w0, w21
	bl	ebc_normal_temp_fix
	and	w3, w22, #0xffff
	cmp	w3, #51
	b.lo	.LBB22_15
// %bb.13:
	ldr	w8, [x19, #2128]
	cmp	w8, #1
	b.ge	.LBB22_29
.LBB22_14:
	ldur	w22, [x29, #-12]
.LBB22_15:
	and	w3, w0, #0xffff
	cmp	w3, #51
	b.lo	.LBB22_17
// %bb.16:
	ldr	w8, [x19, #2128]
	ldur	w0, [x29, #-12]
	cmp	w8, #1
	b.ge	.LBB22_30
.LBB22_17:
	ldr	w8, [x19, #2128]
	cmp	w8, #1
	b.ge	.LBB22_27
.LBB22_18:
	ldrb	w8, [x23, #2192]
	mov	w9, #32                         // =0x20
	ldr	w10, [x23, #2240]
	ldr	w11, [x19, #2140]
	cmp	w21, #16
	orr	w2, w0, w22, lsl #8
	stp	w9, w8, [sp, #8]
	ldr	w9, [x23, #2244]
	cset	w8, eq
	cmp	w11, #0
	add	x0, x19, #1840
	add	x3, sp, #8
	stp	w10, w9, [sp, #16]
	ldr	w10, [x23, #2220]
	cset	w9, eq
	mov	w1, w20
	stp	w8, w9, [sp, #24]
	str	w10, [sp, #32]
	bl	epd_lut_get
	tbnz	w0, #31, .LBB22_24
// %bb.19:
	tbz	w0, #1, .LBB22_21
// %bb.20:
	ldr	w8, [x19, #2128]
	cmp	w8, #1
	b.ge	.LBB22_33
.LBB22_21:
	tbz	w0, #0, .LBB22_25
.LBB22_22:
	ldr	w8, [x19, #2128]
	cmp	w8, #1
	b.ge	.LBB22_34
.LBB22_23:
	mov	w8, #1                          // =0x1
	strb	w8, [x23, #2160]
	b	.LBB22_25
.LBB22_24:
	ldr	w8, [x19, #2128]
	cmp	w8, #1
	b.ge	.LBB22_31
.LBB22_25:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1608]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB22_37
// %bb.26:
	ldp	x20, x19, [sp, #96]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #112
	ldr	x30, [x18, #-8]!
	ret
.LBB22_27:
	ldr	x8, [x19, #304]
	ldur	w5, [x29, #-12]
	adrp	x1, .L.str.165
	add	x1, x1, :lo12:.L.str.165
	adrp	x2, .L.str.121
	add	x2, x2, :lo12:.L.str.121
	and	w3, w22, #0xffff
	and	w4, w0, #0xffff
	mov	w24, w0
	mov	x0, x8
	bl	_dev_info
	mov	w0, w24
	b	.LBB22_18
.LBB22_28:
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.159
	add	x1, x1, :lo12:.L.str.159
	adrp	x2, .L.str.121
	add	x2, x2, :lo12:.L.str.121
	bl	_dev_info
	ldur	w3, [x29, #-12]
	tbz	w3, #31, .LBB22_2
	b	.LBB22_8
.LBB22_29:
	ldr	x8, [x19, #304]
	ldur	w4, [x29, #-12]
	adrp	x1, .L.str.163
	add	x1, x1, :lo12:.L.str.163
	adrp	x2, .L.str.121
	add	x2, x2, :lo12:.L.str.121
	mov	w22, w0
	mov	x0, x8
	bl	_dev_info
	mov	w0, w22
	b	.LBB22_14
.LBB22_30:
	ldr	x8, [x19, #304]
	adrp	x1, .L.str.164
	add	x1, x1, :lo12:.L.str.164
	adrp	x2, .L.str.121
	add	x2, x2, :lo12:.L.str.121
	mov	w4, w0
	mov	x0, x8
	bl	_dev_info
	ldur	w0, [x29, #-12]
	b	.LBB22_17
.LBB22_31:
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.166
	add	x1, x1, :lo12:.L.str.166
	adrp	x2, .L.str.121
	add	x2, x2, :lo12:.L.str.121
	bl	_dev_info
	b	.LBB22_25
.LBB22_32:
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.161
	add	x1, x1, :lo12:.L.str.161
	adrp	x2, .L.str.121
	add	x2, x2, :lo12:.L.str.121
	bl	_dev_info
	b	.LBB22_4
.LBB22_33:
	ldr	x8, [x19, #304]
	adrp	x1, .L.str.167
	add	x1, x1, :lo12:.L.str.167
	adrp	x2, .L.str.121
	add	x2, x2, :lo12:.L.str.121
	mov	w20, w0
	mov	x0, x8
	bl	_dev_info
	mov	w0, w20
	tbnz	w0, #0, .LBB22_22
	b	.LBB22_25
.LBB22_34:
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.168
	add	x1, x1, :lo12:.L.str.168
	adrp	x2, .L.str.121
	add	x2, x2, :lo12:.L.str.121
	bl	_dev_info
	b	.LBB22_23
.LBB22_35:
	ldr	x8, [x19, #304]
	adrp	x1, .L.str.162
	add	x1, x1, :lo12:.L.str.162
	adrp	x2, .L.str.121
	add	x2, x2, :lo12:.L.str.121
	mov	w3, w0
	mov	x0, x8
	bl	_dev_info
	ldur	w3, [x29, #-12]
	b	.LBB22_12
.LBB22_36:
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.160
	add	x1, x1, :lo12:.L.str.160
	adrp	x2, .L.str.121
	add	x2, x2, :lo12:.L.str.121
	bl	_dev_info
	b	.LBB22_9
.LBB22_37:
	bl	__stack_chk_fail
.Lfunc_end22:
	.size	ebc_lut_update, .Lfunc_end22-ebc_lut_update
                                        // -- End function
	.p2align	2                               // -- Begin function fast_update_to_auto_image
	.type	fast_update_to_auto_image,@function
fast_update_to_auto_image:              // @fast_update_to_auto_image
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-96]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	stp	x28, x27, [sp, #16]             // 16-byte Folded Spill
	mov	x29, sp
	ldr	x11, [x8, :lo12:global_ebc]
	stp	x26, x25, [sp, #32]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             // 16-byte Folded Spill
	ldr	w8, [x11, #192]
	stp	x22, x21, [sp, #64]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             // 16-byte Folded Spill
	subs	w9, w8, #1
	b.lt	.LBB23_40
// %bb.1:
	add	x13, x0, #4, lsl #12            // =16384
	ldrsw	x11, [x11, #188]
	ldr	x3, [x0, #1512]
	ldr	x4, [x0, #1496]
	ldr	w17, [x13, #1868]
	mov	w7, #1                          // =0x1
	ldr	x12, [x0, #1280]
	ldr	w13, [x13, #1908]
	sub	w16, w11, #1
	ldr	x14, [x0, #1208]
	ldr	x15, [x0, #1136]
	mov	w10, wzr
	ldr	x1, [x0, #1064]
	ldr	x2, [x0, #992]
	sub	w17, w17, #1
	ldr	x3, [x3, #8]
	ldr	x4, [x4, #8]
	neg	x5, x11
	add	x6, x16, #1
	sub	x7, x7, x11
	add	x19, x11, #1
	mov	w20, #5                         // =0x5
	mov	w21, #10                        // =0xa
	b	.LBB23_5
.LBB23_2:                               //   in Loop: Header=BB23_5 Depth=1
	add	x15, x15, x23
	add	x4, x4, x23
	add	x12, x12, x23
	add	x14, x14, x23
	add	x2, x2, x23
	add	x15, x15, #1
	add	x1, x1, x23
.LBB23_3:                               //   in Loop: Header=BB23_5 Depth=1
	add	x3, x3, x6
.LBB23_4:                               //   in Loop: Header=BB23_5 Depth=1
	add	w10, w10, #1
	cmp	w10, w8
	b.eq	.LBB23_40
.LBB23_5:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB23_25 Depth 2
	cmp	w11, #1
	b.lt	.LBB23_4
// %bb.6:                               //   in Loop: Header=BB23_5 Depth=1
	ldrb	w22, [x4]
	ldrb	w23, [x2]
	cmp	w22, w23
	b.eq	.LBB23_18
// %bb.7:                               //   in Loop: Header=BB23_5 Depth=1
	ldrb	w24, [x3]
	cmp	w24, #255
	b.ne	.LBB23_18
// %bb.8:                               //   in Loop: Header=BB23_5 Depth=1
	eor	w22, w23, w22
	cmp	w22, #32
	b.lo	.LBB23_15
// %bb.9:                               //   in Loop: Header=BB23_5 Depth=1
	ldrb	w22, [x15]
	orr	w22, w22, w20
	strb	w22, [x15]
	cbz	w10, .LBB23_11
// %bb.10:                              //   in Loop: Header=BB23_5 Depth=1
	ldrb	w22, [x15, x5]
	orr	w22, w22, w21
	strb	w22, [x15, x5]
.LBB23_11:                              //   in Loop: Header=BB23_5 Depth=1
	cmp	w10, w9
	b.ge	.LBB23_13
// %bb.12:                              //   in Loop: Header=BB23_5 Depth=1
	ldrb	w22, [x15, x11]
	orr	w22, w22, w21
	strb	w22, [x15, x11]
.LBB23_13:                              //   in Loop: Header=BB23_5 Depth=1
	cbz	w16, .LBB23_15
// %bb.14:                              //   in Loop: Header=BB23_5 Depth=1
	ldrb	w22, [x15, #1]
	orr	w22, w22, w21
	strb	w22, [x15, #1]
.LBB23_15:                              //   in Loop: Header=BB23_5 Depth=1
	ldrb	w22, [x2]
	strb	w22, [x1]
	ldrb	w22, [x4]
	strb	w22, [x2]
	ldrb	w22, [x12]
	cbz	w22, .LBB23_37
.LBB23_16:                              //   in Loop: Header=BB23_5 Depth=1
	mov	w22, wzr
	strb	wzr, [x12]
.LBB23_17:                              //   in Loop: Header=BB23_5 Depth=1
	strb	w22, [x14]
.LBB23_18:                              //   in Loop: Header=BB23_5 Depth=1
	add	x4, x4, #1
	add	x2, x2, #1
	cmp	w11, #1
	add	x1, x1, #1
	add	x14, x14, #1
	add	x12, x12, #1
	b.ne	.LBB23_20
// %bb.19:                              //   in Loop: Header=BB23_5 Depth=1
	add	x15, x15, #1
	b	.LBB23_3
.LBB23_20:                              //   in Loop: Header=BB23_5 Depth=1
	mov	x26, xzr
	add	x22, x3, #1
	add	x24, x15, x7
	add	x25, x15, x19
	b	.LBB23_25
.LBB23_21:                              //   in Loop: Header=BB23_25 Depth=2
	ldrb	w27, [x2, x26]
	strb	w27, [x1, x26]
	ldrb	w27, [x4, x26]
	strb	w27, [x2, x26]
	ldrb	w27, [x12, x26]
	cbz	w27, .LBB23_34
.LBB23_22:                              //   in Loop: Header=BB23_25 Depth=2
	mov	w27, wzr
	strb	wzr, [x12, x26]
.LBB23_23:                              //   in Loop: Header=BB23_25 Depth=2
	strb	w27, [x14, x26]
.LBB23_24:                              //   in Loop: Header=BB23_25 Depth=2
	cmp	w16, w23
	mov	x26, x23
	b.eq	.LBB23_2
.LBB23_25:                              //   Parent Loop BB23_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldrb	w27, [x4, x26]
	ldrb	w28, [x2, x26]
	add	x23, x26, #1
	cmp	w27, w28
	b.eq	.LBB23_24
// %bb.26:                              //   in Loop: Header=BB23_25 Depth=2
	ldrb	w30, [x22, x26]
	cmp	w30, #255
	b.ne	.LBB23_24
// %bb.27:                              //   in Loop: Header=BB23_25 Depth=2
	eor	w27, w28, w27
	cmp	w27, #32
	b.lo	.LBB23_21
// %bb.28:                              //   in Loop: Header=BB23_25 Depth=2
	add	x27, x15, x26
	ldrb	w28, [x27, #1]
	orr	w28, w28, w20
	strb	w28, [x27, #1]
	cbz	w10, .LBB23_30
// %bb.29:                              //   in Loop: Header=BB23_25 Depth=2
	ldrb	w27, [x24, x26]
	orr	w27, w27, w21
	strb	w27, [x24, x26]
.LBB23_30:                              //   in Loop: Header=BB23_25 Depth=2
	cmp	w10, w9
	b.ge	.LBB23_32
// %bb.31:                              //   in Loop: Header=BB23_25 Depth=2
	ldrb	w27, [x25, x26]
	orr	w27, w27, w21
	strb	w27, [x25, x26]
.LBB23_32:                              //   in Loop: Header=BB23_25 Depth=2
	ldrb	w27, [x15, x26]
	cmp	w23, w16
	orr	w27, w27, w21
	strb	w27, [x15, x26]
	b.ge	.LBB23_21
// %bb.33:                              //   in Loop: Header=BB23_25 Depth=2
	add	x27, x15, x26
	ldrb	w28, [x27, #2]
	orr	w28, w28, w21
	strb	w28, [x27, #2]
	b	.LBB23_21
.LBB23_34:                              //   in Loop: Header=BB23_25 Depth=2
	ldrb	w27, [x14, x26]
	cbz	w27, .LBB23_22
// %bb.35:                              //   in Loop: Header=BB23_25 Depth=2
	cmp	w17, w27
	b.le	.LBB23_22
// %bb.36:                              //   in Loop: Header=BB23_25 Depth=2
	sub	w28, w17, w13
	sub	w27, w28, w27
	bic	w27, w27, w27, asr #31
	b	.LBB23_23
.LBB23_37:                              //   in Loop: Header=BB23_5 Depth=1
	ldrb	w22, [x14]
	cbz	w22, .LBB23_16
// %bb.38:                              //   in Loop: Header=BB23_5 Depth=1
	cmp	w17, w22
	b.le	.LBB23_16
// %bb.39:                              //   in Loop: Header=BB23_5 Depth=1
	sub	w23, w17, w13
	sub	w22, w23, w22
	bic	w22, w22, w22, asr #31
	b	.LBB23_17
.LBB23_40:
	ldr	w8, [x0, #1824]
	cmp	w8, #1
	b.gt	.LBB23_42
.LBB23_41:
	ldp	x20, x19, [sp, #80]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #96             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB23_42:
	ldr	x0, [x0]
	adrp	x1, .L.str.176
	add	x1, x1, :lo12:.L.str.176
	adrp	x2, .L.str.155
	add	x2, x2, :lo12:.L.str.155
	bl	_dev_info
	b	.LBB23_41
.Lfunc_end23:
	.size	fast_update_to_auto_image, .Lfunc_end23-fast_update_to_auto_image
                                        // -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	2                               // -- Begin function write_buffer_to_file
	.type	write_buffer_to_file,@function
write_buffer_to_file:                   // @write_buffer_to_file
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #80
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stp	x22, x21, [sp, #48]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             // 16-byte Folded Spill
	mrs	x8, SP_EL0
	mov	x19, x2
	ldr	x8, [x8, #1608]
	cmp	x2, #3
	stur	x8, [x29, #-8]
	stur	w3, [x29, #-12]
	str	xzr, [sp, #8]
	b.hi	.LBB24_2
// %bb.1:
	adrp	x0, .L.str.141
	add	x0, x0, :lo12:.L.str.141
	mov	x1, x19
	bl	_printk
	b	.LBB24_10
.LBB24_2:
	mov	x22, x1
	mov	w1, #1089                       // =0x441
	mov	w2, #420                        // =0x1a4
	mov	x20, x0
	bl	filp_open
	cmn	x0, #4095
	b.lo	.LBB24_4
// %bb.3:
	adrp	x0, .L.str.142
	add	x0, x0, :lo12:.L.str.142
	mov	x1, x20
	bl	_printk
	b	.LBB24_10
.LBB24_4:
	sub	x2, x19, #4
	add	x3, sp, #8
	mov	x1, x22
	mov	x21, x0
	bl	kernel_write
	tbz	x0, #63, .LBB24_6
// %bb.5:
	mov	x1, x0
	adrp	x0, .L.str.143
	add	x0, x0, :lo12:.L.str.143
	b	.LBB24_8
.LBB24_6:
	sub	x1, x29, #12
	add	x3, sp, #8
	mov	x0, x21
	mov	w2, #4                          // =0x4
	bl	kernel_write
	tbz	x0, #63, .LBB24_9
// %bb.7:
	mov	x1, x0
	adrp	x0, .L.str.144
	add	x0, x0, :lo12:.L.str.144
.LBB24_8:
	bl	_printk
	mov	x0, x21
	mov	x1, xzr
	bl	filp_close
	b	.LBB24_10
.LBB24_9:
	mov	x0, x21
	mov	x1, xzr
	bl	filp_close
	adrp	x0, .L.str.145
	add	x0, x0, :lo12:.L.str.145
	mov	x1, x19
	mov	x2, x20
	bl	_printk
.LBB24_10:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1608]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB24_12
// %bb.11:
	ldp	x20, x19, [sp, #64]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #80
	ldr	x30, [x18, #-8]!
	ret
.LBB24_12:
	bl	__stack_chk_fail
.Lfunc_end24:
	.size	write_buffer_to_file, .Lfunc_end24-write_buffer_to_file
                                        // -- End function
	.text
	.p2align	2                               // -- Begin function ebc_io_ctl
	.type	ebc_io_ctl,@function
	.word	720817595                       // 0x2af6cdbb
ebc_io_ctl:                             // @ebc_io_ctl
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #432
	stp	x29, x30, [sp, #352]            // 16-byte Folded Spill
	add	x29, sp, #352
	stp	x28, x25, [sp, #368]            // 16-byte Folded Spill
	stp	x24, x23, [sp, #384]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #400]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #416]            // 16-byte Folded Spill
	mrs	x8, SP_EL0
	adrp	x19, global_ebc
	ldr	x8, [x8, #1608]
	stur	x8, [x29, #-8]
	mov	w8, #28690                      // =0x7012
	ldr	x21, [x19, :lo12:global_ebc]
	ldr	x23, [x0, #32]
	cmp	w1, w8
	stur	wzr, [x29, #-16]
	add	x22, x21, #4, lsl #12           // =16384
	stp	xzr, xzr, [x29, #-32]
	stp	xzr, xzr, [x29, #-48]
	stp	xzr, xzr, [x29, #-64]
	stp	xzr, xzr, [x29, #-80]
	b.le	.LBB25_10
// %bb.1:
	mov	w8, #-28693                     // =0xffff8feb
	add	w8, w1, w8
	cmp	w8, #17
	b.hs	.LBB25_31
.LBB25_2:
	cbz	x2, .LBB25_39
// %bb.3:
	sub	w8, w1, #7, lsl #12             // =28672
	cmp	w8, #37
	b.hi	.LBB25_131
// %bb.4:
	adrp	x9, .LJTI25_0
	add	x9, x9, :lo12:.LJTI25_0
	adr	x10, .LBB25_5
	ldrh	w11, [x9, x8, lsl #1]
	add	x10, x10, x11, lsl #2
	br	x10
.LBB25_5:
	ldr	w8, [x21, #2128]
	cmp	w8, #2
	b.ge	.LBB25_136
.LBB25_6:
	sub	x0, x29, #80
	mov	x19, x2
	mov	x1, x2
	mov	w2, #68                         // =0x44
	sub	x20, x29, #80
	bl	_inline_copy_from_user
	cbnz	w0, .LBB25_120
// %bb.7:
	add	x0, x20, #48
	bl	ebc_empty_buf_get
	cbz	x0, .LBB25_135
// %bb.8:
	ldp	w10, w9, [x21, #188]
	ldrsw	x8, [x0, #4]
	ldr	w11, [x21, #264]
	mov	x20, x0
	stur	wzr, [x29, #-36]
	sub	x1, x29, #80
	mov	x0, x19
	stur	w8, [x29, #-80]
	mov	w2, #68                         // =0x44
	stp	w9, w10, [x29, #-72]
	stur	w11, [x29, #-64]
	ldr	x9, [x23]
	ldr	w8, [x9, x8, lsl #2]
	stur	w8, [x29, #-16]
	bl	_inline_copy_to_user
	cbz	w0, .LBB25_30
// %bb.9:
	mov	x0, x20
	bl	ebc_buf_release
	b	.LBB25_120
.LBB25_10:
	mov	w8, #28677                      // =0x7005
	cmp	w1, w8
	b.le	.LBB25_14
// %bb.11:
	mov	w8, #28687                      // =0x700f
	cmp	w1, w8
	b.gt	.LBB25_22
// %bb.12:
	mov	w8, #-28678                     // =0xffff8ffa
	add	w8, w1, w8
	cmp	w8, #2
	b.lo	.LBB25_2
// %bb.13:
	mov	w8, #28683                      // =0x700b
	cmp	w1, w8
	b.eq	.LBB25_2
	b	.LBB25_131
.LBB25_14:
	sub	w8, w1, #7, lsl #12             // =28672
	cmp	w8, #3
	b.lo	.LBB25_2
// %bb.15:
	mov	w8, #28676                      // =0x7004
	cmp	w1, w8
	b.eq	.LBB25_26
// %bb.16:
	mov	w8, #28677                      // =0x7005
	cmp	w1, w8
	b.ne	.LBB25_131
.LBB25_17:
	bl	ebc_overlay_enable_control
	cbz	w0, .LBB25_19
// %bb.18:
	tbz	w0, #0, .LBB25_20
.LBB25_19:
	ldrb	w8, [x22, #2280]
	and	w8, w8, #0xfe
	strb	w8, [x22, #2280]
.LBB25_20:
	ldr	w8, [x21, #2128]
	tbnz	w8, #31, .LBB25_30
// %bb.21:
	ldr	x0, [x21, #304]
	ldrb	w3, [x22, #2280]
	adrp	x1, .L.str.223
	add	x1, x1, :lo12:.L.str.223
	b	.LBB25_130
.LBB25_22:
	mov	w8, #28688                      // =0x7010
	cmp	w1, w8
	b.eq	.LBB25_2
// %bb.23:
	mov	w8, #28689                      // =0x7011
	cmp	w1, w8
	b.eq	.LBB25_25
// %bb.24:
	mov	w8, #28690                      // =0x7012
	cmp	w1, w8
	b.eq	.LBB25_2
	b	.LBB25_131
.LBB25_25:
	bl	ebc_drop_one_dsp_buf
	cbnz	w0, .LBB25_120
	b	.LBB25_30
.LBB25_26:
	bl	ebc_overlay_enable_control
	cbz	w0, .LBB25_28
// %bb.27:
	tbz	w0, #0, .LBB25_29
.LBB25_28:
	ldrb	w8, [x22, #2280]
	orr	w8, w8, #0x1
	strb	w8, [x22, #2280]
.LBB25_29:
	ldr	w8, [x21, #2128]
	tbz	w8, #31, .LBB25_129
.LBB25_30:
	mov	x0, xzr
	b	.LBB25_88
.LBB25_31:
	mov	w8, #28691                      // =0x7013
	cmp	w1, w8
	b.eq	.LBB25_37
// %bb.32:
	mov	w8, #28692                      // =0x7014
	cmp	w1, w8
	b.ne	.LBB25_131
.LBB25_33:
	ldr	w8, [x21, #2128]
	tbz	w8, #31, .LBB25_132
// %bb.34:
	ldr	w8, [x21, #2152]
	cbz	w8, .LBB25_36
.LBB25_35:
	mov	w0, #3                          // =0x3
	bl	ebc_notify
.LBB25_36:
	mov	x0, xzr
	str	wzr, [x21, #2152]
	b	.LBB25_88
.LBB25_37:
	ldr	w8, [x21, #2128]
	tbz	w8, #31, .LBB25_133
.LBB25_38:
	mov	w0, #2                          // =0x2
	bl	ebc_notify
	mov	w8, #1                          // =0x1
	mov	x0, xzr
	str	w8, [x21, #2152]
	b	.LBB25_88
.LBB25_39:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.202
	add	x1, x1, :lo12:.L.str.202
	adrp	x2, .L__func__.ebc_io_ctl
	add	x2, x2, :lo12:.L__func__.ebc_io_ctl
	bl	_dev_err
	b	.LBB25_120
.LBB25_40:
	mov	x20, x2
	bl	ebc_overlay_enable_control
	mov	w19, w0
	mov	x0, sp
	mov	x1, x20
	mov	w2, #4                          // =0x4
	str	wzr, [sp]
	bl	_inline_copy_from_user
	cbnz	w0, .LBB25_120
// %bb.41:
	tbz	w19, #1, .LBB25_43
// %bb.42:
	ldr	w8, [sp]
	ldrb	w9, [x22, #2280]
	cmp	w8, #0
	and	w9, w9, #0xfffffffd
	cset	w8, ne
	orr	w8, w9, w8, lsl #1
	strb	w8, [x22, #2280]
.LBB25_43:
	ldr	w8, [x21, #2128]
	tbnz	w8, #31, .LBB25_30
// %bb.44:
	ldr	x0, [x21, #304]
	ldr	w3, [sp]
	adrp	x1, .L.str.224
	add	x1, x1, :lo12:.L.str.224
	ldrb	w4, [x22, #2280]
	adrp	x2, .L.str.205
	add	x2, x2, :lo12:.L.str.205
	bl	_dev_info
	b	.LBB25_30
.LBB25_45:
	add	x1, x21, #2112
	b	.LBB25_85
.LBB25_46:
	ldr	w8, [x21, #2128]
	mov	x19, x2
	cmp	w8, #2
	b.ge	.LBB25_134
// %bb.47:
	bl	ebc_empty_osd_buf_get
	cbz	x0, .LBB25_135
.LBB25_48:
	ldp	w10, w9, [x21, #188]
	ldrsw	x8, [x0, #4]
	ldr	w11, [x21, #264]
	sub	x1, x29, #80
	stur	wzr, [x29, #-36]
	mov	x0, x19
	mov	w2, #68                         // =0x44
	stur	w8, [x29, #-80]
	stp	w9, w10, [x29, #-72]
	stur	w11, [x29, #-64]
	ldr	x9, [x23]
	ldr	w8, [x9, x8, lsl #2]
	stur	w8, [x29, #-16]
	b	.LBB25_87
.LBB25_49:
	ldrb	w8, [x21, #2145]
	b	.LBB25_84
.LBB25_50:
	ldrb	w8, [x21, #2144]
	ldr	w9, [x22, #2208]
	cmp	w8, #1
	str	w9, [sp]
	b.ne	.LBB25_30
// %bb.51:
	mov	x0, sp
	mov	x1, x2
	mov	w2, #4                          // =0x4
	bl	_inline_copy_from_user
	cbnz	w0, .LBB25_120
// %bb.52:
	ldr	w3, [sp]
	ldr	w9, [x21, #2128]
	sub	w8, w3, #1
	cmp	w8, #2
	mov	w8, #2                          // =0x2
	csel	w8, w3, w8, lo
	str	w8, [x22, #2208]
	tbnz	w9, #31, .LBB25_30
// %bb.53:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.215
	add	x1, x1, :lo12:.L.str.215
	b	.LBB25_130
.LBB25_54:
	ldp	w8, w9, [x21, #188]
	ldr	w10, [x21, #264]
	sub	x1, x29, #80
	mov	x0, x2
	mov	w2, #68                         // =0x44
	stur	wzr, [x29, #-36]
	stp	w9, w8, [x29, #-72]
	ldp	w8, w9, [x21, #204]
	stur	w10, [x29, #-64]
	stp	w8, w9, [x29, #-44]
	bl	_inline_copy_to_user
	cbz	x0, .LBB25_88
// %bb.55:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.209
	add	x1, x1, :lo12:.L.str.209
	bl	_dev_err
	b	.LBB25_120
.LBB25_56:
	mov	x0, sp
	mov	x1, x2
	mov	w2, #4                          // =0x4
	str	wzr, [sp]
	bl	_inline_copy_from_user
	cbnz	w0, .LBB25_120
// %bb.57:
	ldr	w3, [sp]
	cmp	w3, #11
	b.lo	.LBB25_123
// %bb.58:
	str	wzr, [sp]
	b	.LBB25_125
.LBB25_59:
	ldr	w8, [x21, #2128]
	cmp	w8, #2
	b.ge	.LBB25_137
.LBB25_60:
	sub	x0, x29, #80
	mov	x1, x2
	mov	w2, #68                         // =0x44
	bl	_inline_copy_from_user
	cbnz	x0, .LBB25_120
// %bb.61:
	ldur	w0, [x29, #-80]
	bl	ebc_find_buf_by_id
	cbz	x0, .LBB25_88
// %bb.62:
	ldur	w8, [x29, #-76]
	ldp	w9, w10, [x29, #-60]
	str	w8, [x0, #32]
	ldur	w8, [x29, #-36]
	stp	w9, w10, [x0, #40]
	ldp	w9, w11, [x29, #-52]
	stp	w11, w8, [x0, #52]
	str	w9, [x0, #48]
	bl	ebc_add_to_dsp_buf_list_tail
	b	.LBB25_75
.LBB25_63:
	mov	w8, #-1                         // =0xffffffff
	mov	x0, sp
	mov	x1, x2
	mov	w2, #4                          // =0x4
	str	w8, [sp]
	bl	_inline_copy_from_user
	cbnz	w0, .LBB25_120
// %bb.64:
	ldr	w3, [sp]
	ldr	w8, [x21, #2128]
	str	w3, [x22, #2188]
	tbnz	w8, #31, .LBB25_30
// %bb.65:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.218
	add	x1, x1, :lo12:.L.str.218
	b	.LBB25_130
.LBB25_66:
	mov	x19, x2
	mov	x0, sp
	mov	w1, wzr
	mov	w2, #272                        // =0x110
	bl	memset
	ldr	w25, [x21, #1312]
	ldrb	w8, [x21, #2147]
	ldr	w24, [x21, #1384]
	ldr	w22, [x21, #1528]
	ldr	w20, [x21, #1600]
	tbnz	w8, #0, .LBB25_68
// %bb.67:
	ldrb	w8, [x21, #2144]
	cmp	w8, #1
	b.ne	.LBB25_120
.LBB25_68:
	mov	x0, sp
	mov	x1, x19
	mov	w2, #272                        // =0x110
	bl	_inline_copy_from_user
	cbnz	w0, .LBB25_120
// %bb.69:
	ldp	w8, w9, [x21, #188]
	str	w25, [sp]
	mov	x1, sp
	mov	x0, x19
	mov	w2, #272                        // =0x110
	stp	w9, w8, [sp, #8]
	ldr	x10, [x23]
	ldr	w11, [x10, w25, sxtw #2]
	stp	w9, w8, [sp, #76]
	stp	w11, w24, [sp, #64]
	ldr	w11, [x10, w24, sxtw #2]
	stp	w9, w8, [sp, #144]
	stp	w11, w22, [sp, #132]
	ldr	w11, [x10, w22, sxtw #2]
	stp	w9, w8, [sp, #212]
	stp	w11, w20, [sp, #200]
	ldr	w8, [x10, w20, sxtw #2]
	str	w8, [sp, #268]
	b	.LBB25_117
.LBB25_70:
	ldr	w8, [x21, #2128]
	cmp	w8, #2
	b.ge	.LBB25_138
.LBB25_71:
	ldrb	w8, [x21, #2147]
	cmp	w8, #1
	b.ne	.LBB25_120
// %bb.72:
	sub	x0, x29, #80
	mov	x1, x2
	mov	w2, #68                         // =0x44
	bl	_inline_copy_from_user
	cbnz	x0, .LBB25_120
// %bb.73:
	bl	ebc_osd_buf_clone
	cbz	x0, .LBB25_88
// %bb.74:
	ldur	w8, [x29, #-76]
	ldur	w9, [x29, #-60]
	str	w8, [x0, #32]
	ldur	x8, [x29, #-56]
	str	w9, [x0, #40]
	ldur	w9, [x29, #-48]
	stur	x8, [x0, #44]
	str	w9, [x0, #52]
	bl	ebc_add_to_osd_buf_list_tail
.LBB25_75:
	ldr	x8, [x19, :lo12:global_ebc]
	add	x0, x8, #432
	bl	cancel_delayed_work_sync
	adrp	x8, ebc_task
	ldr	x0, [x8, :lo12:ebc_task]
	bl	wake_up_process
	b	.LBB25_30
.LBB25_76:
	mov	x0, sp
	mov	x1, x2
	mov	w2, #4                          // =0x4
	str	wzr, [sp]
	bl	_inline_copy_from_user
	cbnz	w0, .LBB25_120
// %bb.77:
	ldr	w8, [sp]
	ldr	w9, [x21, #2128]
	cmp	w8, #0
	cset	w10, ne
	strb	w10, [x22, #2248]
	tbnz	w9, #31, .LBB25_30
// %bb.78:
	cmp	w8, #0
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.221
	add	x1, x1, :lo12:.L.str.221
	cset	w3, ne
	b	.LBB25_130
.LBB25_79:
	mov	x0, sp
	mov	x1, x2
	mov	w2, #4                          // =0x4
	str	wzr, [sp]
	bl	_inline_copy_from_user
	cbnz	w0, .LBB25_120
// %bb.80:
	ldrsw	x8, [sp]
	mov	w9, #26215                      // =0x6667
	movk	w9, #26214, lsl #16
	smull	x9, w8, w9
	add	w10, w8, #9
	cmp	w10, #19
	mov	w10, #39                        // =0x27
	ccmp	x8, x10, #0, hs
	lsr	x11, x9, #63
	asr	x9, x9, #34
	add	w8, w9, w11
	ldr	w9, [x21, #2128]
	csinc	w3, w8, wzr, le
	str	w3, [x22, #2244]
	tbnz	w9, #31, .LBB25_30
// %bb.81:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.220
	add	x1, x1, :lo12:.L.str.220
	b	.LBB25_130
.LBB25_82:
	mov	x19, x2
	bl	epd_lut_get_wf_bit
	cmp	w0, #32
	mov	x1, sp
	mov	x0, x19
	cset	w8, eq
	str	w8, [sp]
	b	.LBB25_86
.LBB25_83:
	mov	w8, #1                          // =0x1
.LBB25_84:
	str	w8, [sp]
	mov	x1, sp
.LBB25_85:
	mov	x0, x2
.LBB25_86:
	mov	w2, #4                          // =0x4
.LBB25_87:
	bl	_inline_copy_to_user
.LBB25_88:
	sxtw	x0, w0
	b	.LBB25_121
.LBB25_89:
	ldrb	w8, [x21, #2144]
	ldr	w9, [x22, #2196]
	cmp	w8, #1
	str	w9, [sp]
	b.ne	.LBB25_30
// %bb.90:
	mov	x0, sp
	mov	x1, x2
	mov	w2, #4                          // =0x4
	bl	_inline_copy_from_user
	cbnz	w0, .LBB25_120
// %bb.91:
	ldr	w8, [sp]
	ldr	w9, [x21, #2128]
	cmn	w8, #1
	csinc	w3, w8, wzr, ne
	str	w3, [x22, #2196]
	tbnz	w9, #31, .LBB25_30
// %bb.92:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.213
	add	x1, x1, :lo12:.L.str.213
	b	.LBB25_130
.LBB25_93:
	ldrb	w8, [x21, #2149]
	str	wzr, [sp]
	cmp	w8, #1
	b.ne	.LBB25_30
// %bb.94:
	mov	x0, sp
	mov	x1, x2
	mov	w2, #4                          // =0x4
	bl	_inline_copy_from_user
	cbnz	w0, .LBB25_120
// %bb.95:
	ldr	w8, [sp]
	str	w8, [x22, #2164]
	b	.LBB25_30
.LBB25_96:
	ldrb	w8, [x21, #2144]
	ldr	w9, [x22, #2204]
	cmp	w8, #1
	str	w9, [sp]
	b.ne	.LBB25_30
// %bb.97:
	mov	x0, sp
	mov	x1, x2
	mov	w2, #4                          // =0x4
	bl	_inline_copy_from_user
	cbnz	w0, .LBB25_120
// %bb.98:
	ldr	w3, [sp]
	ldr	w8, [x21, #2128]
	cmn	w3, #1
	csinc	w9, w3, wzr, ne
	str	w9, [x22, #2204]
	tbnz	w8, #31, .LBB25_30
// %bb.99:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.214
	add	x1, x1, :lo12:.L.str.214
	b	.LBB25_130
.LBB25_100:
	mov	x0, sp
	mov	x1, x2
	mov	w2, #4                          // =0x4
	str	wzr, [sp]
	bl	_inline_copy_from_user
	cbnz	w0, .LBB25_120
// %bb.101:
	ldr	w3, [sp]
	ldr	w8, [x21, #548]
	cmp	w3, #1
	b.lt	.LBB25_103
// %bb.102:
	cmp	w3, w8
	b.le	.LBB25_104
.LBB25_103:
	mov	w3, w8
	str	w8, [sp]
.LBB25_104:
	ldr	w8, [x21, #2128]
	str	w3, [x22, #2268]
	tbnz	w8, #31, .LBB25_30
// %bb.105:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.216
	add	x1, x1, :lo12:.L.str.216
	b	.LBB25_130
.LBB25_106:
	ldrb	w8, [x21, #2144]
	ldr	w9, [x22, #2200]
	cmp	w8, #1
	str	w9, [sp]
	b.ne	.LBB25_30
// %bb.107:
	mov	x0, sp
	mov	x1, x2
	mov	w2, #4                          // =0x4
	bl	_inline_copy_from_user
	cbnz	w0, .LBB25_120
// %bb.108:
	ldr	w3, [sp]
	ldr	w8, [x21, #2128]
	str	w3, [x22, #2200]
	tbnz	w8, #31, .LBB25_30
// %bb.109:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.212
	add	x1, x1, :lo12:.L.str.212
	b	.LBB25_130
.LBB25_110:
	stp	xzr, xzr, [sp, #48]
	mov	x19, x2
	stp	xzr, xzr, [sp, #32]
	stp	xzr, xzr, [sp, #16]
	stp	xzr, xzr, [sp]
	bl	epd_lut_get_wf_version
	mov	x2, x0
	adrp	x1, .L.str.203
	add	x1, x1, :lo12:.L.str.203
	mov	x0, sp
	bl	sprintf
	mov	x1, sp
	mov	x0, x19
	mov	w2, #64                         // =0x40
	b	.LBB25_87
.LBB25_111:
	mov	x0, sp
	mov	x1, x2
	mov	w2, #4                          // =0x4
	str	wzr, [sp]
	bl	_inline_copy_from_user
	cbnz	w0, .LBB25_120
// %bb.112:
	ldr	w8, [sp]
	ldr	w9, [x21, #2128]
	cmp	w8, #0
	cset	w10, ne
	strb	w10, [x22, #2192]
	tbnz	w9, #31, .LBB25_30
// %bb.113:
	cmp	w8, #0
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.219
	add	x1, x1, :lo12:.L.str.219
	cset	w3, ne
	b	.LBB25_130
.LBB25_114:
	sub	x0, x29, #80
	mov	x19, x2
	mov	x1, x2
	mov	w2, #68                         // =0x44
	bl	_inline_copy_from_user
	cbnz	w0, .LBB25_120
// %bb.115:
	ldr	x8, [x21, #1800]
	cbz	x8, .LBB25_135
// %bb.116:
	ldp	w10, w9, [x21, #188]
	ldrsw	x8, [x8, #4]
	ldr	w11, [x21, #264]
	sub	x1, x29, #80
	stur	wzr, [x29, #-36]
	mov	x0, x19
	mov	w2, #68                         // =0x44
	stur	w8, [x29, #-80]
	stp	w9, w10, [x29, #-72]
	stur	w11, [x29, #-64]
	ldr	x9, [x23]
	ldr	w8, [x9, x8, lsl #2]
	stur	w8, [x29, #-16]
.LBB25_117:
	bl	_inline_copy_to_user
	cbnz	w0, .LBB25_120
	b	.LBB25_30
.LBB25_118:
	ldrb	w8, [x21, #2145]
	mov	w9, #1                          // =0x1
	str	w9, [sp]
	cmp	w8, #1
	b.ne	.LBB25_30
// %bb.119:
	mov	x0, sp
	mov	x1, x2
	mov	w2, #4                          // =0x4
	bl	_inline_copy_from_user
	cbz	w0, .LBB25_128
.LBB25_120:
	mov	x0, #-14                        // =0xfffffffffffffff2
.LBB25_121:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1608]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB25_139
// %bb.122:
	ldp	x20, x19, [sp, #416]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #400]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #384]            // 16-byte Folded Reload
	ldp	x28, x25, [sp, #368]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #352]            // 16-byte Folded Reload
	add	sp, sp, #432
	ldr	x30, [x18, #-8]!
	ret
.LBB25_123:
	cbz	w3, .LBB25_125
// %bb.124:
	mov	w8, #1                          // =0x1
	b	.LBB25_126
.LBB25_125:
	mov	w8, wzr
	mov	w3, wzr
.LBB25_126:
	ldr	w9, [x21, #2128]
	strb	w8, [x22, #2261]
	str	w3, [x22, #2272]
	tbnz	w9, #31, .LBB25_30
// %bb.127:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.217
	add	x1, x1, :lo12:.L.str.217
	b	.LBB25_130
.LBB25_128:
	ldr	w8, [sp]
	str	w8, [x22, #2240]
	b	.LBB25_30
.LBB25_129:
	ldr	x0, [x21, #304]
	ldrb	w3, [x22, #2280]
	adrp	x1, .L.str.222
	add	x1, x1, :lo12:.L.str.222
.LBB25_130:
	adrp	x2, .L.str.205
	add	x2, x2, :lo12:.L.str.205
	bl	_dev_info
	b	.LBB25_30
.LBB25_131:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.225
	add	x1, x1, :lo12:.L.str.225
	adrp	x2, .L__func__.ebc_io_ctl
	add	x2, x2, :lo12:.L__func__.ebc_io_ctl
	bl	_dev_err
	b	.LBB25_30
.LBB25_132:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.211
	add	x1, x1, :lo12:.L.str.211
	adrp	x2, .L.str.205
	add	x2, x2, :lo12:.L.str.205
	bl	_dev_info
	ldr	w8, [x21, #2152]
	cbnz	w8, .LBB25_35
	b	.LBB25_36
.LBB25_133:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.210
	add	x1, x1, :lo12:.L.str.210
	adrp	x2, .L.str.205
	add	x2, x2, :lo12:.L.str.205
	bl	_dev_info
	b	.LBB25_38
.LBB25_134:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.204
	add	x1, x1, :lo12:.L.str.204
	adrp	x2, .L.str.205
	add	x2, x2, :lo12:.L.str.205
	bl	_dev_info
	bl	ebc_empty_osd_buf_get
	cbnz	x0, .LBB25_48
.LBB25_135:
	mov	x0, #-1                         // =0xffffffffffffffff
	b	.LBB25_121
.LBB25_136:
	ldr	x0, [x21, #304]
	adrp	x8, .L.str.205
	add	x8, x8, :lo12:.L.str.205
	adrp	x1, .L.str.206
	add	x1, x1, :lo12:.L.str.206
	mov	x19, x2
	mov	x2, x8
	bl	_dev_info
	mov	x2, x19
	b	.LBB25_6
.LBB25_137:
	ldr	x0, [x21, #304]
	adrp	x8, .L.str.205
	add	x8, x8, :lo12:.L.str.205
	adrp	x1, .L.str.207
	add	x1, x1, :lo12:.L.str.207
	mov	x20, x2
	mov	x2, x8
	bl	_dev_info
	mov	x2, x20
	b	.LBB25_60
.LBB25_138:
	ldr	x0, [x21, #304]
	adrp	x8, .L.str.205
	add	x8, x8, :lo12:.L.str.205
	adrp	x1, .L.str.208
	add	x1, x1, :lo12:.L.str.208
	mov	x20, x2
	mov	x2, x8
	bl	_dev_info
	mov	x2, x20
	b	.LBB25_71
.LBB25_139:
	bl	__stack_chk_fail
.Lfunc_end25:
	.size	ebc_io_ctl, .Lfunc_end25-ebc_io_ctl
	.section	.rodata,"a",@progbits
	.p2align	1, 0x0
.LJTI25_0:
	.hword	(.LBB25_5-.LBB25_5)>>2
	.hword	(.LBB25_59-.LBB25_5)>>2
	.hword	(.LBB25_54-.LBB25_5)>>2
	.hword	(.LBB25_131-.LBB25_5)>>2
	.hword	(.LBB25_26-.LBB25_5)>>2
	.hword	(.LBB25_17-.LBB25_5)>>2
	.hword	(.LBB25_46-.LBB25_5)>>2
	.hword	(.LBB25_70-.LBB25_5)>>2
	.hword	(.LBB25_131-.LBB25_5)>>2
	.hword	(.LBB25_131-.LBB25_5)>>2
	.hword	(.LBB25_131-.LBB25_5)>>2
	.hword	(.LBB25_66-.LBB25_5)>>2
	.hword	(.LBB25_131-.LBB25_5)>>2
	.hword	(.LBB25_131-.LBB25_5)>>2
	.hword	(.LBB25_131-.LBB25_5)>>2
	.hword	(.LBB25_131-.LBB25_5)>>2
	.hword	(.LBB25_83-.LBB25_5)>>2
	.hword	(.LBB25_25-.LBB25_5)>>2
	.hword	(.LBB25_45-.LBB25_5)>>2
	.hword	(.LBB25_37-.LBB25_5)>>2
	.hword	(.LBB25_33-.LBB25_5)>>2
	.hword	(.LBB25_106-.LBB25_5)>>2
	.hword	(.LBB25_96-.LBB25_5)>>2
	.hword	(.LBB25_49-.LBB25_5)>>2
	.hword	(.LBB25_100-.LBB25_5)>>2
	.hword	(.LBB25_56-.LBB25_5)>>2
	.hword	(.LBB25_63-.LBB25_5)>>2
	.hword	(.LBB25_111-.LBB25_5)>>2
	.hword	(.LBB25_79-.LBB25_5)>>2
	.hword	(.LBB25_76-.LBB25_5)>>2
	.hword	(.LBB25_114-.LBB25_5)>>2
	.hword	(.LBB25_82-.LBB25_5)>>2
	.hword	(.LBB25_118-.LBB25_5)>>2
	.hword	(.LBB25_89-.LBB25_5)>>2
	.hword	(.LBB25_93-.LBB25_5)>>2
	.hword	(.LBB25_110-.LBB25_5)>>2
	.hword	(.LBB25_50-.LBB25_5)>>2
	.hword	(.LBB25_40-.LBB25_5)>>2
                                        // -- End function
	.text
	.p2align	2                               // -- Begin function ebc_open
	.type	ebc_open,@function
	.word	2552825629                      // 0x9829071d
ebc_open:                               // @ebc_open
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-96]!           // 16-byte Folded Spill
	adrp	x9, kmalloc_caches+24
	adrp	x8, global_ebc
	stp	x22, x21, [sp, #64]             // 16-byte Folded Spill
	ldr	x0, [x9, :lo12:kmalloc_caches+24]
	stp	x20, x19, [sp, #80]             // 16-byte Folded Spill
	ldr	x22, [x8, :lo12:global_ebc]
	mov	x19, x1
	mov	w1, #3520                       // =0xdc0
	mov	w2, #8                          // =0x8
	str	x27, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	stp	x26, x25, [sp, #32]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             // 16-byte Folded Spill
	bl	__kmalloc_cache_noprof
	cbz	x0, .LBB26_39
// %bb.1:
	ldrsw	x8, [x22, #556]
	mov	x20, x0
	mov	w1, #3520                       // =0xdc0
	lsl	x0, x8, #2
	bl	__kmalloc_noprof
	str	x0, [x20]
	cbz	x0, .LBB26_38
// %bb.2:
	ldr	w8, [x22, #560]
	adrp	x23, get_file.__already_done
	cmp	w8, #1
	b.lt	.LBB26_12
// %bb.3:
	mov	x24, xzr
	add	x25, x22, #744
	mov	w26, #1                         // =0x1
	adrp	x21, .L.str.226
	add	x21, x21, :lo12:.L.str.226
	b	.LBB26_6
.LBB26_4:                               //   in Loop: Header=BB26_6 Depth=1
	mov	w1, #524288                     // =0x80000
	bl	dma_buf_fd
	ldr	x8, [x20]
	ldursw	x9, [x25, #-8]
	str	w0, [x8, x9, lsl #2]
	ldr	w8, [x22, #560]
.LBB26_5:                               //   in Loop: Header=BB26_6 Depth=1
	add	x24, x24, #1
	add	x25, x25, #72
	cmp	x24, w8, sxtw
	b.ge	.LBB26_12
.LBB26_6:                               // =>This Inner Loop Header: Depth=1
	ldur	x9, [x25, #-24]
	cbz	x9, .LBB26_5
// %bb.7:                               //   in Loop: Header=BB26_6 Depth=1
	ldr	x0, [x25]
	ldr	x9, [x0, #8]
	//APP
.Ltmp33:
	b	.LBB26_11
.Ltmp34:
	.section	.altinstructions,"a",@progbits
.Ltmp35:
	.word	.Ltmp33-.Ltmp35
.Ltmp36:
	.word	alt_cb_patch_nops-.Ltmp36
	.hword	32805
	.byte	.Ltmp34-.Ltmp33
	.byte	.Ltmp37-.Ltmp38
	.text

.Ltmp38:
.Ltmp37:

	//NO_APP
// %bb.8:                               //   in Loop: Header=BB26_6 Depth=1
	//APP
	ldadd	x26, x8, [x9]
	//NO_APP
	cbnz	x8, .LBB26_4
.LBB26_9:                               //   in Loop: Header=BB26_6 Depth=1
	ldrb	w8, [x23, :lo12:get_file.__already_done]
	tbnz	w8, #0, .LBB26_4
// %bb.10:                              //   in Loop: Header=BB26_6 Depth=1
	mov	x27, x0
	mov	x0, x21
	strb	w26, [x23, :lo12:get_file.__already_done]
	bl	__warn_printk
	mov	x0, x27
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp39:
.Ltmp41:
	.word	.Ltmp40-.Ltmp41
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp42:
	.ascii	"include/linux/fs.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp43:
	.word	.Ltmp42-.Ltmp43
	.hword	1098
	.hword	2313
	.p2align	2, 0x0
	.text
.Ltmp40:
	brk	#0x800
	//NO_APP
	b	.LBB26_4
.LBB26_11:                              // Block address taken
                                        //   in Loop: Header=BB26_6 Depth=1
                                        // Label of block must be emitted
	//APP
	// atomic64_fetch_add_relaxed
	prfm	pstl1strm, [x9]
.Ltmp44:
	ldxr	x8, [x9]
	add	x10, x8, #1
	stxr	w11, x10, [x9]
	cbnz	w11, .Ltmp44

	//NO_APP
	cbz	x8, .LBB26_9
	b	.LBB26_4
.LBB26_12:
	ldr	x8, [x22, #1152]
	cbz	x8, .LBB26_17
// %bb.13:
	ldr	x0, [x22, #1176]
	ldr	x8, [x0, #8]
	//APP
.Ltmp45:
	b	.LBB26_46
.Ltmp46:
	.section	.altinstructions,"a",@progbits
.Ltmp47:
	.word	.Ltmp45-.Ltmp47
.Ltmp48:
	.word	alt_cb_patch_nops-.Ltmp48
	.hword	32805
	.byte	.Ltmp46-.Ltmp45
	.byte	.Ltmp49-.Ltmp50
	.text

.Ltmp50:
.Ltmp49:

	//NO_APP
// %bb.14:
	mov	w9, #1                          // =0x1
	//APP
	ldadd	x9, x9, [x8]
	//NO_APP
	cbnz	x9, .LBB26_16
.LBB26_15:
	ldrb	w8, [x23, :lo12:get_file.__already_done]
	tbz	w8, #0, .LBB26_41
.LBB26_16:
	mov	w1, #524288                     // =0x80000
	bl	dma_buf_fd
	ldr	x8, [x20]
	ldrsw	x9, [x22, #1168]
	str	w0, [x8, x9, lsl #2]
.LBB26_17:
	ldr	x8, [x22, #1296]
	cbz	x8, .LBB26_22
// %bb.18:
	ldr	x0, [x22, #1320]
	ldr	x8, [x0, #8]
	//APP
.Ltmp51:
	b	.LBB26_47
.Ltmp52:
	.section	.altinstructions,"a",@progbits
.Ltmp53:
	.word	.Ltmp51-.Ltmp53
.Ltmp54:
	.word	alt_cb_patch_nops-.Ltmp54
	.hword	32805
	.byte	.Ltmp52-.Ltmp51
	.byte	.Ltmp55-.Ltmp56
	.text

.Ltmp56:
.Ltmp55:

	//NO_APP
// %bb.19:
	mov	w9, #1                          // =0x1
	//APP
	ldadd	x9, x9, [x8]
	//NO_APP
	cbnz	x9, .LBB26_21
.LBB26_20:
	ldrb	w8, [x23, :lo12:get_file.__already_done]
	tbz	w8, #0, .LBB26_42
.LBB26_21:
	mov	w1, #524288                     // =0x80000
	bl	dma_buf_fd
	ldr	x8, [x20]
	ldrsw	x9, [x22, #1312]
	str	w0, [x8, x9, lsl #2]
.LBB26_22:
	ldr	x8, [x22, #1368]
	cbz	x8, .LBB26_27
// %bb.23:
	ldr	x0, [x22, #1392]
	ldr	x8, [x0, #8]
	//APP
.Ltmp57:
	b	.LBB26_48
.Ltmp58:
	.section	.altinstructions,"a",@progbits
.Ltmp59:
	.word	.Ltmp57-.Ltmp59
.Ltmp60:
	.word	alt_cb_patch_nops-.Ltmp60
	.hword	32805
	.byte	.Ltmp58-.Ltmp57
	.byte	.Ltmp61-.Ltmp62
	.text

.Ltmp62:
.Ltmp61:

	//NO_APP
// %bb.24:
	mov	w9, #1                          // =0x1
	//APP
	ldadd	x9, x9, [x8]
	//NO_APP
	cbnz	x9, .LBB26_26
.LBB26_25:
	ldrb	w8, [x23, :lo12:get_file.__already_done]
	tbz	w8, #0, .LBB26_43
.LBB26_26:
	mov	w1, #524288                     // =0x80000
	bl	dma_buf_fd
	ldr	x8, [x20]
	ldrsw	x9, [x22, #1384]
	str	w0, [x8, x9, lsl #2]
.LBB26_27:
	ldr	x8, [x22, #1512]
	cbz	x8, .LBB26_32
// %bb.28:
	ldr	x0, [x22, #1536]
	ldr	x8, [x0, #8]
	//APP
.Ltmp63:
	b	.LBB26_49
.Ltmp64:
	.section	.altinstructions,"a",@progbits
.Ltmp65:
	.word	.Ltmp63-.Ltmp65
.Ltmp66:
	.word	alt_cb_patch_nops-.Ltmp66
	.hword	32805
	.byte	.Ltmp64-.Ltmp63
	.byte	.Ltmp67-.Ltmp68
	.text

.Ltmp68:
.Ltmp67:

	//NO_APP
// %bb.29:
	mov	w9, #1                          // =0x1
	//APP
	ldadd	x9, x9, [x8]
	//NO_APP
	cbnz	x9, .LBB26_31
.LBB26_30:
	ldrb	w8, [x23, :lo12:get_file.__already_done]
	tbz	w8, #0, .LBB26_44
.LBB26_31:
	mov	w1, #524288                     // =0x80000
	bl	dma_buf_fd
	ldr	x8, [x20]
	ldrsw	x9, [x22, #1528]
	str	w0, [x8, x9, lsl #2]
.LBB26_32:
	ldr	x8, [x22, #1584]
	cbz	x8, .LBB26_37
// %bb.33:
	ldr	x0, [x22, #1608]
	ldr	x8, [x0, #8]
	//APP
.Ltmp69:
	b	.LBB26_50
.Ltmp70:
	.section	.altinstructions,"a",@progbits
.Ltmp71:
	.word	.Ltmp69-.Ltmp71
.Ltmp72:
	.word	alt_cb_patch_nops-.Ltmp72
	.hword	32805
	.byte	.Ltmp70-.Ltmp69
	.byte	.Ltmp73-.Ltmp74
	.text

.Ltmp74:
.Ltmp73:

	//NO_APP
// %bb.34:
	mov	w9, #1                          // =0x1
	//APP
	ldadd	x9, x9, [x8]
	//NO_APP
	cbnz	x9, .LBB26_36
.LBB26_35:
	ldrb	w8, [x23, :lo12:get_file.__already_done]
	tbz	w8, #0, .LBB26_45
.LBB26_36:
	mov	w1, #524288                     // =0x80000
	bl	dma_buf_fd
	ldr	x8, [x20]
	ldrsw	x9, [x22, #1600]
	str	w0, [x8, x9, lsl #2]
.LBB26_37:
	mov	w0, wzr
	str	x20, [x19, #32]
	str	xzr, [x19, #112]
	b	.LBB26_40
.LBB26_38:
	mov	x0, x20
	bl	kfree
.LBB26_39:
	mov	w0, #-12                        // =0xfffffff4
.LBB26_40:
	ldp	x20, x19, [sp, #80]             // 16-byte Folded Reload
	ldr	x27, [sp, #16]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #64]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #96             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB26_41:
	mov	w8, #1                          // =0x1
	mov	x21, x0
	strb	w8, [x23, :lo12:get_file.__already_done]
	adrp	x8, .L.str.226
	add	x8, x8, :lo12:.L.str.226
	mov	x0, x8
	bl	__warn_printk
	mov	x0, x21
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp75:
.Ltmp77:
	.word	.Ltmp76-.Ltmp77
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp78:
	.ascii	"include/linux/fs.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp79:
	.word	.Ltmp78-.Ltmp79
	.hword	1098
	.hword	2313
	.p2align	2, 0x0
	.text
.Ltmp76:
	brk	#0x800
	//NO_APP
	b	.LBB26_16
.LBB26_42:
	mov	w8, #1                          // =0x1
	mov	x21, x0
	strb	w8, [x23, :lo12:get_file.__already_done]
	adrp	x8, .L.str.226
	add	x8, x8, :lo12:.L.str.226
	mov	x0, x8
	bl	__warn_printk
	mov	x0, x21
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp80:
.Ltmp82:
	.word	.Ltmp81-.Ltmp82
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp83:
	.ascii	"include/linux/fs.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp84:
	.word	.Ltmp83-.Ltmp84
	.hword	1098
	.hword	2313
	.p2align	2, 0x0
	.text
.Ltmp81:
	brk	#0x800
	//NO_APP
	b	.LBB26_21
.LBB26_43:
	mov	w8, #1                          // =0x1
	mov	x21, x0
	strb	w8, [x23, :lo12:get_file.__already_done]
	adrp	x8, .L.str.226
	add	x8, x8, :lo12:.L.str.226
	mov	x0, x8
	bl	__warn_printk
	mov	x0, x21
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp85:
.Ltmp87:
	.word	.Ltmp86-.Ltmp87
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp88:
	.ascii	"include/linux/fs.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp89:
	.word	.Ltmp88-.Ltmp89
	.hword	1098
	.hword	2313
	.p2align	2, 0x0
	.text
.Ltmp86:
	brk	#0x800
	//NO_APP
	b	.LBB26_26
.LBB26_44:
	mov	w8, #1                          // =0x1
	mov	x21, x0
	strb	w8, [x23, :lo12:get_file.__already_done]
	adrp	x8, .L.str.226
	add	x8, x8, :lo12:.L.str.226
	mov	x0, x8
	bl	__warn_printk
	mov	x0, x21
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp90:
.Ltmp92:
	.word	.Ltmp91-.Ltmp92
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp93:
	.ascii	"include/linux/fs.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp94:
	.word	.Ltmp93-.Ltmp94
	.hword	1098
	.hword	2313
	.p2align	2, 0x0
	.text
.Ltmp91:
	brk	#0x800
	//NO_APP
	b	.LBB26_31
.LBB26_45:
	mov	w8, #1                          // =0x1
	mov	x21, x0
	strb	w8, [x23, :lo12:get_file.__already_done]
	adrp	x8, .L.str.226
	add	x8, x8, :lo12:.L.str.226
	mov	x0, x8
	bl	__warn_printk
	mov	x0, x21
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp95:
.Ltmp97:
	.word	.Ltmp96-.Ltmp97
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp98:
	.ascii	"include/linux/fs.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp99:
	.word	.Ltmp98-.Ltmp99
	.hword	1098
	.hword	2313
	.p2align	2, 0x0
	.text
.Ltmp96:
	brk	#0x800
	//NO_APP
	b	.LBB26_36
.LBB26_46:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	// atomic64_fetch_add_relaxed
	prfm	pstl1strm, [x8]
.Ltmp100:
	ldxr	x9, [x8]
	add	x10, x9, #1
	stxr	w11, x10, [x8]
	cbnz	w11, .Ltmp100

	//NO_APP
	cbz	x9, .LBB26_15
	b	.LBB26_16
.LBB26_47:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	// atomic64_fetch_add_relaxed
	prfm	pstl1strm, [x8]
.Ltmp101:
	ldxr	x9, [x8]
	add	x10, x9, #1
	stxr	w11, x10, [x8]
	cbnz	w11, .Ltmp101

	//NO_APP
	cbz	x9, .LBB26_20
	b	.LBB26_21
.LBB26_48:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	// atomic64_fetch_add_relaxed
	prfm	pstl1strm, [x8]
.Ltmp102:
	ldxr	x9, [x8]
	add	x10, x9, #1
	stxr	w11, x10, [x8]
	cbnz	w11, .Ltmp102

	//NO_APP
	cbz	x9, .LBB26_25
	b	.LBB26_26
.LBB26_49:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	// atomic64_fetch_add_relaxed
	prfm	pstl1strm, [x8]
.Ltmp103:
	ldxr	x9, [x8]
	add	x10, x9, #1
	stxr	w11, x10, [x8]
	cbnz	w11, .Ltmp103

	//NO_APP
	cbz	x9, .LBB26_30
	b	.LBB26_31
.LBB26_50:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	// atomic64_fetch_add_relaxed
	prfm	pstl1strm, [x8]
.Ltmp104:
	ldxr	x9, [x8]
	add	x10, x9, #1
	stxr	w11, x10, [x8]
	cbnz	w11, .Ltmp104

	//NO_APP
	cbz	x9, .LBB26_35
	b	.LBB26_36
.Lfunc_end26:
	.size	ebc_open, .Lfunc_end26-ebc_open
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_release
	.type	ebc_release,@function
	.word	2552825629                      // 0x9829071d
ebc_release:                            // @ebc_release
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	ldr	x19, [x1, #32]
	mov	x29, sp
	ldr	x0, [x19]
	cbz	x0, .LBB27_2
// %bb.1:
	bl	kfree
.LBB27_2:
	mov	x0, x19
	bl	kfree
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	mov	w0, wzr
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end27:
	.size	ebc_release, .Lfunc_end27-ebc_release
                                        // -- End function
	.p2align	2                               // -- Begin function _inline_copy_to_user
	.type	_inline_copy_to_user,@function
_inline_copy_to_user:                   // @_inline_copy_to_user
// %bb.0:
	//APP
	mrs	x8, SP_EL0
	//NO_APP
	ldrb	w9, [x8, #70]
	tbnz	w9, #5, .LBB28_2
// %bb.1:
	ldr	x10, [x8]
	mov	x9, x0
	tbz	w10, #26, .LBB28_3
.LBB28_2:
	lsl	x9, x0, #8
	and	x9, x0, x9, asr #8
.LBB28_3:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x10, #549755813888              // =0x8000000000
	mov	x29, sp
	cmp	x2, x10
	b.hi	.LBB28_15
// %bb.4:
	sub	x10, x10, x2
	cmp	x10, x9
	b.lo	.LBB28_15
// %bb.5:
	//APP
.Ltmp105:
	nop
.Ltmp106:
	.section	.altinstructions,"a",@progbits
.Ltmp107:
	.word	.Ltmp105-.Ltmp107
.Ltmp109:
	.word	.Ltmp108-.Ltmp109
	.hword	40
	.byte	.Ltmp106-.Ltmp105
	.byte	.Ltmp110-.Ltmp108
	.text

	.text	1
.Ltmp108:
	b	.LBB28_10
.Ltmp110:
.Ltmp111:
.org (.Ltmp111-(.Ltmp110-.Ltmp108))+(.Ltmp106-.Ltmp105), 0
.Ltmp112:
.org (.Ltmp112-(.Ltmp106-.Ltmp105))+(.Ltmp110-.Ltmp108), 0
	.text


	//NO_APP
// %bb.6:
	//APP
.Ltmp113:
	nop
.Ltmp114:
	.section	.altinstructions,"a",@progbits
.Ltmp115:
	.word	.Ltmp113-.Ltmp115
.Ltmp117:
	.word	.Ltmp116-.Ltmp117
	.hword	31
	.byte	.Ltmp114-.Ltmp113
	.byte	.Ltmp118-.Ltmp116
	.text

	.text	1
.Ltmp116:
	b	.LBB28_16
.Ltmp118:
.Ltmp119:
.org (.Ltmp119-(.Ltmp118-.Ltmp116))+(.Ltmp114-.Ltmp113), 0
.Ltmp120:
.org (.Ltmp120-(.Ltmp114-.Ltmp113))+(.Ltmp118-.Ltmp116), 0
	.text


	//NO_APP
// %bb.7:
	//APP
	mrs	x9, DAIF
	//NO_APP
	//APP
	//NO_APP
	//APP
	msr	DAIFSet, #3
	//NO_APP
	//APP
	//NO_APP
.LBB28_8:
	ldr	x8, [x8, #8]
	//APP
	mrs	x10, TTBR1_EL1
	//NO_APP
	mov	x11, x8
	bfxil	x11, x10, #0, #48
	//APP
	msr	TTBR1_EL1, x11
	//NO_APP
	//APP
	msr	TTBR0_EL1, x8
	//NO_APP
	//APP
	isb
	//NO_APP
	//APP
.Ltmp121:
	nop
.Ltmp122:
	.section	.altinstructions,"a",@progbits
.Ltmp123:
	.word	.Ltmp121-.Ltmp123
.Ltmp125:
	.word	.Ltmp124-.Ltmp125
	.hword	31
	.byte	.Ltmp122-.Ltmp121
	.byte	.Ltmp126-.Ltmp124
	.text

	.text	1
.Ltmp124:
	b	.LBB28_18
.Ltmp126:
.Ltmp127:
.org (.Ltmp127-(.Ltmp126-.Ltmp124))+(.Ltmp122-.Ltmp121), 0
.Ltmp128:
.org (.Ltmp128-(.Ltmp122-.Ltmp121))+(.Ltmp126-.Ltmp124), 0
	.text


	//NO_APP
// %bb.9:
	//APP
	//NO_APP
	//APP
	msr	DAIF, x9
	//NO_APP
	//APP
	//NO_APP
.LBB28_10:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	and	x0, x0, #0xff7fffffffffffff

	//NO_APP
	bl	__arch_copy_to_user
	mov	x2, x0
	//APP
.Ltmp129:
	nop
.Ltmp130:
	.section	.altinstructions,"a",@progbits
.Ltmp131:
	.word	.Ltmp129-.Ltmp131
.Ltmp133:
	.word	.Ltmp132-.Ltmp133
	.hword	40
	.byte	.Ltmp130-.Ltmp129
	.byte	.Ltmp134-.Ltmp132
	.text

	.text	1
.Ltmp132:
	b	.LBB28_15
.Ltmp134:
.Ltmp135:
.org (.Ltmp135-(.Ltmp134-.Ltmp132))+(.Ltmp130-.Ltmp129), 0
.Ltmp136:
.org (.Ltmp136-(.Ltmp130-.Ltmp129))+(.Ltmp134-.Ltmp132), 0
	.text


	//NO_APP
// %bb.11:
	//APP
.Ltmp137:
	nop
.Ltmp138:
	.section	.altinstructions,"a",@progbits
.Ltmp139:
	.word	.Ltmp137-.Ltmp139
.Ltmp141:
	.word	.Ltmp140-.Ltmp141
	.hword	31
	.byte	.Ltmp138-.Ltmp137
	.byte	.Ltmp142-.Ltmp140
	.text

	.text	1
.Ltmp140:
	b	.LBB28_19
.Ltmp142:
.Ltmp143:
.org (.Ltmp143-(.Ltmp142-.Ltmp140))+(.Ltmp138-.Ltmp137), 0
.Ltmp144:
.org (.Ltmp144-(.Ltmp138-.Ltmp137))+(.Ltmp142-.Ltmp140), 0
	.text


	//NO_APP
// %bb.12:
	//APP
	mrs	x8, DAIF
	//NO_APP
	//APP
	//NO_APP
	//APP
	msr	DAIFSet, #3
	//NO_APP
	//APP
	//NO_APP
.LBB28_13:
	//APP
	mrs	x9, TTBR1_EL1
	//NO_APP
	and	x9, x9, #0xffffffffffff
	sub	x10, x9, #1, lsl #12            // =4096
	//APP
	msr	TTBR0_EL1, x10
	//NO_APP
	//APP
	msr	TTBR1_EL1, x9
	//NO_APP
	//APP
	isb
	//NO_APP
	//APP
.Ltmp145:
	nop
.Ltmp146:
	.section	.altinstructions,"a",@progbits
.Ltmp147:
	.word	.Ltmp145-.Ltmp147
.Ltmp149:
	.word	.Ltmp148-.Ltmp149
	.hword	31
	.byte	.Ltmp146-.Ltmp145
	.byte	.Ltmp150-.Ltmp148
	.text

	.text	1
.Ltmp148:
	b	.LBB28_21
.Ltmp150:
.Ltmp151:
.org (.Ltmp151-(.Ltmp150-.Ltmp148))+(.Ltmp146-.Ltmp145), 0
.Ltmp152:
.org (.Ltmp152-(.Ltmp146-.Ltmp145))+(.Ltmp150-.Ltmp148), 0
	.text


	//NO_APP
// %bb.14:
	//APP
	//NO_APP
	//APP
	msr	DAIF, x8
	//NO_APP
	//APP
	//NO_APP
.LBB28_15:                              // Block address taken
                                        // Label of block must be emitted
	mov	x0, x2
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB28_16:                              // Block address taken
                                        // Label of block must be emitted
	//APP
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30
.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5384609

	//NO_APP
	cmp	x9, #224
	b.ne	.LBB28_8
// %bb.17:
	mov	w9, #192                        // =0xc0
	//APP
	//NO_APP
	//APP
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30
.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184609

	//NO_APP
	//APP
	//NO_APP
	mov	w9, #224                        // =0xe0
	b	.LBB28_8
.LBB28_18:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	//NO_APP
	//APP
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30
.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184609

	//NO_APP
	//APP
.Ltmp153:
	dsb	sy
.Ltmp154:
	.section	.altinstructions,"a",@progbits
.Ltmp155:
	.word	.Ltmp153-.Ltmp155
.Ltmp156:
	.word	alt_cb_patch_nops-.Ltmp156
	.hword	32800
	.byte	.Ltmp154-.Ltmp153
	.byte	.Ltmp157-.Ltmp158
	.text

.Ltmp158:
.Ltmp157:

	//NO_APP
	//APP
	//NO_APP
	b	.LBB28_10
.LBB28_19:                              // Block address taken
                                        // Label of block must be emitted
	//APP
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30
.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5384608

	//NO_APP
	cmp	x8, #224
	b.ne	.LBB28_13
// %bb.20:
	mov	w8, #192                        // =0xc0
	//APP
	//NO_APP
	//APP
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30
.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184608

	//NO_APP
	//APP
	//NO_APP
	mov	w8, #224                        // =0xe0
	b	.LBB28_13
.LBB28_21:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	//NO_APP
	//APP
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30
.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184608

	//NO_APP
	//APP
.Ltmp159:
	dsb	sy
.Ltmp160:
	.section	.altinstructions,"a",@progbits
.Ltmp161:
	.word	.Ltmp159-.Ltmp161
.Ltmp162:
	.word	alt_cb_patch_nops-.Ltmp162
	.hword	32800
	.byte	.Ltmp160-.Ltmp159
	.byte	.Ltmp163-.Ltmp164
	.text

.Ltmp164:
.Ltmp163:

	//NO_APP
	//APP
	//NO_APP
	b	.LBB28_15
.Lfunc_end28:
	.size	_inline_copy_to_user, .Lfunc_end28-_inline_copy_to_user
                                        // -- End function
	.p2align	2                               // -- Begin function _inline_copy_from_user
	.type	_inline_copy_from_user,@function
_inline_copy_from_user:                 // @_inline_copy_from_user
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	//APP
	mrs	x8, SP_EL0
	//NO_APP
	ldrb	w9, [x8, #70]
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	mov	x19, x2
	mov	x20, x0
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	tbnz	w9, #5, .LBB29_2
// %bb.1:
	ldr	x10, [x8]
	mov	x9, x1
	tbz	w10, #26, .LBB29_3
.LBB29_2:
	lsl	x9, x1, #8
	and	x9, x1, x9, asr #8
.LBB29_3:
	mov	x10, #549755813888              // =0x8000000000
	mov	x21, x19
	cmp	x19, x10
	b.hi	.LBB29_16
// %bb.4:
	sub	x10, x10, x19
	mov	x21, x19
	cmp	x10, x9
	b.lo	.LBB29_16
// %bb.5:
	//APP
.Ltmp165:
	nop
.Ltmp166:
	.section	.altinstructions,"a",@progbits
.Ltmp167:
	.word	.Ltmp165-.Ltmp167
.Ltmp169:
	.word	.Ltmp168-.Ltmp169
	.hword	40
	.byte	.Ltmp166-.Ltmp165
	.byte	.Ltmp170-.Ltmp168
	.text

	.text	1
.Ltmp168:
	b	.LBB29_10
.Ltmp170:
.Ltmp171:
.org (.Ltmp171-(.Ltmp170-.Ltmp168))+(.Ltmp166-.Ltmp165), 0
.Ltmp172:
.org (.Ltmp172-(.Ltmp166-.Ltmp165))+(.Ltmp170-.Ltmp168), 0
	.text


	//NO_APP
// %bb.6:
	//APP
.Ltmp173:
	nop
.Ltmp174:
	.section	.altinstructions,"a",@progbits
.Ltmp175:
	.word	.Ltmp173-.Ltmp175
.Ltmp177:
	.word	.Ltmp176-.Ltmp177
	.hword	31
	.byte	.Ltmp174-.Ltmp173
	.byte	.Ltmp178-.Ltmp176
	.text

	.text	1
.Ltmp176:
	b	.LBB29_18
.Ltmp178:
.Ltmp179:
.org (.Ltmp179-(.Ltmp178-.Ltmp176))+(.Ltmp174-.Ltmp173), 0
.Ltmp180:
.org (.Ltmp180-(.Ltmp174-.Ltmp173))+(.Ltmp178-.Ltmp176), 0
	.text


	//NO_APP
// %bb.7:
	//APP
	mrs	x9, DAIF
	//NO_APP
	//APP
	//NO_APP
	//APP
	msr	DAIFSet, #3
	//NO_APP
	//APP
	//NO_APP
.LBB29_8:
	ldr	x8, [x8, #8]
	//APP
	mrs	x10, TTBR1_EL1
	//NO_APP
	mov	x11, x8
	bfxil	x11, x10, #0, #48
	//APP
	msr	TTBR1_EL1, x11
	//NO_APP
	//APP
	msr	TTBR0_EL1, x8
	//NO_APP
	//APP
	isb
	//NO_APP
	//APP
.Ltmp181:
	nop
.Ltmp182:
	.section	.altinstructions,"a",@progbits
.Ltmp183:
	.word	.Ltmp181-.Ltmp183
.Ltmp185:
	.word	.Ltmp184-.Ltmp185
	.hword	31
	.byte	.Ltmp182-.Ltmp181
	.byte	.Ltmp186-.Ltmp184
	.text

	.text	1
.Ltmp184:
	b	.LBB29_20
.Ltmp186:
.Ltmp187:
.org (.Ltmp187-(.Ltmp186-.Ltmp184))+(.Ltmp182-.Ltmp181), 0
.Ltmp188:
.org (.Ltmp188-(.Ltmp182-.Ltmp181))+(.Ltmp186-.Ltmp184), 0
	.text


	//NO_APP
// %bb.9:
	//APP
	//NO_APP
	//APP
	msr	DAIF, x9
	//NO_APP
	//APP
	//NO_APP
.LBB29_10:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	and	x1, x1, #0xff7fffffffffffff

	//NO_APP
	mov	x0, x20
	mov	x2, x19
	bl	__arch_copy_from_user
	mov	x21, x0
	//APP
.Ltmp189:
	nop
.Ltmp190:
	.section	.altinstructions,"a",@progbits
.Ltmp191:
	.word	.Ltmp189-.Ltmp191
.Ltmp193:
	.word	.Ltmp192-.Ltmp193
	.hword	40
	.byte	.Ltmp190-.Ltmp189
	.byte	.Ltmp194-.Ltmp192
	.text

	.text	1
.Ltmp192:
	b	.LBB29_15
.Ltmp194:
.Ltmp195:
.org (.Ltmp195-(.Ltmp194-.Ltmp192))+(.Ltmp190-.Ltmp189), 0
.Ltmp196:
.org (.Ltmp196-(.Ltmp190-.Ltmp189))+(.Ltmp194-.Ltmp192), 0
	.text


	//NO_APP
// %bb.11:
	//APP
.Ltmp197:
	nop
.Ltmp198:
	.section	.altinstructions,"a",@progbits
.Ltmp199:
	.word	.Ltmp197-.Ltmp199
.Ltmp201:
	.word	.Ltmp200-.Ltmp201
	.hword	31
	.byte	.Ltmp198-.Ltmp197
	.byte	.Ltmp202-.Ltmp200
	.text

	.text	1
.Ltmp200:
	b	.LBB29_21
.Ltmp202:
.Ltmp203:
.org (.Ltmp203-(.Ltmp202-.Ltmp200))+(.Ltmp198-.Ltmp197), 0
.Ltmp204:
.org (.Ltmp204-(.Ltmp198-.Ltmp197))+(.Ltmp202-.Ltmp200), 0
	.text


	//NO_APP
// %bb.12:
	//APP
	mrs	x8, DAIF
	//NO_APP
	//APP
	//NO_APP
	//APP
	msr	DAIFSet, #3
	//NO_APP
	//APP
	//NO_APP
.LBB29_13:
	//APP
	mrs	x9, TTBR1_EL1
	//NO_APP
	and	x9, x9, #0xffffffffffff
	sub	x10, x9, #1, lsl #12            // =4096
	//APP
	msr	TTBR0_EL1, x10
	//NO_APP
	//APP
	msr	TTBR1_EL1, x9
	//NO_APP
	//APP
	isb
	//NO_APP
	//APP
.Ltmp205:
	nop
.Ltmp206:
	.section	.altinstructions,"a",@progbits
.Ltmp207:
	.word	.Ltmp205-.Ltmp207
.Ltmp209:
	.word	.Ltmp208-.Ltmp209
	.hword	31
	.byte	.Ltmp206-.Ltmp205
	.byte	.Ltmp210-.Ltmp208
	.text

	.text	1
.Ltmp208:
	b	.LBB29_23
.Ltmp210:
.Ltmp211:
.org (.Ltmp211-(.Ltmp210-.Ltmp208))+(.Ltmp206-.Ltmp205), 0
.Ltmp212:
.org (.Ltmp212-(.Ltmp206-.Ltmp205))+(.Ltmp210-.Ltmp208), 0
	.text


	//NO_APP
// %bb.14:
	//APP
	//NO_APP
	//APP
	msr	DAIF, x8
	//NO_APP
	//APP
	//NO_APP
.LBB29_15:                              // Block address taken
                                        // Label of block must be emitted
	cbz	x21, .LBB29_17
.LBB29_16:
	sub	x8, x19, x21
	mov	w1, wzr
	mov	x2, x21
	add	x0, x20, x8
	bl	memset
.LBB29_17:
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	mov	x0, x21
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB29_18:                              // Block address taken
                                        // Label of block must be emitted
	//APP
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30
.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5384609

	//NO_APP
	cmp	x9, #224
	b.ne	.LBB29_8
// %bb.19:
	mov	w9, #192                        // =0xc0
	//APP
	//NO_APP
	//APP
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30
.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184609

	//NO_APP
	//APP
	//NO_APP
	mov	w9, #224                        // =0xe0
	b	.LBB29_8
.LBB29_20:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	//NO_APP
	//APP
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30
.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184609

	//NO_APP
	//APP
.Ltmp213:
	dsb	sy
.Ltmp214:
	.section	.altinstructions,"a",@progbits
.Ltmp215:
	.word	.Ltmp213-.Ltmp215
.Ltmp216:
	.word	alt_cb_patch_nops-.Ltmp216
	.hword	32800
	.byte	.Ltmp214-.Ltmp213
	.byte	.Ltmp217-.Ltmp218
	.text

.Ltmp218:
.Ltmp217:

	//NO_APP
	//APP
	//NO_APP
	b	.LBB29_10
.LBB29_21:                              // Block address taken
                                        // Label of block must be emitted
	//APP
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30
.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5384608

	//NO_APP
	cmp	x8, #224
	b.ne	.LBB29_13
// %bb.22:
	mov	w8, #192                        // =0xc0
	//APP
	//NO_APP
	//APP
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30
.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184608

	//NO_APP
	//APP
	//NO_APP
	mov	w8, #224                        // =0xe0
	b	.LBB29_13
.LBB29_23:                              // Block address taken
                                        // Label of block must be emitted
	//APP
	//NO_APP
	//APP
.set .L__gpr_num_x0, 0
.set .L__gpr_num_w0, 0
.set .L__gpr_num_x1, 1
.set .L__gpr_num_w1, 1
.set .L__gpr_num_x2, 2
.set .L__gpr_num_w2, 2
.set .L__gpr_num_x3, 3
.set .L__gpr_num_w3, 3
.set .L__gpr_num_x4, 4
.set .L__gpr_num_w4, 4
.set .L__gpr_num_x5, 5
.set .L__gpr_num_w5, 5
.set .L__gpr_num_x6, 6
.set .L__gpr_num_w6, 6
.set .L__gpr_num_x7, 7
.set .L__gpr_num_w7, 7
.set .L__gpr_num_x8, 8
.set .L__gpr_num_w8, 8
.set .L__gpr_num_x9, 9
.set .L__gpr_num_w9, 9
.set .L__gpr_num_x10, 10
.set .L__gpr_num_w10, 10
.set .L__gpr_num_x11, 11
.set .L__gpr_num_w11, 11
.set .L__gpr_num_x12, 12
.set .L__gpr_num_w12, 12
.set .L__gpr_num_x13, 13
.set .L__gpr_num_w13, 13
.set .L__gpr_num_x14, 14
.set .L__gpr_num_w14, 14
.set .L__gpr_num_x15, 15
.set .L__gpr_num_w15, 15
.set .L__gpr_num_x16, 16
.set .L__gpr_num_w16, 16
.set .L__gpr_num_x17, 17
.set .L__gpr_num_w17, 17
.set .L__gpr_num_x18, 18
.set .L__gpr_num_w18, 18
.set .L__gpr_num_x19, 19
.set .L__gpr_num_w19, 19
.set .L__gpr_num_x20, 20
.set .L__gpr_num_w20, 20
.set .L__gpr_num_x21, 21
.set .L__gpr_num_w21, 21
.set .L__gpr_num_x22, 22
.set .L__gpr_num_w22, 22
.set .L__gpr_num_x23, 23
.set .L__gpr_num_w23, 23
.set .L__gpr_num_x24, 24
.set .L__gpr_num_w24, 24
.set .L__gpr_num_x25, 25
.set .L__gpr_num_w25, 25
.set .L__gpr_num_x26, 26
.set .L__gpr_num_w26, 26
.set .L__gpr_num_x27, 27
.set .L__gpr_num_w27, 27
.set .L__gpr_num_x28, 28
.set .L__gpr_num_w28, 28
.set .L__gpr_num_x29, 29
.set .L__gpr_num_w29, 29
.set .L__gpr_num_x30, 30
.set .L__gpr_num_w30, 30
.set .L__gpr_num_xzr, 31
.set .L__gpr_num_wzr, 31

	.inst	0xd5184608

	//NO_APP
	//APP
.Ltmp219:
	dsb	sy
.Ltmp220:
	.section	.altinstructions,"a",@progbits
.Ltmp221:
	.word	.Ltmp219-.Ltmp221
.Ltmp222:
	.word	alt_cb_patch_nops-.Ltmp222
	.hword	32800
	.byte	.Ltmp220-.Ltmp219
	.byte	.Ltmp223-.Ltmp224
	.text

.Ltmp224:
.Ltmp223:

	//NO_APP
	//APP
	//NO_APP
	b	.LBB29_15
.Lfunc_end29:
	.size	_inline_copy_from_user, .Lfunc_end29-_inline_copy_from_user
                                        // -- End function
	.p2align	2                               // -- Begin function waveform_llseek
	.type	waveform_llseek,@function
	.word	3576144094                      // 0xd527a0de
waveform_llseek:                        // @waveform_llseek
// %bb.0:
	adrp	x8, global_ebc
	ldr	x8, [x8, :lo12:global_ebc]
	cbz	w2, .LBB30_4
// %bb.1:
	cmp	w2, #2
	b.eq	.LBB30_5
// %bb.2:
	cmp	w2, #1
	b.ne	.LBB30_7
// %bb.3:
	ldr	x9, [x0, #112]
	add	x1, x9, x1
.LBB30_4:
	tbz	x1, #63, .LBB30_6
	b	.LBB30_7
.LBB30_5:
	ldrsw	x9, [x8, #1832]
	add	x1, x1, x9
	tbnz	x1, #63, .LBB30_7
.LBB30_6:
	ldrsw	x8, [x8, #1832]
	cmp	x1, x8
	b.le	.LBB30_8
.LBB30_7:
	mov	x0, #-22                        // =0xffffffffffffffea
	ret
.LBB30_8:
	str	x1, [x0, #112]
	mov	x0, x1
	ret
.Lfunc_end30:
	.size	waveform_llseek, .Lfunc_end30-waveform_llseek
                                        // -- End function
	.p2align	2                               // -- Begin function waveform_read
	.type	waveform_read,@function
	.word	4108966268                      // 0xf4e9d97c
waveform_read:                          // @waveform_read
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-64]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	ldr	x21, [x3]
	ldr	x8, [x8, :lo12:global_ebc]
	str	x23, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	ldrsw	x9, [x8, #1832]
	subs	x10, x9, x21
	b.le	.LBB31_4
// %bb.1:
	add	x11, x21, x2
	cmp	x11, x9
	csel	x19, x10, x2, hi
	lsr	x9, x19, #31
	cbnz	x9, .LBB31_7
// %bb.2:
	ldr	x23, [x8, #1896]
	mov	x20, x1
	mov	x1, x19
	mov	w2, #1                          // =0x1
	mov	x22, x3
	add	x0, x23, x21
	bl	__check_object_size
	add	x1, x23, x21
	mov	x0, x20
	mov	x2, x19
	bl	_inline_copy_to_user
	cbz	x0, .LBB31_5
// %bb.3:
	mov	x19, #-14                       // =0xfffffffffffffff2
	b	.LBB31_6
.LBB31_4:
	mov	x19, xzr
	b	.LBB31_6
.LBB31_5:
	ldr	x8, [x22]
	add	x8, x8, x19
	str	x8, [x22]
.LBB31_6:
	mov	x0, x19
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldr	x23, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB31_7:
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp225:
.Ltmp227:
	.word	.Ltmp226-.Ltmp227
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp228:
	.ascii	"include/linux/thread_info.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp229:
	.word	.Ltmp228-.Ltmp229
	.hword	249
	.hword	2307
	.p2align	2, 0x0
	.text
.Ltmp226:
	brk	#0x800
	//NO_APP
	mov	x19, #-14                       // =0xfffffffffffffff2
	b	.LBB31_6
.Lfunc_end31:
	.size	waveform_read, .Lfunc_end31-waveform_read
                                        // -- End function
	.p2align	2                               // -- Begin function waveform_write
	.type	waveform_write,@function
	.word	3285465933                      // 0xc3d43b4d
waveform_write:                         // @waveform_write
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #128
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x25, [sp, #64]                  // 8-byte Folded Spill
	stp	x24, x23, [sp, #80]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #96]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            // 16-byte Folded Spill
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1608]
	stur	x8, [x29, #-8]
	adrp	x8, global_ebc
	ldr	x21, [x8, :lo12:global_ebc]
	ldr	x23, [x3]
	ldr	w9, [x21, #2140]
	ldrsw	x8, [x21, #1832]
	cmp	w9, #0
	cset	w22, eq
	subs	x9, x8, x23
	b.le	.LBB32_4
// %bb.1:
	add	x10, x23, x2
	cmp	x10, x8
	csel	x19, x9, x2, hi
	lsr	x8, x19, #31
	cbnz	x8, .LBB32_8
// %bb.2:
	ldr	x25, [x21, #1896]
	mov	x20, x1
	mov	x1, x19
	mov	w2, wzr
	mov	x24, x3
	add	x0, x25, x23
	bl	__check_object_size
	add	x0, x25, x23
	mov	x1, x20
	mov	x2, x19
	bl	_inline_copy_from_user
	cbz	x0, .LBB32_5
// %bb.3:
	mov	x19, #-14                       // =0xfffffffffffffff2
	b	.LBB32_6
.LBB32_4:
	mov	x19, #-28                       // =0xffffffffffffffe4
	b	.LBB32_6
.LBB32_5:
	ldr	x8, [x24]
	add	x8, x8, x19
	str	x8, [x24]
	ldr	x0, [x21, #1896]
	bl	epd_lut_from_mem_init
	mov	x8, #32                         // =0x20
	add	x0, x21, #1840
	add	x3, sp, #12
	movk	x8, #1, lsl #32
	mov	w1, #3                          // =0x3
	mov	w2, #30                         // =0x1e
	stur	x8, [sp, #12]
	stur	xzr, [sp, #20]
	stp	wzr, w22, [sp, #28]
	str	wzr, [sp, #36]
	bl	epd_lut_get
.LBB32_6:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1608]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB32_9
// %bb.7:
	mov	x0, x19
	ldp	x20, x19, [sp, #112]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             // 16-byte Folded Reload
	ldr	x25, [sp, #64]                  // 8-byte Folded Reload
	ldp	x24, x23, [sp, #80]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #128
	ldr	x30, [x18, #-8]!
	ret
.LBB32_8:
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp230:
.Ltmp232:
	.word	.Ltmp231-.Ltmp232
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp233:
	.ascii	"include/linux/thread_info.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp234:
	.word	.Ltmp233-.Ltmp234
	.hword	249
	.hword	2307
	.p2align	2, 0x0
	.text
.Ltmp231:
	brk	#0x800
	//NO_APP
	mov	x19, #-14                       // =0xfffffffffffffff2
	b	.LBB32_6
.LBB32_9:
	bl	__stack_chk_fail
.Lfunc_end32:
	.size	waveform_write, .Lfunc_end32-waveform_write
                                        // -- End function
	.p2align	2                               // -- Begin function waveform_mmap
	.type	waveform_mmap,@function
	.word	2111916748                      // 0x7de14acc
waveform_mmap:                          // @waveform_mmap
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	mov	x19, x1
	ldr	x9, [x8, :lo12:global_ebc]
	ldr	x8, [x1, #16]
	mov	x29, sp
	ldr	x20, [x9, #1824]
	ldr	x9, [x8, #152]
	tbz	w9, #0, .LBB33_4
.LBB33_1:
	ldr	w1, [x8, #216]
	ldr	w8, [x19, #40]
	cmp	w8, w1
	b.eq	.LBB33_3
// %bb.2:
	mov	x0, x19
	bl	__vma_start_write
.LBB33_3:
	ldp	x4, x8, [x19, #24]
	mov	w9, #16384                      // =0x4000
	ldp	x1, x10, [x19]
	movk	w9, #1028, lsl #16
	lsr	x2, x20, #12
	mov	x0, x19
	orr	x8, x8, x9
	sub	x3, x10, x1
	str	x8, [x19, #32]
	bl	remap_pfn_range
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	mov	w8, #-11                        // =0xfffffff5
	cmp	w0, #0
	csel	w0, wzr, w8, eq
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB33_4:
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp235:
.Ltmp237:
	.word	.Ltmp236-.Ltmp237
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp238:
	.ascii	"include/linux/rwsem.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp239:
	.word	.Ltmp238-.Ltmp239
	.hword	88
	.hword	2305
	.p2align	2, 0x0
	.text
.Ltmp236:
	brk	#0x800
	//NO_APP
	ldr	x8, [x19, #16]
	b	.LBB33_1
.Lfunc_end33:
	.size	waveform_mmap, .Lfunc_end33-waveform_mmap
                                        // -- End function
	.p2align	2                               // -- Begin function waveform_open
	.type	waveform_open,@function
	.word	2552825629                      // 0x9829071d
waveform_open:                          // @waveform_open
// %bb.0:
	mov	w0, wzr
	str	xzr, [x1, #112]
	ret
.Lfunc_end34:
	.size	waveform_open, .Lfunc_end34-waveform_open
                                        // -- End function
	.p2align	2                               // -- Begin function transition_lut_llseek
	.type	transition_lut_llseek,@function
	.word	3576144094                      // 0xd527a0de
transition_lut_llseek:                  // @transition_lut_llseek
// %bb.0:
	adrp	x8, global_ebc
	ldr	x8, [x8, :lo12:global_ebc]
	cbz	w2, .LBB35_6
// %bb.1:
	cmp	w2, #2
	b.eq	.LBB35_4
// %bb.2:
	cmp	w2, #1
	b.ne	.LBB35_8
// %bb.3:
	add	x9, x0, #112
	b	.LBB35_5
.LBB35_4:
	add	x9, x8, #1232
.LBB35_5:
	ldr	x9, [x9]
	add	x1, x9, x1
.LBB35_6:
	tbnz	x1, #63, .LBB35_8
// %bb.7:
	ldr	x8, [x8, #1232]
	cmp	x1, x8
	b.ls	.LBB35_9
.LBB35_8:
	mov	x0, #-22                        // =0xffffffffffffffea
	ret
.LBB35_9:
	str	x1, [x0, #112]
	mov	x0, x1
	ret
.Lfunc_end35:
	.size	transition_lut_llseek, .Lfunc_end35-transition_lut_llseek
                                        // -- End function
	.p2align	2                               // -- Begin function transition_lut_read
	.type	transition_lut_read,@function
	.word	4108966268                      // 0xf4e9d97c
transition_lut_read:                    // @transition_lut_read
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	adrp	x9, global_ebc
	mov	x8, x2
	mov	x2, x1
	ldr	x9, [x9, :lo12:global_ebc]
	mov	x1, x3
	mov	x3, x8
	mov	w4, #1                          // =0x1
	mov	x29, sp
	add	x0, x9, #1216
	bl	transition_copy_data
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end36:
	.size	transition_lut_read, .Lfunc_end36-transition_lut_read
                                        // -- End function
	.p2align	2                               // -- Begin function transition_lut_write
	.type	transition_lut_write,@function
	.word	3285465933                      // 0xc3d43b4d
transition_lut_write:                   // @transition_lut_write
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	adrp	x9, global_ebc
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	x8, x2
	ldr	x19, [x9, :lo12:global_ebc]
	mov	x2, x1
	mov	x1, x3
	mov	x3, x8
	mov	w4, wzr
	mov	x29, sp
	add	x0, x19, #1216
	bl	transition_copy_data
	cmp	x0, #1
	b.lt	.LBB37_2
// %bb.1:
	mov	w8, #18644                      // =0x48d4
	mov	w9, #1                          // =0x1
	strb	w9, [x19, x8]
.LBB37_2:
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end37:
	.size	transition_lut_write, .Lfunc_end37-transition_lut_write
                                        // -- End function
	.p2align	2                               // -- Begin function transition_lut_mmap
	.type	transition_lut_mmap,@function
	.word	2111916748                      // 0x7de14acc
transition_lut_mmap:                    // @transition_lut_mmap
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	ldr	x8, [x1, #16]
	adrp	x10, transition_lut_vm_ops
	add	x10, x10, :lo12:transition_lut_vm_ops
	stp	x20, x19, [sp, #16]             // 16-byte Folded Spill
	adrp	x9, global_ebc
	mov	x19, x1
	str	x10, [x1, #72]
	ldr	x20, [x9, :lo12:global_ebc]
	mov	x29, sp
	ldr	x9, [x8, #152]
	tbz	w9, #0, .LBB38_4
.LBB38_1:
	ldr	w1, [x8, #216]
	ldr	w8, [x19, #40]
	cmp	w8, w1
	b.eq	.LBB38_3
// %bb.2:
	mov	x0, x19
	bl	__vma_start_write
.LBB38_3:
	ldr	x8, [x19, #32]
	mov	w9, #335806464                  // =0x14040000
	mov	w0, wzr
	orr	x8, x8, x9
	add	x9, x20, #1216
	str	x8, [x19, #32]
	str	x9, [x19, #96]
	ldp	x20, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB38_4:
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp240:
.Ltmp242:
	.word	.Ltmp241-.Ltmp242
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp243:
	.ascii	"include/linux/rwsem.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp244:
	.word	.Ltmp243-.Ltmp244
	.hword	88
	.hword	2305
	.p2align	2, 0x0
	.text
.Ltmp241:
	brk	#0x800
	//NO_APP
	ldr	x8, [x19, #16]
	b	.LBB38_1
.Lfunc_end38:
	.size	transition_lut_mmap, .Lfunc_end38-transition_lut_mmap
                                        // -- End function
	.p2align	2                               // -- Begin function transition_lut_open
	.type	transition_lut_open,@function
	.word	2552825629                      // 0x9829071d
transition_lut_open:                    // @transition_lut_open
// %bb.0:
	adrp	x8, global_ebc
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	x8, [x8, #1248]
	cmp	x8, #0
	mov	w8, #-19                        // =0xffffffed
	csel	w0, w8, wzr, eq
	ret
.Lfunc_end39:
	.size	transition_lut_open, .Lfunc_end39-transition_lut_open
                                        // -- End function
	.p2align	2                               // -- Begin function transition_copy_data
	.type	transition_copy_data,@function
transition_copy_data:                   // @transition_copy_data
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #128
	stp	x24, x23, [sp, #80]             // 16-byte Folded Spill
	ldr	x23, [x1]
	ldr	x8, [x0, #16]
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stp	x22, x21, [sp, #96]             // 16-byte Folded Spill
	mov	w21, w4
	subs	x8, x8, x23
	stp	x28, x27, [sp, #48]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #64]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            // 16-byte Folded Spill
	stur	x2, [x29, #-8]                  // 8-byte Folded Spill
	b.ls	.LBB40_15
// %bb.1:
	ldr	x20, [x0, #48]
	cmp	x3, x8
	csel	x27, x3, x8, lo
	cbz	x20, .LBB40_16
// %bb.2:
	ldr	w8, [x20, #8]
	str	x1, [sp]                        // 8-byte Folded Spill
	cbz	w8, .LBB40_17
// %bb.3:
	ldr	x0, [x20]
	mov	x19, xzr
	mov	x8, xzr
	mov	w28, wzr
	//APP
	mrs	x24, SP_EL0
	//NO_APP
	stur	w21, [x29, #-12]                // 4-byte Folded Spill
	str	x20, [sp, #8]                   // 8-byte Folded Spill
	b	.LBB40_5
.LBB40_4:                               //   in Loop: Header=BB40_5 Depth=1
	add	w28, w28, #1
	bl	sg_next
	ldr	w8, [x20, #8]
	cmp	w28, w8
	mov	x8, x25
	b.hs	.LBB40_18
.LBB40_5:                               // =>This Inner Loop Header: Depth=1
	ldr	w9, [x0, #12]
	add	x25, x8, x9
	cmp	x23, x25
	ccmp	x27, x19, #0, lo
	b.ls	.LBB40_4
// %bb.6:                               //   in Loop: Header=BB40_5 Depth=1
	ldr	w10, [x0, #8]
	ldr	x11, [x0]
	subs	x8, x23, x8
	ldr	w12, [x24, #16]
	csel	x13, xzr, x8, lo
	sub	x8, x9, x13
	sub	x9, x27, x19
	lsr	x11, x11, #6
	add	w12, w12, #1
	cmp	x8, x9
	add	x26, x13, x10
	str	w12, [x24, #16]
	csel	x22, x8, x9, lo
	mov	x8, #281268818280448            // =0xffd000000000
	//APP
	//NO_APP
	movk	x8, #65535, lsl #48
	ldr	w12, [x24, #2964]
	add	x20, x8, x11, lsl #12
	lsr	x8, x22, #31
	add	w12, w12, #1
	str	w12, [x24, #2964]
	//APP
	//NO_APP
	tbz	w21, #0, .LBB40_9
// %bb.7:                               //   in Loop: Header=BB40_5 Depth=1
	cbnz	x8, .LBB40_20
// %bb.8:                               //   in Loop: Header=BB40_5 Depth=1
	mov	x21, x0
	add	x0, x20, x26
	mov	x1, x22
	mov	w2, #1                          // =0x1
	bl	__check_object_size
	ldur	x8, [x29, #-8]                  // 8-byte Folded Reload
	add	x1, x20, x26
	mov	x2, x22
	add	x0, x8, x19
	bl	_inline_copy_to_user
	cbz	x0, .LBB40_11
	b	.LBB40_21
.LBB40_9:                               //   in Loop: Header=BB40_5 Depth=1
	cbnz	x8, .LBB40_23
// %bb.10:                              //   in Loop: Header=BB40_5 Depth=1
	mov	x21, x0
	add	x0, x20, x26
	mov	x1, x22
	mov	w2, wzr
	bl	__check_object_size
	ldur	x8, [x29, #-8]                  // 8-byte Folded Reload
	add	x0, x20, x26
	mov	x2, x22
	add	x1, x8, x19
	bl	_inline_copy_from_user
	cbnz	x0, .LBB40_24
.LBB40_11:                              //   in Loop: Header=BB40_5 Depth=1
	//APP
	//NO_APP
	mov	x0, x21
	ldr	w8, [x24, #2964]
	sub	w8, w8, #1
	str	w8, [x24, #2964]
	//APP
	//NO_APP
	ldr	x8, [x24, #16]
	subs	x8, x8, #1
	str	w8, [x24, #16]
	b.eq	.LBB40_14
// %bb.12:                              //   in Loop: Header=BB40_5 Depth=1
	ldr	x8, [x24, #16]
	cbz	x8, .LBB40_14
.LBB40_13:                              //   in Loop: Header=BB40_5 Depth=1
	add	x19, x22, x19
	ldur	w21, [x29, #-12]                // 4-byte Folded Reload
	ldr	x20, [sp, #8]                   // 8-byte Folded Reload
	cmp	x19, x27
	add	x23, x22, x23
	b.lo	.LBB40_4
	b	.LBB40_18
.LBB40_14:                              //   in Loop: Header=BB40_5 Depth=1
	mov	x20, x0
	bl	preempt_schedule
	mov	x0, x20
	b	.LBB40_13
.LBB40_15:
	tst	w21, #0x1
	mov	x8, #-28                        // =0xffffffffffffffe4
	csel	x19, xzr, x8, ne
	b	.LBB40_19
.LBB40_16:
	mov	x19, #-28                       // =0xffffffffffffffe4
	b	.LBB40_19
.LBB40_17:
	mov	x19, xzr
.LBB40_18:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	str	x23, [x8]
.LBB40_19:
	mov	x0, x19
	ldp	x20, x19, [sp, #112]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #128
	ldr	x30, [x18, #-8]!
	ret
.LBB40_20:
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp245:
.Ltmp247:
	.word	.Ltmp246-.Ltmp247
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp248:
	.ascii	"include/linux/thread_info.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp249:
	.word	.Ltmp248-.Ltmp249
	.hword	249
	.hword	2307
	.p2align	2, 0x0
	.text
.Ltmp246:
	brk	#0x800
	//NO_APP
.LBB40_21:
	//APP
	//NO_APP
	ldr	w8, [x24, #2964]
	sub	w8, w8, #1
	str	w8, [x24, #2964]
	//APP
	//NO_APP
	ldr	x8, [x24, #16]
	subs	x8, x8, #1
	str	w8, [x24, #16]
	b.eq	.LBB40_27
// %bb.22:
	ldr	x8, [x24, #16]
	cbnz	x8, .LBB40_26
	b	.LBB40_27
.LBB40_23:
	//APP
	.section	__bug_table,"aw",@progbits
	.p2align	2, 0x0
.Ltmp250:
.Ltmp252:
	.word	.Ltmp251-.Ltmp252
	.section	.rodata.str,"aMS",@progbits,1
.Ltmp253:
	.ascii	"include/linux/thread_info.h"
	.byte	0
	.section	__bug_table,"aw",@progbits
.Ltmp254:
	.word	.Ltmp253-.Ltmp254
	.hword	249
	.hword	2307
	.p2align	2, 0x0
	.text
.Ltmp251:
	brk	#0x800
	//NO_APP
.LBB40_24:
	//APP
	//NO_APP
	ldr	w8, [x24, #2964]
	sub	w8, w8, #1
	str	w8, [x24, #2964]
	//APP
	//NO_APP
	ldr	x8, [x24, #16]
	subs	x8, x8, #1
	str	w8, [x24, #16]
	b.eq	.LBB40_27
// %bb.25:
	ldr	x8, [x24, #16]
	cbz	x8, .LBB40_27
.LBB40_26:
	mov	x19, #-14                       // =0xfffffffffffffff2
	b	.LBB40_19
.LBB40_27:
	bl	preempt_schedule
	mov	x19, #-14                       // =0xfffffffffffffff2
	b	.LBB40_19
.Lfunc_end40:
	.size	transition_copy_data, .Lfunc_end40-transition_copy_data
                                        // -- End function
	.p2align	2                               // -- Begin function transition_lut_vm_fault
	.type	transition_lut_vm_fault,@function
	.word	51062245                        // 0x30b25e5
transition_lut_vm_fault:                // @transition_lut_vm_fault
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-64]!           // 16-byte Folded Spill
	ldr	x8, [x0]
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	mov	x29, sp
	str	x23, [sp, #16]                  // 8-byte Folded Spill
	ldr	x8, [x8, #96]
	stp	x22, x21, [sp, #32]             // 16-byte Folded Spill
	ldr	x20, [x8, #48]
	cbz	x20, .LBB41_9
// %bb.1:
	ldr	w8, [x20, #8]
	cbz	w8, .LBB41_9
// %bb.2:
	ldr	x9, [x0, #16]
	mov	x19, x0
	ldr	x0, [x20]
	mov	x8, xzr
	mov	w22, wzr
	lsl	x21, x9, #12
	b	.LBB41_4
.LBB41_3:                               //   in Loop: Header=BB41_4 Depth=1
	add	w22, w22, #1
	bl	sg_next
	ldr	w8, [x20, #8]
	cmp	w22, w8
	mov	x8, x23
	b.hs	.LBB41_9
.LBB41_4:                               // =>This Inner Loop Header: Depth=1
	ldr	w10, [x0, #12]
	subs	x9, x21, x8
	add	x23, x8, x10
	b.lo	.LBB41_3
// %bb.5:                               //   in Loop: Header=BB41_4 Depth=1
	cmp	x21, x23
	b.hs	.LBB41_3
// %bb.6:
	ldr	x8, [x0]
	lsr	x9, x9, #12
	and	x8, x8, #0xfffffffffffffffc
	add	x8, x8, x9, lsl #6
	ldr	x9, [x8, #8]
	sub	x10, x9, #1
	tst	w9, #0x1
	csel	x9, x8, x10, eq
	//APP
.Ltmp255:
	b	.LBB41_11
.Ltmp256:
	.section	.altinstructions,"a",@progbits
.Ltmp257:
	.word	.Ltmp255-.Ltmp257
.Ltmp258:
	.word	alt_cb_patch_nops-.Ltmp258
	.hword	32805
	.byte	.Ltmp256-.Ltmp255
	.byte	.Ltmp259-.Ltmp260
	.text

.Ltmp260:
.Ltmp259:

	//NO_APP
// %bb.7:
	add	x9, x9, #52
	mov	w10, #1                         // =0x1
	//APP
	stadd	w10, [x9]

	//NO_APP
.LBB41_8:
	mov	w0, wzr
	str	x8, [x19, #80]
	b	.LBB41_10
.LBB41_9:
	mov	w0, #2                          // =0x2
.LBB41_10:
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldr	x23, [sp, #16]                  // 8-byte Folded Reload
	ldp	x22, x21, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #64             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.LBB41_11:                              // Block address taken
                                        // Label of block must be emitted
	add	x9, x9, #52
	//APP
	// atomic_add
	prfm	pstl1strm, [x9]
.Ltmp261:
	ldxr	w10, [x9]
	add	w10, w10, #1
	stxr	w11, w10, [x9]
	cbnz	w11, .Ltmp261

	//NO_APP
	b	.LBB41_8
.Lfunc_end41:
	.size	transition_lut_vm_fault, .Lfunc_end41-transition_lut_vm_fault
                                        // -- End function
	.p2align	2                               // -- Begin function waveform_version_read
	.type	waveform_version_read,@function
	.word	2927934676                      // 0xae84bcd4
waveform_version_read:                  // @waveform_version_read
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	mov	x19, x2
	bl	epd_lut_get_wf_version
	mov	x2, x0
	adrp	x1, .L.str.203
	add	x1, x1, :lo12:.L.str.203
	mov	x0, x19
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	sxtw	x0, w0
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end42:
	.size	waveform_version_read, .Lfunc_end42-waveform_version_read
                                        // -- End function
	.p2align	2                               // -- Begin function pmic_name_read
	.type	pmic_name_read,@function
	.word	2927934676                      // 0xae84bcd4
pmic_name_read:                         // @pmic_name_read
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	mov	x0, x2
	adrp	x1, .L.str.203
	add	x1, x1, :lo12:.L.str.203
	ldr	x8, [x8, :lo12:global_ebc]
	mov	x29, sp
	ldr	x8, [x8, #16]
	add	x2, x8, #8
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end43:
	.size	pmic_name_read, .Lfunc_end43-pmic_name_read
                                        // -- End function
	.p2align	2                               // -- Begin function pmic_temp_read
	.type	pmic_temp_read,@function
	.word	2927934676                      // 0xae84bcd4
pmic_temp_read:                         // @pmic_temp_read
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #64
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x21, [sp, #32]                  // 8-byte Folded Spill
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	mrs	x8, SP_EL0
	adrp	x20, global_ebc
	ldr	x8, [x8, #1608]
	mov	x19, x2
	str	x8, [sp, #8]
	ldr	x21, [x20, :lo12:global_ebc]
	str	wzr, [sp, #4]
	bl	ebc_power_on
	ldr	x0, [x21, #16]
	cbz	x0, .LBB44_2
// %bb.1:
	ldr	x8, [x0, #56]
	add	x1, sp, #4
	ldur	w16, [x8, #-4]
	movk	w17, #22883
	movk	w17, #39863, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp262
	brk	#0x8228
.Ltmp262:
	blr	x8
	b	.LBB44_3
.LBB44_2:
	ldr	x0, [x21, #104]
	add	x1, sp, #4
	bl	thermal_zone_get_temp
.LBB44_3:
	ldr	x21, [x20, :lo12:global_ebc]
	ldr	x20, [x21, #312]
	bl	ebc_get_power_off_delay
	bl	__msecs_to_jiffies
	mov	x3, x0
	add	x2, x21, #320
	mov	w0, #8                          // =0x8
	mov	x1, x20
	bl	queue_delayed_work_on
	ldr	w2, [sp, #4]
	adrp	x1, .L.str.239
	add	x1, x1, :lo12:.L.str.239
	mov	x0, x19
	bl	sprintf
	mrs	x8, SP_EL0
                                        // kill: def $w0 killed $w0 def $x0
	ldr	x8, [x8, #1608]
	ldr	x9, [sp, #8]
	cmp	x8, x9
	b.ne	.LBB44_5
// %bb.4:
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	sxtw	x0, w0
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	ldr	x21, [sp, #32]                  // 8-byte Folded Reload
	add	sp, sp, #64
	ldr	x30, [x18, #-8]!
	ret
.LBB44_5:
	bl	__stack_chk_fail
.Lfunc_end44:
	.size	pmic_temp_read, .Lfunc_end44-pmic_temp_read
                                        // -- End function
	.p2align	2                               // -- Begin function pmic_vcom_read
	.type	pmic_vcom_read,@function
	.word	2927934676                      // 0xae84bcd4
pmic_vcom_read:                         // @pmic_vcom_read
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	x19, x2
	ldr	x8, [x8, :lo12:global_ebc]
	mov	x29, sp
	ldr	x0, [x8, #16]
	cbz	x0, .LBB45_2
// %bb.1:
	ldr	x8, [x0, #64]
	ldur	w16, [x8, #-4]
	movk	w17, #5597
	movk	w17, #35865, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp263
	brk	#0x8228
.Ltmp263:
	blr	x8
	mov	w2, w0
	b	.LBB45_3
.LBB45_2:
	ldr	x0, [x8, #24]
	bl	regulator_get_voltage
	mov	w8, #19923                      // =0x4dd3
	movk	w8, #4194, lsl #16
	smull	x8, w0, w8
	lsr	x9, x8, #63
	asr	x8, x8, #38
	add	w2, w8, w9
.LBB45_3:
	adrp	x1, .L.str.239
	add	x1, x1, :lo12:.L.str.239
	mov	x0, x19
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	sxtw	x0, w0
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end45:
	.size	pmic_vcom_read, .Lfunc_end45-pmic_vcom_read
                                        // -- End function
	.p2align	2                               // -- Begin function pmic_vcom_write
	.type	pmic_vcom_write,@function
	.word	2512657047                      // 0x95c41a97
pmic_vcom_write:                        // @pmic_vcom_write
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #64
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	mov	w1, wzr
	add	x29, sp, #16
	str	x21, [sp, #32]                  // 8-byte Folded Spill
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	mrs	x8, SP_EL0
	mov	x20, x2
	ldr	x8, [x8, #1608]
	add	x2, sp, #4
	mov	x0, x20
	mov	x19, x3
	str	x8, [sp, #8]
	adrp	x8, global_ebc
	ldr	x21, [x8, :lo12:global_ebc]
	str	wzr, [sp, #4]
	bl	kstrtouint
	cbnz	w0, .LBB46_5
// %bb.1:
	ldr	x0, [x21, #16]
	cbz	x0, .LBB46_3
// %bb.2:
	ldr	w1, [sp, #4]
	bl	ebc_pmic_set_vcom
	cbz	w0, .LBB46_7
	b	.LBB46_4
.LBB46_3:
	ldr	x0, [x21, #24]
	ldr	w1, [sp, #4]
	bl	ebc_regulator_set_vcom
	cbz	w0, .LBB46_7
.LBB46_4:
	ldr	x0, [x21]
	adrp	x1, .L.str.243
	add	x1, x1, :lo12:.L.str.243
	bl	_dev_err
	b	.LBB46_6
.LBB46_5:
	ldr	x0, [x21]
	adrp	x1, .L.str.242
	add	x1, x1, :lo12:.L.str.242
	mov	x2, x20
	bl	_dev_err
.LBB46_6:
	mov	x19, #-1                        // =0xffffffffffffffff
.LBB46_7:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1608]
	ldr	x9, [sp, #8]
	cmp	x8, x9
	b.ne	.LBB46_9
// %bb.8:
	mov	x0, x19
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	ldr	x21, [sp, #32]                  // 8-byte Folded Reload
	add	sp, sp, #64
	ldr	x30, [x18, #-8]!
	ret
.LBB46_9:
	bl	__stack_chk_fail
.Lfunc_end46:
	.size	pmic_vcom_write, .Lfunc_end46-pmic_vcom_write
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_version_read
	.type	ebc_version_read,@function
	.word	2927934676                      // 0xae84bcd4
ebc_version_read:                       // @ebc_version_read
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x0, x2
	adrp	x1, .L.str.203
	add	x1, x1, :lo12:.L.str.203
	adrp	x2, .L.str.3
	add	x2, x2, :lo12:.L.str.3
	mov	x29, sp
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end47:
	.size	ebc_version_read, .Lfunc_end47-ebc_version_read
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_state_read
	.type	ebc_state_read,@function
	.word	2927934676                      // 0xae84bcd4
ebc_state_read:                         // @ebc_state_read
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	mov	x0, x2
	adrp	x1, .L.str.239
	add	x1, x1, :lo12:.L.str.239
	ldr	x8, [x8, :lo12:global_ebc]
	mov	x29, sp
	ldr	w8, [x8, #2112]
	mov	w2, w8
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end48:
	.size	ebc_state_read, .Lfunc_end48-ebc_state_read
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_buf_state_read
	.type	ebc_buf_state_read,@function
	.word	2927934676                      // 0xae84bcd4
ebc_buf_state_read:                     // @ebc_buf_state_read
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x0, x2
	mov	x29, sp
	bl	ebc_buf_state_show
                                        // kill: def $w0 killed $w0 def $x0
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end49:
	.size	ebc_buf_state_read, .Lfunc_end49-ebc_buf_state_read
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_buf_state_write
	.type	ebc_buf_state_write,@function
	.word	2512657047                      // 0x95c41a97
ebc_buf_state_write:                    // @ebc_buf_state_write
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	mov	x0, x2
	adrp	x1, .L.str.250
	add	x1, x1, :lo12:.L.str.250
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	mov	x19, x3
	bl	strstr
	cbz	x0, .LBB50_2
// %bb.1:
	adrp	x8, global_ebc
	adrp	x1, dev_attr_dump_buffer
	add	x1, x1, :lo12:dev_attr_dump_buffer
	ldr	x8, [x8, :lo12:global_ebc]
	ldr	x0, [x8, #304]
	bl	device_create_file
.LBB50_2:
	mov	x0, x19
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end50:
	.size	ebc_buf_state_write, .Lfunc_end50-ebc_buf_state_write
                                        // -- End function
	.p2align	2                               // -- Begin function dump_buffer_write
	.type	dump_buffer_write,@function
	.word	2512657047                      // 0x95c41a97
dump_buffer_write:                      // @dump_buffer_write
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #64
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	mov	w1, wzr
	add	x29, sp, #16
	str	x21, [sp, #32]                  // 8-byte Folded Spill
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	mrs	x8, SP_EL0
	mov	x20, x2
	ldr	x8, [x8, #1608]
	add	x2, sp, #4
	mov	x0, x20
	mov	x19, x3
	str	x8, [sp, #8]
	adrp	x8, global_ebc
	ldr	x21, [x8, :lo12:global_ebc]
	str	wzr, [sp, #4]
	bl	kstrtouint
	cbnz	w0, .LBB51_4
// %bb.1:
	ldr	w8, [sp, #4]
	mov	w9, #18668                      // =0x48ec
	str	w8, [x21, x9]
.LBB51_2:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1608]
	ldr	x9, [sp, #8]
	cmp	x8, x9
	b.ne	.LBB51_5
// %bb.3:
	mov	x0, x19
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	ldr	x21, [sp, #32]                  // 8-byte Folded Reload
	add	sp, sp, #64
	ldr	x30, [x18, #-8]!
	ret
.LBB51_4:
	ldr	x0, [x21]
	adrp	x1, .L.str.242
	add	x1, x1, :lo12:.L.str.242
	mov	x2, x20
	bl	_dev_err
	mov	x19, #-1                        // =0xffffffffffffffff
	b	.LBB51_2
.LBB51_5:
	bl	__stack_chk_fail
.Lfunc_end51:
	.size	dump_buffer_write, .Lfunc_end51-dump_buffer_write
                                        // -- End function
	.p2align	2                               // -- Begin function auto_frame_state_read
	.type	auto_frame_state_read,@function
	.word	2927934676                      // 0xae84bcd4
auto_frame_state_read:                  // @auto_frame_state_read
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	mov	x29, sp
	ldr	x8, [x8, :lo12:global_ebc]
	ldp	w10, w9, [x8, #188]
	mul	w9, w10, w9
	cbz	w9, .LBB52_4
// %bb.1:
	ldr	x10, [x8, #1512]
	mov	w11, wzr
.LBB52_2:                               // =>This Inner Loop Header: Depth=1
	ldrb	w8, [x10, w11, sxtw]
	cbnz	w8, .LBB52_5
// %bb.3:                               //   in Loop: Header=BB52_2 Depth=1
	add	w11, w11, #1
	cmp	w9, w11
	b.ne	.LBB52_2
.LBB52_4:
	mov	w8, #2608                       // =0xa30
	mov	w0, #2                          // =0x2
	strb	wzr, [x2, #2]
	strh	w8, [x2]
	b	.LBB52_6
.LBB52_5:
	adrp	x1, .L.str.239
	add	x1, x1, :lo12:.L.str.239
	mov	x0, x2
	mov	w2, w8
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	sxtw	x0, w0
.LBB52_6:
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end52:
	.size	auto_frame_state_read, .Lfunc_end52-auto_frame_state_read
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_debug_level_read
	.type	ebc_debug_level_read,@function
	.word	2927934676                      // 0xae84bcd4
ebc_debug_level_read:                   // @ebc_debug_level_read
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	adrp	x8, global_ebc
	mov	x0, x2
	adrp	x1, .L.str.239
	add	x1, x1, :lo12:.L.str.239
	ldr	x8, [x8, :lo12:global_ebc]
	mov	x29, sp
	ldr	w8, [x8, #2128]
	mov	w2, w8
	bl	sprintf
                                        // kill: def $w0 killed $w0 def $x0
	sxtw	x0, w0
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end53:
	.size	ebc_debug_level_read, .Lfunc_end53-ebc_debug_level_read
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_debug_level_write
	.type	ebc_debug_level_write,@function
	.word	2512657047                      // 0x95c41a97
ebc_debug_level_write:                  // @ebc_debug_level_write
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #64
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	mov	w1, wzr
	add	x29, sp, #16
	str	x21, [sp, #32]                  // 8-byte Folded Spill
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	mrs	x8, SP_EL0
	mov	x20, x2
	ldr	x8, [x8, #1608]
	add	x2, sp, #4
	mov	x0, x20
	mov	x19, x3
	str	x8, [sp, #8]
	adrp	x8, global_ebc
	ldr	x21, [x8, :lo12:global_ebc]
	str	wzr, [sp, #4]
	bl	kstrtouint
	cbnz	w0, .LBB54_4
// %bb.1:
	ldr	w8, [sp, #4]
	str	w8, [x21, #2128]
.LBB54_2:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1608]
	ldr	x9, [sp, #8]
	cmp	x8, x9
	b.ne	.LBB54_5
// %bb.3:
	mov	x0, x19
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	ldr	x21, [sp, #32]                  // 8-byte Folded Reload
	add	sp, sp, #64
	ldr	x30, [x18, #-8]!
	ret
.LBB54_4:
	ldr	x0, [x21, #304]
	adrp	x1, .L.str.242
	add	x1, x1, :lo12:.L.str.242
	mov	x2, x20
	bl	_dev_err
	mov	x19, #-1                        // =0xffffffffffffffff
	b	.LBB54_2
.LBB54_5:
	bl	__stack_chk_fail
.Lfunc_end54:
	.size	ebc_debug_level_write, .Lfunc_end54-ebc_debug_level_write
                                        // -- End function
	.p2align	2                               // -- Begin function wf_data_write
	.type	wf_data_write,@function
	.word	2512657047                      // 0x95c41a97
wf_data_write:                          // @wf_data_write
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #112
	adrp	x8, global_ebc
	stp	x20, x19, [sp, #96]             // 16-byte Folded Spill
	mov	x0, x2
	ldr	x19, [x8, :lo12:global_ebc]
	stp	x26, x25, [sp, #48]             // 16-byte Folded Spill
	adrp	x1, .L.str.250
	add	x1, x1, :lo12:.L.str.250
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	ldr	x25, [x19, #1864]
	stp	x28, x27, [sp, #32]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             // 16-byte Folded Spill
	str	x3, [sp, #8]                    // 8-byte Folded Spill
	bl	strstr
	cbnz	x0, .LBB55_2
.LBB55_1:
	ldp	x20, x19, [sp, #96]             // 16-byte Folded Reload
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldp	x22, x21, [sp, #80]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #112
	ldr	x30, [x18, #-8]!
	ret
.LBB55_2:
	ldr	w8, [x19, #1848]
	ldr	w9, [x19, #1840]
	adrp	x0, .L.str.260
	add	x0, x0, :lo12:.L.str.260
	cmp	w8, w9
	csel	w19, w8, w9, gt
	mov	w1, w19
	bl	_printk
	mov	x21, xzr
	adrp	x22, .L.str.261
	add	x22, x22, :lo12:.L.str.261
	adrp	x23, .L.str.262
	add	x23, x23, :lo12:.L.str.262
.LBB55_3:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB55_4 Depth 2
                                        //       Child Loop BB55_6 Depth 3
	mov	x24, xzr
	add	x26, x25, x21
.LBB55_4:                               //   Parent Loop BB55_3 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB55_6 Depth 3
	mov	x0, x22
	mov	w1, w24
	mov	w2, w21
	bl	_printk
	cmp	w19, #1
	b.lt	.LBB55_7
// %bb.5:                               //   in Loop: Header=BB55_4 Depth=2
	add	x28, x26, x24, lsl #5
	mov	w27, wzr
	mov	x20, x19
.LBB55_6:                               //   Parent Loop BB55_3 Depth=1
                                        //     Parent Loop BB55_4 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldrb	w1, [x28, w27, sxtw]
	mov	x0, x23
	bl	_printk
	subs	x20, x20, #1
	add	w27, w27, #1024
	b.ne	.LBB55_6
.LBB55_7:                               //   in Loop: Header=BB55_4 Depth=2
	add	x24, x24, #1
	cmp	x24, #32
	b.ne	.LBB55_4
// %bb.8:                               //   in Loop: Header=BB55_3 Depth=1
	add	x21, x21, #1
	cmp	x21, #32
	b.ne	.LBB55_3
	b	.LBB55_1
.Lfunc_end55:
	.size	wf_data_write, .Lfunc_end55-wf_data_write
                                        // -- End function
	.p2align	2                               // -- Begin function overlay_wf_data_write
	.type	overlay_wf_data_write,@function
	.word	2512657047                      // 0x95c41a97
overlay_wf_data_write:                  // @overlay_wf_data_write
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #112
	adrp	x8, global_ebc
	stp	x20, x19, [sp, #96]             // 16-byte Folded Spill
	mov	x0, x2
	ldr	x19, [x8, :lo12:global_ebc]
	stp	x26, x25, [sp, #48]             // 16-byte Folded Spill
	adrp	x1, .L.str.250
	add	x1, x1, :lo12:.L.str.250
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	ldr	x25, [x19, #1872]
	stp	x28, x27, [sp, #32]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             // 16-byte Folded Spill
	str	x3, [sp, #8]                    // 8-byte Folded Spill
	bl	strstr
	cbnz	x0, .LBB56_2
.LBB56_1:
	ldp	x20, x19, [sp, #96]             // 16-byte Folded Reload
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldp	x22, x21, [sp, #80]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #112
	ldr	x30, [x18, #-8]!
	ret
.LBB56_2:
	ldr	w20, [x19, #1844]
	adrp	x0, .L.str.260
	add	x0, x0, :lo12:.L.str.260
	mov	w1, w20
	bl	_printk
	lsl	x26, x20, #10
	mov	x21, xzr
	adrp	x22, .L.str.261
	add	x22, x22, :lo12:.L.str.261
	adrp	x23, .L.str.262
	add	x23, x23, :lo12:.L.str.262
.LBB56_3:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB56_4 Depth 2
                                        //       Child Loop BB56_6 Depth 3
	mov	x24, xzr
	add	x27, x25, x21
.LBB56_4:                               //   Parent Loop BB56_3 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB56_6 Depth 3
	mov	x0, x22
	mov	w1, w24
	mov	w2, w21
	bl	_printk
	cmp	w20, #1
	b.lt	.LBB56_7
// %bb.5:                               //   in Loop: Header=BB56_4 Depth=2
	add	x28, x27, x24, lsl #5
	mov	x19, xzr
.LBB56_6:                               //   Parent Loop BB56_3 Depth=1
                                        //     Parent Loop BB56_4 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldrb	w1, [x28, w19, sxtw]
	mov	x0, x23
	bl	_printk
	add	x19, x19, #1024
	cmp	x26, x19
	b.ne	.LBB56_6
.LBB56_7:                               //   in Loop: Header=BB56_4 Depth=2
	add	x24, x24, #1
	cmp	x24, #32
	b.ne	.LBB56_4
// %bb.8:                               //   in Loop: Header=BB56_3 Depth=1
	add	x21, x21, #1
	cmp	x21, #32
	b.ne	.LBB56_3
	b	.LBB56_1
.Lfunc_end56:
	.size	overlay_wf_data_write, .Lfunc_end56-overlay_wf_data_write
                                        // -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	2                               // -- Begin function ori_wf_data_write
	.type	ori_wf_data_write,@function
	.word	2512657047                      // 0x95c41a97
ori_wf_data_write:                      // @ori_wf_data_write
// %bb.0:
	str	x30, [x18], #8
	sub	sp, sp, #160
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	mov	w9, #-1                         // =0xffffffff
	stp	x28, x27, [sp, #80]             // 16-byte Folded Spill
	mov	w0, #262144                     // =0x40000
	mov	w1, #3520                       // =0xdc0
	stp	x26, x25, [sp, #96]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #112]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #128]            // 16-byte Folded Spill
	mov	x21, x2
	stp	x20, x19, [sp, #144]            // 16-byte Folded Spill
	mrs	x8, SP_EL0
	mov	x19, x3
	ldr	x8, [x8, #1608]
	stur	x8, [x29, #-8]
	stp	w9, w9, [sp, #8]
	stp	xzr, xzr, [sp, #40]
	stp	xzr, xzr, [sp, #24]
	str	xzr, [sp, #16]
	bl	__kmalloc_large_noprof
	cbnz	x0, .LBB57_2
// %bb.1:
	adrp	x0, .L.str.267
	add	x0, x0, :lo12:.L.str.267
	bl	_printk
	b	.LBB57_16
.LBB57_2:
	mov	x20, x0
	str	x0, [sp, #40]
	adrp	x1, .L.str.250
	add	x1, x1, :lo12:.L.str.250
	mov	x0, x21
	bl	strstr
	cbnz	x0, .LBB57_4
// %bb.3:
	adrp	x0, .L.str.270
	add	x0, x0, :lo12:.L.str.270
	b	.LBB57_15
.LBB57_4:
	adrp	x1, .L.str.268
	add	x1, x1, :lo12:.L.str.268
	add	x2, sp, #12
	add	x3, sp, #8
	mov	x0, x21
	bl	sscanf
	ldp	w3, w2, [sp, #8]
	adrp	x0, .L.str.269
	add	x0, x0, :lo12:.L.str.269
	adrp	x1, .L__func__.ori_wf_data_write
	add	x1, x1, :lo12:.L__func__.ori_wf_data_write
	bl	_printk
	ldr	w1, [sp, #12]
	cmp	w1, #8
	b.hi	.LBB57_14
// %bb.5:
	ldr	w2, [sp, #8]
	cmp	w2, #50
	b.hi	.LBB57_14
// %bb.6:
	add	x0, sp, #16
	mov	w3, #32                         // =0x20
	str	x19, [sp]                       // 8-byte Folded Spill
	bl	epd_lut_get_original
	ldr	w21, [sp, #16]
	adrp	x0, .L.str.260
	add	x0, x0, :lo12:.L.str.260
	mov	w1, w21
	bl	_printk
	lsl	x26, x21, #10
	mov	x22, xzr
	adrp	x23, .L.str.261
	add	x23, x23, :lo12:.L.str.261
	adrp	x24, .L.str.262
	add	x24, x24, :lo12:.L.str.262
.LBB57_7:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB57_8 Depth 2
                                        //       Child Loop BB57_10 Depth 3
	mov	x25, xzr
	add	x27, x20, x22
.LBB57_8:                               //   Parent Loop BB57_7 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB57_10 Depth 3
	mov	x0, x23
	mov	w1, w25
	mov	w2, w22
	bl	_printk
	cmp	w21, #1
	b.lt	.LBB57_11
// %bb.9:                               //   in Loop: Header=BB57_8 Depth=2
	add	x28, x27, x25, lsl #5
	mov	x19, xzr
.LBB57_10:                              //   Parent Loop BB57_7 Depth=1
                                        //     Parent Loop BB57_8 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldrb	w1, [x28, w19, sxtw]
	mov	x0, x24
	bl	_printk
	add	x19, x19, #1024
	cmp	x26, x19
	b.ne	.LBB57_10
.LBB57_11:                              //   in Loop: Header=BB57_8 Depth=2
	add	x25, x25, #1
	cmp	x25, #32
	b.ne	.LBB57_8
// %bb.12:                              //   in Loop: Header=BB57_7 Depth=1
	add	x22, x22, #1
	cmp	x22, #32
	b.ne	.LBB57_7
// %bb.13:
	mov	x0, x20
	bl	kfree
	ldr	x19, [sp]                       // 8-byte Folded Reload
	b	.LBB57_16
.LBB57_14:
	adrp	x0, .L.str.271
	add	x0, x0, :lo12:.L.str.271
.LBB57_15:
	adrp	x1, .L__func__.ori_wf_data_write
	add	x1, x1, :lo12:.L__func__.ori_wf_data_write
	bl	_printk
.LBB57_16:
	mrs	x8, SP_EL0
	ldr	x8, [x8, #1608]
	ldur	x9, [x29, #-8]
	cmp	x8, x9
	b.ne	.LBB57_18
// %bb.17:
	mov	x0, x19
	ldp	x20, x19, [sp, #144]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #128]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #112]            // 16-byte Folded Reload
	ldp	x26, x25, [sp, #96]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #80]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #160
	ldr	x30, [x18, #-8]!
	ret
.LBB57_18:
	bl	__stack_chk_fail
.Lfunc_end57:
	.size	ori_wf_data_write, .Lfunc_end57-ori_wf_data_write
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_suspend
	.type	ebc_suspend,@function
	.word	711998475                       // 0x2a703c0b
ebc_suspend:                            // @ebc_suspend
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	ldr	x19, [x0, #152]
	mov	w8, #1                          // =0x1
	mov	x29, sp
	ldr	x0, [x19, #16]
	str	w8, [x19, #2156]
	cbz	x0, .LBB58_2
// %bb.1:
	ldr	x8, [x0, #40]
	ldur	w16, [x8, #-4]
	movk	w17, #20432
	movk	w17, #26469, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp264
	brk	#0x8228
.Ltmp264:
	blr	x8
.LBB58_2:
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.272
	add	x1, x1, :lo12:.L.str.272
	bl	_dev_info
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	mov	w0, wzr
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end58:
	.size	ebc_suspend, .Lfunc_end58-ebc_suspend
                                        // -- End function
	.p2align	2                               // -- Begin function ebc_resume
	.type	ebc_resume,@function
	.word	711998475                       // 0x2a703c0b
ebc_resume:                             // @ebc_resume
// %bb.0:
	str	x30, [x18], #8
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	ldr	x19, [x0, #152]
	mov	x29, sp
	ldr	x0, [x19, #16]
	cbz	x0, .LBB59_2
// %bb.1:
	ldr	x8, [x0, #48]
	ldur	w16, [x8, #-4]
	movk	w17, #20432
	movk	w17, #26469, lsl #16
	cmp	w16, w17
	b.eq	.Ltmp265
	brk	#0x8228
.Ltmp265:
	blr	x8
.LBB59_2:
	ldr	x0, [x19, #304]
	adrp	x1, .L.str.273
	add	x1, x1, :lo12:.L.str.273
	str	wzr, [x19, #2156]
	bl	_dev_info
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	mov	w0, wzr
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ldr	x30, [x18, #-8]!
	ret
.Lfunc_end59:
	.size	ebc_resume, .Lfunc_end59-ebc_resume
                                        // -- End function
	.type	__gendwarfksyms_rule_486,@object // @__gendwarfksyms_rule_486
	.section	.discard.gendwarfksyms.kabi_rules,"a",@progbits
__gendwarfksyms_rule_486:
	.asciz	"1\000declonly\000cgroup_kmi_ext_info\000"
	.size	__gendwarfksyms_rule_486, 32

	.type	__UNIQUE_ID___addressable_ebc_init650,@object // @__UNIQUE_ID___addressable_ebc_init650
	.section	.discard.addressable,"aw",@progbits
	.p2align	3, 0x0
__UNIQUE_ID___addressable_ebc_init650:
	.xword	ebc_init
	.size	__UNIQUE_ID___addressable_ebc_init650, 8

	.type	__exitcall_ebc_exit,@object     // @__exitcall_ebc_exit
	.section	.exitcall.exit,"aw",@progbits
	.p2align	3, 0x0
__exitcall_ebc_exit:
	.xword	ebc_exit
	.size	__exitcall_ebc_exit, 8

	.type	__UNIQUE_ID_author651,@object   // @__UNIQUE_ID_author651
	.section	.modinfo,"a",@progbits
__UNIQUE_ID_author651:
	.asciz	"rkebc.author=Zorro Liu <zorro.liu@rock-chips.com>"
	.size	__UNIQUE_ID_author651, 50

	.type	__UNIQUE_ID_description652,@object // @__UNIQUE_ID_description652
__UNIQUE_ID_description652:
	.asciz	"rkebc.description=ROCKCHIP EBC Driver"
	.size	__UNIQUE_ID_description652, 38

	.type	__UNIQUE_ID_file653,@object     // @__UNIQUE_ID_file653
__UNIQUE_ID_file653:
	.asciz	"rkebc.file=$EBC_DEV_PATH/rkebc"
	.size	__UNIQUE_ID_file653, 31

	.type	__UNIQUE_ID_license654,@object  // @__UNIQUE_ID_license654
__UNIQUE_ID_license654:
	.asciz	"rkebc.license=GPL v2"
	.size	__UNIQUE_ID_license654, 21

	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ebc-dev"
	.size	.L.str, 8

	.type	ebc_match,@object               // @ebc_match
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
ebc_match:
	.zero	32
	.zero	32
	.asciz	"rockchip,ebc-dev\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.xword	0
	.zero	200
	.size	ebc_match, 400

	.type	ebc_pm,@object                  // @ebc_pm
	.p2align	3, 0x0
ebc_pm:
	.xword	0
	.xword	0
	.xword	ebc_suspend
	.xword	ebc_resume
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0                               // 0x0
	.size	ebc_pm, 192

	.type	ebc_driver,@object              // @ebc_driver
	.data
	.p2align	3, 0x0
ebc_driver:
	.xword	ebc_probe
	.xword	ebc_remove
	.xword	0
	.xword	0
	.xword	0
	.xword	.L.str
	.xword	0
	.xword	0
	.xword	0
	.byte	0                               // 0x0
	.zero	3
	.word	0                               // 0x0
	.xword	ebc_match
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	ebc_pm
	.xword	0
	.xword	0
	.xword	0                               // 0x0
	.xword	0                               // 0x0
	.xword	0                               // 0x0
	.xword	0                               // 0x0
	.xword	0
	.byte	0                               // 0x0
	.byte	0                               // 0x0
	.zero	6
	.xword	0                               // 0x0
	.size	ebc_driver, 240

	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"rockchip ebc driver %s probe\n"
	.size	.L.str.2, 30

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"10.09"
	.size	.L.str.3, 6

	.type	global_ebc,@object              // @global_ebc
	.local	global_ebc
	.comm	global_ebc,8,8
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"ebc_tcon"
	.size	.L.str.4, 9

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"not find ebc tcon\n"
	.size	.L.str.5, 19

	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"cpu-code"
	.size	.L.str.6, 9

	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"no chip info\n"
	.size	.L.str.7, 14

	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"read chip info failed\n"
	.size	.L.str.8, 23

	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"chip err\n"
	.size	.L.str.9, 10

	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"pmic"
	.size	.L.str.10, 5

	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"wrong pmics number\n"
	.size	.L.str.11, 20

	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"not find pmic node\n"
	.size	.L.str.12, 20

	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"not find pmic i2c client\n"
	.size	.L.str.13, 26

	.type	.L.str.14,@object               // @.str.14
.L.str.14:
	.asciz	"use pmic%d\n"
	.size	.L.str.14, 12

	.type	.L.str.15,@object               // @.str.15
.L.str.15:
	.asciz	"vcom"
	.size	.L.str.15, 5

	.type	.L.str.16,@object               // @.str.16
.L.str.16:
	.asciz	"Failed to get vcom regulator\n"
	.size	.L.str.16, 30

	.type	.L.str.17,@object               // @.str.17
.L.str.17:
	.asciz	"thermal-zone"
	.size	.L.str.17, 13

	.type	.L.str.18,@object               // @.str.18
.L.str.18:
	.asciz	"Failed to get thermal zone name\n"
	.size	.L.str.18, 33

	.type	.L.str.19,@object               // @.str.19
.L.str.19:
	.asciz	"Failed to get thermal device\n"
	.size	.L.str.19, 30

	.type	.L.str.20,@object               // @.str.20
.L.str.20:
	.asciz	"Get PMIC device failed\n"
	.size	.L.str.20, 24

	.type	.L.str.21,@object               // @.str.21
.L.str.21:
	.asciz	"ebc-use-soft-tcon"
	.size	.L.str.21, 18

	.type	.L.str.22,@object               // @.str.22
.L.str.22:
	.asciz	"ebc-repair-enable"
	.size	.L.str.22, 18

	.type	.L.str.23,@object               // @.str.23
.L.str.23:
	.asciz	"ebc-dmc-notify-enable"
	.size	.L.str.23, 22

	.type	.L.str.24,@object               // @.str.24
.L.str.24:
	.asciz	"failed to probe panel: %d\n"
	.size	.L.str.24, 27

	.type	.L.str.25,@object               // @.str.25
.L.str.25:
	.asciz	"soft tcon: not support panel rearrange and gate dummy\n"
	.size	.L.str.25, 55

	.type	.L.str.26,@object               // @.str.26
.L.str.26:
	.asciz	"e6: not support panel rearrange and gate dummy\n"
	.size	.L.str.26, 48

	.type	.L.str.27,@object               // @.str.27
.L.str.27:
	.asciz	"vpos1"
	.size	.L.str.27, 6

	.type	.L.str.28,@object               // @.str.28
.L.str.28:
	.asciz	"Failed to get vpos1 regulator\n"
	.size	.L.str.28, 31

	.type	.L.str.29,@object               // @.str.29
.L.str.29:
	.asciz	"vpos2"
	.size	.L.str.29, 6

	.type	.L.str.30,@object               // @.str.30
.L.str.30:
	.asciz	"Failed to get vpos2 regulator\n"
	.size	.L.str.30, 31

	.type	.L.str.31,@object               // @.str.31
.L.str.31:
	.asciz	"vpos3"
	.size	.L.str.31, 6

	.type	.L.str.32,@object               // @.str.32
.L.str.32:
	.asciz	"Failed to get vpos3 regulator\n"
	.size	.L.str.32, 31

	.type	.L.str.33,@object               // @.str.33
.L.str.33:
	.asciz	"vneg1"
	.size	.L.str.33, 6

	.type	.L.str.34,@object               // @.str.34
.L.str.34:
	.asciz	"Failed to get vneg1 regulator\n"
	.size	.L.str.34, 31

	.type	.L.str.35,@object               // @.str.35
.L.str.35:
	.asciz	"vneg2"
	.size	.L.str.35, 6

	.type	.L.str.36,@object               // @.str.36
.L.str.36:
	.asciz	"Failed to get vneg2 regulator\n"
	.size	.L.str.36, 31

	.type	.L.str.37,@object               // @.str.37
.L.str.37:
	.asciz	"vneg3"
	.size	.L.str.37, 6

	.type	.L.str.38,@object               // @.str.38
.L.str.38:
	.asciz	"Failed to get vneg3 regulator\n"
	.size	.L.str.38, 31

	.type	.L.str.39,@object               // @.str.39
.L.str.39:
	.asciz	"vgh"
	.size	.L.str.39, 4

	.type	.L.str.40,@object               // @.str.40
.L.str.40:
	.asciz	"Failed to get vgh regulator\n"
	.size	.L.str.40, 29

	.type	.L.str.41,@object               // @.str.41
.L.str.41:
	.asciz	"vgl"
	.size	.L.str.41, 4

	.type	.L.str.42,@object               // @.str.42
.L.str.42:
	.asciz	"Failed to get vgl regulator\n"
	.size	.L.str.42, 29

	.type	.L.str.43,@object               // @.str.43
.L.str.43:
	.asciz	"lut table init failed\n"
	.size	.L.str.43, 23

	.type	.L.str.44,@object               // @.str.44
.L.str.44:
	.asciz	"buffer manage init failed\n"
	.size	.L.str.44, 27

	.type	.L.str.45,@object               // @.str.45
.L.str.45:
	.asciz	"task init failed\n"
	.size	.L.str.45, 18

	.type	.L.str.46,@object               // @.str.46
.L.str.46:
	.asciz	"rockchip ebc driver %s probe success\n"
	.size	.L.str.46, 38

	.type	.L.str.47,@object               // @.str.47
.L.str.47:
	.asciz	"[%s] buffer %d frame done, wake up ebc task\n"
	.size	.L.str.47, 45

	.type	.L.str.48,@object               // @.str.48
.L.str.48:
	.asciz	"FRAME DONE CALLBACK"
	.size	.L.str.48, 20

	.type	ebc_task,@object                // @ebc_task
	.local	ebc_task
	.comm	ebc_task,8,8
	.type	ebc_flip_wq,@object             // @ebc_flip_wq
	.data
	.p2align	3, 0x0
ebc_flip_wq:
	.zero	4
	.zero	4
	.xword	ebc_flip_wq+8
	.xword	ebc_flip_wq+8
	.size	ebc_flip_wq, 24

	.type	.L.str.50,@object               // @.str.50
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.50:
	.asciz	"panel,width"
	.size	.L.str.50, 12

	.type	.L.str.51,@object               // @.str.51
.L.str.51:
	.asciz	"panel,height"
	.size	.L.str.51, 13

	.type	.L.str.52,@object               // @.str.52
.L.str.52:
	.asciz	"panel,vir_width"
	.size	.L.str.52, 16

	.type	.L.str.53,@object               // @.str.53
.L.str.53:
	.asciz	"panel,vir_height"
	.size	.L.str.53, 17

	.type	.L.str.54,@object               // @.str.54
.L.str.54:
	.asciz	"panel,sdck"
	.size	.L.str.54, 11

	.type	.L.str.55,@object               // @.str.55
.L.str.55:
	.asciz	"panel,lsl"
	.size	.L.str.55, 10

	.type	.L.str.56,@object               // @.str.56
.L.str.56:
	.asciz	"panel,lbl"
	.size	.L.str.56, 10

	.type	.L.str.57,@object               // @.str.57
.L.str.57:
	.asciz	"panel,ldl"
	.size	.L.str.57, 10

	.type	.L.str.58,@object               // @.str.58
.L.str.58:
	.asciz	"panel,lel"
	.size	.L.str.58, 10

	.type	.L.str.59,@object               // @.str.59
.L.str.59:
	.asciz	"panel,gdck-sta"
	.size	.L.str.59, 15

	.type	.L.str.60,@object               // @.str.60
.L.str.60:
	.asciz	"panel,lgonl"
	.size	.L.str.60, 12

	.type	.L.str.61,@object               // @.str.61
.L.str.61:
	.asciz	"panel,fsl"
	.size	.L.str.61, 10

	.type	.L.str.62,@object               // @.str.62
.L.str.62:
	.asciz	"panel,fbl"
	.size	.L.str.62, 10

	.type	.L.str.63,@object               // @.str.63
.L.str.63:
	.asciz	"panel,fdl"
	.size	.L.str.63, 10

	.type	.L.str.64,@object               // @.str.64
.L.str.64:
	.asciz	"panel,fel"
	.size	.L.str.64, 10

	.type	.L.str.65,@object               // @.str.65
.L.str.65:
	.asciz	"panel,panel_bit_depth"
	.size	.L.str.65, 22

	.type	.L.str.66,@object               // @.str.66
.L.str.66:
	.asciz	"panel,panel_16bit"
	.size	.L.str.66, 18

	.type	.L.str.67,@object               // @.str.67
.L.str.67:
	.asciz	"panel,panel_color"
	.size	.L.str.67, 18

	.type	.L.str.68,@object               // @.str.68
.L.str.68:
	.asciz	"panel,mirror"
	.size	.L.str.68, 13

	.type	.L.str.69,@object               // @.str.69
.L.str.69:
	.asciz	"panel,width-mm"
	.size	.L.str.69, 15

	.type	.L.str.70,@object               // @.str.70
.L.str.70:
	.asciz	"panel,height-mm"
	.size	.L.str.70, 16

	.type	.L.str.71,@object               // @.str.71
.L.str.71:
	.asciz	"panel,rearrange"
	.size	.L.str.71, 16

	.type	.L.str.72,@object               // @.str.72
.L.str.72:
	.asciz	"panel,sdoe_mode"
	.size	.L.str.72, 16

	.type	.L.str.73,@object               // @.str.73
.L.str.73:
	.asciz	"panel,sdce_width"
	.size	.L.str.73, 17

	.type	.L.str.74,@object               // @.str.74
.L.str.74:
	.asciz	"panel,lel-keep-clk"
	.size	.L.str.74, 19

	.type	.L.str.75,@object               // @.str.75
.L.str.75:
	.asciz	"panel,gds"
	.size	.L.str.75, 10

	.type	.L.str.76,@object               // @.str.76
.L.str.76:
	.asciz	"panel,gdl"
	.size	.L.str.76, 10

	.type	.L.str.77,@object               // @.str.77
.L.str.77:
	.asciz	"pmic-early-power-on"
	.size	.L.str.77, 20

	.type	.L.str.78,@object               // @.str.78
.L.str.78:
	.asciz	"waveform-region"
	.size	.L.str.78, 16

	.type	.L.str.79,@object               // @.str.79
.L.str.79:
	.asciz	"wf,mode_table"
	.size	.L.str.79, 14

	.type	.L.str.80,@object               // @.str.80
.L.str.80:
	.asciz	"%s:%d: failed to get mem from reserved\n"
	.size	.L.str.80, 40

	.type	.L__func__.ebc_lut_table_init,@object // @__func__.ebc_lut_table_init
.L__func__.ebc_lut_table_init:
	.asciz	"ebc_lut_table_init"
	.size	.L__func__.ebc_lut_table_init, 19

	.type	.L.str.81,@object               // @.str.81
.L.str.81:
	.asciz	"Failed to read waveform from mem, we use waveform file from kernel file instead\n"
	.size	.L.str.81, 81

	.type	.L.str.82,@object               // @.str.82
.L.str.82:
	.asciz	"Failed to read waveform file from kernel, no waveform!!!\n"
	.size	.L.str.82, 58

	.type	.L.str.83,@object               // @.str.83
.L.str.83:
	.asciz	"ebc-disable-osd"
	.size	.L.str.83, 16

	.type	.L.str.84,@object               // @.str.84
.L.str.84:
	.asciz	"ebc-disable-transition"
	.size	.L.str.84, 23

	.type	.L.str.85,@object               // @.str.85
.L.str.85:
	.asciz	"failed to alloc direct fb %d from cma, ret: %d\n"
	.size	.L.str.85, 48

	.type	.L.str.86,@object               // @.str.86
.L.str.86:
	.asciz	"failed to alloc prev_lut_buf from cma, ret: %d\n"
	.size	.L.str.86, 48

	.type	.L.str.87,@object               // @.str.87
.L.str.87:
	.asciz	"failed to alloc cur_lut_buf from cma, ret: %d\n"
	.size	.L.str.87, 47

	.type	.L.str.88,@object               // @.str.88
.L.str.88:
	.asciz	"failed to init ebc buf list, ret: %d\n"
	.size	.L.str.88, 38

	.type	.L.str.89,@object               // @.str.89
.L.str.89:
	.asciz	"ebc-max-dsp-fb-num"
	.size	.L.str.89, 19

	.type	.L.str.90,@object               // @.str.90
.L.str.90:
	.asciz	"failed to alloc ebc dsp buf %d from dma, ret: %d\n"
	.size	.L.str.90, 50

	.type	.L.str.91,@object               // @.str.91
.L.str.91:
	.asciz	"failed to init ebc dsp buf %d from dma, ret: %d\n"
	.size	.L.str.91, 49

	.type	.L.str.92,@object               // @.str.92
.L.str.92:
	.asciz	"failed to alloc ebc osd buf %d from dma, ret: %d\n"
	.size	.L.str.92, 50

	.type	.L.str.93,@object               // @.str.93
.L.str.93:
	.asciz	"failed to alloc wf_table_buf from dma, ret: %d\n"
	.size	.L.str.93, 48

	.type	.L.str.94,@object               // @.str.94
.L.str.94:
	.asciz	"failed to alloc trans_lut from dma, ret: %d\n"
	.size	.L.str.94, 45

	.type	.L.str.95,@object               // @.str.95
.L.str.95:
	.asciz	"failed to alloc auto_image_new from dma, ret: %d\n"
	.size	.L.str.95, 50

	.type	.L.str.96,@object               // @.str.96
.L.str.96:
	.asciz	"failed to alloc auto_image_old from dma, ret: %d\n"
	.size	.L.str.96, 50

	.type	.L.str.97,@object               // @.str.97
.L.str.97:
	.asciz	"failed to alloc auto_frame_count from dma, ret: %d\n"
	.size	.L.str.97, 52

	.type	.L.str.98,@object               // @.str.98
.L.str.98:
	.asciz	"failed to alloc auto_wf_index from dma, ret: %d\n"
	.size	.L.str.98, 49

	.type	.L.str.99,@object               // @.str.99
.L.str.99:
	.asciz	"failed to alloc auto_image_ghost from dma, ret: %d\n"
	.size	.L.str.99, 52

	.type	.L.str.100,@object              // @.str.100
.L.str.100:
	.asciz	"ebc_assist_task"
	.size	.L.str.100, 16

	.type	ebc_assist_task,@object         // @ebc_assist_task
	.local	ebc_assist_task
	.comm	ebc_assist_task,8,8
	.type	.L.str.101,@object              // @.str.101
.L.str.101:
	.asciz	"failed to create ebc_assist_task thread\n"
	.size	.L.str.101, 41

	.type	.L.str.102,@object              // @.str.102
.L.str.102:
	.asciz	"ebc_task"
	.size	.L.str.102, 9

	.type	.L.str.103,@object              // @.str.103
.L.str.103:
	.asciz	"failed to create ebc_task thread\n"
	.size	.L.str.103, 34

	.type	.L.str.104,@object              // @.str.104
.L.str.104:
	.asciz	"%s"
	.size	.L.str.104, 3

	.type	.L.str.105,@object              // @.str.105
.L.str.105:
	.asciz	"ebc-delay-power-off"
	.size	.L.str.105, 20

	.type	.L.str.106,@object              // @.str.106
.L.str.106:
	.asciz	"ebc-delay-ghost-rm"
	.size	.L.str.106, 19

	.type	.L.str.108,@object              // @.str.108
.L.str.108:
	.asciz	"[%s] no buffer, exit\n"
	.size	.L.str.108, 22

	.type	.L.str.109,@object              // @.str.109
.L.str.109:
	.asciz	"ASSIST THREAD"
	.size	.L.str.109, 14

	.type	.L.str.110,@object              // @.str.110
.L.str.110:
	.asciz	"[%s] lut mode, exit\n"
	.size	.L.str.110, 21

	.type	ebc_assist_finished_flag_sem,@object // @ebc_assist_finished_flag_sem
	.data
	.p2align	3, 0x0
ebc_assist_finished_flag_sem:
	.zero	4
	.word	1                               // 0x1
	.xword	ebc_assist_finished_flag_sem+8
	.xword	ebc_assist_finished_flag_sem+8
	.size	ebc_assist_finished_flag_sem, 24

	.type	_8_8bit_mask,@object            // @_8_8bit_mask
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
_8_8bit_mask:
	.xword	255                             // 0xff
	.xword	65280                           // 0xff00
	.xword	16711680                        // 0xff0000
	.xword	4278190080                      // 0xff000000
	.xword	1095216660480                   // 0xff00000000
	.xword	280375465082880                 // 0xff0000000000
	.xword	71776119061217280               // 0xff000000000000
	.xword	-72057594037927936              // 0xff00000000000000
	.size	_8_8bit_mask, 64

	.type	.L.str.111,@object              // @.str.111
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.111:
	.asciz	"[%s] overlay left: %s, frame total: %d, osd frame total: %d\n"
	.size	.L.str.111, 61

	.type	.L.str.112,@object              // @.str.112
.L.str.112:
	.asciz	"LEFT"
	.size	.L.str.112, 5

	.type	.L.str.113,@object              // @.str.113
.L.str.113:
	.asciz	"RIGHT"
	.size	.L.str.113, 6

	.type	.L.str.114,@object              // @.str.114
.L.str.114:
	.asciz	"LEFT & RIGHT"
	.size	.L.str.114, 13

	.type	.L.str.115,@object              // @.str.115
.L.str.115:
	.asciz	"true"
	.size	.L.str.115, 5

	.type	.L.str.116,@object              // @.str.116
.L.str.116:
	.asciz	"false"
	.size	.L.str.116, 6

	.type	.L__const.get_normal_panel_soft_tcon_auto_data.shift_table,@object // @__const.get_normal_panel_soft_tcon_auto_data.shift_table
.L__const.get_normal_panel_soft_tcon_auto_data.shift_table:
	.asciz	"\016\f\n\b\006\004\002"
	.size	.L__const.get_normal_panel_soft_tcon_auto_data.shift_table, 8

	.type	.L.str.117,@object              // @.str.117
.L.str.117:
	.asciz	"[%s] overlay left: %d, frame total: (%d, %d, %d)\n"
	.size	.L.str.117, 50

	.type	.L__const.get_normal_panel_auto_data.shift_table,@object // @__const.get_normal_panel_auto_data.shift_table
	.section	.rodata.cst8,"aM",@progbits,8
.L__const.get_normal_panel_auto_data.shift_table:
	.ascii	"\000\002\004\006\b\n\f\016"
	.size	.L__const.get_normal_panel_auto_data.shift_table, 8

	.type	.L__const.get_normal_panel_auto_data.offset,@object // @__const.get_normal_panel_auto_data.offset
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2, 0x0
.L__const.get_normal_panel_auto_data.offset:
	.word	3                               // 0x3
	.word	11                              // 0xb
	.word	19                              // 0x13
	.word	27                              // 0x1b
	.word	35                              // 0x23
	.word	43                              // 0x2b
	.word	51                              // 0x33
	.word	59                              // 0x3b
	.size	.L__const.get_normal_panel_auto_data.offset, 32

	.type	.L.str.118,@object              // @.str.118
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.118:
	.asciz	"[%s] dsp frameidx: %d, transition done: %s\n"
	.size	.L.str.118, 44

	.type	.L.str.119,@object              // @.str.119
.L.str.119:
	.asciz	"[%s] dsp frameidx: %d, transition (enable: %s, done: %s)\n"
	.size	.L.str.119, 58

	.type	.L.str.120,@object              // @.str.120
.L.str.120:
	.asciz	"[%s] ebc is idle, can flip the next frame\n"
	.size	.L.str.120, 43

	.type	.L.str.121,@object              // @.str.121
.L.str.121:
	.asciz	"MAIN THREAD"
	.size	.L.str.121, 12

	.type	.L.str.122,@object              // @.str.122
.L.str.122:
	.asciz	"[%s] refresh done: %s (dsp: %s, auto: %s), fast ghost rm done: %s\n"
	.size	.L.str.122, 67

	.type	.L.str.123,@object              // @.str.123
.L.str.123:
	.asciz	"[%s] need bw repair: 0x%02x, need transition: 0x%02x, need overlay: 0x%02x, next buf_mode: %d, next ebc_mode: %d\n"
	.size	.L.str.123, 114

	.type	.L.str.124,@object              // @.str.124
.L.str.124:
	.asciz	"[%s] has osd buf: %s, update osd buf: %s, has dsp buf: %s, update dsp buf: %s\n"
	.size	.L.str.124, 79

	.type	.L.str.125,@object              // @.str.125
.L.str.125:
	.asciz	"[%s] update dsp buf for next frame\n"
	.size	.L.str.125, 36

	.type	.L.str.126,@object              // @.str.126
.L.str.126:
	.asciz	"[%s] dsp frame start, refresh mode = %d, dsp frame total = %d, total = %d\n"
	.size	.L.str.126, 75

	.type	.L.str.127,@object              // @.str.127
.L.str.127:
	.asciz	"FRAME START"
	.size	.L.str.127, 12

	.type	.L.str.128,@object              // @.str.128
.L.str.128:
	.asciz	"[%s] dsp frame start, refresh mode = %d, dsp frame total = %d\n"
	.size	.L.str.128, 63

	.type	.L.str.129,@object              // @.str.129
.L.str.129:
	.asciz	"[%s] no buffer, frame done\n"
	.size	.L.str.129, 28

	.type	.L.str.130,@object              // @.str.130
.L.str.130:
	.asciz	"[%s] update lut_buffer"
	.size	.L.str.130, 23

	.type	.L.str.131,@object              // @.str.131
.L.str.131:
	.asciz	"[%s] update direct_buffer-%d, index: %d, mode: %d\n"
	.size	.L.str.131, 51

	.type	.L.str.132,@object              // @.str.132
.L.str.132:
	.asciz	"[%s] start processing the next frame\n"
	.size	.L.str.132, 38

	.type	.L.str.133,@object              // @.str.133
.L.str.133:
	.asciz	"/data/dump/prev_dsp_buf_Y8_%d_%d.yuv"
	.size	.L.str.133, 37

	.type	.L.str.134,@object              // @.str.134
.L.str.134:
	.asciz	"/data/dump/curr_dsp_buf_Y8_%d_%d.yuv"
	.size	.L.str.134, 37

	.type	.L.str.135,@object              // @.str.135
.L.str.135:
	.asciz	"/data/dump/auto_image_old_Y8_%d_%d.yuv"
	.size	.L.str.135, 39

	.type	.L.str.136,@object              // @.str.136
.L.str.136:
	.asciz	"/data/dump/auto_image_new_Y8_%d_%d.yuv"
	.size	.L.str.136, 39

	.type	.L.str.137,@object              // @.str.137
.L.str.137:
	.asciz	"/data/dump/auto_frame_count_Y8_%d_%d.yuv"
	.size	.L.str.137, 41

	.type	.L.str.138,@object              // @.str.138
.L.str.138:
	.asciz	"/data/dump/auto_image_ghost_Y8_%d_%d.yuv"
	.size	.L.str.138, 41

	.type	.L.str.139,@object              // @.str.139
.L.str.139:
	.asciz	"/data/dump/auto_wf_index_Y8_%d_%d.yuv"
	.size	.L.str.139, 38

	.type	.L.str.140,@object              // @.str.140
.L.str.140:
	.asciz	"/data/dump/direct_buffer_Y8_%d_%d.yuv"
	.size	.L.str.140, 38

	.type	.L.str.141,@object              // @.str.141
.L.str.141:
	.asciz	"\0013Data size %zu is less than 4 bytes\n"
	.size	.L.str.141, 38

	.type	.L.str.142,@object              // @.str.142
.L.str.142:
	.asciz	"\0013Failed to open file: %s\n"
	.size	.L.str.142, 27

	.type	.L.str.143,@object              // @.str.143
.L.str.143:
	.asciz	"\0013Failed to write to file: %ld\n"
	.size	.L.str.143, 32

	.type	.L.str.144,@object              // @.str.144
.L.str.144:
	.asciz	"\0013Failed to write index: %ld\n"
	.size	.L.str.144, 30

	.type	.L.str.145,@object              // @.str.145
.L.str.145:
	.asciz	"\0016Successfully wrote %zu bytes to %s\n"
	.size	.L.str.145, 38

	.type	.L.str.146,@object              // @.str.146
.L.str.146:
	.asciz	"[%s] ebc hw power on res:%d\n"
	.size	.L.str.146, 29

	.type	.L.str.147,@object              // @.str.147
.L.str.147:
	.asciz	"POWER"
	.size	.L.str.147, 6

	.type	.L.str.148,@object              // @.str.148
.L.str.148:
	.asciz	"[%s] ebc hw power off res:%d\n"
	.size	.L.str.148, 30

	.type	.L.str.149,@object              // @.str.149
.L.str.149:
	.asciz	"[%s] lut mode flip buffer\n"
	.size	.L.str.149, 27

	.type	.L.str.150,@object              // @.str.150
.L.str.150:
	.asciz	"FLIP"
	.size	.L.str.150, 5

	.type	.L.str.151,@object              // @.str.151
.L.str.151:
	.asciz	"Failed to set lut in lut mode:%d\n"
	.size	.L.str.151, 34

	.type	.L.str.152,@object              // @.str.152
.L.str.152:
	.asciz	"[%s] update lut in lut mode:%d\n"
	.size	.L.str.152, 32

	.type	.L.str.153,@object              // @.str.153
.L.str.153:
	.asciz	"[%s] direct mode flip buffer index: %d\n"
	.size	.L.str.153, 40

	.type	.L.str.154,@object              // @.str.154
.L.str.154:
	.asciz	"[%s] Ghost exists, needs to be cleared in fast mode.\n"
	.size	.L.str.154, 54

	.type	.L.str.155,@object              // @.str.155
.L.str.155:
	.asciz	"AUTO UPDATE"
	.size	.L.str.155, 12

	.type	.L.str.156,@object              // @.str.156
.L.str.156:
	.asciz	"[%s] No new ghost needs to be cleared in fast mode.\n"
	.size	.L.str.156, 53

	.type	.L.str.157,@object              // @.str.157
.L.str.157:
	.asciz	"[%s] No ghost needs to be cleared in fast mode.\n"
	.size	.L.str.157, 49

	.type	.L.str.158,@object              // @.str.158
.L.str.158:
	.asciz	"[%s] ebc buffer mode %d not support!\n"
	.size	.L.str.158, 38

	.type	.L.str.159,@object              // @.str.159
.L.str.159:
	.asciz	"[%s] force temperature = %d\n"
	.size	.L.str.159, 29

	.type	.L.str.160,@object              // @.str.160
.L.str.160:
	.asciz	"[%s] temperature = %d, out of range0~50 ,use 0 \n"
	.size	.L.str.160, 49

	.type	.L.str.161,@object              // @.str.161
.L.str.161:
	.asciz	"[%s] temperature = %d, out of range0~50 ,use 50 \n"
	.size	.L.str.161, 50

	.type	.L.str.162,@object              // @.str.162
.L.str.162:
	.asciz	"[%s] ebc_pmic_read_temp failed, ret = %d, use 25 \n"
	.size	.L.str.162, 51

	.type	.L.str.163,@object              // @.str.163
.L.str.163:
	.asciz	"[%s] overlay_temperature_fix(%d) overflow, use origin temperature(%d)\n"
	.size	.L.str.163, 71

	.type	.L.str.164,@object              // @.str.164
.L.str.164:
	.asciz	"[%s] normal_temperature_fix(%d) overflow, use origin temperature(%d)\n"
	.size	.L.str.164, 70

	.type	.L.str.165,@object              // @.str.165
.L.str.165:
	.asciz	"[%s] lut update use overlay_temperature_fix = %d normal_temperature_fix = %d, origin temperature = %d\n"
	.size	.L.str.165, 103

	.type	.L.str.166,@object              // @.str.166
.L.str.166:
	.asciz	"[%s] get lut data failed\n"
	.size	.L.str.166, 26

	.type	.L.str.167,@object              // @.str.167
.L.str.167:
	.asciz	"[%s] osd lut data update\n"
	.size	.L.str.167, 26

	.type	.L.str.168,@object              // @.str.168
.L.str.168:
	.asciz	"[%s] dsp lut data update\n"
	.size	.L.str.168, 26

	.type	.L.str.169,@object              // @.str.169
.L.str.169:
	.asciz	"[%s] break part or full mode to auto mode\n"
	.size	.L.str.169, 43

	.type	.L.str.170,@object              // @.str.170
.L.str.170:
	.asciz	"MODE CHANGE"
	.size	.L.str.170, 12

	.type	.L.str.171,@object              // @.str.171
.L.str.171:
	.asciz	"[%s] part or full mode to auto(full) mode\n"
	.size	.L.str.171, 43

	.type	.L.str.172,@object              // @.str.172
.L.str.172:
	.asciz	"[%s] part or full mode to auto(%s) mode\n"
	.size	.L.str.172, 41

	.type	.L.str.173,@object              // @.str.173
.L.str.173:
	.asciz	"part"
	.size	.L.str.173, 5

	.type	.L.str.174,@object              // @.str.174
.L.str.174:
	.asciz	"fast"
	.size	.L.str.174, 5

	.type	.L.str.175,@object              // @.str.175
.L.str.175:
	.asciz	"[%s] overlay osd buffer to auto_image (%d, %d, %d, %d), complete: %s, overlay_enable: %d\n"
	.size	.L.str.175, 90

	.type	.L.str.176,@object              // @.str.176
.L.str.176:
	.asciz	"[%s] update fast buffer to auto_image\n"
	.size	.L.str.176, 39

	.type	.L.str.177,@object              // @.str.177
.L.str.177:
	.asciz	"[%s] auto(part) mode to part or full mode\n"
	.size	.L.str.177, 43

	.type	.L.str.178,@object              // @.str.178
.L.str.178:
	.asciz	"[%s] auto(full) mode to part or full mode\n"
	.size	.L.str.178, 43

	.type	.L.str.179,@object              // @.str.179
.L.str.179:
	.asciz	"[%s] auto(fast) mode to part or full mode\n"
	.size	.L.str.179, 43

	.type	.L.str.180,@object              // @.str.180
.L.str.180:
	.asciz	"[%s] update %s buffer to auto_image, complete: %s\n"
	.size	.L.str.180, 51

	.type	.L.str.181,@object              // @.str.181
.L.str.181:
	.asciz	"full"
	.size	.L.str.181, 5

	.type	.L.str.182,@object              // @.str.182
.L.str.182:
	.asciz	"[%s] transition type = %d, step = %d\n"
	.size	.L.str.182, 38

	.type	.L.str.183,@object              // @.str.183
.L.str.183:
	.asciz	"TRANSITION"
	.size	.L.str.183, 11

	.type	.L.str.184,@object              // @.str.184
.L.str.184:
	.asciz	"ebc"
	.size	.L.str.184, 4

	.type	.L.str.185,@object              // @.str.185
.L.str.185:
	.asciz	"ulogo_addr="
	.size	.L.str.185, 12

	.type	.L.str.186,@object              // @.str.186
.L.str.186:
	.asciz	"klogo_addr="
	.size	.L.str.186, 12

	.type	.L.str.187,@object              // @.str.187
.L.str.187:
	.asciz	"memory-region"
	.size	.L.str.187, 14

	.type	.L.str.188,@object              // @.str.188
.L.str.188:
	.asciz	"Couldn't address to resource for reserved memory\n"
	.size	.L.str.188, 50

	.type	.L.str.189,@object              // @.str.189
.L.str.189:
	.asciz	"reserved memory not enough, need 0x%x\n"
	.size	.L.str.189, 39

	.type	.L.str.190,@object              // @.str.190
.L.str.190:
	.asciz	"Couldn't remap for reserved memory\n"
	.size	.L.str.190, 36

	.type	.L.str.191,@object              // @.str.191
.L.str.191:
	.asciz	"ulogo_addr=0x%x"
	.size	.L.str.191, 16

	.type	.L.str.192,@object              // @.str.192
.L.str.192:
	.asciz	"have ulogo display, ulogo addr = 0x%x\n"
	.size	.L.str.192, 39

	.type	.L.str.193,@object              // @.str.193
.L.str.193:
	.asciz	"malloc ulogo buffer failed\n"
	.size	.L.str.193, 28

	.type	.L.str.194,@object              // @.str.194
.L.str.194:
	.asciz	"klogo_addr=0x%x"
	.size	.L.str.194, 16

	.type	.L.str.195,@object              // @.str.195
.L.str.195:
	.asciz	"need show klogo, klogo addr = 0x%x\n"
	.size	.L.str.195, 36

	.type	.L.str.196,@object              // @.str.196
.L.str.196:
	.asciz	"malloc klogo buffer failed\n"
	.size	.L.str.196, 28

	.type	.L.str.197,@object              // @.str.197
.L.str.197:
	.asciz	"no uboot logo, panel init\n"
	.size	.L.str.197, 27

	.type	.L.str.198,@object              // @.str.198
.L.str.198:
	.asciz	"ebc_dev_logo"
	.size	.L.str.198, 13

	.type	.L.str.199,@object              // @.str.199
.L.str.199:
	.asciz	"ebc_dev_reset"
	.size	.L.str.199, 14

	.type	ebc_misc,@object                // @ebc_misc
	.data
	.p2align	3, 0x0
ebc_misc:
	.word	243                             // 0xf3
	.zero	4
	.xword	.L.str.184
	.xword	ebc_ops
	.zero	16
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.hword	0                               // 0x0
	.zero	6
	.size	ebc_misc, 80

	.type	ebc_ops,@object                 // @ebc_ops
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
ebc_ops:
	.xword	0
	.word	0                               // 0x0
	.zero	4
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	ebc_io_ctl
	.xword	ebc_io_ctl
	.xword	0
	.xword	ebc_open
	.xword	0
	.xword	ebc_release
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.size	ebc_ops, 264

	.type	.L.str.202,@object              // @.str.202
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.202:
	.asciz	"%s: argp NULL\n"
	.size	.L.str.202, 15

	.type	.L__func__.ebc_io_ctl,@object   // @__func__.ebc_io_ctl
.L__func__.ebc_io_ctl:
	.asciz	"ebc_io_ctl"
	.size	.L__func__.ebc_io_ctl, 11

	.type	.L.str.203,@object              // @.str.203
.L.str.203:
	.asciz	"%s\n"
	.size	.L.str.203, 4

	.type	.L.str.204,@object              // @.str.204
.L.str.204:
	.asciz	"[%s] EBC_GET_OSD_BUFFER\n"
	.size	.L.str.204, 25

	.type	.L.str.205,@object              // @.str.205
.L.str.205:
	.asciz	"IOCTL"
	.size	.L.str.205, 6

	.type	.L.str.206,@object              // @.str.206
.L.str.206:
	.asciz	"[%s] EBC_GET_BUFFER\n"
	.size	.L.str.206, 21

	.type	.L.str.207,@object              // @.str.207
.L.str.207:
	.asciz	"[%s] EBC_SEND_BUFFER\n"
	.size	.L.str.207, 22

	.type	.L.str.208,@object              // @.str.208
.L.str.208:
	.asciz	"[%s] EBC_SEND_OSD_BUFFER\n"
	.size	.L.str.208, 26

	.type	.L.str.209,@object              // @.str.209
.L.str.209:
	.asciz	"EBC_GET_BUFFER_INFO failed\n"
	.size	.L.str.209, 28

	.type	.L.str.210,@object              // @.str.210
.L.str.210:
	.asciz	"[%s] EBC_FB_BLANK\n"
	.size	.L.str.210, 19

	.type	.L.str.211,@object              // @.str.211
.L.str.211:
	.asciz	"[%s] EBC_FB_UNBLANK\n"
	.size	.L.str.211, 21

	.type	.L.str.212,@object              // @.str.212
.L.str.212:
	.asciz	"[%s] EBC_BW_ENABLE_REPAIR = %d\n"
	.size	.L.str.212, 32

	.type	.L.str.213,@object              // @.str.213
.L.str.213:
	.asciz	"[%s] EBC_BW_BALANCE_CTL = %d\n"
	.size	.L.str.213, 30

	.type	.L.str.214,@object              // @.str.214
.L.str.214:
	.asciz	"[%s] EBC_BW_GHOST_RM_LEVEL = %d\n"
	.size	.L.str.214, 33

	.type	.L.str.215,@object              // @.str.215
.L.str.215:
	.asciz	"[%s] EBC_BW_GHOST_RM_TYPE = %d\n"
	.size	.L.str.215, 32

	.type	.L.str.216,@object              // @.str.216
.L.str.216:
	.asciz	"[%s] EBC_SET_TRANSITION_WIDTH = %d\n"
	.size	.L.str.216, 36

	.type	.L.str.217,@object              // @.str.217
.L.str.217:
	.asciz	"[%s] EBC_SET_TRANSITION_TYPE = %d\n"
	.size	.L.str.217, 35

	.type	.L.str.218,@object              // @.str.218
.L.str.218:
	.asciz	"[%s] EBC_SET_FORCE_TEMPERATURE = %d\n"
	.size	.L.str.218, 37

	.type	.L.str.219,@object              // @.str.219
.L.str.219:
	.asciz	"[%s] EBC_ENABLE_WAVEFORM_FIX = %d\n"
	.size	.L.str.219, 35

	.type	.L.str.220,@object              // @.str.220
.L.str.220:
	.asciz	"[%s] EBC_SET_REGAL_TYPE = %d\n"
	.size	.L.str.220, 30

	.type	.L.str.221,@object              // @.str.221
.L.str.221:
	.asciz	"[%s] EBC_FORCE_FULL_USE_REGAL = %d\n"
	.size	.L.str.221, 36

	.type	.L.str.222,@object              // @.str.222
.L.str.222:
	.asciz	"[%s] EBC_ENABLE_OVERLAY, overlay_enable_control = %d\n"
	.size	.L.str.222, 54

	.type	.L.str.223,@object              // @.str.223
.L.str.223:
	.asciz	"[%s] EBC_DISABLE_OVERLAY, overlay_enable_control = %d\n"
	.size	.L.str.223, 55

	.type	.L.str.224,@object              // @.str.224
.L.str.224:
	.asciz	"[%s] EBC_PEN_PROXIMITY = %d, overlay_enable_control = %d\n"
	.size	.L.str.224, 58

	.type	.L.str.225,@object              // @.str.225
.L.str.225:
	.asciz	"%s: unknown cmd\n"
	.size	.L.str.225, 17

	.type	get_file.__already_done,@object // @get_file.__already_done
	.section	.data..once,"aw",@progbits
get_file.__already_done:
	.byte	0                               // 0x0
	.size	get_file.__already_done, 1

	.type	.L.str.226,@object              // @.str.226
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.226:
	.asciz	"struct file::f_count incremented from zero; use-after-free condition present!\n"
	.size	.L.str.226, 79

	.type	.L.str.227,@object              // @.str.227
.L.str.227:
	.asciz	"waveform"
	.size	.L.str.227, 9

	.type	waveform_misc,@object           // @waveform_misc
	.data
	.p2align	3, 0x0
waveform_misc:
	.word	244                             // 0xf4
	.zero	4
	.xword	.L.str.227
	.xword	waveform_ops
	.zero	16
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.hword	0                               // 0x0
	.zero	6
	.size	waveform_misc, 80

	.type	waveform_ops,@object            // @waveform_ops
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
waveform_ops:
	.xword	0
	.word	0                               // 0x0
	.zero	4
	.xword	waveform_llseek
	.xword	waveform_read
	.xword	waveform_write
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	waveform_mmap
	.xword	waveform_open
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.size	waveform_ops, 264

	.type	.L.str.230,@object              // @.str.230
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.230:
	.asciz	"transition_lut"
	.size	.L.str.230, 15

	.type	transition_lut_misc,@object     // @transition_lut_misc
	.data
	.p2align	3, 0x0
transition_lut_misc:
	.word	245                             // 0xf5
	.zero	4
	.xword	.L.str.230
	.xword	transition_lut_ops
	.zero	16
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.hword	0                               // 0x0
	.zero	6
	.size	transition_lut_misc, 80

	.type	transition_lut_ops,@object      // @transition_lut_ops
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
transition_lut_ops:
	.xword	0
	.word	0                               // 0x0
	.zero	4
	.xword	transition_lut_llseek
	.xword	transition_lut_read
	.xword	transition_lut_write
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	transition_lut_mmap
	.xword	transition_lut_open
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.size	transition_lut_ops, 264

	.type	transition_lut_vm_ops,@object   // @transition_lut_vm_ops
	.p2align	3, 0x0
transition_lut_vm_ops:
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	transition_lut_vm_fault
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	0                               // 0x0
	.xword	0                               // 0x0
	.xword	0                               // 0x0
	.xword	0                               // 0x0
	.size	transition_lut_vm_ops, 144

	.type	.L.str.233,@object              // @.str.233
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.233:
	.asciz	"waveform_version"
	.size	.L.str.233, 17

	.type	dev_attr_waveform_version,@object // @dev_attr_waveform_version
	.data
	.p2align	3, 0x0
dev_attr_waveform_version:
	.xword	.L.str.233
	.hword	292                             // 0x124
	.zero	6
	.xword	waveform_version_read
	.xword	0
	.size	dev_attr_waveform_version, 32

	.type	.L.str.235,@object              // @.str.235
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.235:
	.asciz	"pmic_name"
	.size	.L.str.235, 10

	.type	dev_attr_pmic_name,@object      // @dev_attr_pmic_name
	.data
	.p2align	3, 0x0
dev_attr_pmic_name:
	.xword	.L.str.235
	.hword	292                             // 0x124
	.zero	6
	.xword	pmic_name_read
	.xword	0
	.size	dev_attr_pmic_name, 32

	.type	.L.str.237,@object              // @.str.237
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.237:
	.asciz	"pmic_temp"
	.size	.L.str.237, 10

	.type	dev_attr_pmic_temp,@object      // @dev_attr_pmic_temp
	.data
	.p2align	3, 0x0
dev_attr_pmic_temp:
	.xword	.L.str.237
	.hword	292                             // 0x124
	.zero	6
	.xword	pmic_temp_read
	.xword	0
	.size	dev_attr_pmic_temp, 32

	.type	.L.str.239,@object              // @.str.239
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.239:
	.asciz	"%d\n"
	.size	.L.str.239, 4

	.type	.L.str.240,@object              // @.str.240
.L.str.240:
	.asciz	"pmic_vcom"
	.size	.L.str.240, 10

	.type	dev_attr_pmic_vcom,@object      // @dev_attr_pmic_vcom
	.data
	.p2align	3, 0x0
dev_attr_pmic_vcom:
	.xword	.L.str.240
	.hword	420                             // 0x1a4
	.zero	6
	.xword	pmic_vcom_read
	.xword	pmic_vcom_write
	.size	dev_attr_pmic_vcom, 32

	.type	.L.str.242,@object              // @.str.242
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.242:
	.asciz	"invalid value = %s\n"
	.size	.L.str.242, 20

	.type	.L.str.243,@object              // @.str.243
.L.str.243:
	.asciz	"set vcom value failed\n"
	.size	.L.str.243, 23

	.type	.L.str.244,@object              // @.str.244
.L.str.244:
	.asciz	"ebc_version"
	.size	.L.str.244, 12

	.type	dev_attr_ebc_version,@object    // @dev_attr_ebc_version
	.data
	.p2align	3, 0x0
dev_attr_ebc_version:
	.xword	.L.str.244
	.hword	292                             // 0x124
	.zero	6
	.xword	ebc_version_read
	.xword	0
	.size	dev_attr_ebc_version, 32

	.type	.L.str.246,@object              // @.str.246
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.246:
	.asciz	"ebc_state"
	.size	.L.str.246, 10

	.type	dev_attr_ebc_state,@object      // @dev_attr_ebc_state
	.data
	.p2align	3, 0x0
dev_attr_ebc_state:
	.xword	.L.str.246
	.hword	292                             // 0x124
	.zero	6
	.xword	ebc_state_read
	.xword	0
	.size	dev_attr_ebc_state, 32

	.type	.L.str.248,@object              // @.str.248
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.248:
	.asciz	"ebc_buf_state"
	.size	.L.str.248, 14

	.type	dev_attr_ebc_buf_state,@object  // @dev_attr_ebc_buf_state
	.data
	.p2align	3, 0x0
dev_attr_ebc_buf_state:
	.xword	.L.str.248
	.hword	420                             // 0x1a4
	.zero	6
	.xword	ebc_buf_state_read
	.xword	ebc_buf_state_write
	.size	dev_attr_ebc_buf_state, 32

	.type	.L.str.250,@object              // @.str.250
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.250:
	.asciz	"603893"
	.size	.L.str.250, 7

	.type	.L.str.251,@object              // @.str.251
.L.str.251:
	.asciz	"dump_buffer"
	.size	.L.str.251, 12

	.type	dev_attr_dump_buffer,@object    // @dev_attr_dump_buffer
	.data
	.p2align	3, 0x0
dev_attr_dump_buffer:
	.xword	.L.str.251
	.hword	128                             // 0x80
	.zero	6
	.xword	0
	.xword	dump_buffer_write
	.size	dev_attr_dump_buffer, 32

	.type	.L.str.253,@object              // @.str.253
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.253:
	.asciz	"auto_frame_state"
	.size	.L.str.253, 17

	.type	dev_attr_auto_frame_state,@object // @dev_attr_auto_frame_state
	.data
	.p2align	3, 0x0
dev_attr_auto_frame_state:
	.xword	.L.str.253
	.hword	292                             // 0x124
	.zero	6
	.xword	auto_frame_state_read
	.xword	0
	.size	dev_attr_auto_frame_state, 32

	.type	.L.str.255,@object              // @.str.255
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.255:
	.asciz	"0\n"
	.size	.L.str.255, 3

	.type	.L.str.256,@object              // @.str.256
.L.str.256:
	.asciz	"ebc_debug_level"
	.size	.L.str.256, 16

	.type	dev_attr_ebc_debug_level,@object // @dev_attr_ebc_debug_level
	.data
	.p2align	3, 0x0
dev_attr_ebc_debug_level:
	.xword	.L.str.256
	.hword	420                             // 0x1a4
	.zero	6
	.xword	ebc_debug_level_read
	.xword	ebc_debug_level_write
	.size	dev_attr_ebc_debug_level, 32

	.type	.L.str.258,@object              // @.str.258
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.258:
	.asciz	"wf_data"
	.size	.L.str.258, 8

	.type	dev_attr_wf_data,@object        // @dev_attr_wf_data
	.data
	.p2align	3, 0x0
dev_attr_wf_data:
	.xword	.L.str.258
	.hword	128                             // 0x80
	.zero	6
	.xword	0
	.xword	wf_data_write
	.size	dev_attr_wf_data, 32

	.type	.L.str.260,@object              // @.str.260
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.260:
	.asciz	"lutdata: %d frames\n"
	.size	.L.str.260, 20

	.type	.L.str.261,@object              // @.str.261
.L.str.261:
	.asciz	"[%d-->%d]: \n"
	.size	.L.str.261, 13

	.type	.L.str.262,@object              // @.str.262
.L.str.262:
	.asciz	"\001c\0017%d, "
	.size	.L.str.262, 9

	.type	.L.str.263,@object              // @.str.263
.L.str.263:
	.asciz	"overlay_wf_data"
	.size	.L.str.263, 16

	.type	dev_attr_overlay_wf_data,@object // @dev_attr_overlay_wf_data
	.data
	.p2align	3, 0x0
dev_attr_overlay_wf_data:
	.xword	.L.str.263
	.hword	128                             // 0x80
	.zero	6
	.xword	0
	.xword	overlay_wf_data_write
	.size	dev_attr_overlay_wf_data, 32

	.type	.L.str.265,@object              // @.str.265
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.265:
	.asciz	"ori_wf_data"
	.size	.L.str.265, 12

	.type	dev_attr_ori_wf_data,@object    // @dev_attr_ori_wf_data
	.data
	.p2align	3, 0x0
dev_attr_ori_wf_data:
	.xword	.L.str.265
	.hword	128                             // 0x80
	.zero	6
	.xword	0
	.xword	ori_wf_data_write
	.size	dev_attr_ori_wf_data, 32

	.type	.L.str.267,@object              // @.str.267
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.267:
	.asciz	"malloc wf_table buffer failed\n"
	.size	.L.str.267, 31

	.type	.L.str.268,@object              // @.str.268
.L.str.268:
	.asciz	"603893 %d %d"
	.size	.L.str.268, 13

	.type	.L.str.269,@object              // @.str.269
.L.str.269:
	.asciz	"%s: wf mode %d on temp %d\n"
	.size	.L.str.269, 27

	.type	.L__func__.ori_wf_data_write,@object // @__func__.ori_wf_data_write
.L__func__.ori_wf_data_write:
	.asciz	"ori_wf_data_write"
	.size	.L__func__.ori_wf_data_write, 18

	.type	.L.str.270,@object              // @.str.270
.L.str.270:
	.asciz	"%s: err code\n"
	.size	.L.str.270, 14

	.type	.L.str.271,@object              // @.str.271
.L.str.271:
	.asciz	"%s: err lut_type or temp\n"
	.size	.L.str.271, 26

	.type	.L.str.272,@object              // @.str.272
.L.str.272:
	.asciz	"device suspend\n"
	.size	.L.str.272, 16

	.type	.L.str.273,@object              // @.str.273
.L.str.273:
	.asciz	"device resume\n"
	.size	.L.str.273, 15

	.type	.Lswitch.table.ebc_probe.275,@object // @switch.table.ebc_probe.275
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.Lswitch.table.ebc_probe.275:
	.word	3566                            // 0xdee
	.word	3576                            // 0xdf8
	.word	3572                            // 0xdf4
	.word	3506                            // 0xdb2
	.word	3326                            // 0xcfe
	.size	.Lswitch.table.ebc_probe.275, 20

	.ident	"Android (13290119, +pgo, +bolt, +lto, +mlgo, based on r547379) clang version 20.0.0 (https://android.googlesource.com/toolchain/llvm-project b718bcaf8c198c82f3021447d943401e3ab5bd54)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ebc_exit
	.addrsig_sym ebc_init
	.addrsig_sym ebc_probe
	.addrsig_sym ebc_remove
	.addrsig_sym frame_done_callback
	.addrsig_sym ebc_assist_thread
	.addrsig_sym ebc_thread
	.addrsig_sym ebc_delay_power_off
	.addrsig_sym delayed_work_timer_fn
	.addrsig_sym ebc_wake_up_for_ghost_rm_last
	.addrsig_sym ebc_io_ctl
	.addrsig_sym ebc_open
	.addrsig_sym ebc_release
	.addrsig_sym waveform_llseek
	.addrsig_sym waveform_read
	.addrsig_sym waveform_write
	.addrsig_sym waveform_mmap
	.addrsig_sym waveform_open
	.addrsig_sym transition_lut_llseek
	.addrsig_sym transition_lut_read
	.addrsig_sym transition_lut_write
	.addrsig_sym transition_lut_mmap
	.addrsig_sym transition_lut_open
	.addrsig_sym transition_lut_vm_fault
	.addrsig_sym waveform_version_read
	.addrsig_sym pmic_name_read
	.addrsig_sym pmic_temp_read
	.addrsig_sym pmic_vcom_read
	.addrsig_sym pmic_vcom_write
	.addrsig_sym ebc_version_read
	.addrsig_sym ebc_state_read
	.addrsig_sym ebc_buf_state_read
	.addrsig_sym ebc_buf_state_write
	.addrsig_sym dump_buffer_write
	.addrsig_sym auto_frame_state_read
	.addrsig_sym ebc_debug_level_read
	.addrsig_sym ebc_debug_level_write
	.addrsig_sym wf_data_write
	.addrsig_sym overlay_wf_data_write
	.addrsig_sym ori_wf_data_write
	.addrsig_sym ebc_suspend
	.addrsig_sym ebc_resume
	.addrsig_sym __gendwarfksyms_rule_486
	.addrsig_sym __UNIQUE_ID___addressable_ebc_init650
	.addrsig_sym __exitcall_ebc_exit
	.addrsig_sym __UNIQUE_ID_author651
	.addrsig_sym __UNIQUE_ID_description652
	.addrsig_sym __UNIQUE_ID_file653
	.addrsig_sym __UNIQUE_ID_license654
	.addrsig_sym ebc_match
	.addrsig_sym ebc_pm
	.addrsig_sym ebc_driver
	.addrsig_sym ebc_flip_wq
	.addrsig_sym ebc_assist_finished_flag_sem
	.addrsig_sym cpu_bit_bitmap
	.addrsig_sym ebc_misc
	.addrsig_sym ebc_ops
	.addrsig_sym waveform_misc
	.addrsig_sym waveform_ops
	.addrsig_sym transition_lut_misc
	.addrsig_sym transition_lut_ops
	.addrsig_sym transition_lut_vm_ops
	.addrsig_sym dev_attr_waveform_version
	.addrsig_sym dev_attr_pmic_name
	.addrsig_sym dev_attr_pmic_temp
	.addrsig_sym dev_attr_pmic_vcom
	.addrsig_sym dev_attr_ebc_version
	.addrsig_sym dev_attr_ebc_state
	.addrsig_sym dev_attr_ebc_buf_state
	.addrsig_sym dev_attr_dump_buffer
	.addrsig_sym dev_attr_auto_frame_state
	.addrsig_sym dev_attr_ebc_debug_level
	.addrsig_sym dev_attr_wf_data
	.addrsig_sym dev_attr_overlay_wf_data
	.addrsig_sym dev_attr_ori_wf_data
