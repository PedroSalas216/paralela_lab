	.file	"core.c"
	.text
.Ltext0:
	.file 0 "/home/pedro/cp25/paralela_lab" "core.c"
	.p2align 4
	.globl	init_pos
	.type	init_pos, @function
init_pos:
.LVL0:
.LFB6445:
	.file 1 "core.c"
	.loc 1 12 1 view -0
	.cfi_startproc
	.loc 1 12 1 is_stmt 0 view .LVU1
	endbr64
	.loc 1 13 5 is_stmt 1 view .LVU2
	.loc 1 12 1 is_stmt 0 view .LVU3
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.loc 1 13 15 view .LVU4
	vcvtss2sd	%xmm0, %xmm0, %xmm0
.LVL1:
	.loc 1 12 1 view .LVU5
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	pushq	%rbx
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 10, -56
	.cfi_offset 3, -64
	movq	%rdi, %rbx
	subq	$48, %rsp
	.loc 1 13 15 view .LVU6
	vmovsd	.LC0(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	call	cbrt@PLT
.LVL2:
.LBB38:
.LBB39:
.LBB40:
	.loc 1 23 31 view .LVU7
	vxorps	%xmm14, %xmm14, %xmm14
	movq	8(%rbx), %r9
	movq	(%rbx), %r11
.LBE40:
.LBE39:
.LBE38:
	.loc 1 13 11 discriminator 1 view .LVU8
	vcvtsd2ss	%xmm0, %xmm0, %xmm2
.LVL3:
	.loc 1 14 5 is_stmt 1 view .LVU9
	.loc 1 15 5 view .LVU10
	.loc 1 17 5 view .LVU11
.LBB50:
	.loc 1 17 10 view .LVU12
	.loc 1 17 23 discriminator 1 view .LVU13
.LBB47:
.LBB41:
	.loc 1 23 31 is_stmt 0 view .LVU14
	vmulss	.LC5(%rip), %xmm2, %xmm5
	vaddss	%xmm2, %xmm2, %xmm3
	movq	16(%rbx), %r8
	vmulss	.LC6(%rip), %xmm2, %xmm1
	.loc 1 27 39 view .LVU15
	vcvtss2sd	%xmm2, %xmm2, %xmm4
.LBE41:
.LBE47:
	.loc 1 17 14 view .LVU16
	xorl	%r10d, %r10d
.LBB48:
.LBB42:
	.loc 1 27 39 view .LVU17
	vmovsd	%xmm4, -56(%rbp)
	vmulss	.LC4(%rip), %xmm2, %xmm6
	vxorps	%xmm10, %xmm10, %xmm10
	vmulss	.LC3(%rip), %xmm2, %xmm7
	vunpcklps	%xmm3, %xmm3, %xmm8
	.loc 1 23 31 view .LVU18
	vmovss	%xmm3, -60(%rbp)
	vmulss	.LC2(%rip), %xmm2, %xmm11
	vmulss	%xmm14, %xmm2, %xmm14
	vunpcklps	%xmm5, %xmm5, %xmm9
	vmovss	%xmm5, -84(%rbp)
	vunpcklps	%xmm1, %xmm1, %xmm0
	vmovd	%xmm1, %r14d
	vmovlhps	%xmm0, %xmm9, %xmm9
	vunpcklps	%xmm6, %xmm6, %xmm0
	vmovd	%xmm6, %r13d
	vmovss	%xmm7, -64(%rbp)
	vmovlhps	%xmm0, %xmm8, %xmm8
	vunpcklps	%xmm7, %xmm7, %xmm0
	vunpcklps	%xmm2, %xmm2, %xmm7
	vmovaps	%xmm11, %xmm12
	vmovlhps	%xmm0, %xmm7, %xmm7
	vmovaps	%xmm14, %xmm11
.LVL4:
.L2:
	.loc 1 23 31 view .LVU19
.LBE42:
	.loc 1 18 27 is_stmt 1 discriminator 1 view .LVU20
.LBB43:
	.loc 1 27 32 is_stmt 0 view .LVU21
	vcvtsi2sdl	%r10d, %xmm10, %xmm0
	movq	%r11, %rax
	movq	%r9, %rdx
	addq	$256, %r11
	movq	%r8, %rcx
	.loc 1 21 31 view .LVU22
	vcvtsi2ssl	%r10d, %xmm10, %xmm4
	movq	%r9, %rdi
	movq	%r8, %rsi
	addq	$256, %r9
	addq	$256, %r8
	cmpq	%r11, %rdx
	setnb	%r12b
	cmpq	%r9, %rax
	.loc 1 27 32 view .LVU23
	vaddsd	.LC7(%rip), %xmm0, %xmm0
	setnb	%bl
	.loc 1 21 31 view .LVU24
	vmulss	%xmm2, %xmm4, %xmm4
	orl	%ebx, %r12d
	cmpq	%r11, %rcx
	setnb	%r15b
	cmpq	%r8, %rax
	.loc 1 27 39 view .LVU25
	vmulsd	-56(%rbp), %xmm0, %xmm0
	setnb	%bl
	orl	%r15d, %ebx
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	testb	%bl, %r12b
	je	.L8
	cmpq	%r9, %rcx
	setnb	%r12b
	cmpq	%r8, %rdx
	setnb	%bl
	orb	%r12b, %bl
	je	.L8
	vunpcklps	%xmm4, %xmm0, %xmm1
	vunpcklps	%xmm11, %xmm11, %xmm3
	vunpcklps	%xmm0, %xmm4, %xmm4
	vunpcklps	%xmm12, %xmm12, %xmm0
	vmovlhps	%xmm1, %xmm4, %xmm4
	.loc 1 22 31 view .LVU26
	vshufps	$0, %xmm2, %xmm2, %xmm1
	vmulps	.LC8(%rip), %xmm1, %xmm1
	vmovlhps	%xmm0, %xmm3, %xmm3
	vmovddup	-56(%rbp), %xmm0
.LVL5:
	.loc 1 19 31 is_stmt 1 discriminator 1 view .LVU27
	.loc 1 21 17 view .LVU28
	.loc 1 22 17 view .LVU29
	.loc 1 23 17 view .LVU30
	.loc 1 24 17 view .LVU31
	.loc 1 27 17 view .LVU32
	.loc 1 28 17 view .LVU33
	.loc 1 21 27 is_stmt 0 view .LVU34
	vmovups	%xmm4, (%rax)
	.loc 1 28 39 view .LVU35
	vmulpd	.LC9(%rip), %xmm0, %xmm5
	.loc 1 21 27 view .LVU36
	vmovups	%xmm4, 16(%rax)
	.loc 1 28 39 view .LVU37
	vmulpd	.LC10(%rip), %xmm0, %xmm0
	.loc 1 21 27 view .LVU38
	vmovups	%xmm4, 32(%rax)
	vmovups	%xmm4, 48(%rax)
	vmovups	%xmm4, 64(%rax)
	vmovups	%xmm4, 80(%rax)
	.loc 1 40 27 view .LVU39
	vpermilps	$0, %xmm1, %xmm6
	.loc 1 21 27 view .LVU40
	vmovups	%xmm4, 96(%rax)
	.loc 1 28 39 view .LVU41
	vinsertf128	$0x1, %xmm0, %ymm5, %ymm0
	.loc 1 21 27 view .LVU42
	vmovups	%xmm4, 112(%rax)
	.loc 1 40 27 view .LVU43
	vpermilps	$85, %xmm1, %xmm5
	.loc 1 28 39 view .LVU44
	vcvtpd2psy	%ymm0, %xmm0
	.loc 1 29 17 is_stmt 1 view .LVU45
	.loc 1 30 17 view .LVU46
	.loc 1 33 17 view .LVU47
	.loc 1 34 17 view .LVU48
	.loc 1 35 17 view .LVU49
	.loc 1 36 17 view .LVU50
	.loc 1 39 17 view .LVU51
	.loc 1 40 17 view .LVU52
	.loc 1 41 17 view .LVU53
	.loc 1 42 17 view .LVU54
.LVL6:
	.loc 1 19 43 discriminator 3 view .LVU55
	.loc 1 19 31 discriminator 1 view .LVU56
	.loc 1 21 17 view .LVU57
	.loc 1 22 17 view .LVU58
	.loc 1 23 17 view .LVU59
	.loc 1 24 17 view .LVU60
	.loc 1 27 17 view .LVU61
	.loc 1 28 17 view .LVU62
	.loc 1 29 17 view .LVU63
	.loc 1 30 17 view .LVU64
	.loc 1 33 17 view .LVU65
	.loc 1 34 17 view .LVU66
	.loc 1 35 17 view .LVU67
	.loc 1 36 17 view .LVU68
	.loc 1 39 17 view .LVU69
	.loc 1 40 17 view .LVU70
	.loc 1 41 17 view .LVU71
	.loc 1 42 17 view .LVU72
	.loc 1 19 43 discriminator 3 view .LVU73
	.loc 1 19 31 discriminator 1 view .LVU74
	.loc 1 21 17 view .LVU75
	.loc 1 22 17 view .LVU76
	.loc 1 23 17 view .LVU77
	.loc 1 24 17 view .LVU78
	.loc 1 27 17 view .LVU79
	.loc 1 28 17 view .LVU80
	.loc 1 29 17 view .LVU81
	.loc 1 30 17 view .LVU82
	.loc 1 33 17 view .LVU83
	.loc 1 34 17 view .LVU84
	.loc 1 35 17 view .LVU85
	.loc 1 36 17 view .LVU86
	.loc 1 39 17 view .LVU87
	.loc 1 40 17 view .LVU88
	.loc 1 41 17 view .LVU89
	.loc 1 42 17 view .LVU90
	.loc 1 19 43 discriminator 3 view .LVU91
	.loc 1 19 31 discriminator 1 view .LVU92
	.loc 1 21 17 view .LVU93
	.loc 1 22 17 view .LVU94
	.loc 1 23 17 view .LVU95
	.loc 1 24 17 view .LVU96
	.loc 1 27 17 view .LVU97
	.loc 1 28 17 view .LVU98
	.loc 1 29 17 view .LVU99
	.loc 1 30 17 view .LVU100
	.loc 1 33 17 view .LVU101
	.loc 1 34 17 view .LVU102
	.loc 1 35 17 view .LVU103
	.loc 1 36 17 view .LVU104
	.loc 1 39 17 view .LVU105
	.loc 1 40 27 is_stmt 0 view .LVU106
	vpermilps	$0, %xmm0, %xmm15
	vpermilps	$85, %xmm0, %xmm13
	vpermilps	$170, %xmm0, %xmm14
	vpermilps	$255, %xmm0, %xmm0
	.loc 1 21 27 view .LVU107
	vmovups	%xmm4, 128(%rax)
	vmovups	%xmm4, 144(%rax)
	vmovups	%xmm4, 160(%rax)
	vmovups	%xmm4, 176(%rax)
	vmovups	%xmm4, 192(%rax)
	vmovups	%xmm4, 208(%rax)
	vmovups	%xmm4, 224(%rax)
	vmovups	%xmm4, 240(%rax)
	.loc 1 40 17 is_stmt 1 view .LVU108
	.loc 1 40 27 is_stmt 0 view .LVU109
	vpermilps	$170, %xmm1, %xmm4
	vpermilps	$255, %xmm1, %xmm1
	vmovaps	%xmm0, -80(%rbp)
	vunpcklps	%xmm15, %xmm6, %xmm0
	vunpckhps	%xmm15, %xmm6, %xmm6
	vunpcklps	%xmm13, %xmm5, %xmm15
	vunpckhps	%xmm13, %xmm5, %xmm5
	vunpcklps	%xmm14, %xmm4, %xmm13
	vunpckhps	%xmm14, %xmm4, %xmm4
	vmovups	%xmm0, (%rdx)
	vunpcklps	-80(%rbp), %xmm1, %xmm14
	vunpckhps	-80(%rbp), %xmm1, %xmm1
	vmovups	%xmm6, 16(%rdx)
	vmovups	%xmm0, 32(%rdx)
	vmovups	%xmm6, 48(%rdx)
	vmovups	%xmm15, 64(%rdx)
	vmovups	%xmm5, 80(%rdx)
	vmovups	%xmm15, 96(%rdx)
	vmovups	%xmm5, 112(%rdx)
	vmovups	%xmm13, 128(%rdx)
	vmovups	%xmm4, 144(%rdx)
	vmovups	%xmm13, 160(%rdx)
	vmovups	%xmm4, 176(%rdx)
	vmovups	%xmm14, 192(%rdx)
	vmovups	%xmm1, 208(%rdx)
	vmovups	%xmm14, 224(%rdx)
	vmovups	%xmm1, 240(%rdx)
	.loc 1 41 17 is_stmt 1 view .LVU110
	.loc 1 23 27 is_stmt 0 view .LVU111
	vmovups	%xmm3, (%rcx)
	vmovups	%xmm7, 16(%rcx)
	vmovups	%xmm8, 32(%rcx)
	vmovups	%xmm9, 48(%rcx)
	vmovups	%xmm3, 64(%rcx)
	vmovups	%xmm7, 80(%rcx)
	vmovups	%xmm8, 96(%rcx)
	vmovups	%xmm9, 112(%rcx)
	vmovups	%xmm3, 128(%rcx)
	vmovups	%xmm7, 144(%rcx)
	vmovups	%xmm8, 160(%rcx)
	vmovups	%xmm9, 176(%rcx)
	vmovups	%xmm3, 192(%rcx)
	vmovups	%xmm7, 208(%rcx)
	vmovups	%xmm8, 224(%rcx)
	vmovups	%xmm9, 240(%rcx)
	.loc 1 42 17 is_stmt 1 view .LVU112
.LVL7:
	.loc 1 19 43 discriminator 3 view .LVU113
	.loc 1 19 31 discriminator 1 view .LVU114
.LBE43:
	.loc 1 18 39 discriminator 2 view .LVU115
	.loc 1 18 27 discriminator 1 view .LVU116
.L4:
	.loc 1 18 27 is_stmt 0 discriminator 1 view .LVU117
.LBE48:
	.loc 1 17 35 is_stmt 1 discriminator 2 view .LVU118
	incl	%r10d
.LVL8:
	.loc 1 17 23 discriminator 1 view .LVU119
	cmpl	$4, %r10d
	jne	.L2
	vzeroupper
.LVL9:
.LBE50:
	.loc 1 46 1 is_stmt 0 view .LVU120
	addq	$48, %rsp
	popq	%rbx
	popq	%r10
.LVL10:
	.loc 1 46 1 view .LVU121
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.LVL11:
.L8:
	.cfi_restore_state
	.loc 1 46 1 view .LVU122
	vmovss	-60(%rbp), %xmm6
	vmovss	-64(%rbp), %xmm13
	vmovaps	%xmm11, %xmm15
.LBB51:
.LBB49:
	.loc 1 18 18 view .LVU123
	xorl	%edx, %edx
	vmovss	-84(%rbp), %xmm14
	vmovaps	%xmm0, %xmm11
	vmovd	%r14d, %xmm3
	vmovd	%r13d, %xmm5
.LVL12:
.L3:
.LBB44:
	.loc 1 19 31 is_stmt 1 discriminator 1 view .LVU124
	.loc 1 21 17 view .LVU125
	.loc 1 22 31 is_stmt 0 view .LVU126
	vcvtsi2ssl	%edx, %xmm10, %xmm1
	.loc 1 21 27 view .LVU127
	vmovss	%xmm4, (%rax)
	.loc 1 22 17 is_stmt 1 view .LVU128
.LBE44:
	.loc 1 18 27 is_stmt 0 discriminator 1 view .LVU129
	addq	$64, %rdi
	addq	$64, %rax
	addq	$64, %rsi
.LBB45:
	.loc 1 22 31 view .LVU130
	vmulss	%xmm2, %xmm1, %xmm0
	.loc 1 28 32 view .LVU131
	vcvtsi2sdl	%edx, %xmm10, %xmm1
.LBE45:
	.loc 1 18 39 discriminator 2 view .LVU132
	incl	%edx
.LVL13:
.LBB46:
	.loc 1 28 32 view .LVU133
	vaddsd	.LC7(%rip), %xmm1, %xmm1
	.loc 1 22 27 view .LVU134
	vmovss	%xmm0, -64(%rdi)
	.loc 1 23 17 is_stmt 1 view .LVU135
	.loc 1 23 27 is_stmt 0 view .LVU136
	vmovss	%xmm15, -64(%rsi)
	.loc 1 24 17 is_stmt 1 view .LVU137
.LVL14:
	.loc 1 27 17 view .LVU138
	.loc 1 28 39 is_stmt 0 view .LVU139
	vmulsd	-56(%rbp), %xmm1, %xmm1
	.loc 1 27 27 view .LVU140
	vmovss	%xmm11, -60(%rax)
	.loc 1 28 17 is_stmt 1 view .LVU141
	.loc 1 28 39 is_stmt 0 view .LVU142
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
	.loc 1 28 27 view .LVU143
	vmovss	%xmm1, -60(%rdi)
	.loc 1 29 17 is_stmt 1 view .LVU144
	.loc 1 29 27 is_stmt 0 view .LVU145
	vmovss	%xmm15, -60(%rsi)
	.loc 1 30 17 is_stmt 1 view .LVU146
	.loc 1 33 17 view .LVU147
	.loc 1 33 27 is_stmt 0 view .LVU148
	vmovss	%xmm11, -56(%rax)
	.loc 1 34 17 is_stmt 1 view .LVU149
	.loc 1 34 27 is_stmt 0 view .LVU150
	vmovss	%xmm0, -56(%rdi)
	.loc 1 35 17 is_stmt 1 view .LVU151
	.loc 1 35 27 is_stmt 0 view .LVU152
	vmovss	%xmm12, -56(%rsi)
	.loc 1 36 17 is_stmt 1 view .LVU153
	.loc 1 39 17 view .LVU154
	.loc 1 39 27 is_stmt 0 view .LVU155
	vmovss	%xmm4, -52(%rax)
	.loc 1 40 17 is_stmt 1 view .LVU156
	.loc 1 40 27 is_stmt 0 view .LVU157
	vmovss	%xmm1, -52(%rdi)
	.loc 1 41 17 is_stmt 1 view .LVU158
	.loc 1 41 27 is_stmt 0 view .LVU159
	vmovss	%xmm12, -52(%rsi)
	.loc 1 42 17 is_stmt 1 view .LVU160
.LVL15:
	.loc 1 19 43 discriminator 3 view .LVU161
	.loc 1 19 31 discriminator 1 view .LVU162
	.loc 1 21 17 view .LVU163
	.loc 1 21 27 is_stmt 0 view .LVU164
	vmovss	%xmm4, -48(%rax)
	.loc 1 22 17 is_stmt 1 view .LVU165
	.loc 1 22 27 is_stmt 0 view .LVU166
	vmovss	%xmm0, -48(%rdi)
	.loc 1 23 17 is_stmt 1 view .LVU167
	.loc 1 23 27 is_stmt 0 view .LVU168
	vmovss	%xmm2, -48(%rsi)
	.loc 1 24 17 is_stmt 1 view .LVU169
.LVL16:
	.loc 1 27 17 view .LVU170
	.loc 1 27 27 is_stmt 0 view .LVU171
	vmovss	%xmm11, -44(%rax)
	.loc 1 28 17 is_stmt 1 view .LVU172
	.loc 1 28 27 is_stmt 0 view .LVU173
	vmovss	%xmm1, -44(%rdi)
	.loc 1 29 17 is_stmt 1 view .LVU174
	.loc 1 29 27 is_stmt 0 view .LVU175
	vmovss	%xmm2, -44(%rsi)
	.loc 1 30 17 is_stmt 1 view .LVU176
	.loc 1 33 17 view .LVU177
	.loc 1 33 27 is_stmt 0 view .LVU178
	vmovss	%xmm11, -40(%rax)
	.loc 1 34 17 is_stmt 1 view .LVU179
	.loc 1 34 27 is_stmt 0 view .LVU180
	vmovss	%xmm0, -40(%rdi)
	.loc 1 35 17 is_stmt 1 view .LVU181
	.loc 1 35 27 is_stmt 0 view .LVU182
	vmovss	%xmm13, -40(%rsi)
	.loc 1 36 17 is_stmt 1 view .LVU183
	.loc 1 39 17 view .LVU184
	.loc 1 39 27 is_stmt 0 view .LVU185
	vmovss	%xmm4, -36(%rax)
	.loc 1 40 17 is_stmt 1 view .LVU186
	.loc 1 40 27 is_stmt 0 view .LVU187
	vmovss	%xmm1, -36(%rdi)
	.loc 1 41 17 is_stmt 1 view .LVU188
	.loc 1 41 27 is_stmt 0 view .LVU189
	vmovss	%xmm13, -36(%rsi)
	.loc 1 42 17 is_stmt 1 view .LVU190
.LVL17:
	.loc 1 19 43 discriminator 3 view .LVU191
	.loc 1 19 31 discriminator 1 view .LVU192
	.loc 1 21 17 view .LVU193
	.loc 1 21 27 is_stmt 0 view .LVU194
	vmovss	%xmm4, -32(%rax)
	.loc 1 22 17 is_stmt 1 view .LVU195
	.loc 1 22 27 is_stmt 0 view .LVU196
	vmovss	%xmm0, -32(%rdi)
	.loc 1 23 17 is_stmt 1 view .LVU197
	.loc 1 23 27 is_stmt 0 view .LVU198
	vmovss	%xmm6, -32(%rsi)
	.loc 1 24 17 is_stmt 1 view .LVU199
.LVL18:
	.loc 1 27 17 view .LVU200
	.loc 1 27 27 is_stmt 0 view .LVU201
	vmovss	%xmm11, -28(%rax)
	.loc 1 28 17 is_stmt 1 view .LVU202
	.loc 1 28 27 is_stmt 0 view .LVU203
	vmovss	%xmm1, -28(%rdi)
	.loc 1 29 17 is_stmt 1 view .LVU204
	.loc 1 29 27 is_stmt 0 view .LVU205
	vmovss	%xmm6, -28(%rsi)
	.loc 1 30 17 is_stmt 1 view .LVU206
	.loc 1 33 17 view .LVU207
	.loc 1 33 27 is_stmt 0 view .LVU208
	vmovss	%xmm11, -24(%rax)
	.loc 1 34 17 is_stmt 1 view .LVU209
	.loc 1 34 27 is_stmt 0 view .LVU210
	vmovss	%xmm0, -24(%rdi)
	.loc 1 35 17 is_stmt 1 view .LVU211
	.loc 1 35 27 is_stmt 0 view .LVU212
	vmovss	%xmm5, -24(%rsi)
	.loc 1 36 17 is_stmt 1 view .LVU213
	.loc 1 39 17 view .LVU214
	.loc 1 39 27 is_stmt 0 view .LVU215
	vmovss	%xmm4, -20(%rax)
	.loc 1 40 17 is_stmt 1 view .LVU216
	.loc 1 40 27 is_stmt 0 view .LVU217
	vmovss	%xmm1, -20(%rdi)
	.loc 1 41 17 is_stmt 1 view .LVU218
	.loc 1 41 27 is_stmt 0 view .LVU219
	vmovss	%xmm5, -20(%rsi)
	.loc 1 42 17 is_stmt 1 view .LVU220
.LVL19:
	.loc 1 19 43 discriminator 3 view .LVU221
	.loc 1 19 31 discriminator 1 view .LVU222
	.loc 1 21 17 view .LVU223
	.loc 1 21 27 is_stmt 0 view .LVU224
	vmovss	%xmm4, -16(%rax)
	.loc 1 22 17 is_stmt 1 view .LVU225
	.loc 1 22 27 is_stmt 0 view .LVU226
	vmovss	%xmm0, -16(%rdi)
	.loc 1 23 17 is_stmt 1 view .LVU227
	.loc 1 23 27 is_stmt 0 view .LVU228
	vmovss	%xmm14, -16(%rsi)
	.loc 1 24 17 is_stmt 1 view .LVU229
.LVL20:
	.loc 1 27 17 view .LVU230
	.loc 1 27 27 is_stmt 0 view .LVU231
	vmovss	%xmm11, -12(%rax)
	.loc 1 28 17 is_stmt 1 view .LVU232
	.loc 1 28 27 is_stmt 0 view .LVU233
	vmovss	%xmm1, -12(%rdi)
	.loc 1 29 17 is_stmt 1 view .LVU234
	.loc 1 29 27 is_stmt 0 view .LVU235
	vmovss	%xmm14, -12(%rsi)
	.loc 1 30 17 is_stmt 1 view .LVU236
	.loc 1 33 17 view .LVU237
	.loc 1 33 27 is_stmt 0 view .LVU238
	vmovss	%xmm11, -8(%rax)
	.loc 1 34 17 is_stmt 1 view .LVU239
	.loc 1 34 27 is_stmt 0 view .LVU240
	vmovss	%xmm0, -8(%rdi)
	.loc 1 35 17 is_stmt 1 view .LVU241
	.loc 1 35 27 is_stmt 0 view .LVU242
	vmovss	%xmm3, -8(%rsi)
	.loc 1 36 17 is_stmt 1 view .LVU243
	.loc 1 39 17 view .LVU244
	.loc 1 39 27 is_stmt 0 view .LVU245
	vmovss	%xmm4, -4(%rax)
	.loc 1 40 17 is_stmt 1 view .LVU246
	.loc 1 40 27 is_stmt 0 view .LVU247
	vmovss	%xmm1, -4(%rdi)
	.loc 1 41 17 is_stmt 1 view .LVU248
	.loc 1 41 27 is_stmt 0 view .LVU249
	vmovss	%xmm3, -4(%rsi)
	.loc 1 42 17 is_stmt 1 view .LVU250
.LVL21:
	.loc 1 19 43 discriminator 3 view .LVU251
	.loc 1 19 31 discriminator 1 view .LVU252
.LBE46:
	.loc 1 18 39 discriminator 2 view .LVU253
	.loc 1 18 27 discriminator 1 view .LVU254
	cmpl	$4, %edx
	jne	.L3
	vmovaps	%xmm15, %xmm11
	jmp	.L4
.LBE49:
.LBE51:
	.cfi_endproc
.LFE6445:
	.size	init_pos, .-init_pos
	.p2align 4
	.globl	init_vel
	.type	init_vel, @function
init_vel:
.LVL22:
.LFB6446:
	.loc 1 49 1 view -0
	.cfi_startproc
	.loc 1 49 1 is_stmt 0 view .LVU256
	endbr64
	.loc 1 50 5 is_stmt 1 view .LVU257
.LVL23:
	.loc 1 52 5 view .LVU258
.LBB52:
	.loc 1 52 10 view .LVU259
	.loc 1 52 23 discriminator 1 view .LVU260
.LBE52:
	.loc 1 49 1 is_stmt 0 view .LVU261
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.loc 1 50 37 view .LVU262
	xorl	%r15d, %r15d
	.loc 1 49 1 view .LVU263
	pushq	%r14
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.loc 1 50 50 view .LVU264
	xorl	%r14d, %r14d
	.loc 1 49 1 view .LVU265
	pushq	%r13
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.loc 1 50 24 view .LVU266
	xorl	%r13d, %r13d
	.loc 1 49 1 view .LVU267
	pushq	%r12
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	xorl	%r12d, %r12d
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rdi, %rbx
	subq	$64, %rsp
	.loc 1 49 1 view .LVU268
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	.loc 1 50 11 view .LVU269
	movl	$0x00000000, -56(%rbp)
.LVL24:
	.p2align 4,,10
	.p2align 3
.L17:
.LBB53:
	.loc 1 53 9 is_stmt 1 view .LVU270
	.loc 1 53 20 is_stmt 0 view .LVU271
	call	rand@PLT
.LVL25:
	.loc 1 53 27 discriminator 1 view .LVU272
	vxorps	%xmm5, %xmm5, %xmm5
	vmovss	.LC12(%rip), %xmm6
	.loc 1 53 20 view .LVU273
	movl	%eax, %ecx
	.loc 1 53 14 discriminator 1 view .LVU274
	movq	(%rbx), %rax
	.loc 1 53 27 discriminator 1 view .LVU275
	vcvtsi2ssl	%ecx, %xmm5, %xmm0
	.loc 1 53 14 discriminator 1 view .LVU276
	addq	%r12, %rax
	vfmadd132ss	.LC11(%rip), %xmm6, %xmm0
	.loc 1 53 18 discriminator 1 view .LVU277
	vmovss	%xmm0, (%rax)
	.loc 1 54 9 is_stmt 1 view .LVU278
	.loc 1 54 20 is_stmt 0 view .LVU279
	call	rand@PLT
.LVL26:
	.loc 1 54 27 discriminator 1 view .LVU280
	vxorps	%xmm5, %xmm5, %xmm5
	vmovss	.LC12(%rip), %xmm7
	.loc 1 54 20 view .LVU281
	movl	%eax, %ecx
	.loc 1 54 14 discriminator 1 view .LVU282
	movq	8(%rbx), %rax
	.loc 1 54 27 discriminator 1 view .LVU283
	vcvtsi2ssl	%ecx, %xmm5, %xmm0
	.loc 1 54 14 discriminator 1 view .LVU284
	addq	%r12, %rax
	vfmadd132ss	.LC11(%rip), %xmm7, %xmm0
	.loc 1 54 18 discriminator 1 view .LVU285
	vmovss	%xmm0, (%rax)
	.loc 1 55 9 is_stmt 1 view .LVU286
	.loc 1 55 20 is_stmt 0 view .LVU287
	call	rand@PLT
.LVL27:
	.loc 1 55 27 discriminator 1 view .LVU288
	vxorps	%xmm5, %xmm5, %xmm5
	vmovss	.LC12(%rip), %xmm3
	.loc 1 55 10 discriminator 1 view .LVU289
	movq	16(%rbx), %rsi
	.loc 1 55 27 discriminator 1 view .LVU290
	vcvtsi2ssl	%eax, %xmm5, %xmm0
	.loc 1 58 19 view .LVU291
	movq	8(%rbx), %rcx
	.loc 1 57 19 view .LVU292
	movq	(%rbx), %rax
	.loc 1 59 15 view .LVU293
	vmovd	%r15d, %xmm6
	vfmadd132ss	.LC11(%rip), %xmm3, %xmm0
	.loc 1 58 15 view .LVU294
	vmovd	%r13d, %xmm3
	.loc 1 55 18 discriminator 1 view .LVU295
	vmovss	%xmm0, (%rsi,%r12)
	.loc 1 57 9 is_stmt 1 view .LVU296
	.loc 1 58 23 is_stmt 0 view .LVU297
	vmovss	(%rcx,%r12), %xmm2
	.loc 1 57 23 view .LVU298
	vmovss	(%rax,%r12), %xmm1
	.loc 1 52 23 discriminator 1 view .LVU299
	addq	$4, %r12
.LVL28:
	.loc 1 58 15 view .LVU300
	vaddss	%xmm2, %xmm3, %xmm7
	.loc 1 60 49 view .LVU301
	vmulss	%xmm2, %xmm2, %xmm2
	.loc 1 57 15 view .LVU302
	vaddss	-56(%rbp), %xmm1, %xmm4
	.loc 1 60 15 view .LVU303
	vmovd	%r14d, %xmm3
	.loc 1 57 15 view .LVU304
	vmovss	%xmm4, -56(%rbp)
.LVL29:
	.loc 1 58 9 is_stmt 1 view .LVU305
	.loc 1 59 15 is_stmt 0 view .LVU306
	vaddss	%xmm0, %xmm6, %xmm4
.LVL30:
	.loc 1 58 15 view .LVU307
	vmovd	%xmm7, %r13d
.LVL31:
	.loc 1 59 9 is_stmt 1 view .LVU308
	.loc 1 60 38 is_stmt 0 view .LVU309
	vfmadd132ss	%xmm1, %xmm2, %xmm1
	.loc 1 59 15 view .LVU310
	vmovd	%xmm4, %r15d
.LVL32:
	.loc 1 60 9 is_stmt 1 view .LVU311
	.loc 1 60 60 is_stmt 0 view .LVU312
	vfmadd132ss	%xmm0, %xmm1, %xmm0
	.loc 1 60 15 view .LVU313
	vaddss	%xmm0, %xmm3, %xmm7
.LVL33:
	.loc 1 60 15 view .LVU314
	vmovd	%xmm7, %r14d
.LVL34:
	.loc 1 52 29 is_stmt 1 discriminator 3 view .LVU315
	.loc 1 52 23 discriminator 1 view .LVU316
	cmpq	$1024, %r12
	jne	.L17
.LBE53:
	.loc 1 63 5 view .LVU317
	.loc 1 66 11 is_stmt 0 view .LVU318
	movq	-64(%rbp), %rdi
	.loc 1 66 19 view .LVU319
	vdivss	.LC14(%rip), %xmm7, %xmm0
	.loc 1 63 11 view .LVU320
	vmovss	.LC13(%rip), %xmm1
	.loc 1 64 11 view .LVU321
	vmovd	%r13d, %xmm4
.LVL35:
	.loc 1 67 11 view .LVU322
	movq	-72(%rbp), %rdx
	.loc 1 66 11 view .LVU323
	vmovss	%xmm0, (%rdi)
	.loc 1 67 17 view .LVU324
	vmulss	.LC2(%rip), %xmm7, %xmm0
	.loc 1 64 11 view .LVU325
	vmulss	%xmm1, %xmm4, %xmm3
	.loc 1 65 11 view .LVU326
	vmovd	%r15d, %xmm4
	.loc 1 63 11 view .LVU327
	vmulss	-56(%rbp), %xmm1, %xmm2
.LVL36:
	.loc 1 64 5 is_stmt 1 view .LVU328
	.loc 1 65 5 view .LVU329
	.loc 1 65 11 is_stmt 0 view .LVU330
	vmulss	%xmm1, %xmm4, %xmm1
.LVL37:
	.loc 1 66 5 is_stmt 1 view .LVU331
	.loc 1 67 5 view .LVU332
	.loc 1 68 26 is_stmt 0 view .LVU333
	vxorpd	%xmm4, %xmm4, %xmm4
	.loc 1 67 11 view .LVU334
	vmovss	%xmm0, (%rdx)
	.loc 1 68 5 is_stmt 1 view .LVU335
	.loc 1 68 26 is_stmt 0 view .LVU336
	vcvtss2sd	(%rdi), %xmm4, %xmm0
	.loc 1 68 16 view .LVU337
	vmovsd	.LC15(%rip), %xmm4
	vdivsd	%xmm0, %xmm4, %xmm0
	vxorpd	%xmm4, %xmm4, %xmm4
	vucomisd	%xmm0, %xmm4
	ja	.L35
	vsqrtsd	%xmm0, %xmm0, %xmm0
.LVL38:
.L20:
	.loc 1 68 16 view .LVU338
	leaq	31(%rsi), %rdx
	.loc 1 68 11 discriminator 1 view .LVU339
	vcvtsd2ss	%xmm0, %xmm0, %xmm4
.LVL39:
	.loc 1 70 5 is_stmt 1 view .LVU340
.LBB54:
	.loc 1 70 10 view .LVU341
	.loc 1 70 23 discriminator 1 view .LVU342
	movq	%rdx, %rdi
	subq	%rcx, %rdi
	cmpq	$62, %rdi
	seta	%dil
	subq	%rax, %rdx
	cmpq	$62, %rdx
	seta	%dl
	testb	%dl, %dil
	je	.L24
	leaq	31(%rcx), %rdx
	subq	%rax, %rdx
	cmpq	$62, %rdx
	jbe	.L24
	vbroadcastss	%xmm2, %ymm2
	vbroadcastss	%xmm4, %ymm4
.LVL40:
	.loc 1 70 23 is_stmt 0 discriminator 1 view .LVU343
	vbroadcastss	%xmm3, %ymm3
.LBE54:
	.loc 1 68 11 discriminator 1 view .LVU344
	xorl	%edx, %edx
	vbroadcastss	%xmm1, %ymm1
.LVL41:
	.p2align 4,,10
	.p2align 3
.L22:
.LBB55:
	.loc 1 71 9 is_stmt 1 view .LVU345
	.loc 1 71 30 is_stmt 0 view .LVU346
	vmovups	(%rax,%rdx), %ymm6
	vsubps	%ymm2, %ymm6, %ymm0
	.loc 1 71 39 view .LVU347
	vmulps	%ymm4, %ymm0, %ymm0
	.loc 1 71 18 view .LVU348
	vmovups	%ymm0, (%rax,%rdx)
	.loc 1 72 9 is_stmt 1 view .LVU349
	.loc 1 72 30 is_stmt 0 view .LVU350
	vmovups	(%rcx,%rdx), %ymm7
	vsubps	%ymm3, %ymm7, %ymm0
	.loc 1 72 39 view .LVU351
	vmulps	%ymm4, %ymm0, %ymm0
	.loc 1 72 18 view .LVU352
	vmovups	%ymm0, (%rcx,%rdx)
	.loc 1 73 9 is_stmt 1 view .LVU353
	.loc 1 73 30 is_stmt 0 view .LVU354
	vmovups	(%rsi,%rdx), %ymm6
	vsubps	%ymm1, %ymm6, %ymm0
	.loc 1 73 39 view .LVU355
	vmulps	%ymm4, %ymm0, %ymm0
	.loc 1 73 18 view .LVU356
	vmovups	%ymm0, (%rsi,%rdx)
	.loc 1 70 29 is_stmt 1 discriminator 3 view .LVU357
	.loc 1 70 23 discriminator 1 view .LVU358
	addq	$32, %rdx
	cmpq	$1024, %rdx
	jne	.L22
	vzeroupper
.LVL42:
.L36:
.LBE55:
	.loc 1 75 1 is_stmt 0 view .LVU359
	addq	$64, %rsp
	popq	%rbx
.LVL43:
	.loc 1 75 1 view .LVU360
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
.LVL44:
	.loc 1 75 1 view .LVU361
	popq	%r14
.LVL45:
	.loc 1 75 1 view .LVU362
	popq	%r15
.LVL46:
	.loc 1 75 1 view .LVU363
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
.LVL47:
.L24:
	.cfi_restore_state
	.loc 1 68 11 discriminator 1 view .LVU364
	xorl	%edx, %edx
.LVL48:
	.p2align 4,,10
	.p2align 3
.L21:
.LBB56:
	.loc 1 71 9 is_stmt 1 view .LVU365
	.loc 1 71 30 is_stmt 0 view .LVU366
	vmovss	(%rax,%rdx), %xmm0
	vsubss	%xmm2, %xmm0, %xmm0
	.loc 1 71 39 view .LVU367
	vmulss	%xmm4, %xmm0, %xmm0
	.loc 1 71 18 view .LVU368
	vmovss	%xmm0, (%rax,%rdx)
	.loc 1 72 9 is_stmt 1 view .LVU369
	.loc 1 72 30 is_stmt 0 view .LVU370
	vmovss	(%rcx,%rdx), %xmm0
	vsubss	%xmm3, %xmm0, %xmm0
	.loc 1 72 39 view .LVU371
	vmulss	%xmm4, %xmm0, %xmm0
	.loc 1 72 18 view .LVU372
	vmovss	%xmm0, (%rcx,%rdx)
	.loc 1 73 9 is_stmt 1 view .LVU373
	.loc 1 73 30 is_stmt 0 view .LVU374
	vmovss	(%rsi,%rdx), %xmm0
	vsubss	%xmm1, %xmm0, %xmm0
	.loc 1 73 39 view .LVU375
	vmulss	%xmm4, %xmm0, %xmm0
	.loc 1 73 18 view .LVU376
	vmovss	%xmm0, (%rsi,%rdx)
	.loc 1 70 29 is_stmt 1 discriminator 3 view .LVU377
.LVL49:
	.loc 1 70 23 discriminator 1 view .LVU378
	addq	$4, %rdx
.LVL50:
	.loc 1 70 23 is_stmt 0 discriminator 1 view .LVU379
	cmpq	$1024, %rdx
	jne	.L21
	jmp	.L36
.LVL51:
.L35:
	.loc 1 70 23 discriminator 1 view .LVU380
	movq	%rcx, -72(%rbp)
.LVL52:
	.loc 1 70 23 discriminator 1 view .LVU381
	movq	%rax, -64(%rbp)
.LVL53:
	.loc 1 70 23 discriminator 1 view .LVU382
	movq	%rsi, -56(%rbp)
	vmovss	%xmm1, -84(%rbp)
	vmovss	%xmm3, -80(%rbp)
	vmovss	%xmm2, -76(%rbp)
.LBE56:
	.loc 1 68 16 view .LVU383
	call	sqrt@PLT
.LVL54:
	.loc 1 68 16 view .LVU384
	vmovss	-84(%rbp), %xmm1
	vmovss	-80(%rbp), %xmm3
	vmovss	-76(%rbp), %xmm2
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rsi
	jmp	.L20
	.cfi_endproc
.LFE6446:
	.size	init_vel, .-init_vel
	.p2align 4
	.globl	forces
	.type	forces, @function
forces:
.LVL55:
.LFB6448:
	.loc 1 88 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 88 1 is_stmt 0 view .LVU386
	endbr64
	.loc 1 89 5 is_stmt 1 view .LVU387
.LVL56:
.LBB57:
.LBI57:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/string_fortified.h"
	.loc 2 57 1 view .LVU388
.LBB58:
	.loc 2 59 3 view .LVU389
.LBE58:
.LBE57:
	.loc 1 88 1 is_stmt 0 view .LVU390
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
.LVL57:
	.loc 1 88 1 view .LVU391
	vmovd	%xmm0, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdx, %r12
.LBB62:
.LBB59:
	.loc 2 59 10 discriminator 1 view .LVU392
	movl	$1024, %edx
.LVL58:
	.loc 2 59 10 discriminator 1 view .LVU393
.LBE59:
.LBE62:
	.loc 1 88 1 view .LVU394
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rcx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%r8, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.loc 1 88 1 view .LVU395
	movq	%rdi, 24(%rsp)
.LBB63:
.LBB60:
	.loc 2 59 10 discriminator 1 view .LVU396
	movq	(%rsi), %rdi
.LVL59:
	.loc 2 59 10 discriminator 1 view .LVU397
	xorl	%esi, %esi
.LVL60:
	.loc 2 59 10 discriminator 1 view .LVU398
.LBE60:
.LBE63:
	.loc 1 88 1 view .LVU399
	vmovss	%xmm2, 8(%rsp)
	vmovss	%xmm1, 20(%rsp)
.LBB64:
.LBB61:
	.loc 2 59 10 discriminator 1 view .LVU400
	call	memset@PLT
.LVL61:
	.loc 2 59 10 discriminator 1 view .LVU401
.LBE61:
.LBE64:
	.loc 1 90 5 is_stmt 1 view .LVU402
.LBB65:
.LBI65:
	.loc 2 57 1 view .LVU403
.LBB66:
	.loc 2 59 3 view .LVU404
	.loc 2 59 10 is_stmt 0 discriminator 1 view .LVU405
	movq	8(%r14), %rdi
	movl	$1024, %edx
	xorl	%esi, %esi
	call	memset@PLT
.LVL62:
	.loc 2 59 10 discriminator 1 view .LVU406
.LBE66:
.LBE65:
	.loc 1 91 5 is_stmt 1 view .LVU407
.LBB67:
.LBI67:
	.loc 2 57 1 view .LVU408
.LBB68:
	.loc 2 59 3 view .LVU409
	.loc 2 59 10 is_stmt 0 discriminator 1 view .LVU410
	movq	16(%r14), %rdi
	xorl	%esi, %esi
	movl	$1024, %edx
	call	memset@PLT
.LVL63:
	.loc 2 59 10 discriminator 1 view .LVU411
.LBE68:
.LBE67:
	.loc 1 93 5 is_stmt 1 view .LVU412
	.loc 1 94 5 view .LVU413
	.loc 1 95 5 view .LVU414
.LBB69:
.LBB70:
.LBB71:
.LBB72:
.LBB73:
.LBB74:
	.loc 1 80 17 is_stmt 0 view .LVU415
	vmovss	8(%rsp), %xmm2
.LBE74:
.LBE73:
.LBE72:
.LBE71:
	.loc 1 98 21 view .LVU416
	movq	24(%rsp), %r9
.LBE70:
.LBE69:
	.loc 1 95 11 view .LVU417
	movl	$0x00000000, (%r12)
	.loc 1 97 5 is_stmt 1 view .LVU418
.LBB127:
	.loc 1 97 10 view .LVU419
.LVL64:
	.loc 1 97 23 discriminator 1 view .LVU420
	vmovss	.LC18(%rip), %xmm6
.LBB125:
.LBB119:
.LBB113:
.LBB82:
.LBB75:
	.loc 1 82 38 is_stmt 0 view .LVU421
	xorl	%edi, %edi
	xorl	%r8d, %r8d
.LBE75:
.LBE82:
.LBE113:
.LBE119:
.LBE125:
.LBE127:
	.loc 1 93 11 view .LVU422
	vxorps	%xmm7, %xmm7, %xmm7
.LBB128:
.LBB126:
.LBB120:
.LBB114:
.LBB83:
.LBB76:
	.loc 1 80 17 view .LVU423
	vmulss	.LC2(%rip), %xmm2, %xmm5
.LBE76:
.LBE83:
.LBE114:
.LBE120:
	.loc 1 98 21 view .LVU424
	movq	(%r9), %r13
	.loc 1 99 21 view .LVU425
	movq	8(%r9), %rsi
	.loc 1 100 21 view .LVU426
	movq	16(%r9), %rcx
.LBB121:
.LBB115:
.LBB84:
.LBB77:
	.loc 1 82 38 view .LVU427
	vxorps	.LC17(%rip), %xmm5, %xmm8
.LVL65:
	.p2align 4,,10
	.p2align 3
.L48:
	.loc 1 82 38 view .LVU428
.LBE77:
.LBE84:
.LBE115:
.LBE121:
	.loc 1 98 9 is_stmt 1 view .LVU429
	.loc 1 98 15 is_stmt 0 view .LVU430
	vmovss	0(%r13,%rdi), %xmm13
.LVL66:
	.loc 1 99 9 is_stmt 1 view .LVU431
	.loc 1 99 15 is_stmt 0 view .LVU432
	vmovss	(%rsi,%rdi), %xmm12
.LVL67:
	.loc 1 100 9 is_stmt 1 view .LVU433
	movq	%rdi, %r11
.LBB122:
.LBB116:
.LBB85:
.LBB86:
	.loc 1 82 26 is_stmt 0 discriminator 4 view .LVU434
	vxorps	%xmm4, %xmm4, %xmm4
.LBE86:
.LBE85:
.LBE116:
.LBE122:
	.loc 1 100 15 view .LVU435
	vmovss	(%rcx,%rdi), %xmm11
.LVL68:
	.loc 1 102 9 is_stmt 1 view .LVU436
.LBB123:
	.loc 1 102 14 view .LVU437
	.loc 1 102 31 discriminator 1 view .LVU438
	addq	$4, %rdi
.LBB117:
.LBB93:
	.loc 1 126 54 is_stmt 0 view .LVU439
	movq	%rdi, 8(%rsp)
.LBE93:
.LBE117:
.LBE123:
	.loc 1 100 15 view .LVU440
	movq	%rdi, %rax
.LVL69:
	.p2align 4,,10
	.p2align 3
.L47:
.LBB124:
.LBB118:
	.loc 1 103 13 is_stmt 1 view .LVU441
	.loc 1 103 19 is_stmt 0 view .LVU442
	vsubss	0(%r13,%rax), %xmm13, %xmm14
.LVL70:
	.loc 1 104 13 is_stmt 1 view .LVU443
	.loc 1 104 19 is_stmt 0 view .LVU444
	vsubss	(%rsi,%rax), %xmm12, %xmm9
.LVL71:
	.loc 1 105 13 is_stmt 1 view .LVU445
.LBB94:
.LBB78:
	vmovaps	%xmm2, %xmm1
.LBE78:
.LBE94:
	.loc 1 105 19 is_stmt 0 view .LVU446
	vsubss	(%rcx,%rax), %xmm11, %xmm0
.LVL72:
	.loc 1 107 13 is_stmt 1 view .LVU447
.LBB95:
.LBI73:
	.loc 1 78 14 view .LVU448
.LBB79:
	.loc 1 80 5 view .LVU449
	.loc 1 81 5 view .LVU450
	.loc 1 81 26 is_stmt 0 view .LVU451
	vcomiss	%xmm5, %xmm14
	ja	.L39
	.loc 1 81 26 view .LVU452
.LBE79:
.LBE95:
.LBB96:
.LBB87:
	.loc 1 82 26 discriminator 4 view .LVU453
	vmulss	%xmm4, %xmm2, %xmm1
.L39:
.LBE87:
.LBE96:
.LBB97:
.LBB80:
	.loc 1 81 11 discriminator 4 view .LVU454
	vsubss	%xmm1, %xmm14, %xmm14
.LVL73:
	.loc 1 82 5 is_stmt 1 view .LVU455
	vmovaps	%xmm2, %xmm1
	.loc 1 82 26 is_stmt 0 view .LVU456
	vcomiss	%xmm14, %xmm8
	jnb	.L40
.LBE80:
.LBE97:
.LBB98:
.LBB88:
	.loc 1 82 26 discriminator 4 view .LVU457
	vmulss	%xmm4, %xmm2, %xmm1
.L40:
.LBE88:
.LBE98:
.LBB99:
.LBB100:
	.loc 1 81 26 view .LVU458
	vcomiss	%xmm5, %xmm9
.LBE100:
.LBE99:
.LBB104:
.LBB81:
	.loc 1 82 11 discriminator 4 view .LVU459
	vaddss	%xmm1, %xmm14, %xmm14
.LVL74:
	.loc 1 83 5 is_stmt 1 view .LVU460
	.loc 1 83 5 is_stmt 0 view .LVU461
.LBE81:
.LBE104:
	.loc 1 108 13 is_stmt 1 view .LVU462
.LBB105:
.LBI99:
	.loc 1 78 14 view .LVU463
.LBB101:
	.loc 1 80 5 view .LVU464
	.loc 1 81 5 view .LVU465
	vmovaps	%xmm2, %xmm1
	.loc 1 81 26 is_stmt 0 view .LVU466
	ja	.L41
.LBE101:
.LBE105:
.LBB106:
.LBB89:
	.loc 1 82 26 discriminator 4 view .LVU467
	vmulss	%xmm4, %xmm2, %xmm1
.L41:
	.loc 1 82 26 discriminator 4 view .LVU468
.LBE89:
.LBE106:
.LBB107:
.LBB102:
	.loc 1 81 11 discriminator 4 view .LVU469
	vsubss	%xmm1, %xmm9, %xmm9
.LVL75:
	.loc 1 82 5 is_stmt 1 view .LVU470
	vmovaps	%xmm2, %xmm1
	.loc 1 82 26 is_stmt 0 view .LVU471
	vcomiss	%xmm9, %xmm8
	jnb	.L42
.LBE102:
.LBE107:
.LBB108:
.LBB90:
	.loc 1 82 26 discriminator 4 view .LVU472
	vmulss	%xmm4, %xmm2, %xmm1
.L42:
	.loc 1 81 26 view .LVU473
	vcomiss	%xmm5, %xmm0
.LBE90:
.LBE108:
.LBB109:
.LBB103:
	.loc 1 82 11 discriminator 4 view .LVU474
	vaddss	%xmm1, %xmm9, %xmm9
.LVL76:
	.loc 1 83 5 is_stmt 1 view .LVU475
	.loc 1 83 5 is_stmt 0 view .LVU476
.LBE103:
.LBE109:
	.loc 1 109 13 is_stmt 1 view .LVU477
.LBB110:
.LBI85:
	.loc 1 78 14 view .LVU478
.LBB91:
	.loc 1 80 5 view .LVU479
	.loc 1 81 5 view .LVU480
	vmovaps	%xmm2, %xmm1
	.loc 1 81 26 is_stmt 0 view .LVU481
	ja	.L43
	.loc 1 82 26 discriminator 4 view .LVU482
	vmulss	%xmm4, %xmm2, %xmm1
.L43:
	.loc 1 81 11 discriminator 4 view .LVU483
	vsubss	%xmm1, %xmm0, %xmm0
.LVL77:
	.loc 1 82 5 is_stmt 1 view .LVU484
	vmovaps	%xmm2, %xmm1
	.loc 1 82 26 is_stmt 0 view .LVU485
	vcomiss	%xmm0, %xmm8
	jnb	.L44
	.loc 1 82 26 discriminator 4 view .LVU486
	vmulss	%xmm4, %xmm2, %xmm1
.L44:
.LBE91:
.LBE110:
	.loc 1 111 39 view .LVU487
	vmulss	%xmm9, %xmm9, %xmm10
.LBB111:
.LBB92:
	.loc 1 82 11 discriminator 4 view .LVU488
	vaddss	%xmm1, %xmm0, %xmm0
.LVL78:
	.loc 1 83 5 is_stmt 1 view .LVU489
	.loc 1 83 5 is_stmt 0 view .LVU490
.LBE92:
.LBE111:
	.loc 1 111 13 is_stmt 1 view .LVU491
	.loc 1 111 34 is_stmt 0 view .LVU492
	vfmadd231ss	%xmm14, %xmm14, %xmm10
	.loc 1 111 19 view .LVU493
	vfmadd231ss	%xmm0, %xmm0, %xmm10
.LVL79:
	.loc 1 113 13 is_stmt 1 view .LVU494
	.loc 1 113 16 is_stmt 0 view .LVU495
	vcomiss	%xmm10, %xmm6
	jb	.L45
.LBB112:
	.loc 1 114 17 is_stmt 1 view .LVU496
	.loc 1 114 23 is_stmt 0 view .LVU497
	vmovss	.LC19(%rip), %xmm3
	.loc 1 116 64 view .LVU498
	vmovsd	.LC15(%rip), %xmm15
	.loc 1 118 18 view .LVU499
	movq	(%r14), %r9
	.loc 1 119 18 view .LVU500
	movq	8(%r14), %rdi
	.loc 1 114 23 view .LVU501
	vdivss	%xmm10, %xmm3, %xmm1
.LVL80:
	.loc 1 115 17 is_stmt 1 view .LVU502
	.loc 1 116 17 view .LVU503
	.loc 1 118 22 is_stmt 0 view .LVU504
	leaq	(%r9,%r11), %rdx
	.loc 1 122 22 view .LVU505
	addq	%rax, %r9
	.loc 1 115 37 view .LVU506
	vmulss	%xmm1, %xmm1, %xmm3
	.loc 1 115 23 view .LVU507
	vmulss	%xmm1, %xmm3, %xmm3
.LVL81:
	.loc 1 116 33 view .LVU508
	vcvtss2sd	%xmm1, %xmm1, %xmm1
.LVL82:
	.loc 1 116 33 view .LVU509
	vmulsd	.LC20(%rip), %xmm1, %xmm1
	.loc 1 116 41 view .LVU510
	vcvtss2sd	%xmm3, %xmm3, %xmm3
.LVL83:
	.loc 1 116 64 view .LVU511
	vfmadd213sd	.LC21(%rip), %xmm3, %xmm15
	.loc 1 116 41 view .LVU512
	vmulsd	%xmm3, %xmm1, %xmm1
	.loc 1 116 49 view .LVU513
	vmulsd	%xmm15, %xmm1, %xmm1
	.loc 1 116 23 view .LVU514
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
.LVL84:
	.loc 1 118 17 is_stmt 1 view .LVU515
	.loc 1 118 26 is_stmt 0 view .LVU516
	vmovaps	%xmm1, %xmm15
	.loc 1 127 26 view .LVU517
	vfmadd231ss	%xmm1, %xmm10, %xmm7
.LVL85:
	.loc 1 118 26 view .LVU518
	vfmadd213ss	(%rdx), %xmm14, %xmm15
	vmovss	%xmm15, (%rdx)
	.loc 1 119 17 is_stmt 1 view .LVU519
	.loc 1 119 22 is_stmt 0 view .LVU520
	leaq	(%rdi,%r11), %rdx
	.loc 1 119 26 view .LVU521
	vmovaps	%xmm1, %xmm15
	.loc 1 123 22 view .LVU522
	addq	%rax, %rdi
	.loc 1 119 26 view .LVU523
	vfmadd213ss	(%rdx), %xmm9, %xmm15
	vmovss	%xmm15, (%rdx)
	.loc 1 120 17 is_stmt 1 view .LVU524
	.loc 1 120 18 is_stmt 0 view .LVU525
	movq	16(%r14), %rdx
	.loc 1 120 26 view .LVU526
	vmovaps	%xmm1, %xmm15
	.loc 1 120 22 view .LVU527
	leaq	(%rdx,%r11), %r10
	.loc 1 124 22 view .LVU528
	addq	%rax, %rdx
	.loc 1 120 26 view .LVU529
	vfmadd213ss	(%r10), %xmm0, %xmm15
	vmovss	%xmm15, (%r10)
	.loc 1 122 17 is_stmt 1 view .LVU530
	.loc 1 122 26 is_stmt 0 view .LVU531
	vfnmadd213ss	(%r9), %xmm1, %xmm14
.LVL86:
	.loc 1 122 26 view .LVU532
	vmovss	%xmm14, (%r9)
	.loc 1 123 17 is_stmt 1 view .LVU533
	.loc 1 123 26 is_stmt 0 view .LVU534
	vfnmadd213ss	(%rdi), %xmm1, %xmm9
.LVL87:
	.loc 1 123 26 view .LVU535
	vmovss	%xmm9, (%rdi)
	.loc 1 124 17 is_stmt 1 view .LVU536
	.loc 1 124 26 is_stmt 0 view .LVU537
	vfnmadd213ss	(%rdx), %xmm1, %xmm0
.LVL88:
	.loc 1 124 26 view .LVU538
	vmovss	%xmm0, (%rdx)
	.loc 1 126 17 is_stmt 1 view .LVU539
	.loc 1 126 30 is_stmt 0 view .LVU540
	vmulsd	.LC0(%rip), %xmm3, %xmm0
	.loc 1 126 47 view .LVU541
	vsubsd	.LC22(%rip), %xmm3, %xmm3
	.loc 1 126 54 view .LVU542
	vfmadd213sd	.LC23(%rip), %xmm0, %xmm3
	.loc 1 126 17 view .LVU543
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	(%r12), %xmm0, %xmm0
	.loc 1 126 23 view .LVU544
	vaddsd	%xmm3, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%r12)
	.loc 1 127 17 is_stmt 1 view .LVU545
.LVL89:
.L45:
	.loc 1 127 17 is_stmt 0 view .LVU546
.LBE112:
.LBE118:
	.loc 1 102 37 is_stmt 1 discriminator 2 view .LVU547
	.loc 1 102 31 discriminator 1 view .LVU548
	addq	$4, %rax
.LVL90:
	.loc 1 102 31 is_stmt 0 discriminator 1 view .LVU549
	cmpq	$1024, %rax
	jne	.L47
	.loc 1 102 31 discriminator 1 view .LVU550
.LBE124:
.LBE126:
	.loc 1 97 23 discriminator 1 view .LVU551
	incq	%r8
.LVL91:
	.loc 1 97 23 discriminator 1 view .LVU552
	movq	8(%rsp), %rdi
	.loc 1 97 23 is_stmt 1 discriminator 1 view .LVU553
	cmpq	$255, %r8
	jne	.L48
.LBE128:
	.loc 1 131 5 view .LVU554
	.loc 1 131 20 is_stmt 0 view .LVU555
	vcvtss2sd	20(%rsp), %xmm1, %xmm1
	vmulsd	.LC24(%rip), %xmm1, %xmm1
	.loc 1 131 14 view .LVU556
	vcvtss2sd	%xmm7, %xmm7, %xmm0
	.loc 1 132 25 view .LVU557
	vmovd	%r15d, %xmm6
	.loc 1 131 14 view .LVU558
	vdivsd	%xmm1, %xmm0, %xmm0
.LVL92:
	.loc 1 132 5 is_stmt 1 view .LVU559
	.loc 1 131 14 is_stmt 0 view .LVU560
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
.LVL93:
	.loc 1 132 25 view .LVU561
	vfmadd132ss	(%rbx), %xmm0, %xmm6
	.loc 1 132 11 view .LVU562
	vmovss	%xmm6, 0(%rbp)
	.loc 1 133 1 view .LVU563
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
.LVL94:
	.loc 1 133 1 view .LVU564
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL95:
	.loc 1 133 1 view .LVU565
	popq	%r12
	.cfi_def_cfa_offset 32
.LVL96:
	.loc 1 133 1 view .LVU566
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
.LVL97:
	.loc 1 133 1 view .LVU567
	popq	%r15
	.cfi_def_cfa_offset 8
.LVL98:
	.loc 1 133 1 view .LVU568
	ret
	.cfi_endproc
.LFE6448:
	.size	forces, .-forces
	.p2align 4
	.globl	velocity_verlet
	.type	velocity_verlet, @function
velocity_verlet:
.LVL99:
.LFB6450:
	.loc 1 146 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 146 1 is_stmt 0 view .LVU570
	endbr64
	.loc 1 148 5 is_stmt 1 view .LVU571
.LBB129:
	.loc 1 148 10 view .LVU572
.LVL100:
	.loc 1 148 23 discriminator 1 view .LVU573
.LBE129:
	.loc 1 146 1 is_stmt 0 view .LVU574
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r11
	vxorps	%xmm3, %xmm3, %xmm3
	vmovaps	%xmm0, %xmm6
.LBB144:
	.loc 1 152 43 view .LVU575
	xorl	%eax, %eax
.LBB130:
.LBB131:
	.loc 1 137 8 view .LVU576
	vxorps	%xmm7, %xmm7, %xmm7
.LBE131:
.LBE130:
.LBE144:
	.loc 1 146 1 view .LVU577
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r9, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%r8, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
.LBB145:
	.loc 1 150 10 view .LVU578
	movq	(%rdi), %rsi
.LVL101:
	.loc 1 150 43 view .LVU579
	movq	(%rdx), %r15
.LBE145:
	.loc 1 146 1 view .LVU580
	movq	%rcx, 8(%rsp)
.LBB146:
	.loc 1 151 43 view .LVU581
	movq	8(%rdx), %r13
	.loc 1 151 10 view .LVU582
	movq	8(%rdi), %rcx
.LVL102:
	.loc 1 152 10 view .LVU583
	movq	16(%rdi), %rdx
.LVL103:
	.loc 1 150 21 view .LVU584
	movq	0(%rbp), %r10
	.loc 1 151 21 view .LVU585
	movq	8(%rbp), %r8
.LVL104:
	.loc 1 152 21 view .LVU586
	movq	16(%rbp), %rdi
.LVL105:
	.loc 1 152 43 view .LVU587
	movq	16(%rbx), %r9
.LVL106:
	.loc 1 152 43 view .LVU588
	vmovsd	.LC7(%rip), %xmm5
	vmovsd	.LC25(%rip), %xmm4
	jmp	.L72
.LVL107:
	.p2align 4,,10
	.p2align 3
.L82:
.LBB134:
.LBB132:
	.loc 1 139 12 is_stmt 1 view .LVU589
	.loc 1 139 15 is_stmt 0 view .LVU590
	vcomiss	%xmm2, %xmm0
	jbe	.L62
	.loc 1 140 9 is_stmt 1 view .LVU591
	.loc 1 140 15 is_stmt 0 view .LVU592
	vsubss	%xmm2, %xmm0, %xmm0
.LVL108:
.L62:
	.loc 1 142 5 is_stmt 1 view .LVU593
	.loc 1 142 5 is_stmt 0 view .LVU594
.LBE132:
.LBE134:
	.loc 1 155 17 discriminator 1 view .LVU595
	vmovss	%xmm0, (%rsi,%rax)
	.loc 1 156 9 is_stmt 1 view .LVU596
	.loc 1 156 19 is_stmt 0 view .LVU597
	vmovss	(%rcx,%rax), %xmm0
.LVL109:
.LBB135:
.LBI135:
	.loc 1 135 14 is_stmt 1 view .LVU598
.LBB136:
	.loc 1 137 5 view .LVU599
	.loc 1 137 8 is_stmt 0 view .LVU600
	vcomiss	%xmm0, %xmm7
	jnb	.L86
.L83:
	.loc 1 139 12 is_stmt 1 view .LVU601
	.loc 1 139 15 is_stmt 0 view .LVU602
	vcomiss	%xmm2, %xmm0
	jbe	.L66
	.loc 1 140 9 is_stmt 1 view .LVU603
	.loc 1 140 15 is_stmt 0 view .LVU604
	vsubss	%xmm2, %xmm0, %xmm0
.LVL110:
.L66:
	.loc 1 142 5 is_stmt 1 view .LVU605
	.loc 1 142 5 is_stmt 0 view .LVU606
.LBE136:
.LBE135:
	.loc 1 156 17 discriminator 1 view .LVU607
	vmovss	%xmm0, (%rcx,%rax)
	.loc 1 157 9 is_stmt 1 view .LVU608
	.loc 1 157 19 is_stmt 0 view .LVU609
	vmovss	(%rdx,%rax), %xmm0
.LVL111:
.LBB138:
.LBI138:
	.loc 1 135 14 is_stmt 1 view .LVU610
.LBB139:
	.loc 1 137 5 view .LVU611
	.loc 1 137 8 is_stmt 0 view .LVU612
	vcomiss	%xmm0, %xmm7
	jnb	.L87
.L84:
	.loc 1 139 12 is_stmt 1 view .LVU613
	.loc 1 139 15 is_stmt 0 view .LVU614
	vcomiss	%xmm2, %xmm0
	jbe	.L70
	.loc 1 140 9 is_stmt 1 view .LVU615
	.loc 1 140 15 is_stmt 0 view .LVU616
	vsubss	%xmm2, %xmm0, %xmm0
.LVL112:
.L70:
	.loc 1 142 5 is_stmt 1 view .LVU617
	.loc 1 142 5 is_stmt 0 view .LVU618
.LBE139:
.LBE138:
	.loc 1 157 17 discriminator 1 view .LVU619
	vmovss	%xmm0, (%rdx,%rax)
	.loc 1 160 9 is_stmt 1 view .LVU620
	.loc 1 160 32 is_stmt 0 view .LVU621
	vcvtss2sd	(%r15,%rax), %xmm3, %xmm0
	.loc 1 160 25 view .LVU622
	vmulsd	%xmm5, %xmm0, %xmm0
	.loc 1 160 14 view .LVU623
	vcvtss2sd	(%r10,%rax), %xmm3, %xmm8
	.loc 1 160 18 view .LVU624
	vfmadd132sd	%xmm4, %xmm8, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%r10,%rax)
	.loc 1 161 9 is_stmt 1 view .LVU625
	.loc 1 161 32 is_stmt 0 view .LVU626
	vcvtss2sd	0(%r13,%rax), %xmm3, %xmm0
	.loc 1 161 25 view .LVU627
	vmulsd	%xmm5, %xmm0, %xmm0
	.loc 1 161 14 view .LVU628
	vcvtss2sd	(%r8,%rax), %xmm3, %xmm8
	.loc 1 161 18 view .LVU629
	vfmadd132sd	%xmm4, %xmm8, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%r8,%rax)
	.loc 1 162 9 is_stmt 1 view .LVU630
	.loc 1 162 32 is_stmt 0 view .LVU631
	vcvtss2sd	(%r9,%rax), %xmm3, %xmm0
	.loc 1 162 25 view .LVU632
	vmulsd	%xmm5, %xmm0, %xmm0
	.loc 1 162 14 view .LVU633
	vcvtss2sd	(%rdi,%rax), %xmm3, %xmm8
	.loc 1 162 18 view .LVU634
	vfmadd132sd	%xmm4, %xmm8, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rdi,%rax)
	.loc 1 148 29 is_stmt 1 discriminator 3 view .LVU635
.LVL113:
	.loc 1 148 23 discriminator 1 view .LVU636
	addq	$4, %rax
.LVL114:
	.loc 1 148 23 is_stmt 0 discriminator 1 view .LVU637
	cmpq	$1024, %rax
	je	.L88
.LVL115:
.L72:
	.loc 1 150 9 is_stmt 1 view .LVU638
	.loc 1 150 13 is_stmt 0 view .LVU639
	vcvtss2sd	(%rsi,%rax), %xmm3, %xmm0
	vmovsd	%xmm0, %xmm0, %xmm8
	.loc 1 150 25 view .LVU640
	vcvtss2sd	(%r10,%rax), %xmm3, %xmm0
	vmovsd	%xmm0, %xmm0, %xmm9
	.loc 1 150 47 view .LVU641
	vcvtss2sd	(%r15,%rax), %xmm3, %xmm0
	.loc 1 150 40 view .LVU642
	vmulsd	%xmm5, %xmm0, %xmm0
	.loc 1 150 51 view .LVU643
	vmulsd	%xmm4, %xmm0, %xmm0
	.loc 1 150 56 view .LVU644
	vmulsd	%xmm4, %xmm0, %xmm0
	.loc 1 150 34 view .LVU645
	vfmadd132sd	%xmm4, %xmm0, %xmm9
	.loc 1 150 17 view .LVU646
	vaddsd	%xmm9, %xmm8, %xmm8
	vcvtsd2ss	%xmm8, %xmm8, %xmm8
	vmovss	%xmm8, (%rsi,%rax)
	.loc 1 151 9 is_stmt 1 view .LVU647
	.loc 1 151 13 is_stmt 0 view .LVU648
	vcvtss2sd	(%rcx,%rax), %xmm3, %xmm0
	vmovsd	%xmm0, %xmm0, %xmm8
	.loc 1 151 25 view .LVU649
	vcvtss2sd	(%r8,%rax), %xmm3, %xmm0
	vmovsd	%xmm0, %xmm0, %xmm9
	.loc 1 151 47 view .LVU650
	vcvtss2sd	0(%r13,%rax), %xmm3, %xmm0
	.loc 1 151 40 view .LVU651
	vmulsd	%xmm5, %xmm0, %xmm0
	.loc 1 151 51 view .LVU652
	vmulsd	%xmm4, %xmm0, %xmm0
	.loc 1 151 56 view .LVU653
	vmulsd	%xmm4, %xmm0, %xmm0
	.loc 1 151 34 view .LVU654
	vfmadd132sd	%xmm4, %xmm0, %xmm9
	.loc 1 151 17 view .LVU655
	vaddsd	%xmm9, %xmm8, %xmm8
	vcvtsd2ss	%xmm8, %xmm8, %xmm8
	vmovss	%xmm8, (%rcx,%rax)
	.loc 1 152 9 is_stmt 1 view .LVU656
	.loc 1 152 13 is_stmt 0 view .LVU657
	vcvtss2sd	(%rdx,%rax), %xmm3, %xmm0
	vmovsd	%xmm0, %xmm0, %xmm8
	.loc 1 152 25 view .LVU658
	vcvtss2sd	(%rdi,%rax), %xmm3, %xmm0
	vmovsd	%xmm0, %xmm0, %xmm9
	.loc 1 152 47 view .LVU659
	vcvtss2sd	(%r9,%rax), %xmm3, %xmm0
	.loc 1 152 40 view .LVU660
	vmulsd	%xmm5, %xmm0, %xmm0
	.loc 1 152 51 view .LVU661
	vmulsd	%xmm4, %xmm0, %xmm0
	.loc 1 152 56 view .LVU662
	vmulsd	%xmm4, %xmm0, %xmm0
	.loc 1 152 34 view .LVU663
	vfmadd132sd	%xmm4, %xmm0, %xmm9
	.loc 1 152 17 view .LVU664
	vaddsd	%xmm9, %xmm8, %xmm8
	vcvtsd2ss	%xmm8, %xmm8, %xmm8
	vmovss	%xmm8, (%rdx,%rax)
	.loc 1 155 9 is_stmt 1 view .LVU665
	.loc 1 155 19 is_stmt 0 view .LVU666
	vmovss	(%rsi,%rax), %xmm0
.LVL116:
.LBB141:
.LBI130:
	.loc 1 135 14 is_stmt 1 view .LVU667
.LBB133:
	.loc 1 137 5 view .LVU668
	.loc 1 137 8 is_stmt 0 view .LVU669
	vcomiss	%xmm0, %xmm7
	jb	.L82
	.loc 1 138 9 is_stmt 1 view .LVU670
	.loc 1 138 15 is_stmt 0 view .LVU671
	vaddss	%xmm2, %xmm0, %xmm0
.LVL117:
	.loc 1 142 5 is_stmt 1 view .LVU672
	.loc 1 142 5 is_stmt 0 view .LVU673
.LBE133:
.LBE141:
	.loc 1 155 17 discriminator 1 view .LVU674
	vmovss	%xmm0, (%rsi,%rax)
	.loc 1 156 9 is_stmt 1 view .LVU675
	.loc 1 156 19 is_stmt 0 view .LVU676
	vmovss	(%rcx,%rax), %xmm0
.LVL118:
.LBB142:
	.loc 1 135 14 is_stmt 1 view .LVU677
.LBB137:
	.loc 1 137 5 view .LVU678
	.loc 1 137 8 is_stmt 0 view .LVU679
	vcomiss	%xmm0, %xmm7
	jb	.L83
.L86:
	.loc 1 138 9 is_stmt 1 view .LVU680
	.loc 1 138 15 is_stmt 0 view .LVU681
	vaddss	%xmm2, %xmm0, %xmm0
.LVL119:
	.loc 1 142 5 is_stmt 1 view .LVU682
	.loc 1 142 5 is_stmt 0 view .LVU683
.LBE137:
.LBE142:
	.loc 1 156 17 discriminator 1 view .LVU684
	vmovss	%xmm0, (%rcx,%rax)
	.loc 1 157 9 is_stmt 1 view .LVU685
	.loc 1 157 19 is_stmt 0 view .LVU686
	vmovss	(%rdx,%rax), %xmm0
.LVL120:
.LBB143:
	.loc 1 135 14 is_stmt 1 view .LVU687
.LBB140:
	.loc 1 137 5 view .LVU688
	.loc 1 137 8 is_stmt 0 view .LVU689
	vcomiss	%xmm0, %xmm7
	jb	.L84
.L87:
	.loc 1 138 9 is_stmt 1 view .LVU690
	.loc 1 138 15 is_stmt 0 view .LVU691
	vaddss	%xmm2, %xmm0, %xmm0
.LVL121:
	.loc 1 138 15 view .LVU692
	jmp	.L70
.LVL122:
.L88:
	.loc 1 138 15 view .LVU693
.LBE140:
.LBE143:
.LBE146:
	.loc 1 166 5 is_stmt 1 view .LVU694
	movq	80(%rsp), %r8
	movq	8(%rsp), %rdx
	movq	%rbx, %rsi
	movq	%r14, %rcx
	movq	%r11, %rdi
	vmovaps	%xmm6, %xmm0
	call	forces
.LVL123:
	.loc 1 168 5 view .LVU695
	.loc 1 170 5 view .LVU696
.LBB147:
	.loc 1 170 10 view .LVU697
	.loc 1 170 23 discriminator 1 view .LVU698
	.loc 1 172 28 is_stmt 0 view .LVU699
	movq	(%rbx), %rdi
	.loc 1 173 28 view .LVU700
	movq	8(%rbx), %rsi
	.loc 1 174 28 view .LVU701
	xorl	%eax, %eax
	movq	16(%rbx), %r9
.LBE147:
	.loc 1 168 11 view .LVU702
	movq	.LC7(%rip), %rbx
.LVL124:
	.loc 1 168 11 view .LVU703
	vxorps	%xmm2, %xmm2, %xmm2
	vxorps	%xmm3, %xmm3, %xmm3
.LBB148:
	.loc 1 172 10 view .LVU704
	movq	0(%rbp), %rcx
	.loc 1 173 10 view .LVU705
	movq	8(%rbp), %rdx
.LBE148:
	.loc 1 168 11 view .LVU706
	vmovq	%rbx, %xmm5
	movq	.LC25(%rip), %rbx
.LBB149:
	.loc 1 174 10 view .LVU707
	movq	16(%rbp), %r8
.LBE149:
	.loc 1 168 11 view .LVU708
	vmovq	%rbx, %xmm4
.LVL125:
	.p2align 4,,10
	.p2align 3
.L73:
.LBB150:
	.loc 1 172 9 is_stmt 1 view .LVU709
	.loc 1 172 32 is_stmt 0 view .LVU710
	vcvtss2sd	(%rdi,%rax), %xmm3, %xmm0
	.loc 1 172 25 view .LVU711
	vmulsd	%xmm5, %xmm0, %xmm0
	.loc 1 172 14 view .LVU712
	vcvtss2sd	(%rcx,%rax), %xmm3, %xmm1
	.loc 1 172 18 view .LVU713
	vfmadd132sd	%xmm4, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rcx,%rax)
	.loc 1 173 9 is_stmt 1 view .LVU714
	.loc 1 173 32 is_stmt 0 view .LVU715
	vcvtss2sd	(%rsi,%rax), %xmm3, %xmm0
	.loc 1 173 25 view .LVU716
	vmulsd	%xmm5, %xmm0, %xmm0
	.loc 1 173 14 view .LVU717
	vcvtss2sd	(%rdx,%rax), %xmm3, %xmm1
	.loc 1 173 18 view .LVU718
	vfmadd132sd	%xmm4, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rdx,%rax)
	.loc 1 174 9 is_stmt 1 view .LVU719
	.loc 1 174 32 is_stmt 0 view .LVU720
	vcvtss2sd	(%r9,%rax), %xmm3, %xmm0
	.loc 1 174 25 view .LVU721
	vmulsd	%xmm5, %xmm0, %xmm0
	.loc 1 174 14 view .LVU722
	vcvtss2sd	(%r8,%rax), %xmm3, %xmm1
	.loc 1 174 18 view .LVU723
	vfmadd132sd	%xmm4, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%r8,%rax)
	.loc 1 176 9 is_stmt 1 view .LVU724
	.loc 1 176 45 is_stmt 0 view .LVU725
	vmovss	(%rdx,%rax), %xmm6
	.loc 1 176 23 view .LVU726
	vmovss	(%rcx,%rax), %xmm1
	.loc 1 170 23 discriminator 1 view .LVU727
	addq	$4, %rax
.LVL126:
	.loc 1 176 49 view .LVU728
	vmulss	%xmm6, %xmm6, %xmm6
	.loc 1 176 38 view .LVU729
	vfmadd132ss	%xmm1, %xmm6, %xmm1
	.loc 1 176 60 view .LVU730
	vfmadd132ss	%xmm0, %xmm1, %xmm0
	.loc 1 176 15 view .LVU731
	vaddss	%xmm0, %xmm2, %xmm2
.LVL127:
	.loc 1 170 29 is_stmt 1 discriminator 3 view .LVU732
	.loc 1 170 23 discriminator 1 view .LVU733
	cmpq	$1024, %rax
	jne	.L73
.LBE150:
	.loc 1 179 5 view .LVU734
	.loc 1 179 17 is_stmt 0 view .LVU735
	vmulss	.LC2(%rip), %xmm2, %xmm0
	.loc 1 180 11 view .LVU736
	movq	80(%rsp), %rax
	.loc 1 180 19 view .LVU737
	vdivss	.LC14(%rip), %xmm2, %xmm2
.LVL128:
	.loc 1 179 11 view .LVU738
	vmovss	%xmm0, (%r12)
	.loc 1 180 5 is_stmt 1 view .LVU739
	.loc 1 180 11 is_stmt 0 view .LVU740
	vmovss	%xmm2, (%rax)
	.loc 1 181 1 view .LVU741
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL129:
	.loc 1 181 1 view .LVU742
	popq	%r12
	.cfi_def_cfa_offset 32
.LVL130:
	.loc 1 181 1 view .LVU743
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
.LVL131:
	.loc 1 181 1 view .LVU744
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE6450:
	.size	velocity_verlet, .-velocity_verlet
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1074790400
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC2:
	.long	1056964608
	.align 4
.LC3:
	.long	1069547520
	.align 4
.LC4:
	.long	1075838976
	.set	.LC5,.LC8+12
	.align 4
.LC6:
	.long	1080033280
	.set	.LC7,.LC9
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC8:
	.long	0
	.long	1065353216
	.long	1073741824
	.long	1077936128
	.align 16
.LC9:
	.long	0
	.long	1071644672
	.long	0
	.long	1073217536
	.align 16
.LC10:
	.long	0
	.long	1074003968
	.long	0
	.long	1074528256
	.section	.rodata.cst4
	.align 4
.LC11:
	.long	805306368
	.align 4
.LC12:
	.long	-1090519040
	.align 4
.LC13:
	.long	998244352
	.align 4
.LC14:
	.long	1145044992
	.section	.rodata.cst8
	.align 8
.LC15:
	.long	0
	.long	1073741824
	.section	.rodata.cst16
	.align 16
.LC17:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4
	.align 4
.LC18:
	.long	1086849024
	.set	.LC19,.LC8+4
	.section	.rodata.cst8
	.align 8
.LC20:
	.long	0
	.long	1077411840
	.align 8
.LC21:
	.long	0
	.long	-1074790400
	.align 8
.LC22:
	.long	0
	.long	1072693248
	.align 8
.LC23:
	.long	120897443
	.long	1066448224
	.align 8
.LC24:
	.long	0
	.long	1074266112
	.align 8
.LC25:
	.long	1202590843
	.long	1064598241
	.text
.Letext0:
	.file 3 "core.h"
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.file 6 "/usr/include/stdlib.h"
	.file 7 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x9ab
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1a
	.long	.LASF47
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF2
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF3
	.uleb128 0x13
	.byte	0x4
	.long	0x5e
	.uleb128 0x6
	.string	"x"
	.byte	0x5
	.long	0x5e
	.byte	0
	.uleb128 0x6
	.string	"y"
	.byte	0x6
	.long	0x5e
	.byte	0x8
	.uleb128 0x6
	.string	"z"
	.byte	0x7
	.long	0x5e
	.byte	0x10
	.byte	0
	.uleb128 0xc
	.long	0x2e
	.uleb128 0x15
	.long	0x2e
	.uleb128 0xf
	.long	.LASF4
	.byte	0x3
	.byte	0x8
	.byte	0x3
	.long	0x3c
	.uleb128 0x15
	.long	0x68
	.uleb128 0x13
	.byte	0xa
	.long	0x9e
	.uleb128 0x6
	.string	"vx"
	.byte	0xb
	.long	0x5e
	.byte	0
	.uleb128 0x6
	.string	"vy"
	.byte	0xc
	.long	0x5e
	.byte	0x8
	.uleb128 0x6
	.string	"vz"
	.byte	0xd
	.long	0x5e
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.long	.LASF5
	.byte	0x3
	.byte	0xe
	.byte	0x3
	.long	0x79
	.uleb128 0x13
	.byte	0x10
	.long	0xcf
	.uleb128 0x6
	.string	"fx"
	.byte	0x11
	.long	0x5e
	.byte	0
	.uleb128 0x6
	.string	"fy"
	.byte	0x12
	.long	0x5e
	.byte	0x8
	.uleb128 0x6
	.string	"fz"
	.byte	0x13
	.long	0x5e
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.long	.LASF6
	.byte	0x3
	.byte	0x14
	.byte	0x3
	.long	0xaa
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0xf
	.long	.LASF8
	.byte	0x4
	.byte	0xd6
	.byte	0x17
	.long	0xee
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF15
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF16
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF17
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF18
	.uleb128 0x1c
	.byte	0x8
	.uleb128 0x2
	.byte	0x2
	.byte	0x4
	.long	.LASF19
	.uleb128 0x2
	.byte	0x2
	.byte	0x4
	.long	.LASF20
	.uleb128 0x16
	.long	.LASF21
	.byte	0x8f
	.long	0x35
	.long	0x15f
	.uleb128 0x17
	.long	0x35
	.byte	0
	.uleb128 0x1d
	.long	.LASF48
	.byte	0x6
	.value	0x1c6
	.byte	0xc
	.long	0xf5
	.uleb128 0x16
	.long	.LASF22
	.byte	0x98
	.long	0x35
	.long	0x180
	.uleb128 0x17
	.long	0x35
	.byte	0
	.uleb128 0x10
	.long	.LASF29
	.byte	0x91
	.quad	.LFB6450
	.quad	.LFE6450-.LFB6450
	.uleb128 0x1
	.byte	0x9c
	.long	0x34c
	.uleb128 0x4
	.string	"r"
	.byte	0x91
	.byte	0x21
	.long	0x34c
	.long	.LLST64
	.long	.LVUS64
	.uleb128 0x4
	.string	"v"
	.byte	0x91
	.byte	0x30
	.long	0x351
	.long	.LLST65
	.long	.LVUS65
	.uleb128 0x4
	.string	"f"
	.byte	0x91
	.byte	0x3b
	.long	0x356
	.long	.LLST66
	.long	.LVUS66
	.uleb128 0x8
	.long	.LASF23
	.byte	0x91
	.byte	0x45
	.long	0x5e
	.long	.LLST67
	.long	.LVUS67
	.uleb128 0x8
	.long	.LASF24
	.byte	0x91
	.byte	0x52
	.long	0x5e
	.long	.LLST68
	.long	.LVUS68
	.uleb128 0x8
	.long	.LASF25
	.byte	0x91
	.byte	0x5f
	.long	0x5e
	.long	.LLST69
	.long	.LVUS69
	.uleb128 0x1e
	.long	.LASF31
	.byte	0x1
	.byte	0x91
	.byte	0x6c
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4
	.string	"rho"
	.byte	0x91
	.byte	0x7e
	.long	0x63
	.long	.LLST70
	.long	.LVUS70
	.uleb128 0x4
	.string	"V"
	.byte	0x91
	.byte	0x8f
	.long	0x63
	.long	.LLST71
	.long	.LVUS71
	.uleb128 0x4
	.string	"L"
	.byte	0x91
	.byte	0x9e
	.long	0x63
	.long	.LLST72
	.long	.LVUS72
	.uleb128 0x7
	.long	.LASF26
	.byte	0xa8
	.byte	0xb
	.long	0x2e
	.long	.LLST73
	.long	.LVUS73
	.uleb128 0xa
	.long	.LLRL74
	.long	0x2f7
	.uleb128 0x1
	.string	"i"
	.byte	0x94
	.byte	0xe
	.long	0xf5
	.long	.LLST75
	.long	.LVUS75
	.uleb128 0xe
	.long	0x35b
	.quad	.LBI130
	.byte	.LVU667
	.long	.LLRL76
	.byte	0x9b
	.byte	0x13
	.long	0x2a4
	.uleb128 0xd
	.long	0x378
	.uleb128 0x3
	.long	0x36c
	.long	.LLST77
	.long	.LVUS77
	.byte	0
	.uleb128 0xe
	.long	0x35b
	.quad	.LBI135
	.byte	.LVU598
	.long	.LLRL78
	.byte	0x9c
	.byte	0x13
	.long	0x2cf
	.uleb128 0xd
	.long	0x378
	.uleb128 0x3
	.long	0x36c
	.long	.LLST79
	.long	.LVUS79
	.byte	0
	.uleb128 0x18
	.long	0x35b
	.quad	.LBI138
	.byte	.LVU610
	.long	.LLRL80
	.byte	0x9d
	.byte	0x13
	.uleb128 0xd
	.long	0x378
	.uleb128 0x3
	.long	0x36c
	.long	.LLST81
	.long	.LVUS81
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	.LLRL82
	.long	0x312
	.uleb128 0x1
	.string	"i"
	.byte	0xaa
	.byte	0xe
	.long	0xf5
	.long	.LLST83
	.long	.LVUS83
	.byte	0
	.uleb128 0x11
	.quad	.LVL123
	.long	0x385
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x5
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x68
	.uleb128 0xc
	.long	0x9e
	.uleb128 0xc
	.long	0xcf
	.uleb128 0x1f
	.string	"pbc"
	.byte	0x1
	.byte	0x87
	.byte	0xe
	.long	0x2e
	.byte	0x1
	.long	0x385
	.uleb128 0xb
	.long	.LASF27
	.byte	0x1
	.byte	0x87
	.byte	0x18
	.long	0x2e
	.uleb128 0xb
	.long	.LASF28
	.byte	0x1
	.byte	0x87
	.byte	0x2b
	.long	0x63
	.byte	0
	.uleb128 0x10
	.long	.LASF30
	.byte	0x57
	.quad	.LFB6448
	.quad	.LFE6448-.LFB6448
	.uleb128 0x1
	.byte	0x9c
	.long	0x717
	.uleb128 0x4
	.string	"r"
	.byte	0x57
	.byte	0x1e
	.long	0x717
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x4
	.string	"f"
	.byte	0x57
	.byte	0x29
	.long	0x356
	.long	.LLST23
	.long	.LVUS23
	.uleb128 0x8
	.long	.LASF23
	.byte	0x57
	.byte	0x33
	.long	0x5e
	.long	.LLST24
	.long	.LVUS24
	.uleb128 0x8
	.long	.LASF25
	.byte	0x57
	.byte	0x40
	.long	0x5e
	.long	.LLST25
	.long	.LVUS25
	.uleb128 0x8
	.long	.LASF31
	.byte	0x57
	.byte	0x53
	.long	0x71c
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x4
	.string	"rho"
	.byte	0x57
	.byte	0x65
	.long	0x63
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x4
	.string	"V"
	.byte	0x57
	.byte	0x76
	.long	0x63
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0x4
	.string	"L"
	.byte	0x57
	.byte	0x85
	.long	0x63
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x7
	.long	.LASF32
	.byte	0x5d
	.byte	0xb
	.long	0x2e
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x20
	.long	.LASF42
	.byte	0x1
	.byte	0x5e
	.byte	0x11
	.long	0x63
	.byte	0x4
	.long	0x40c80000
	.uleb128 0xa
	.long	.LLRL41
	.long	0x5f2
	.uleb128 0x1
	.string	"i"
	.byte	0x61
	.byte	0xe
	.long	0xf5
	.long	.LLST42
	.long	.LVUS42
	.uleb128 0x9
	.long	.LLRL43
	.uleb128 0x1
	.string	"xi"
	.byte	0x62
	.byte	0xf
	.long	0x2e
	.long	.LLST44
	.long	.LVUS44
	.uleb128 0x1
	.string	"yi"
	.byte	0x63
	.byte	0xf
	.long	0x2e
	.long	.LLST45
	.long	.LVUS45
	.uleb128 0x1
	.string	"zi"
	.byte	0x64
	.byte	0xf
	.long	0x2e
	.long	.LLST46
	.long	.LVUS46
	.uleb128 0x9
	.long	.LLRL47
	.uleb128 0x1
	.string	"j"
	.byte	0x66
	.byte	0x12
	.long	0xf5
	.long	.LLST48
	.long	.LVUS48
	.uleb128 0x9
	.long	.LLRL49
	.uleb128 0x1
	.string	"rx"
	.byte	0x67
	.byte	0x13
	.long	0x2e
	.long	.LLST50
	.long	.LVUS50
	.uleb128 0x1
	.string	"ry"
	.byte	0x68
	.byte	0x13
	.long	0x2e
	.long	.LLST51
	.long	.LVUS51
	.uleb128 0x1
	.string	"rz"
	.byte	0x69
	.byte	0x13
	.long	0x2e
	.long	.LLST52
	.long	.LVUS52
	.uleb128 0x7
	.long	.LASF33
	.byte	0x6f
	.byte	0x13
	.long	0x2e
	.long	.LLST53
	.long	.LVUS53
	.uleb128 0xa
	.long	.LLRL58
	.long	0x550
	.uleb128 0x7
	.long	.LASF34
	.byte	0x72
	.byte	0x17
	.long	0x2e
	.long	.LLST59
	.long	.LVUS59
	.uleb128 0x7
	.long	.LASF35
	.byte	0x73
	.byte	0x17
	.long	0x2e
	.long	.LLST60
	.long	.LVUS60
	.uleb128 0x1
	.string	"fr"
	.byte	0x74
	.byte	0x17
	.long	0x2e
	.long	.LLST61
	.long	.LVUS61
	.byte	0
	.uleb128 0xe
	.long	0x721
	.quad	.LBI73
	.byte	.LVU448
	.long	.LLRL54
	.byte	0x6b
	.byte	0x12
	.long	0x586
	.uleb128 0xd
	.long	0x73e
	.uleb128 0x3
	.long	0x732
	.long	.LLST55
	.long	.LVUS55
	.uleb128 0x9
	.long	.LLRL54
	.uleb128 0x14
	.long	0x74a
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x721
	.quad	.LBI85
	.byte	.LVU478
	.long	.LLRL56
	.byte	0x6d
	.byte	0x12
	.long	0x5bc
	.uleb128 0xd
	.long	0x73e
	.uleb128 0x3
	.long	0x732
	.long	.LLST57
	.long	.LVUS57
	.uleb128 0x9
	.long	.LLRL56
	.uleb128 0x14
	.long	0x74a
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	0x721
	.quad	.LBI99
	.byte	.LVU463
	.long	.LLRL62
	.byte	0x6c
	.byte	0x12
	.uleb128 0xd
	.long	0x73e
	.uleb128 0x3
	.long	0x732
	.long	.LLST63
	.long	.LVUS63
	.uleb128 0x9
	.long	.LLRL62
	.uleb128 0x14
	.long	0x74a
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x96d
	.quad	.LBI57
	.byte	.LVU388
	.long	.LLRL31
	.byte	0x59
	.byte	0x5
	.long	0x64c
	.uleb128 0x3
	.long	0x996
	.long	.LLST32
	.long	.LVUS32
	.uleb128 0x3
	.long	0x98a
	.long	.LLST33
	.long	.LVUS33
	.uleb128 0x3
	.long	0x97e
	.long	.LLST34
	.long	.LVUS34
	.uleb128 0x11
	.quad	.LVL61
	.long	0x9a3
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.value	0x400
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x96d
	.quad	.LBI65
	.byte	.LVU403
	.quad	.LBB65
	.quad	.LBE65-.LBB65
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.long	0x6b3
	.uleb128 0x3
	.long	0x996
	.long	.LLST35
	.long	.LVUS35
	.uleb128 0x3
	.long	0x98a
	.long	.LLST36
	.long	.LVUS36
	.uleb128 0x3
	.long	0x97e
	.long	.LLST37
	.long	.LVUS37
	.uleb128 0x11
	.quad	.LVL62
	.long	0x9a3
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.value	0x400
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0x96d
	.quad	.LBI67
	.byte	.LVU408
	.quad	.LBB67
	.quad	.LBE67-.LBB67
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.uleb128 0x3
	.long	0x996
	.long	.LLST38
	.long	.LVUS38
	.uleb128 0x3
	.long	0x98a
	.long	.LLST39
	.long	.LVUS39
	.uleb128 0x3
	.long	0x97e
	.long	.LLST40
	.long	.LVUS40
	.uleb128 0x11
	.quad	.LVL63
	.long	0x9a3
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.value	0x400
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x74
	.uleb128 0xc
	.long	0x63
	.uleb128 0x23
	.long	.LASF36
	.byte	0x1
	.byte	0x4e
	.byte	0xe
	.long	0x2e
	.byte	0x1
	.long	0x757
	.uleb128 0xb
	.long	.LASF27
	.byte	0x1
	.byte	0x4e
	.byte	0x22
	.long	0x2e
	.uleb128 0xb
	.long	.LASF28
	.byte	0x1
	.byte	0x4e
	.byte	0x35
	.long	0x63
	.uleb128 0x24
	.long	.LASF49
	.byte	0x1
	.byte	0x50
	.byte	0x11
	.long	0x63
	.byte	0
	.uleb128 0x10
	.long	.LASF37
	.byte	0x30
	.quad	.LFB6446
	.quad	.LFE6446-.LFB6446
	.uleb128 0x1
	.byte	0x9c
	.long	0x87e
	.uleb128 0x4
	.string	"v"
	.byte	0x30
	.byte	0x1b
	.long	0x351
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x8
	.long	.LASF31
	.byte	0x30
	.byte	0x25
	.long	0x5e
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x8
	.long	.LASF24
	.byte	0x30
	.byte	0x32
	.long	0x5e
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x7
	.long	.LASF38
	.byte	0x32
	.byte	0xb
	.long	0x2e
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x7
	.long	.LASF39
	.byte	0x32
	.byte	0x18
	.long	0x2e
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x7
	.long	.LASF40
	.byte	0x32
	.byte	0x25
	.long	0x2e
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x7
	.long	.LASF26
	.byte	0x32
	.byte	0x32
	.long	0x2e
	.long	.LLST16
	.long	.LVUS16
	.uleb128 0x1
	.string	"sf"
	.byte	0x44
	.byte	0xb
	.long	0x2e
	.long	.LLST17
	.long	.LVUS17
	.uleb128 0xa
	.long	.LLRL18
	.long	0x84a
	.uleb128 0x1
	.string	"i"
	.byte	0x34
	.byte	0xe
	.long	0xf5
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x12
	.quad	.LVL25
	.long	0x15f
	.uleb128 0x12
	.quad	.LVL26
	.long	0x15f
	.uleb128 0x12
	.quad	.LVL27
	.long	0x15f
	.byte	0
	.uleb128 0xa
	.long	.LLRL20
	.long	0x865
	.uleb128 0x1
	.string	"i"
	.byte	0x46
	.byte	0xe
	.long	0xf5
	.long	.LLST21
	.long	.LVUS21
	.byte	0
	.uleb128 0x19
	.quad	.LVL42
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x12
	.quad	.LVL54
	.long	0x14b
	.byte	0
	.uleb128 0x10
	.long	.LASF41
	.byte	0xb
	.quad	.LFB6445
	.quad	.LFE6445-.LFB6445
	.uleb128 0x1
	.byte	0x9c
	.long	0x96d
	.uleb128 0x4
	.string	"r"
	.byte	0xb
	.byte	0x1a
	.long	0x34c
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x4
	.string	"rho"
	.byte	0xb
	.byte	0x29
	.long	0x63
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x1
	.string	"a"
	.byte	0xd
	.byte	0xb
	.long	0x2e
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x25
	.long	.LASF43
	.byte	0x1
	.byte	0xe
	.byte	0x9
	.long	0xf5
	.byte	0x4
	.uleb128 0x1
	.string	"idx"
	.byte	0xf
	.byte	0x9
	.long	0xf5
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0xa
	.long	.LLRL4
	.long	0x938
	.uleb128 0x1
	.string	"i"
	.byte	0x11
	.byte	0xe
	.long	0xf5
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x9
	.long	.LLRL6
	.uleb128 0x1
	.string	"j"
	.byte	0x12
	.byte	0x12
	.long	0xf5
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x9
	.long	.LLRL8
	.uleb128 0x1
	.string	"k"
	.byte	0x13
	.byte	0x16
	.long	0xf5
	.long	.LLST9
	.long	.LVUS9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.quad	.LVL2
	.long	0x16c
	.long	0x961
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x13
	.byte	0xa4
	.uleb128 0x35
	.byte	0x8
	.long	0
	.long	0x40100000
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0xa8
	.uleb128 0x35
	.byte	0x1b
	.byte	0
	.uleb128 0x19
	.quad	.LVL9
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.long	.LASF50
	.byte	0x2
	.byte	0x39
	.byte	0x1
	.long	0x13b
	.byte	0x3
	.long	0x9a3
	.uleb128 0xb
	.long	.LASF44
	.byte	0x2
	.byte	0x39
	.byte	0x1
	.long	0x13b
	.uleb128 0xb
	.long	.LASF45
	.byte	0x2
	.byte	0x39
	.byte	0x1
	.long	0xf5
	.uleb128 0xb
	.long	.LASF46
	.byte	0x2
	.byte	0x39
	.byte	0x1
	.long	0xe2
	.byte	0
	.uleb128 0x28
	.long	.LASF50
	.long	.LASF51
	.byte	0x7
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 24
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x83
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS64:
	.uleb128 0
	.uleb128 .LVU587
	.uleb128 .LVU587
	.uleb128 .LVU695
	.uleb128 .LVU695
	.uleb128 0
.LLST64:
	.byte	0x4
	.uleb128 .LVL99-.Ltext0
	.uleb128 .LVL105-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL105-.Ltext0
	.uleb128 .LVL123-1-.Ltext0
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL123-1-.Ltext0
	.uleb128 .LFE6450-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS65:
	.uleb128 0
	.uleb128 .LVU579
	.uleb128 .LVU579
	.uleb128 .LVU742
	.uleb128 .LVU742
	.uleb128 0
.LLST65:
	.byte	0x4
	.uleb128 .LVL99-.Ltext0
	.uleb128 .LVL101-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL101-.Ltext0
	.uleb128 .LVL129-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL129-.Ltext0
	.uleb128 .LFE6450-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS66:
	.uleb128 0
	.uleb128 .LVU584
	.uleb128 .LVU584
	.uleb128 .LVU703
	.uleb128 .LVU703
	.uleb128 0
.LLST66:
	.byte	0x4
	.uleb128 .LVL99-.Ltext0
	.uleb128 .LVL103-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL103-.Ltext0
	.uleb128 .LVL124-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL124-.Ltext0
	.uleb128 .LFE6450-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS67:
	.uleb128 0
	.uleb128 .LVU583
	.uleb128 .LVU583
	.uleb128 0
.LLST67:
	.byte	0x4
	.uleb128 .LVL99-.Ltext0
	.uleb128 .LVL102-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL102-.Ltext0
	.uleb128 .LFE6450-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
.LVUS68:
	.uleb128 0
	.uleb128 .LVU586
	.uleb128 .LVU586
	.uleb128 .LVU743
	.uleb128 .LVU743
	.uleb128 0
.LLST68:
	.byte	0x4
	.uleb128 .LVL99-.Ltext0
	.uleb128 .LVL104-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL104-.Ltext0
	.uleb128 .LVL130-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL130-.Ltext0
	.uleb128 .LFE6450-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.byte	0
.LVUS69:
	.uleb128 0
	.uleb128 .LVU588
	.uleb128 .LVU588
	.uleb128 .LVU744
	.uleb128 .LVU744
	.uleb128 0
.LLST69:
	.byte	0x4
	.uleb128 .LVL99-.Ltext0
	.uleb128 .LVL106-.Ltext0
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL106-.Ltext0
	.uleb128 .LVL131-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL131-.Ltext0
	.uleb128 .LFE6450-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x59
	.byte	0x9f
	.byte	0
.LVUS70:
	.uleb128 0
	.uleb128 .LVU589
	.uleb128 .LVU589
	.uleb128 .LVU695
	.uleb128 .LVU695
	.uleb128 0
.LLST70:
	.byte	0x4
	.uleb128 .LVL99-.Ltext0
	.uleb128 .LVL107-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0x4
	.uleb128 .LVL107-.Ltext0
	.uleb128 .LVL123-1-.Ltext0
	.uleb128 0x1
	.byte	0x67
	.byte	0x4
	.uleb128 .LVL123-1-.Ltext0
	.uleb128 .LFE6450-.Ltext0
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x9f
	.byte	0
.LVUS71:
	.uleb128 0
	.uleb128 .LVU695
	.uleb128 .LVU695
	.uleb128 0
.LLST71:
	.byte	0x4
	.uleb128 .LVL99-.Ltext0
	.uleb128 .LVL123-1-.Ltext0
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL123-1-.Ltext0
	.uleb128 .LFE6450-.Ltext0
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x9f
	.byte	0
.LVUS72:
	.uleb128 0
	.uleb128 .LVU695
	.uleb128 .LVU695
	.uleb128 0
.LLST72:
	.byte	0x4
	.uleb128 .LVL99-.Ltext0
	.uleb128 .LVL123-1-.Ltext0
	.uleb128 0x1
	.byte	0x63
	.byte	0x4
	.uleb128 .LVL123-1-.Ltext0
	.uleb128 .LFE6450-.Ltext0
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x9f
	.byte	0
.LVUS73:
	.uleb128 .LVU696
	.uleb128 .LVU709
	.uleb128 .LVU709
	.uleb128 .LVU738
.LLST73:
	.byte	0x4
	.uleb128 .LVL123-.Ltext0
	.uleb128 .LVL125-.Ltext0
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x4
	.uleb128 .LVL125-.Ltext0
	.uleb128 .LVL128-.Ltext0
	.uleb128 0x1
	.byte	0x63
	.byte	0
.LVUS75:
	.uleb128 .LVU573
	.uleb128 .LVU589
	.uleb128 .LVU589
	.uleb128 .LVU636
	.uleb128 .LVU636
	.uleb128 .LVU637
	.uleb128 .LVU637
	.uleb128 .LVU638
	.uleb128 .LVU638
	.uleb128 .LVU693
	.uleb128 .LVU693
	.uleb128 .LVU695
.LLST75:
	.byte	0x4
	.uleb128 .LVL100-.Ltext0
	.uleb128 .LVL107-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL107-.Ltext0
	.uleb128 .LVL113-.Ltext0
	.uleb128 0x5
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL113-.Ltext0
	.uleb128 .LVL114-.Ltext0
	.uleb128 0x7
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL114-.Ltext0
	.uleb128 .LVL115-.Ltext0
	.uleb128 0x7
	.byte	0x70
	.sleb128 -4
	.byte	0x32
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL115-.Ltext0
	.uleb128 .LVL122-.Ltext0
	.uleb128 0x5
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL122-.Ltext0
	.uleb128 .LVL123-1-.Ltext0
	.uleb128 0x7
	.byte	0x70
	.sleb128 -4
	.byte	0x32
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0
.LVUS77:
	.uleb128 .LVU589
	.uleb128 .LVU594
	.uleb128 .LVU667
	.uleb128 .LVU673
.LLST77:
	.byte	0x4
	.uleb128 .LVL107-.Ltext0
	.uleb128 .LVL108-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0x4
	.uleb128 .LVL116-.Ltext0
	.uleb128 .LVL117-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0
.LVUS79:
	.uleb128 .LVU598
	.uleb128 .LVU606
	.uleb128 .LVU677
	.uleb128 .LVU683
.LLST79:
	.byte	0x4
	.uleb128 .LVL109-.Ltext0
	.uleb128 .LVL110-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0x4
	.uleb128 .LVL118-.Ltext0
	.uleb128 .LVL119-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0
.LVUS81:
	.uleb128 .LVU610
	.uleb128 .LVU618
	.uleb128 .LVU687
	.uleb128 .LVU693
.LLST81:
	.byte	0x4
	.uleb128 .LVL111-.Ltext0
	.uleb128 .LVL112-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0x4
	.uleb128 .LVL120-.Ltext0
	.uleb128 .LVL122-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0
.LVUS83:
	.uleb128 .LVU698
	.uleb128 .LVU709
	.uleb128 .LVU709
	.uleb128 .LVU728
	.uleb128 .LVU728
	.uleb128 .LVU733
.LLST83:
	.byte	0x4
	.uleb128 .LVL123-.Ltext0
	.uleb128 .LVL125-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL125-.Ltext0
	.uleb128 .LVL126-.Ltext0
	.uleb128 0x5
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL126-.Ltext0
	.uleb128 .LVL127-.Ltext0
	.uleb128 0x5
	.byte	0x70
	.sleb128 -4
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 0
	.uleb128 .LVU397
	.uleb128 .LVU397
	.uleb128 0
.LLST22:
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL59-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL59-.Ltext0
	.uleb128 .LFE6448-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
.LVUS23:
	.uleb128 0
	.uleb128 .LVU398
	.uleb128 .LVU398
	.uleb128 .LVU567
	.uleb128 .LVU567
	.uleb128 0
.LLST23:
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL60-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL60-.Ltext0
	.uleb128 .LVL97-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL97-.Ltext0
	.uleb128 .LFE6448-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS24:
	.uleb128 0
	.uleb128 .LVU393
	.uleb128 .LVU393
	.uleb128 .LVU566
	.uleb128 .LVU566
	.uleb128 0
.LLST24:
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL58-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL58-.Ltext0
	.uleb128 .LVL96-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL96-.Ltext0
	.uleb128 .LFE6448-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS25:
	.uleb128 0
	.uleb128 .LVU401
	.uleb128 .LVU401
	.uleb128 .LVU565
	.uleb128 .LVU565
	.uleb128 0
.LLST25:
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL61-1-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL61-1-.Ltext0
	.uleb128 .LVL95-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL95-.Ltext0
	.uleb128 .LFE6448-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0
.LVUS26:
	.uleb128 0
	.uleb128 .LVU401
	.uleb128 .LVU401
	.uleb128 .LVU564
	.uleb128 .LVU564
	.uleb128 0
.LLST26:
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL61-1-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL61-1-.Ltext0
	.uleb128 .LVL94-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL94-.Ltext0
	.uleb128 .LFE6448-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.byte	0
.LVUS27:
	.uleb128 0
	.uleb128 .LVU401
	.uleb128 .LVU401
	.uleb128 .LVU568
	.uleb128 .LVU568
	.uleb128 0
.LLST27:
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL61-1-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0x4
	.uleb128 .LVL61-1-.Ltext0
	.uleb128 .LVL98-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL98-.Ltext0
	.uleb128 .LFE6448-.Ltext0
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x9f
	.byte	0
.LVUS28:
	.uleb128 0
	.uleb128 .LVU401
	.uleb128 .LVU401
	.uleb128 0
.LLST28:
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL61-1-.Ltext0
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL61-1-.Ltext0
	.uleb128 .LFE6448-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
.LVUS29:
	.uleb128 0
	.uleb128 .LVU401
	.uleb128 .LVU401
	.uleb128 .LVU428
	.uleb128 .LVU428
	.uleb128 0
.LLST29:
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL61-1-.Ltext0
	.uleb128 0x1
	.byte	0x63
	.byte	0x4
	.uleb128 .LVL61-1-.Ltext0
	.uleb128 .LVL65-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0x4
	.uleb128 .LVL65-.Ltext0
	.uleb128 .LFE6448-.Ltext0
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x9f
	.byte	0
.LVUS30:
	.uleb128 .LVU413
	.uleb128 .LVU428
	.uleb128 .LVU428
	.uleb128 .LVU518
	.uleb128 .LVU546
	.uleb128 .LVU559
	.uleb128 .LVU559
	.uleb128 .LVU561
	.uleb128 .LVU561
	.uleb128 0
.LLST30:
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LVL65-.Ltext0
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x4
	.uleb128 .LVL65-.Ltext0
	.uleb128 .LVL85-.Ltext0
	.uleb128 0x1
	.byte	0x68
	.byte	0x4
	.uleb128 .LVL89-.Ltext0
	.uleb128 .LVL92-.Ltext0
	.uleb128 0x1
	.byte	0x68
	.byte	0x4
	.uleb128 .LVL92-.Ltext0
	.uleb128 .LVL93-.Ltext0
	.uleb128 0x6
	.byte	0xa5
	.uleb128 0x11
	.uleb128 0x35
	.byte	0xa8
	.uleb128 0x2e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL93-.Ltext0
	.uleb128 .LFE6448-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0
.LVUS42:
	.uleb128 .LVU420
	.uleb128 .LVU428
	.uleb128 .LVU428
	.uleb128 .LVU552
.LLST42:
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LVL65-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL65-.Ltext0
	.uleb128 .LVL91-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS44:
	.uleb128 .LVU431
	.uleb128 0
.LLST44:
	.byte	0x4
	.uleb128 .LVL66-.Ltext0
	.uleb128 .LFE6448-.Ltext0
	.uleb128 0x1
	.byte	0x6e
	.byte	0
.LVUS45:
	.uleb128 .LVU433
	.uleb128 0
.LLST45:
	.byte	0x4
	.uleb128 .LVL67-.Ltext0
	.uleb128 .LFE6448-.Ltext0
	.uleb128 0x1
	.byte	0x6d
	.byte	0
.LVUS46:
	.uleb128 .LVU436
	.uleb128 0
.LLST46:
	.byte	0x4
	.uleb128 .LVL68-.Ltext0
	.uleb128 .LFE6448-.Ltext0
	.uleb128 0x1
	.byte	0x6c
	.byte	0
.LVUS48:
	.uleb128 .LVU438
	.uleb128 .LVU441
	.uleb128 .LVU441
	.uleb128 .LVU548
	.uleb128 .LVU548
	.uleb128 .LVU549
	.uleb128 .LVU549
	.uleb128 .LVU552
.LLST48:
	.byte	0x4
	.uleb128 .LVL68-.Ltext0
	.uleb128 .LVL69-.Ltext0
	.uleb128 0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL69-.Ltext0
	.uleb128 .LVL89-.Ltext0
	.uleb128 0x15
	.byte	0x70
	.sleb128 0
	.byte	0x78
	.sleb128 1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x32
	.byte	0x24
	.byte	0x1c
	.byte	0x32
	.byte	0x25
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL89-.Ltext0
	.uleb128 .LVL90-.Ltext0
	.uleb128 0x15
	.byte	0x70
	.sleb128 0
	.byte	0x78
	.sleb128 1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x32
	.byte	0x24
	.byte	0x1c
	.byte	0x32
	.byte	0x25
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL90-.Ltext0
	.uleb128 .LVL91-.Ltext0
	.uleb128 0x17
	.byte	0x70
	.sleb128 0
	.byte	0x78
	.sleb128 1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0x32
	.byte	0x24
	.byte	0x1c
	.byte	0x34
	.byte	0x1c
	.byte	0x32
	.byte	0x25
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.byte	0
.LVUS50:
	.uleb128 .LVU443
	.uleb128 .LVU455
	.uleb128 .LVU455
	.uleb128 .LVU461
	.uleb128 .LVU461
	.uleb128 .LVU532
.LLST50:
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LVL73-.Ltext0
	.uleb128 0x1
	.byte	0x6f
	.byte	0x4
	.uleb128 .LVL73-.Ltext0
	.uleb128 .LVL74-.Ltext0
	.uleb128 0xd
	.byte	0xa5
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x7d
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0xa6
	.byte	0x4
	.uleb128 0x2e
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL74-.Ltext0
	.uleb128 .LVL86-.Ltext0
	.uleb128 0x1
	.byte	0x6f
	.byte	0
.LVUS51:
	.uleb128 .LVU445
	.uleb128 .LVU470
	.uleb128 .LVU470
	.uleb128 .LVU476
	.uleb128 .LVU476
	.uleb128 .LVU535
.LLST51:
	.byte	0x4
	.uleb128 .LVL71-.Ltext0
	.uleb128 .LVL75-.Ltext0
	.uleb128 0x1
	.byte	0x6a
	.byte	0x4
	.uleb128 .LVL75-.Ltext0
	.uleb128 .LVL76-.Ltext0
	.uleb128 0xd
	.byte	0xa5
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x74
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0xa6
	.byte	0x4
	.uleb128 0x2e
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL76-.Ltext0
	.uleb128 .LVL87-.Ltext0
	.uleb128 0x1
	.byte	0x6a
	.byte	0
.LVUS52:
	.uleb128 .LVU447
	.uleb128 .LVU484
	.uleb128 .LVU484
	.uleb128 .LVU490
	.uleb128 .LVU490
	.uleb128 .LVU538
.LLST52:
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LVL77-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0x4
	.uleb128 .LVL77-.Ltext0
	.uleb128 .LVL78-.Ltext0
	.uleb128 0xd
	.byte	0xa5
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x72
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0xa6
	.byte	0x4
	.uleb128 0x2e
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL78-.Ltext0
	.uleb128 .LVL88-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0
.LVUS53:
	.uleb128 .LVU494
	.uleb128 0
.LLST53:
	.byte	0x4
	.uleb128 .LVL79-.Ltext0
	.uleb128 .LFE6448-.Ltext0
	.uleb128 0x1
	.byte	0x6b
	.byte	0
.LVUS59:
	.uleb128 .LVU502
	.uleb128 .LVU509
	.uleb128 .LVU509
	.uleb128 .LVU546
.LLST59:
	.byte	0x4
	.uleb128 .LVL80-.Ltext0
	.uleb128 .LVL82-.Ltext0
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL82-.Ltext0
	.uleb128 .LVL89-.Ltext0
	.uleb128 0xc
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x4
	.long	0x3f800000
	.byte	0xa5
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1b
	.byte	0x9f
	.byte	0
.LVUS60:
	.uleb128 .LVU503
	.uleb128 .LVU508
	.uleb128 .LVU508
	.uleb128 .LVU511
	.uleb128 .LVU511
	.uleb128 .LVU546
.LLST60:
	.byte	0x4
	.uleb128 .LVL80-.Ltext0
	.uleb128 .LVL81-.Ltext0
	.uleb128 0xa
	.byte	0xa5
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x12
	.byte	0x1e
	.byte	0xa5
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LVL83-.Ltext0
	.uleb128 0x1
	.byte	0x64
	.byte	0x4
	.uleb128 .LVL83-.Ltext0
	.uleb128 .LVL89-.Ltext0
	.uleb128 0x1a
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x4
	.long	0x3f800000
	.byte	0xa5
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1b
	.byte	0x12
	.byte	0x1e
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x4
	.long	0x3f800000
	.byte	0xa5
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1b
	.byte	0x1e
	.byte	0x9f
	.byte	0
.LVUS61:
	.uleb128 .LVU515
	.uleb128 .LVU546
.LLST61:
	.byte	0x4
	.uleb128 .LVL84-.Ltext0
	.uleb128 .LVL89-.Ltext0
	.uleb128 0x1
	.byte	0x62
	.byte	0
.LVUS55:
	.uleb128 .LVU448
	.uleb128 .LVU461
.LLST55:
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LVL74-.Ltext0
	.uleb128 0x1
	.byte	0x6f
	.byte	0
.LVUS57:
	.uleb128 .LVU478
	.uleb128 .LVU490
.LLST57:
	.byte	0x4
	.uleb128 .LVL76-.Ltext0
	.uleb128 .LVL78-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0
.LVUS63:
	.uleb128 .LVU463
	.uleb128 .LVU476
.LLST63:
	.byte	0x4
	.uleb128 .LVL74-.Ltext0
	.uleb128 .LVL76-.Ltext0
	.uleb128 0x1
	.byte	0x6a
	.byte	0
.LVUS32:
	.uleb128 .LVU388
	.uleb128 .LVU401
.LLST32:
	.byte	0x4
	.uleb128 .LVL56-.Ltext0
	.uleb128 .LVL61-.Ltext0
	.uleb128 0x4
	.byte	0xa
	.value	0x400
	.byte	0x9f
	.byte	0
.LVUS33:
	.uleb128 .LVU388
	.uleb128 .LVU401
.LLST33:
	.byte	0x4
	.uleb128 .LVL56-.Ltext0
	.uleb128 .LVL61-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS34:
	.uleb128 .LVU388
	.uleb128 .LVU391
.LLST34:
	.byte	0x4
	.uleb128 .LVL56-.Ltext0
	.uleb128 .LVL57-.Ltext0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
.LVUS35:
	.uleb128 .LVU403
	.uleb128 .LVU406
.LLST35:
	.byte	0x4
	.uleb128 .LVL61-.Ltext0
	.uleb128 .LVL62-.Ltext0
	.uleb128 0x4
	.byte	0xa
	.value	0x400
	.byte	0x9f
	.byte	0
.LVUS36:
	.uleb128 .LVU403
	.uleb128 .LVU406
.LLST36:
	.byte	0x4
	.uleb128 .LVL61-.Ltext0
	.uleb128 .LVL62-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS37:
	.uleb128 .LVU403
	.uleb128 .LVU406
.LLST37:
	.byte	0x4
	.uleb128 .LVL61-.Ltext0
	.uleb128 .LVL62-1-.Ltext0
	.uleb128 0x2
	.byte	0x7e
	.sleb128 8
	.byte	0
.LVUS38:
	.uleb128 .LVU408
	.uleb128 .LVU411
.LLST38:
	.byte	0x4
	.uleb128 .LVL62-.Ltext0
	.uleb128 .LVL63-.Ltext0
	.uleb128 0x4
	.byte	0xa
	.value	0x400
	.byte	0x9f
	.byte	0
.LVUS39:
	.uleb128 .LVU408
	.uleb128 .LVU411
.LLST39:
	.byte	0x4
	.uleb128 .LVL62-.Ltext0
	.uleb128 .LVL63-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS40:
	.uleb128 .LVU408
	.uleb128 .LVU411
.LLST40:
	.byte	0x4
	.uleb128 .LVL62-.Ltext0
	.uleb128 .LVL63-1-.Ltext0
	.uleb128 0x2
	.byte	0x7e
	.sleb128 16
	.byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU270
	.uleb128 .LVU270
	.uleb128 .LVU360
	.uleb128 .LVU360
	.uleb128 .LVU364
	.uleb128 .LVU364
	.uleb128 0
.LLST10:
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LVL43-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL47-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LFE6446-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU270
	.uleb128 .LVU270
	.uleb128 .LVU338
	.uleb128 .LVU338
	.uleb128 .LVU380
	.uleb128 .LVU380
	.uleb128 .LVU382
	.uleb128 .LVU382
	.uleb128 0
.LLST11:
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LVL38-.Ltext0
	.uleb128 0x2
	.byte	0x76
	.sleb128 -64
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL53-.Ltext0
	.uleb128 0x2
	.byte	0x76
	.sleb128 -64
	.byte	0x4
	.uleb128 .LVL53-.Ltext0
	.uleb128 .LFE6446-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU270
	.uleb128 .LVU270
	.uleb128 .LVU338
	.uleb128 .LVU338
	.uleb128 .LVU380
	.uleb128 .LVU380
	.uleb128 .LVU381
	.uleb128 .LVU381
	.uleb128 0
.LLST12:
	.byte	0x4
	.uleb128 .LVL22-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LVL38-.Ltext0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -72
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL52-.Ltext0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -72
	.byte	0x4
	.uleb128 .LVL52-.Ltext0
	.uleb128 .LFE6446-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 .LVU258
	.uleb128 .LVU270
	.uleb128 .LVU270
	.uleb128 .LVU305
	.uleb128 .LVU305
	.uleb128 .LVU307
	.uleb128 .LVU307
	.uleb128 .LVU328
	.uleb128 .LVU328
	.uleb128 .LVU338
	.uleb128 .LVU380
	.uleb128 .LVU384
	.uleb128 .LVU384
	.uleb128 0
.LLST13:
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LVL29-.Ltext0
	.uleb128 0x2
	.byte	0x76
	.sleb128 -56
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL30-.Ltext0
	.uleb128 0x1
	.byte	0x65
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0x2
	.byte	0x76
	.sleb128 -56
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL38-.Ltext0
	.uleb128 0x1
	.byte	0x63
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL54-1-.Ltext0
	.uleb128 0x1
	.byte	0x63
	.byte	0x4
	.uleb128 .LVL54-1-.Ltext0
	.uleb128 .LFE6446-.Ltext0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -76
	.byte	0
.LVUS14:
	.uleb128 .LVU258
	.uleb128 .LVU270
	.uleb128 .LVU270
	.uleb128 .LVU308
	.uleb128 .LVU308
	.uleb128 .LVU314
	.uleb128 .LVU314
	.uleb128 .LVU329
	.uleb128 .LVU329
	.uleb128 .LVU338
	.uleb128 .LVU338
	.uleb128 .LVU361
	.uleb128 .LVU364
	.uleb128 .LVU380
	.uleb128 .LVU380
	.uleb128 .LVU384
	.uleb128 .LVU384
	.uleb128 0
.LLST14:
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL33-.Ltext0
	.uleb128 0x1
	.byte	0x68
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL38-.Ltext0
	.uleb128 0x1
	.byte	0x64
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0xc
	.byte	0xa5
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x4
	.long	0x3b800000
	.byte	0x1e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0xc
	.byte	0xa5
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x4
	.long	0x3b800000
	.byte	0x1e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL54-1-.Ltext0
	.uleb128 0x1
	.byte	0x64
	.byte	0x4
	.uleb128 .LVL54-1-.Ltext0
	.uleb128 .LFE6446-.Ltext0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -80
	.byte	0
.LVUS15:
	.uleb128 .LVU258
	.uleb128 .LVU270
	.uleb128 .LVU270
	.uleb128 .LVU311
	.uleb128 .LVU311
	.uleb128 .LVU322
	.uleb128 .LVU322
	.uleb128 .LVU331
	.uleb128 .LVU331
	.uleb128 .LVU338
	.uleb128 .LVU338
	.uleb128 .LVU363
	.uleb128 .LVU364
	.uleb128 .LVU380
	.uleb128 .LVU380
	.uleb128 .LVU384
	.uleb128 .LVU384
	.uleb128 0
.LLST15:
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x1
	.byte	0x65
	.byte	0x4
	.uleb128 .LVL35-.Ltext0
	.uleb128 .LVL37-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL38-.Ltext0
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL46-.Ltext0
	.uleb128 0xc
	.byte	0xa5
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x4
	.long	0x3b800000
	.byte	0x1e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0xc
	.byte	0xa5
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x4
	.long	0x3b800000
	.byte	0x1e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL54-1-.Ltext0
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL54-1-.Ltext0
	.uleb128 .LFE6446-.Ltext0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -84
	.byte	0
.LVUS16:
	.uleb128 .LVU258
	.uleb128 .LVU270
	.uleb128 .LVU270
	.uleb128 .LVU315
	.uleb128 .LVU315
	.uleb128 .LVU338
	.uleb128 .LVU338
	.uleb128 .LVU362
	.uleb128 .LVU364
	.uleb128 .LVU380
	.uleb128 .LVU380
	.uleb128 .LVU384
	.uleb128 .LVU384
	.uleb128 0
.LLST16:
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL38-.Ltext0
	.uleb128 0x1
	.byte	0x68
	.byte	0x4
	.uleb128 .LVL38-.Ltext0
	.uleb128 .LVL45-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL54-1-.Ltext0
	.uleb128 0x1
	.byte	0x68
	.byte	0x4
	.uleb128 .LVL54-1-.Ltext0
	.uleb128 .LFE6446-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS17:
	.uleb128 .LVU340
	.uleb128 .LVU343
	.uleb128 .LVU343
	.uleb128 .LVU345
	.uleb128 .LVU364
	.uleb128 .LVU380
.LLST17:
	.byte	0x4
	.uleb128 .LVL39-.Ltext0
	.uleb128 .LVL40-.Ltext0
	.uleb128 0x1
	.byte	0x65
	.byte	0x4
	.uleb128 .LVL40-.Ltext0
	.uleb128 .LVL41-.Ltext0
	.uleb128 0x6
	.byte	0xa5
	.uleb128 0x11
	.uleb128 0x35
	.byte	0xa8
	.uleb128 0x2e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0x1
	.byte	0x65
	.byte	0
.LVUS19:
	.uleb128 .LVU260
	.uleb128 .LVU270
	.uleb128 .LVU270
	.uleb128 .LVU300
	.uleb128 .LVU300
	.uleb128 .LVU316
.LLST19:
	.byte	0x4
	.uleb128 .LVL23-.Ltext0
	.uleb128 .LVL24-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LVL28-.Ltext0
	.uleb128 0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL28-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x5
	.byte	0x7c
	.sleb128 -4
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0
.LVUS21:
	.uleb128 .LVU342
	.uleb128 .LVU345
	.uleb128 .LVU364
	.uleb128 .LVU365
	.uleb128 .LVU365
	.uleb128 .LVU378
	.uleb128 .LVU378
	.uleb128 .LVU379
	.uleb128 .LVU379
	.uleb128 .LVU380
.LLST21:
	.byte	0x4
	.uleb128 .LVL39-.Ltext0
	.uleb128 .LVL41-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LVL48-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL48-.Ltext0
	.uleb128 .LVL49-.Ltext0
	.uleb128 0x5
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL49-.Ltext0
	.uleb128 .LVL50-.Ltext0
	.uleb128 0x7
	.byte	0x71
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL50-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0x7
	.byte	0x71
	.sleb128 -4
	.byte	0x32
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL2-1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL2-1-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LFE6445-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LFE6445-.Ltext0
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU9
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LFE6445-.Ltext0
	.uleb128 0x1
	.byte	0x63
	.byte	0
.LVUS3:
	.uleb128 .LVU11
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU27
	.uleb128 .LVU119
	.uleb128 .LVU121
	.uleb128 .LVU122
	.uleb128 .LVU124
	.uleb128 .LVU124
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 .LVU138
.LLST3:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x36
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x5
	.byte	0x7a
	.sleb128 1
	.byte	0x36
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x36
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0xa
	.byte	0x71
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x36
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0xa
	.byte	0x71
	.sleb128 -1
	.byte	0x34
	.byte	0x24
	.byte	0x7a
	.sleb128 0
	.byte	0x36
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 .LVU13
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU121
	.uleb128 .LVU122
	.uleb128 0
.LLST5:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL4-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL10-.Ltext0
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LFE6445-.Ltext0
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS7:
	.uleb128 .LVU19
	.uleb128 .LVU27
	.uleb128 .LVU122
	.uleb128 .LVU124
	.uleb128 .LVU124
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 .LVU254
	.uleb128 .LVU254
	.uleb128 0
.LLST7:
	.byte	0x4
	.uleb128 .LVL4-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LFE6445-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS9:
	.uleb128 .LVU27
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 .LVU122
	.uleb128 .LVU124
	.uleb128 .LVU162
	.uleb128 .LVU162
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 .LVU222
	.uleb128 .LVU222
	.uleb128 .LVU252
	.uleb128 .LVU252
	.uleb128 0
.LLST9:
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL11-.Ltext0
	.uleb128 0x2
	.byte	0x34
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LVL17-.Ltext0
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LVL19-.Ltext0
	.uleb128 0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL19-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LFE6445-.Ltext0
	.uleb128 0x2
	.byte	0x34
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL4:
	.byte	0x4
	.uleb128 .LBB38-.Ltext0
	.uleb128 .LBE38-.Ltext0
	.byte	0x4
	.uleb128 .LBB50-.Ltext0
	.uleb128 .LBE50-.Ltext0
	.byte	0x4
	.uleb128 .LBB51-.Ltext0
	.uleb128 .LBE51-.Ltext0
	.byte	0
.LLRL6:
	.byte	0x4
	.uleb128 .LBB39-.Ltext0
	.uleb128 .LBE39-.Ltext0
	.byte	0x4
	.uleb128 .LBB47-.Ltext0
	.uleb128 .LBE47-.Ltext0
	.byte	0x4
	.uleb128 .LBB48-.Ltext0
	.uleb128 .LBE48-.Ltext0
	.byte	0x4
	.uleb128 .LBB49-.Ltext0
	.uleb128 .LBE49-.Ltext0
	.byte	0
.LLRL8:
	.byte	0x4
	.uleb128 .LBB40-.Ltext0
	.uleb128 .LBE40-.Ltext0
	.byte	0x4
	.uleb128 .LBB41-.Ltext0
	.uleb128 .LBE41-.Ltext0
	.byte	0x4
	.uleb128 .LBB42-.Ltext0
	.uleb128 .LBE42-.Ltext0
	.byte	0x4
	.uleb128 .LBB43-.Ltext0
	.uleb128 .LBE43-.Ltext0
	.byte	0x4
	.uleb128 .LBB44-.Ltext0
	.uleb128 .LBE44-.Ltext0
	.byte	0x4
	.uleb128 .LBB45-.Ltext0
	.uleb128 .LBE45-.Ltext0
	.byte	0x4
	.uleb128 .LBB46-.Ltext0
	.uleb128 .LBE46-.Ltext0
	.byte	0
.LLRL18:
	.byte	0x4
	.uleb128 .LBB52-.Ltext0
	.uleb128 .LBE52-.Ltext0
	.byte	0x4
	.uleb128 .LBB53-.Ltext0
	.uleb128 .LBE53-.Ltext0
	.byte	0
.LLRL20:
	.byte	0x4
	.uleb128 .LBB54-.Ltext0
	.uleb128 .LBE54-.Ltext0
	.byte	0x4
	.uleb128 .LBB55-.Ltext0
	.uleb128 .LBE55-.Ltext0
	.byte	0x4
	.uleb128 .LBB56-.Ltext0
	.uleb128 .LBE56-.Ltext0
	.byte	0
.LLRL31:
	.byte	0x4
	.uleb128 .LBB57-.Ltext0
	.uleb128 .LBE57-.Ltext0
	.byte	0x4
	.uleb128 .LBB62-.Ltext0
	.uleb128 .LBE62-.Ltext0
	.byte	0x4
	.uleb128 .LBB63-.Ltext0
	.uleb128 .LBE63-.Ltext0
	.byte	0x4
	.uleb128 .LBB64-.Ltext0
	.uleb128 .LBE64-.Ltext0
	.byte	0
.LLRL41:
	.byte	0x4
	.uleb128 .LBB69-.Ltext0
	.uleb128 .LBE69-.Ltext0
	.byte	0x4
	.uleb128 .LBB127-.Ltext0
	.uleb128 .LBE127-.Ltext0
	.byte	0x4
	.uleb128 .LBB128-.Ltext0
	.uleb128 .LBE128-.Ltext0
	.byte	0
.LLRL43:
	.byte	0x4
	.uleb128 .LBB70-.Ltext0
	.uleb128 .LBE70-.Ltext0
	.byte	0x4
	.uleb128 .LBB125-.Ltext0
	.uleb128 .LBE125-.Ltext0
	.byte	0x4
	.uleb128 .LBB126-.Ltext0
	.uleb128 .LBE126-.Ltext0
	.byte	0
.LLRL47:
	.byte	0x4
	.uleb128 .LBB71-.Ltext0
	.uleb128 .LBE71-.Ltext0
	.byte	0x4
	.uleb128 .LBB119-.Ltext0
	.uleb128 .LBE119-.Ltext0
	.byte	0x4
	.uleb128 .LBB120-.Ltext0
	.uleb128 .LBE120-.Ltext0
	.byte	0x4
	.uleb128 .LBB121-.Ltext0
	.uleb128 .LBE121-.Ltext0
	.byte	0x4
	.uleb128 .LBB122-.Ltext0
	.uleb128 .LBE122-.Ltext0
	.byte	0x4
	.uleb128 .LBB123-.Ltext0
	.uleb128 .LBE123-.Ltext0
	.byte	0x4
	.uleb128 .LBB124-.Ltext0
	.uleb128 .LBE124-.Ltext0
	.byte	0
.LLRL49:
	.byte	0x4
	.uleb128 .LBB72-.Ltext0
	.uleb128 .LBE72-.Ltext0
	.byte	0x4
	.uleb128 .LBB113-.Ltext0
	.uleb128 .LBE113-.Ltext0
	.byte	0x4
	.uleb128 .LBB114-.Ltext0
	.uleb128 .LBE114-.Ltext0
	.byte	0x4
	.uleb128 .LBB115-.Ltext0
	.uleb128 .LBE115-.Ltext0
	.byte	0x4
	.uleb128 .LBB116-.Ltext0
	.uleb128 .LBE116-.Ltext0
	.byte	0x4
	.uleb128 .LBB117-.Ltext0
	.uleb128 .LBE117-.Ltext0
	.byte	0x4
	.uleb128 .LBB118-.Ltext0
	.uleb128 .LBE118-.Ltext0
	.byte	0
.LLRL54:
	.byte	0x4
	.uleb128 .LBB73-.Ltext0
	.uleb128 .LBE73-.Ltext0
	.byte	0x4
	.uleb128 .LBB82-.Ltext0
	.uleb128 .LBE82-.Ltext0
	.byte	0x4
	.uleb128 .LBB83-.Ltext0
	.uleb128 .LBE83-.Ltext0
	.byte	0x4
	.uleb128 .LBB84-.Ltext0
	.uleb128 .LBE84-.Ltext0
	.byte	0x4
	.uleb128 .LBB94-.Ltext0
	.uleb128 .LBE94-.Ltext0
	.byte	0x4
	.uleb128 .LBB95-.Ltext0
	.uleb128 .LBE95-.Ltext0
	.byte	0x4
	.uleb128 .LBB97-.Ltext0
	.uleb128 .LBE97-.Ltext0
	.byte	0x4
	.uleb128 .LBB104-.Ltext0
	.uleb128 .LBE104-.Ltext0
	.byte	0
.LLRL56:
	.byte	0x4
	.uleb128 .LBB85-.Ltext0
	.uleb128 .LBE85-.Ltext0
	.byte	0x4
	.uleb128 .LBB96-.Ltext0
	.uleb128 .LBE96-.Ltext0
	.byte	0x4
	.uleb128 .LBB98-.Ltext0
	.uleb128 .LBE98-.Ltext0
	.byte	0x4
	.uleb128 .LBB106-.Ltext0
	.uleb128 .LBE106-.Ltext0
	.byte	0x4
	.uleb128 .LBB108-.Ltext0
	.uleb128 .LBE108-.Ltext0
	.byte	0x4
	.uleb128 .LBB110-.Ltext0
	.uleb128 .LBE110-.Ltext0
	.byte	0x4
	.uleb128 .LBB111-.Ltext0
	.uleb128 .LBE111-.Ltext0
	.byte	0
.LLRL58:
	.byte	0x4
	.uleb128 .LBB93-.Ltext0
	.uleb128 .LBE93-.Ltext0
	.byte	0x4
	.uleb128 .LBB112-.Ltext0
	.uleb128 .LBE112-.Ltext0
	.byte	0
.LLRL62:
	.byte	0x4
	.uleb128 .LBB99-.Ltext0
	.uleb128 .LBE99-.Ltext0
	.byte	0x4
	.uleb128 .LBB105-.Ltext0
	.uleb128 .LBE105-.Ltext0
	.byte	0x4
	.uleb128 .LBB107-.Ltext0
	.uleb128 .LBE107-.Ltext0
	.byte	0x4
	.uleb128 .LBB109-.Ltext0
	.uleb128 .LBE109-.Ltext0
	.byte	0
.LLRL74:
	.byte	0x4
	.uleb128 .LBB129-.Ltext0
	.uleb128 .LBE129-.Ltext0
	.byte	0x4
	.uleb128 .LBB144-.Ltext0
	.uleb128 .LBE144-.Ltext0
	.byte	0x4
	.uleb128 .LBB145-.Ltext0
	.uleb128 .LBE145-.Ltext0
	.byte	0x4
	.uleb128 .LBB146-.Ltext0
	.uleb128 .LBE146-.Ltext0
	.byte	0
.LLRL76:
	.byte	0x4
	.uleb128 .LBB130-.Ltext0
	.uleb128 .LBE130-.Ltext0
	.byte	0x4
	.uleb128 .LBB134-.Ltext0
	.uleb128 .LBE134-.Ltext0
	.byte	0x4
	.uleb128 .LBB141-.Ltext0
	.uleb128 .LBE141-.Ltext0
	.byte	0
.LLRL78:
	.byte	0x4
	.uleb128 .LBB135-.Ltext0
	.uleb128 .LBE135-.Ltext0
	.byte	0x4
	.uleb128 .LBB142-.Ltext0
	.uleb128 .LBE142-.Ltext0
	.byte	0
.LLRL80:
	.byte	0x4
	.uleb128 .LBB138-.Ltext0
	.uleb128 .LBE138-.Ltext0
	.byte	0x4
	.uleb128 .LBB143-.Ltext0
	.uleb128 .LBE143-.Ltext0
	.byte	0
.LLRL82:
	.byte	0x4
	.uleb128 .LBB147-.Ltext0
	.uleb128 .LBE147-.Ltext0
	.byte	0x4
	.uleb128 .LBB148-.Ltext0
	.uleb128 .LBE148-.Ltext0
	.byte	0x4
	.uleb128 .LBB149-.Ltext0
	.uleb128 .LBE149-.Ltext0
	.byte	0x4
	.uleb128 .LBB150-.Ltext0
	.uleb128 .LBE150-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"cbrt"
.LASF27:
	.string	"cordi"
.LASF43:
	.string	"nucells"
.LASF31:
	.string	"temp"
.LASF14:
	.string	"short int"
.LASF8:
	.string	"size_t"
.LASF33:
	.string	"rij2"
.LASF45:
	.string	"__ch"
.LASF47:
	.ascii	"GNU C17 13.1.0 -march=skylake -mmmx -mpopcnt -msse -msse2 -m"
	.ascii	"sse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -mno-sse4a -mno-"
	.ascii	"fma4 -mno-xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul"
	.ascii	" -mno-avx512vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mn"
	.ascii	"o-avx512er -mno-avx512pf -mno-avx512vbmi -mno-avx512ifma -mn"
	.ascii	"o-avx5124vnniw -mno-avx5124fmaps -mno-avx512vpopcntdq -mno-a"
	.ascii	"vx512vbmi2 -mno-gfni -mno-vpclmulqdq -mno-avx512vnni -mno-av"
	.ascii	"x512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dno"
	.ascii	"w -madx -mabm -mno-cldemote -mclflushopt -mno-clwb -mno-clze"
	.ascii	"ro -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msa"
	.ascii	"hf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mno"
	.ascii	"-mwaitx -mno-pconfig -mno-pku -mno-prefetchwt1 -mprfchw -mno"
	.ascii	"-ptwrite -mno-rdpid -mrdrnd -mrdseed -mno-rtm -mno-serialize"
	.ascii	" -msgx -mno-sha -mno-shstk -mno-tbm -mno-tsxldtrk -mno-vaes "
	.ascii	"-mno-waitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsa"
	.ascii	"ves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mn"
	.ascii	"o-hreset -mno-kl -mno-widekl -mno-avxvnni -mno-avx512fp16 -m"
	.ascii	"no-avxifma -mno-avxvnniint8 -mno-avxneconvert -mno-cmpccxadd"
	.ascii	" "
	.string	"-mno-amx-fp16 -mno-prefetchi -mno-raoint -mno-amx-complex --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=6144 -mtune=skylake -g -O3 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF11:
	.string	"long double"
.LASF34:
	.string	"r2inv"
.LASF4:
	.string	"Positions"
.LASF36:
	.string	"minimum_image"
.LASF35:
	.string	"r6inv"
.LASF5:
	.string	"Velocities"
.LASF28:
	.string	"cell_length"
.LASF48:
	.string	"rand"
.LASF37:
	.string	"init_vel"
.LASF26:
	.string	"sumv2"
.LASF2:
	.string	"float"
.LASF10:
	.string	"long long int"
.LASF50:
	.string	"memset"
.LASF44:
	.string	"__dest"
.LASF19:
	.string	"_Float16"
.LASF16:
	.string	"unsigned char"
.LASF18:
	.string	"signed char"
.LASF13:
	.string	"long long unsigned int"
.LASF12:
	.string	"unsigned int"
.LASF38:
	.string	"sumvx"
.LASF39:
	.string	"sumvy"
.LASF40:
	.string	"sumvz"
.LASF32:
	.string	"pres_vir"
.LASF49:
	.string	"half_cell_length"
.LASF15:
	.string	"char"
.LASF7:
	.string	"long int"
.LASF41:
	.string	"init_pos"
.LASF17:
	.string	"short unsigned int"
.LASF29:
	.string	"velocity_verlet"
.LASF9:
	.string	"long unsigned int"
.LASF3:
	.string	"double"
.LASF6:
	.string	"Forces"
.LASF51:
	.string	"__builtin_memset"
.LASF21:
	.string	"sqrt"
.LASF42:
	.string	"rcut2"
.LASF20:
	.string	"__bf16"
.LASF46:
	.string	"__len"
.LASF25:
	.string	"pres"
.LASF24:
	.string	"ekin"
.LASF30:
	.string	"forces"
.LASF23:
	.string	"epot"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"core.c"
.LASF1:
	.string	"/home/pedro/cp25/paralela_lab"
	.ident	"GCC: (Ubuntu 13.1.0-8ubuntu1~22.04) 13.1.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
