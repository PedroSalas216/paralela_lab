	.file	"core.c"
	.text
.Ltext0:
	.file 0 "/users/cp2025/cp2025_033/lab2" "core.c"
	.p2align 4
	.globl	init_pos
	.type	init_pos, @function
init_pos:
.LVL0:
.LFB6560:
	.file 1 "core.c"
	.loc 1 12 1 view -0
	.cfi_startproc
	.loc 1 13 5 view .LVU1
	.loc 1 12 1 is_stmt 0 view .LVU2
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	.loc 1 13 15 view .LVU3
	vcvtss2sd	%xmm0, %xmm0, %xmm0
.LVL1:
	.loc 1 12 1 view .LVU4
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rdi, %rbx
	subq	$256, %rsp
	.loc 1 13 15 view .LVU5
	vmovsd	.LC0(%rip), %xmm2
	vdivsd	%xmm0, %xmm2, %xmm0
	call	cbrt@PLT
.LVL2:
.LBB21:
.LBB22:
.LBB23:
	.loc 1 21 18 view .LVU6
	movq	(%rbx), %rax
	.loc 1 23 31 view .LVU7
	xorl	%edx, %edx
.LBE23:
.LBE22:
	.loc 1 17 14 view .LVU8
	xorl	%ecx, %ecx
.LBE21:
	.loc 1 13 11 discriminator 1 view .LVU9
	vcvtsd2ss	%xmm0, %xmm0, %xmm4
.LVL3:
	.loc 1 14 5 is_stmt 1 view .LVU10
	.loc 1 15 5 view .LVU11
	.loc 1 17 5 view .LVU12
.LBB31:
	.loc 1 17 10 view .LVU13
	.loc 1 17 23 discriminator 1 view .LVU14
.LBB29:
.LBB24:
	.loc 1 22 18 is_stmt 0 view .LVU15
	movq	8(%rbx), %rdi
	.loc 1 23 18 view .LVU16
	movq	16(%rbx), %rbx
.LVL4:
	.loc 1 23 18 view .LVU17
.LBE24:
.LBE29:
.LBE31:
	.loc 1 15 9 view .LVU18
	xorl	%esi, %esi
	vxorps	%xmm1, %xmm1, %xmm1
.LBB32:
.LBB30:
.LBB25:
	.loc 1 27 39 view .LVU19
	vcvtss2sd	%xmm4, %xmm4, %xmm5
	vbroadcastss	%xmm4, %ymm0
	.loc 1 23 31 view .LVU20
	vmulps	.LC3(%rip), %ymm0, %ymm11
	vmulps	.LC6(%rip), %ymm0, %ymm10
	.loc 1 21 18 view .LVU21
	movq	%rax, -248(%rbp)
	.loc 1 22 18 view .LVU22
	movq	%rdi, -256(%rbp)
	.loc 1 23 18 view .LVU23
	movq	%rbx, -264(%rbp)
	addq	$64, %rax
	vbroadcastsd	%xmm5, %ymm2
	.loc 1 35 39 view .LVU24
	vmulpd	.LC1(%rip), %ymm2, %ymm9
	vmulpd	.LC2(%rip), %ymm2, %ymm3
	vmulpd	.LC4(%rip), %ymm2, %ymm8
	vmulpd	.LC5(%rip), %ymm2, %ymm2
	vmovdqa	%xmm11, -64(%rbp)
	vmovdqa	%xmm10, -144(%rbp)
	vpsrldq	$8, %xmm11, %xmm15
	vpsrldq	$8, %xmm10, %xmm13
	vextracti128	$0x1, %ymm11, %xmm11
	vextracti128	$0x1, %ymm10, %xmm10
	vmovdqa	%xmm11, -80(%rbp)
	vmovdqa	%xmm10, -160(%rbp)
	vpsrldq	$8, %xmm11, %xmm11
	vcvtpd2psy	%ymm9, %xmm9
	vcvtpd2psy	%ymm3, %xmm3
	vcvtpd2psy	%ymm2, %xmm2
	vcvtpd2psy	%ymm8, %xmm8
	vinsertf128	$0x1, %xmm3, %ymm9, %ymm9
	vmovdqa	%xmm9, -96(%rbp)
	vpsrldq	$8, %xmm9, %xmm14
	vextracti128	$0x1, %ymm9, %xmm9
	vinsertf128	$0x1, %xmm2, %ymm8, %ymm8
	vpsrldq	$8, %xmm9, %xmm6
	vmovdqa	%xmm9, -112(%rbp)
	vmovdqa	%xmm6, -128(%rbp)
	vpsrldq	$8, %xmm10, %xmm6
	vmovdqa	%xmm6, -176(%rbp)
	vpsrldq	$8, %xmm8, %xmm12
	vmovdqa	%xmm8, -192(%rbp)
	vextracti128	$0x1, %ymm8, %xmm8
	movq	%rax, -272(%rbp)
	leaq	64(%rbx), %rax
	vmulsd	.LC7(%rip), %xmm5, %xmm0
	vpsrldq	$8, %xmm8, %xmm6
	vmovdqa	%xmm6, -224(%rbp)
	vmovdqa	%xmm8, -208(%rbp)
	movq	%rax, -280(%rbp)
	vmulsd	.LC8(%rip), %xmm5, %xmm2
	vmovsd	.LC10(%rip), %xmm6
	vmovddup	%xmm0, %xmm0
	vmovddup	%xmm2, %xmm2
	vinsertf128	$0x1, %xmm2, %ymm0, %ymm0
	vcvtpd2psy	%ymm0, %xmm2
	.loc 1 23 31 view .LVU25
	vbroadcastss	%xmm4, %xmm0
	vmulps	.LC9(%rip), %xmm0, %xmm0
	vmovq	%xmm2, %r12
	vpextrq	$1, %xmm2, %r11
	vmovq	%xmm0, %r15
	vpextrq	$1, %xmm0, %rdi
.LVL5:
.L2:
	.loc 1 23 31 view .LVU26
.LBE25:
	.loc 1 18 27 is_stmt 1 discriminator 1 view .LVU27
	movq	-256(%rbp), %rax
.LBB26:
	.loc 1 27 32 is_stmt 0 view .LVU28
	vcvtsi2sdl	%ecx, %xmm1, %xmm0
	vaddsd	%xmm6, %xmm0, %xmm7
	.loc 1 21 31 view .LVU29
	vcvtsi2ssl	%ecx, %xmm1, %xmm8
	vmulss	%xmm4, %xmm8, %xmm8
	movq	-280(%rbp), %rbx
	movl	%ecx, -228(%rbp)
	movl	%esi, -232(%rbp)
	movq	%rdx, -240(%rbp)
	.loc 1 27 39 view .LVU30
	vmulsd	%xmm5, %xmm7, %xmm7
	leaq	(%rax,%rdx), %r9
	movq	-272(%rbp), %rax
	leaq	(%rbx,%rdx), %r13
.LBE26:
	.loc 1 18 18 view .LVU31
	xorl	%ebx, %ebx
.LBB27:
	.loc 1 27 39 view .LVU32
	vcvtsd2ss	%xmm7, %xmm7, %xmm7
	leaq	(%rax,%rdx), %r14
	movq	-248(%rbp), %rax
	vunpcklps	%xmm8, %xmm7, %xmm0
	vunpcklps	%xmm7, %xmm8, %xmm10
	vmovlhps	%xmm0, %xmm10, %xmm10
	vperm2f128	$0, %ymm10, %ymm10, %ymm9
	leaq	(%rdx,%rax), %r10
	movq	-264(%rbp), %rax
	addq	%rdx, %rax
	jmp	.L9
.LVL6:
	.p2align 4
	.p2align 3
.L18:
	.loc 1 27 39 view .LVU33
	cmpq	%r14, %rax
	setnb	%cl
	cmpq	%r13, %r10
	setnb	%dl
	orb	%cl, %dl
	je	.L10
	.loc 1 23 27 view .LVU34
	movq	-64(%rbp), %rsi
	.loc 1 35 27 view .LVU35
	movq	-96(%rbp), %rcx
	vunpcklps	%xmm3, %xmm2, %xmm2
	.loc 1 23 27 view .LVU36
	vmovq	%xmm15, 16(%rax)
	vmovlhps	%xmm2, %xmm2, %xmm2
	vmovq	%xmm11, 48(%rax)
	movq	-176(%rbp), %rdx
	vperm2f128	$0, %ymm2, %ymm2, %ymm0
.LVL7:
	.loc 1 21 17 is_stmt 1 view .LVU37
	.loc 1 22 17 view .LVU38
	.loc 1 23 17 view .LVU39
	.loc 1 24 17 view .LVU40
	.loc 1 27 17 view .LVU41
	.loc 1 28 17 view .LVU42
	.loc 1 29 17 view .LVU43
	.loc 1 30 17 view .LVU44
	.loc 1 33 17 view .LVU45
	.loc 1 34 17 view .LVU46
	.loc 1 35 17 view .LVU47
	.loc 1 36 17 view .LVU48
	.loc 1 39 17 view .LVU49
	.loc 1 23 27 is_stmt 0 view .LVU50
	movq	%rsi, (%rax)
	movq	-80(%rbp), %rsi
	movq	%rsi, 32(%rax)
	.loc 1 21 27 view .LVU51
	vmovups	%ymm9, (%r10)
	vmovups	%ymm9, 32(%r10)
	.loc 1 40 17 is_stmt 1 view .LVU52
	.loc 1 35 27 is_stmt 0 view .LVU53
	movq	-112(%rbp), %rsi
	.loc 1 22 27 view .LVU54
	vmovups	%ymm0, (%r9)
	vmovups	%ymm0, 32(%r9)
	.loc 1 41 17 is_stmt 1 view .LVU55
	.loc 1 35 27 is_stmt 0 view .LVU56
	movq	%rcx, 8(%rax)
	.loc 1 23 27 view .LVU57
	movq	%rdx, 112(%rax)
	.loc 1 35 27 view .LVU58
	vmovq	%xmm14, 24(%rax)
	.loc 1 23 27 view .LVU59
	vmovq	%xmm13, 80(%rax)
	.loc 1 35 27 view .LVU60
	movq	-128(%rbp), %rcx
	movq	%rsi, 40(%rax)
	.loc 1 23 27 view .LVU61
	movq	-144(%rbp), %rsi
	.loc 1 35 27 view .LVU62
	movq	%rcx, 56(%rax)
	.loc 1 42 17 is_stmt 1 view .LVU63
.LVL8:
	.loc 1 19 43 discriminator 3 view .LVU64
	.loc 1 19 31 discriminator 1 view .LVU65
	.loc 1 21 17 view .LVU66
	.loc 1 22 17 view .LVU67
	.loc 1 23 17 view .LVU68
	.loc 1 24 17 view .LVU69
	.loc 1 27 17 view .LVU70
	.loc 1 28 17 view .LVU71
	.loc 1 29 17 view .LVU72
	.loc 1 30 17 view .LVU73
	.loc 1 33 17 view .LVU74
	.loc 1 34 17 view .LVU75
	.loc 1 35 17 view .LVU76
	.loc 1 36 17 view .LVU77
	.loc 1 39 17 view .LVU78
	.loc 1 23 27 is_stmt 0 view .LVU79
	movq	-160(%rbp), %rcx
	movq	%rsi, 64(%rax)
	.loc 1 35 27 view .LVU80
	movq	-192(%rbp), %rsi
	.loc 1 23 27 view .LVU81
	movq	%rcx, 96(%rax)
	.loc 1 35 27 view .LVU82
	movq	-208(%rbp), %rcx
	.loc 1 21 27 view .LVU83
	vmovups	%ymm9, 64(%r10)
	vmovups	%ymm9, 96(%r10)
	.loc 1 40 17 is_stmt 1 view .LVU84
	.loc 1 22 27 is_stmt 0 view .LVU85
	vmovups	%ymm0, 64(%r9)
	vmovups	%ymm0, 96(%r9)
	.loc 1 41 17 is_stmt 1 view .LVU86
	.loc 1 35 27 is_stmt 0 view .LVU87
	movq	%rsi, 72(%rax)
	vmovq	%xmm12, 88(%rax)
	movq	%rcx, 104(%rax)
	movq	-224(%rbp), %rdx
	.loc 1 23 27 view .LVU88
	movq	%r15, 128(%rax)
	movq	%rdi, 144(%rax)
	.loc 1 35 27 view .LVU89
	movq	%rdx, 120(%rax)
	.loc 1 42 17 is_stmt 1 view .LVU90
.LVL9:
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
	.loc 1 21 27 is_stmt 0 view .LVU106
	vmovups	%xmm10, 128(%r10)
	vmovups	%xmm10, 144(%r10)
	.loc 1 40 17 is_stmt 1 view .LVU107
	.loc 1 22 27 is_stmt 0 view .LVU108
	vmovups	%xmm2, 128(%r9)
	vmovups	%xmm2, 144(%r9)
	.loc 1 41 17 is_stmt 1 view .LVU109
	.loc 1 35 27 is_stmt 0 view .LVU110
	movq	%r12, 136(%rax)
	movq	%r11, 152(%rax)
	.loc 1 42 17 is_stmt 1 view .LVU111
.LVL10:
	.loc 1 19 43 discriminator 3 view .LVU112
	.loc 1 19 31 discriminator 1 view .LVU113
.L4:
	.loc 1 19 31 is_stmt 0 discriminator 1 view .LVU114
.LBE27:
	.loc 1 18 39 is_stmt 1 discriminator 2 view .LVU115
	incl	%ebx
.LVL11:
	.loc 1 18 27 discriminator 1 view .LVU116
	addq	$160, %r9
	addq	$160, %r14
	addq	$160, %r10
	addq	$160, %rax
	addq	$160, %r13
	cmpl	$10, %ebx
	je	.L5
.LVL12:
.L9:
.LBB28:
	.loc 1 19 31 discriminator 1 view .LVU117
	leaq	64(%r9), %rdx
	.loc 1 28 32 is_stmt 0 view .LVU118
	vcvtsi2sdl	%ebx, %xmm1, %xmm0
	vaddsd	%xmm6, %xmm0, %xmm3
	.loc 1 22 31 view .LVU119
	vcvtsi2ssl	%ebx, %xmm1, %xmm2
	cmpq	%rdx, %r10
	vmulss	%xmm4, %xmm2, %xmm2
	setnb	%cl
	cmpq	%r14, %r9
	setnb	%sil
	.loc 1 28 39 view .LVU120
	vmulsd	%xmm5, %xmm3, %xmm3
	orl	%esi, %ecx
	cmpq	%rdx, %rax
	setnb	%sil
	cmpq	%r13, %r9
	setnb	%dl
	vcvtsd2ss	%xmm3, %xmm3, %xmm3
	orl	%esi, %edx
	testb	%dl, %cl
	jne	.L18
.L10:
	movq	%rax, %rsi
	movq	%r9, %rcx
	movq	%r10, %rdx
	.loc 1 19 22 view .LVU121
	xorl	%r8d, %r8d
.LVL13:
	.p2align 4
	.p2align 3
.L3:
	.loc 1 21 17 is_stmt 1 view .LVU122
	.loc 1 23 31 is_stmt 0 view .LVU123
	vcvtsi2ssl	%r8d, %xmm1, %xmm0
	vmulss	%xmm4, %xmm0, %xmm0
	.loc 1 21 27 view .LVU124
	vmovss	%xmm8, (%rdx)
	.loc 1 22 17 is_stmt 1 view .LVU125
	.loc 1 22 27 is_stmt 0 view .LVU126
	vmovss	%xmm2, (%rcx)
	.loc 1 23 17 is_stmt 1 view .LVU127
	.loc 1 19 31 is_stmt 0 discriminator 1 view .LVU128
	addq	$16, %rdx
	addq	$16, %rcx
	addq	$16, %rsi
	.loc 1 23 27 view .LVU129
	vmovss	%xmm0, -16(%rsi)
	.loc 1 24 17 is_stmt 1 view .LVU130
	.loc 1 27 17 view .LVU131
	.loc 1 27 27 is_stmt 0 view .LVU132
	vmovss	%xmm7, -12(%rdx)
	.loc 1 28 17 is_stmt 1 view .LVU133
	.loc 1 28 27 is_stmt 0 view .LVU134
	vmovss	%xmm3, -12(%rcx)
	.loc 1 29 17 is_stmt 1 view .LVU135
	.loc 1 29 27 is_stmt 0 view .LVU136
	vmovss	%xmm0, -12(%rsi)
	.loc 1 30 17 is_stmt 1 view .LVU137
	.loc 1 33 17 view .LVU138
	.loc 1 35 32 is_stmt 0 view .LVU139
	vcvtsi2sdl	%r8d, %xmm1, %xmm0
	vaddsd	%xmm6, %xmm0, %xmm0
	.loc 1 19 43 discriminator 3 view .LVU140
	incl	%r8d
.LVL14:
	.loc 1 33 27 view .LVU141
	vmovss	%xmm7, -8(%rdx)
	.loc 1 34 17 is_stmt 1 view .LVU142
	.loc 1 34 27 is_stmt 0 view .LVU143
	vmovss	%xmm2, -8(%rcx)
	.loc 1 35 17 is_stmt 1 view .LVU144
	.loc 1 35 39 is_stmt 0 view .LVU145
	vmulsd	%xmm5, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	.loc 1 35 27 view .LVU146
	vmovss	%xmm0, -8(%rsi)
	.loc 1 36 17 is_stmt 1 view .LVU147
	.loc 1 39 17 view .LVU148
	.loc 1 39 27 is_stmt 0 view .LVU149
	vmovss	%xmm8, -4(%rdx)
	.loc 1 40 17 is_stmt 1 view .LVU150
	.loc 1 40 27 is_stmt 0 view .LVU151
	vmovss	%xmm3, -4(%rcx)
	.loc 1 41 17 is_stmt 1 view .LVU152
	.loc 1 41 27 is_stmt 0 view .LVU153
	vmovss	%xmm0, -4(%rsi)
	.loc 1 42 17 is_stmt 1 view .LVU154
.LVL15:
	.loc 1 19 43 discriminator 3 view .LVU155
	.loc 1 19 31 discriminator 1 view .LVU156
	cmpl	$10, %r8d
	jne	.L3
	jmp	.L4
.LVL16:
.L5:
	.loc 1 19 31 is_stmt 0 discriminator 1 view .LVU157
	movl	-232(%rbp), %esi
	movl	-228(%rbp), %ecx
	movq	-240(%rbp), %rdx
	addl	$400, %esi
.LBE28:
.LBE30:
	.loc 1 17 35 is_stmt 1 discriminator 2 view .LVU158
	incl	%ecx
.LVL17:
	.loc 1 17 23 discriminator 1 view .LVU159
	addq	$1600, %rdx
	cmpl	$4000, %esi
	jne	.L2
	vzeroupper
.LVL18:
.LBE32:
	.loc 1 46 1 is_stmt 0 view .LVU160
	addq	$256, %rsp
	popq	%rbx
.LVL19:
	.loc 1 46 1 view .LVU161
	popq	%r10
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6560:
	.size	init_pos, .-init_pos
	.p2align 4
	.globl	init_vel
	.type	init_vel, @function
init_vel:
.LVL20:
.LFB6561:
	.loc 1 49 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 50 5 view .LVU163
	.loc 1 52 5 view .LVU164
.LBB33:
	.loc 1 52 10 view .LVU165
	.loc 1 52 23 discriminator 1 view .LVU166
.LBE33:
	.loc 1 49 1 is_stmt 0 view .LVU167
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	xorl	%r12d, %r12d
	movq	%rdi, %rbx
	andq	$-32, %rsp
	.loc 1 50 50 view .LVU168
	xorl	%r14d, %r14d
	.loc 1 50 37 view .LVU169
	xorl	%r15d, %r15d
	.loc 1 50 24 view .LVU170
	xorl	%r13d, %r13d
	.loc 1 49 1 view .LVU171
	subq	$32, %rsp
	.loc 1 49 1 view .LVU172
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	.loc 1 50 11 view .LVU173
	movl	$0x00000000, 28(%rsp)
.LVL21:
	.p2align 4
	.p2align 3
.L20:
.LBB34:
	.loc 1 53 9 is_stmt 1 view .LVU174
	.loc 1 53 20 is_stmt 0 view .LVU175
	call	rand@PLT
.LVL22:
	vmovss	.LC13(%rip), %xmm6
	.loc 1 53 27 discriminator 1 view .LVU176
	vxorps	%xmm5, %xmm5, %xmm5
	.loc 1 53 20 view .LVU177
	movl	%eax, %ecx
	.loc 1 53 14 discriminator 1 view .LVU178
	movq	(%rbx), %rax
	.loc 1 53 27 discriminator 1 view .LVU179
	vcvtsi2ssl	%ecx, %xmm5, %xmm0
	vfmadd132ss	.LC12(%rip), %xmm6, %xmm0
	.loc 1 53 14 discriminator 1 view .LVU180
	addq	%r12, %rax
	.loc 1 53 18 discriminator 1 view .LVU181
	vmovss	%xmm0, (%rax)
	.loc 1 54 9 is_stmt 1 view .LVU182
	.loc 1 54 20 is_stmt 0 view .LVU183
	call	rand@PLT
.LVL23:
	.loc 1 54 27 discriminator 1 view .LVU184
	vxorps	%xmm5, %xmm5, %xmm5
	.loc 1 54 20 view .LVU185
	movl	%eax, %ecx
	vmovss	.LC13(%rip), %xmm7
	.loc 1 54 14 discriminator 1 view .LVU186
	movq	8(%rbx), %rax
	.loc 1 54 27 discriminator 1 view .LVU187
	vcvtsi2ssl	%ecx, %xmm5, %xmm0
	vfmadd132ss	.LC12(%rip), %xmm7, %xmm0
	.loc 1 54 14 discriminator 1 view .LVU188
	addq	%r12, %rax
	.loc 1 54 18 discriminator 1 view .LVU189
	vmovss	%xmm0, (%rax)
	.loc 1 55 9 is_stmt 1 view .LVU190
	.loc 1 55 20 is_stmt 0 view .LVU191
	call	rand@PLT
.LVL24:
	.loc 1 55 27 discriminator 1 view .LVU192
	vxorps	%xmm5, %xmm5, %xmm5
	.loc 1 59 15 view .LVU193
	vmovd	%r15d, %xmm6
	vmovss	.LC13(%rip), %xmm3
	.loc 1 55 27 discriminator 1 view .LVU194
	vcvtsi2ssl	%eax, %xmm5, %xmm0
	.loc 1 55 10 discriminator 1 view .LVU195
	movq	16(%rbx), %rcx
	vfmadd132ss	.LC12(%rip), %xmm3, %xmm0
	.loc 1 57 19 view .LVU196
	movq	(%rbx), %rsi
	.loc 1 58 15 view .LVU197
	vmovd	%r13d, %xmm3
	.loc 1 58 19 view .LVU198
	movq	8(%rbx), %rdi
	.loc 1 55 18 discriminator 1 view .LVU199
	vmovss	%xmm0, (%rcx,%r12)
	.loc 1 57 9 is_stmt 1 view .LVU200
	.loc 1 57 23 is_stmt 0 view .LVU201
	vmovss	(%rsi,%r12), %xmm2
	.loc 1 58 23 view .LVU202
	vmovss	(%rdi,%r12), %xmm1
	.loc 1 52 23 discriminator 1 view .LVU203
	addq	$4, %r12
.LVL25:
	.loc 1 57 15 view .LVU204
	vaddss	28(%rsp), %xmm2, %xmm4
	.loc 1 58 15 view .LVU205
	vaddss	%xmm1, %xmm3, %xmm7
	.loc 1 57 15 view .LVU206
	vmovss	%xmm4, 28(%rsp)
.LVL26:
	.loc 1 58 9 is_stmt 1 view .LVU207
	.loc 1 59 15 is_stmt 0 view .LVU208
	vaddss	%xmm0, %xmm6, %xmm4
.LVL27:
	.loc 1 60 71 view .LVU209
	vmulss	%xmm0, %xmm0, %xmm0
	.loc 1 58 15 view .LVU210
	vmovd	%xmm7, %r13d
.LVL28:
	.loc 1 59 9 is_stmt 1 view .LVU211
	vmovd	%r14d, %xmm7
.LVL29:
	.loc 1 59 9 is_stmt 0 view .LVU212
	vfmadd132ss	%xmm2, %xmm7, %xmm2
	vfmadd132ss	%xmm1, %xmm0, %xmm1
	.loc 1 59 15 view .LVU213
	vmovd	%xmm4, %r15d
.LVL30:
	.loc 1 60 9 is_stmt 1 view .LVU214
	.loc 1 60 15 is_stmt 0 view .LVU215
	vaddss	%xmm1, %xmm2, %xmm3
	vmovd	%xmm3, %r14d
.LVL31:
	.loc 1 52 29 is_stmt 1 discriminator 3 view .LVU216
	.loc 1 52 23 discriminator 1 view .LVU217
	cmpq	$16000, %r12
	jne	.L20
.LBE34:
	.loc 1 63 5 view .LVU218
	.loc 1 63 11 is_stmt 0 view .LVU219
	vmovss	.LC14(%rip), %xmm2
	.loc 1 64 11 view .LVU220
	vmovd	%r13d, %xmm6
	.loc 1 66 19 view .LVU221
	movq	16(%rsp), %rax
	.loc 1 65 11 view .LVU222
	vmovd	%r15d, %xmm7
	.loc 1 67 11 view .LVU223
	movq	8(%rsp), %rdx
	.loc 1 63 11 view .LVU224
	vmulss	28(%rsp), %xmm2, %xmm4
.LVL32:
	.loc 1 64 5 is_stmt 1 view .LVU225
	.loc 1 64 11 is_stmt 0 view .LVU226
	vmulss	%xmm2, %xmm6, %xmm3
.LVL33:
	.loc 1 65 5 is_stmt 1 view .LVU227
	.loc 1 65 11 is_stmt 0 view .LVU228
	vmulss	%xmm2, %xmm7, %xmm2
.LVL34:
	.loc 1 66 5 is_stmt 1 view .LVU229
	.loc 1 66 19 is_stmt 0 view .LVU230
	vmovd	%r14d, %xmm6
	vcvtss2sd	%xmm6, %xmm6, %xmm0
	vmulsd	.LC15(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rax)
	.loc 1 67 5 is_stmt 1 view .LVU231
	.loc 1 67 17 is_stmt 0 view .LVU232
	vmulss	.LC16(%rip), %xmm6, %xmm0
	.loc 1 68 26 view .LVU233
	vxorpd	%xmm6, %xmm6, %xmm6
	.loc 1 67 11 view .LVU234
	vmovss	%xmm0, (%rdx)
	.loc 1 68 5 is_stmt 1 view .LVU235
	.loc 1 68 26 is_stmt 0 view .LVU236
	vcvtss2sd	(%rax), %xmm6, %xmm0
	leaq	31(%rdi), %rax
	movq	%rax, %rdx
	subq	%rcx, %rdx
	vmovapd	%xmm0, %xmm1
	.loc 1 68 16 view .LVU237
	vmovsd	.LC17(%rip), %xmm0
	cmpq	$62, %rdx
	seta	%dl
	subq	%rsi, %rax
	cmpq	$62, %rax
	seta	%al
	vdivsd	%xmm1, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm1, %xmm1
	.loc 1 68 11 discriminator 1 view .LVU238
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
.LVL35:
	.loc 1 70 5 is_stmt 1 view .LVU239
.LBB35:
	.loc 1 70 10 view .LVU240
	.loc 1 70 23 discriminator 1 view .LVU241
	testb	%al, %dl
	je	.L24
	leaq	31(%rsi), %rax
	subq	%rcx, %rax
	cmpq	$62, %rax
	jbe	.L24
	vbroadcastss	%xmm4, %ymm4
.LVL36:
	.loc 1 70 23 is_stmt 0 discriminator 1 view .LVU242
	vbroadcastss	%xmm1, %ymm1
.LVL37:
	.loc 1 70 23 discriminator 1 view .LVU243
	vbroadcastss	%xmm3, %ymm3
.LVL38:
	.loc 1 70 23 discriminator 1 view .LVU244
	vbroadcastss	%xmm2, %ymm2
.LVL39:
	.loc 1 70 23 discriminator 1 view .LVU245
.LBE35:
	.loc 1 68 11 discriminator 1 view .LVU246
	xorl	%eax, %eax
.LVL40:
	.p2align 4
	.p2align 3
.L22:
.LBB36:
	.loc 1 71 9 is_stmt 1 view .LVU247
	.loc 1 71 26 is_stmt 0 view .LVU248
	vmovups	(%rsi,%rax), %ymm0
	.loc 1 71 30 view .LVU249
	vsubps	%ymm4, %ymm0, %ymm0
	.loc 1 71 39 view .LVU250
	vmulps	%ymm1, %ymm0, %ymm0
	.loc 1 71 18 view .LVU251
	vmovups	%ymm0, (%rsi,%rax)
	.loc 1 72 9 is_stmt 1 view .LVU252
	.loc 1 72 26 is_stmt 0 view .LVU253
	vmovups	(%rdi,%rax), %ymm0
	.loc 1 72 30 view .LVU254
	vsubps	%ymm3, %ymm0, %ymm0
	.loc 1 72 39 view .LVU255
	vmulps	%ymm1, %ymm0, %ymm0
	.loc 1 72 18 view .LVU256
	vmovups	%ymm0, (%rdi,%rax)
	.loc 1 73 9 is_stmt 1 view .LVU257
	.loc 1 73 26 is_stmt 0 view .LVU258
	vmovups	(%rcx,%rax), %ymm0
	.loc 1 73 30 view .LVU259
	vsubps	%ymm2, %ymm0, %ymm0
	.loc 1 73 39 view .LVU260
	vmulps	%ymm1, %ymm0, %ymm0
	.loc 1 73 18 view .LVU261
	vmovups	%ymm0, (%rcx,%rax)
	.loc 1 70 29 is_stmt 1 discriminator 3 view .LVU262
	.loc 1 70 23 discriminator 1 view .LVU263
	addq	$32, %rax
	cmpq	$16000, %rax
	jne	.L22
	vzeroupper
.LVL41:
.LBE36:
	.loc 1 75 1 is_stmt 0 view .LVU264
	leaq	-40(%rbp), %rsp
.LVL42:
	.loc 1 75 1 view .LVU265
	popq	%rbx
.LVL43:
	.loc 1 75 1 view .LVU266
	popq	%r12
	popq	%r13
.LVL44:
	.loc 1 75 1 view .LVU267
	popq	%r14
.LVL45:
	.loc 1 75 1 view .LVU268
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
.LVL46:
	.loc 1 75 1 view .LVU269
	ret
.LVL47:
.L24:
	.cfi_restore_state
	.loc 1 68 11 discriminator 1 view .LVU270
	xorl	%eax, %eax
.LVL48:
	.p2align 4
	.p2align 3
.L21:
.LBB37:
	.loc 1 71 9 is_stmt 1 view .LVU271
	.loc 1 71 30 is_stmt 0 view .LVU272
	vmovss	(%rsi,%rax), %xmm0
	vsubss	%xmm4, %xmm0, %xmm0
	.loc 1 71 39 view .LVU273
	vmulss	%xmm1, %xmm0, %xmm0
	.loc 1 71 18 view .LVU274
	vmovss	%xmm0, (%rsi,%rax)
	.loc 1 72 9 is_stmt 1 view .LVU275
	.loc 1 72 30 is_stmt 0 view .LVU276
	vmovss	(%rdi,%rax), %xmm0
	vsubss	%xmm3, %xmm0, %xmm0
	.loc 1 72 39 view .LVU277
	vmulss	%xmm1, %xmm0, %xmm0
	.loc 1 72 18 view .LVU278
	vmovss	%xmm0, (%rdi,%rax)
	.loc 1 73 9 is_stmt 1 view .LVU279
	.loc 1 73 30 is_stmt 0 view .LVU280
	vmovss	(%rcx,%rax), %xmm0
	vsubss	%xmm2, %xmm0, %xmm0
	.loc 1 73 39 view .LVU281
	vmulss	%xmm1, %xmm0, %xmm0
	.loc 1 73 18 view .LVU282
	vmovss	%xmm0, (%rcx,%rax)
	.loc 1 70 29 is_stmt 1 discriminator 3 view .LVU283
.LVL49:
	.loc 1 70 23 discriminator 1 view .LVU284
	addq	$4, %rax
.LVL50:
	.loc 1 70 23 is_stmt 0 discriminator 1 view .LVU285
	cmpq	$16000, %rax
	jne	.L21
.LBE37:
	.loc 1 75 1 view .LVU286
	leaq	-40(%rbp), %rsp
.LVL51:
	.loc 1 75 1 view .LVU287
	popq	%rbx
.LVL52:
	.loc 1 75 1 view .LVU288
	popq	%r12
	popq	%r13
	popq	%r14
.LVL53:
	.loc 1 75 1 view .LVU289
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
.LVL54:
	.loc 1 75 1 view .LVU290
	ret
	.cfi_endproc
.LFE6561:
	.size	init_vel, .-init_vel
	.p2align 4
	.globl	forces
	.type	forces, @function
forces:
.LVL55:
.LFB6563:
	.loc 1 88 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 89 5 view .LVU292
	.loc 1 88 1 is_stmt 0 view .LVU293
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r15
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdx, %rbp
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.loc 1 89 5 view .LVU294
	movq	(%rsi), %rdi
.LVL56:
	.loc 1 88 1 view .LVU295
	movq	%rsi, %rbx
	.loc 1 89 5 view .LVU296
	movl	$16000, %edx
.LVL57:
	.loc 1 89 5 view .LVU297
	xorl	%esi, %esi
.LVL58:
	.loc 1 88 1 view .LVU298
	movq	%r8, 8(%rsp)
	vmovss	%xmm2, 28(%rsp)
	movq	%rcx, %r12
	vmovss	%xmm0, 20(%rsp)
	vmovss	%xmm1, 24(%rsp)
	.loc 1 89 5 view .LVU299
	call	memset@PLT
.LVL59:
	.loc 1 90 5 is_stmt 1 view .LVU300
	movq	8(%rbx), %rdi
	movl	$16000, %edx
	xorl	%esi, %esi
	call	memset@PLT
.LVL60:
	.loc 1 91 5 view .LVU301
	movq	16(%rbx), %rdi
	movl	$16000, %edx
	xorl	%esi, %esi
	call	memset@PLT
.LVL61:
	.loc 1 93 5 view .LVU302
	.loc 1 94 5 view .LVU303
	.loc 1 95 5 view .LVU304
.LBB38:
.LBB39:
.LBB40:
.LBB41:
.LBB42:
.LBB43:
	.loc 1 80 17 is_stmt 0 view .LVU305
	vmovss	28(%rsp), %xmm2
.LBE43:
.LBE42:
.LBE41:
.LBE40:
.LBE39:
.LBE38:
	.loc 1 95 11 view .LVU306
	movl	$0x00000000, 0(%rbp)
	.loc 1 97 5 is_stmt 1 view .LVU307
.LBB67:
	.loc 1 97 10 view .LVU308
.LVL62:
	.loc 1 97 23 discriminator 1 view .LVU309
.LBB65:
.LBB60:
.LBB56:
.LBB47:
.LBB44:
	.loc 1 82 38 is_stmt 0 view .LVU310
	xorl	%esi, %esi
	.loc 1 80 17 view .LVU311
	vmulss	.LC16(%rip), %xmm2, %xmm9
	.loc 1 82 38 view .LVU312
	xorl	%r8d, %r8d
.LBE44:
.LBE47:
.LBE56:
.LBE60:
.LBE65:
.LBE67:
	.loc 1 93 11 view .LVU313
	vxorps	%xmm8, %xmm8, %xmm8
	vmovss	.LC19(%rip), %xmm7
.LBB68:
.LBB66:
.LBB61:
.LBB57:
.LBB48:
	.loc 1 114 23 view .LVU314
	vmovss	.LC20(%rip), %xmm15
.LBE48:
.LBE57:
.LBE61:
	.loc 1 98 21 view .LVU315
	movq	(%r15), %r13
	.loc 1 99 21 view .LVU316
	movq	8(%r15), %r14
.LBB62:
.LBB58:
.LBB49:
.LBB45:
	.loc 1 82 38 view .LVU317
	vxorps	.LC18(%rip), %xmm9, %xmm6
.LBE45:
.LBE49:
.LBE58:
.LBE62:
	.loc 1 100 21 view .LVU318
	movq	16(%r15), %rdx
.LVL63:
	.p2align 4
	.p2align 3
.L52:
	.loc 1 98 9 is_stmt 1 view .LVU319
	.loc 1 98 15 is_stmt 0 view .LVU320
	vmovss	0(%r13,%rsi), %xmm12
.LVL64:
	.loc 1 99 9 is_stmt 1 view .LVU321
	.loc 1 99 15 is_stmt 0 view .LVU322
	vmovss	(%r14,%rsi), %xmm11
.LVL65:
	.loc 1 100 9 is_stmt 1 view .LVU323
	movq	%rsi, %r10
	.loc 1 100 15 is_stmt 0 view .LVU324
	vmovss	(%rdx,%rsi), %xmm10
.LVL66:
	.loc 1 102 9 is_stmt 1 view .LVU325
.LBB63:
	.loc 1 102 14 view .LVU326
	.loc 1 102 31 discriminator 1 view .LVU327
	addq	$4, %rsi
.LBE63:
	.loc 1 100 15 is_stmt 0 view .LVU328
	movq	%rsi, %rax
.LVL67:
	.p2align 4
	.p2align 3
.L51:
.LBB64:
.LBB59:
	.loc 1 103 13 is_stmt 1 view .LVU329
	.loc 1 103 19 is_stmt 0 view .LVU330
	vsubss	0(%r13,%rax), %xmm12, %xmm13
.LVL68:
	.loc 1 104 13 is_stmt 1 view .LVU331
	.loc 1 104 19 is_stmt 0 view .LVU332
	vsubss	(%r14,%rax), %xmm11, %xmm1
.LVL69:
	.loc 1 105 13 is_stmt 1 view .LVU333
	.loc 1 105 19 is_stmt 0 view .LVU334
	vsubss	(%rdx,%rax), %xmm10, %xmm0
.LVL70:
	.loc 1 107 13 is_stmt 1 view .LVU335
.LBB50:
.LBI42:
	.loc 1 78 14 view .LVU336
.LBB46:
	.loc 1 80 5 view .LVU337
	.loc 1 81 5 view .LVU338
	.loc 1 81 11 is_stmt 0 discriminator 4 view .LVU339
	vsubss	%xmm2, %xmm13, %xmm3
	vcmpltss	%xmm13, %xmm9, %xmm4
	vblendvps	%xmm4, %xmm3, %xmm13, %xmm13
.LVL71:
	.loc 1 82 5 is_stmt 1 view .LVU340
	.loc 1 82 11 is_stmt 0 discriminator 4 view .LVU341
	vaddss	%xmm2, %xmm13, %xmm3
	vcmpless	%xmm6, %xmm13, %xmm4
	vblendvps	%xmm4, %xmm3, %xmm13, %xmm13
	.loc 1 83 5 is_stmt 1 view .LVU342
.LVL72:
	.loc 1 83 5 is_stmt 0 view .LVU343
.LBE46:
.LBE50:
	.loc 1 108 13 is_stmt 1 view .LVU344
.LBB51:
.LBI51:
	.loc 1 78 14 view .LVU345
.LBB52:
	.loc 1 80 5 view .LVU346
	.loc 1 81 5 view .LVU347
	.loc 1 81 11 is_stmt 0 discriminator 4 view .LVU348
	vsubss	%xmm2, %xmm1, %xmm3
	vcmpltss	%xmm1, %xmm9, %xmm4
	vblendvps	%xmm4, %xmm3, %xmm1, %xmm1
.LVL73:
	.loc 1 82 5 is_stmt 1 view .LVU349
	.loc 1 82 11 is_stmt 0 discriminator 4 view .LVU350
	vaddss	%xmm2, %xmm1, %xmm3
	vcmpless	%xmm6, %xmm1, %xmm4
	vblendvps	%xmm4, %xmm3, %xmm1, %xmm1
	.loc 1 83 5 is_stmt 1 view .LVU351
.LVL74:
	.loc 1 83 5 is_stmt 0 view .LVU352
.LBE52:
.LBE51:
	.loc 1 109 13 is_stmt 1 view .LVU353
.LBB53:
.LBI53:
	.loc 1 78 14 view .LVU354
.LBB54:
	.loc 1 80 5 view .LVU355
	.loc 1 81 5 view .LVU356
	.loc 1 81 11 is_stmt 0 discriminator 4 view .LVU357
	vsubss	%xmm2, %xmm0, %xmm3
	vcmpltss	%xmm0, %xmm9, %xmm4
	vblendvps	%xmm4, %xmm3, %xmm0, %xmm0
.LVL75:
	.loc 1 82 5 is_stmt 1 view .LVU358
	.loc 1 82 11 is_stmt 0 discriminator 4 view .LVU359
	vaddss	%xmm2, %xmm0, %xmm3
	vcmpless	%xmm6, %xmm0, %xmm4
	vblendvps	%xmm4, %xmm3, %xmm0, %xmm0
	.loc 1 83 5 is_stmt 1 view .LVU360
.LVL76:
	.loc 1 83 5 is_stmt 0 view .LVU361
.LBE54:
.LBE53:
	.loc 1 111 13 is_stmt 1 view .LVU362
	.loc 1 111 39 is_stmt 0 view .LVU363
	vmulss	%xmm1, %xmm1, %xmm3
	.loc 1 111 34 view .LVU364
	vfmadd231ss	%xmm13, %xmm13, %xmm3
	.loc 1 111 19 view .LVU365
	vfmadd231ss	%xmm0, %xmm0, %xmm3
.LVL77:
	.loc 1 113 13 is_stmt 1 view .LVU366
	.loc 1 113 16 is_stmt 0 view .LVU367
	vcomiss	%xmm3, %xmm7
	jb	.L49
.LBB55:
	.loc 1 114 17 is_stmt 1 view .LVU368
	.loc 1 114 23 is_stmt 0 view .LVU369
	vdivss	%xmm3, %xmm15, %xmm4
.LVL78:
	.loc 1 115 17 is_stmt 1 view .LVU370
	.loc 1 116 17 view .LVU371
	.loc 1 116 64 is_stmt 0 view .LVU372
	vmovsd	.LC17(%rip), %xmm14
	.loc 1 118 18 view .LVU373
	movq	(%rbx), %r9
	.loc 1 119 18 view .LVU374
	movq	8(%rbx), %rdi
	.loc 1 118 22 view .LVU375
	leaq	(%r9,%r10), %rcx
	.loc 1 122 22 view .LVU376
	addq	%rax, %r9
	.loc 1 115 23 view .LVU377
	vmulss	%xmm4, %xmm4, %xmm5
	vmulss	%xmm4, %xmm5, %xmm5
.LVL79:
	.loc 1 116 41 view .LVU378
	vcvtss2sd	%xmm4, %xmm4, %xmm4
.LVL80:
	.loc 1 116 49 view .LVU379
	vmulsd	.LC22(%rip), %xmm4, %xmm4
	.loc 1 116 41 view .LVU380
	vcvtss2sd	%xmm5, %xmm5, %xmm5
.LVL81:
	.loc 1 116 64 view .LVU381
	vfmadd213sd	.LC21(%rip), %xmm5, %xmm14
	.loc 1 116 49 view .LVU382
	vmulsd	%xmm14, %xmm5, %xmm14
	vmulsd	%xmm4, %xmm14, %xmm4
	.loc 1 118 26 view .LVU383
	vmovaps	%xmm13, %xmm14
	.loc 1 116 23 view .LVU384
	vcvtsd2ss	%xmm4, %xmm4, %xmm4
.LVL82:
	.loc 1 118 17 is_stmt 1 view .LVU385
	.loc 1 118 26 is_stmt 0 view .LVU386
	vfmadd213ss	(%rcx), %xmm4, %xmm14
	.loc 1 127 26 view .LVU387
	vfmadd231ss	%xmm4, %xmm3, %xmm8
.LVL83:
	.loc 1 118 26 view .LVU388
	vmovss	%xmm14, (%rcx)
	.loc 1 119 17 is_stmt 1 view .LVU389
	.loc 1 119 22 is_stmt 0 view .LVU390
	leaq	(%rdi,%r10), %rcx
	.loc 1 119 26 view .LVU391
	vmovaps	%xmm1, %xmm14
	.loc 1 123 22 view .LVU392
	addq	%rax, %rdi
	.loc 1 119 26 view .LVU393
	vfmadd213ss	(%rcx), %xmm4, %xmm14
	vmovss	%xmm14, (%rcx)
	.loc 1 120 17 is_stmt 1 view .LVU394
	.loc 1 120 18 is_stmt 0 view .LVU395
	movq	16(%rbx), %rcx
	.loc 1 120 26 view .LVU396
	vmovaps	%xmm0, %xmm14
	.loc 1 120 22 view .LVU397
	leaq	(%rcx,%r10), %r11
	.loc 1 124 22 view .LVU398
	addq	%rax, %rcx
	.loc 1 120 26 view .LVU399
	vfmadd213ss	(%r11), %xmm4, %xmm14
	vmovss	%xmm14, (%r11)
	.loc 1 122 17 is_stmt 1 view .LVU400
	.loc 1 122 26 is_stmt 0 view .LVU401
	vfnmadd213ss	(%r9), %xmm4, %xmm13
	vmovss	%xmm13, (%r9)
	.loc 1 123 17 is_stmt 1 view .LVU402
	.loc 1 123 26 is_stmt 0 view .LVU403
	vfnmadd213ss	(%rdi), %xmm4, %xmm1
	vmovss	%xmm1, (%rdi)
	.loc 1 124 17 is_stmt 1 view .LVU404
	.loc 1 124 26 is_stmt 0 view .LVU405
	vfnmadd213ss	(%rcx), %xmm4, %xmm0
	.loc 1 126 47 view .LVU406
	vsubsd	.LC23(%rip), %xmm5, %xmm1
	.loc 1 126 23 view .LVU407
	vmulsd	.LC0(%rip), %xmm5, %xmm5
	.loc 1 124 26 view .LVU408
	vmovss	%xmm0, (%rcx)
	.loc 1 126 17 is_stmt 1 view .LVU409
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	0(%rbp), %xmm0, %xmm0
	.loc 1 126 23 is_stmt 0 view .LVU410
	vaddsd	.LC24(%rip), %xmm0, %xmm0
	vfmadd132sd	%xmm5, %xmm0, %xmm1
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
	vmovss	%xmm1, 0(%rbp)
	.loc 1 127 17 is_stmt 1 view .LVU411
.LVL84:
.L49:
	.loc 1 127 17 is_stmt 0 view .LVU412
.LBE55:
.LBE59:
	.loc 1 102 37 is_stmt 1 discriminator 2 view .LVU413
	.loc 1 102 31 discriminator 1 view .LVU414
	addq	$4, %rax
.LVL85:
	.loc 1 102 31 is_stmt 0 discriminator 1 view .LVU415
	cmpq	$16000, %rax
	jne	.L51
.LVL86:
	.loc 1 102 31 discriminator 1 view .LVU416
.LBE64:
.LBE66:
	.loc 1 97 23 is_stmt 1 discriminator 1 view .LVU417
	incq	%r8
.LVL87:
	.loc 1 97 23 is_stmt 0 discriminator 1 view .LVU418
	cmpq	$3999, %r8
	jne	.L52
.LBE68:
	.loc 1 131 5 is_stmt 1 view .LVU419
	.loc 1 131 14 is_stmt 0 view .LVU420
	vcvtss2sd	24(%rsp), %xmm1, %xmm1
	vcvtss2sd	%xmm8, %xmm8, %xmm0
	vmulsd	.LC25(%rip), %xmm0, %xmm0
	.loc 1 132 25 view .LVU421
	movq	8(%rsp), %rax
	.loc 1 132 25 view .LVU422
	vmovss	20(%rsp), %xmm7
	.loc 1 131 14 view .LVU423
	vdivsd	%xmm1, %xmm0, %xmm0
.LVL88:
	.loc 1 132 5 is_stmt 1 view .LVU424
	.loc 1 131 14 is_stmt 0 view .LVU425
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
.LVL89:
	.loc 1 132 25 view .LVU426
	vfmadd132ss	(%rax), %xmm0, %xmm7
	.loc 1 132 11 view .LVU427
	vmovss	%xmm7, (%r12)
	.loc 1 133 1 view .LVU428
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
.LVL90:
	.loc 1 133 1 view .LVU429
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL91:
	.loc 1 133 1 view .LVU430
	popq	%r12
	.cfi_def_cfa_offset 32
.LVL92:
	.loc 1 133 1 view .LVU431
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
.LVL93:
	.loc 1 133 1 view .LVU432
	ret
	.cfi_endproc
.LFE6563:
	.size	forces, .-forces
	.p2align 4
	.globl	velocity_verlet
	.type	velocity_verlet, @function
velocity_verlet:
.LVL94:
.LFB6565:
	.loc 1 146 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 148 5 view .LVU434
.LBB69:
	.loc 1 148 10 view .LVU435
	.loc 1 148 23 discriminator 1 view .LVU436
.LBE69:
	.loc 1 146 1 is_stmt 0 view .LVU437
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r11
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbp
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.loc 1 146 1 view .LVU438
	movq	%rdx, %rbx
.LBB84:
	.loc 1 150 10 view .LVU439
	movq	(%rdi), %rsi
.LVL95:
	.loc 1 150 43 view .LVU440
	movq	(%rdx), %r15
	.loc 1 151 43 view .LVU441
	movq	8(%rdx), %r13
.LBE84:
	.loc 1 146 1 view .LVU442
	movq	%rcx, 8(%rsp)
.LBB85:
	.loc 1 152 10 view .LVU443
	movq	16(%rdi), %rdx
.LVL96:
	.loc 1 152 10 view .LVU444
.LBE85:
	.loc 1 146 1 view .LVU445
	movq	%r8, %r12
.LBB86:
	.loc 1 151 10 view .LVU446
	movq	8(%rdi), %rcx
.LVL97:
	.loc 1 151 10 view .LVU447
.LBE86:
	.loc 1 146 1 view .LVU448
	movq	%r9, %r14
	vxorps	%xmm3, %xmm3, %xmm3
	vmovaps	%xmm0, %xmm7
	vmovsd	.LC26(%rip), %xmm8
	vmovsd	.LC27(%rip), %xmm6
.LBB87:
	.loc 1 152 43 view .LVU449
	xorl	%eax, %eax
.LBB70:
.LBB71:
	.loc 1 137 8 view .LVU450
	vxorps	%xmm5, %xmm5, %xmm5
	vmovsd	.LC28(%rip), %xmm4
.LBE71:
.LBE70:
	.loc 1 150 21 view .LVU451
	movq	0(%rbp), %r10
	.loc 1 151 21 view .LVU452
	movq	8(%rbp), %r8
.LVL98:
	.loc 1 152 21 view .LVU453
	movq	16(%rbp), %rdi
.LVL99:
	.loc 1 152 43 view .LVU454
	movq	16(%rbx), %r9
.LVL100:
	.loc 1 152 43 view .LVU455
	jmp	.L76
.LVL101:
	.p2align 4
	.p2align 3
.L86:
.LBB74:
.LBB72:
	.loc 1 139 12 is_stmt 1 view .LVU456
	.loc 1 140 15 is_stmt 0 view .LVU457
	vsubss	%xmm2, %xmm0, %xmm9
	vcmpltss	%xmm0, %xmm2, %xmm10
	vblendvps	%xmm10, %xmm9, %xmm0, %xmm0
.LVL102:
	.loc 1 142 5 is_stmt 1 view .LVU458
	.loc 1 142 5 is_stmt 0 view .LVU459
.LBE72:
.LBE74:
	.loc 1 155 17 discriminator 1 view .LVU460
	vmovss	%xmm0, (%rsi,%rax)
	.loc 1 156 9 is_stmt 1 view .LVU461
	.loc 1 156 19 is_stmt 0 view .LVU462
	vmovss	(%rcx,%rax), %xmm0
.LVL103:
.LBB75:
.LBI75:
	.loc 1 135 14 is_stmt 1 view .LVU463
.LBB76:
	.loc 1 137 5 view .LVU464
	.loc 1 137 8 is_stmt 0 view .LVU465
	vcomiss	%xmm0, %xmm5
	jnb	.L90
.L87:
	.loc 1 139 12 is_stmt 1 view .LVU466
	.loc 1 140 15 is_stmt 0 view .LVU467
	vsubss	%xmm2, %xmm0, %xmm9
	vcmpltss	%xmm0, %xmm2, %xmm10
	vblendvps	%xmm10, %xmm9, %xmm0, %xmm0
.LVL104:
	.loc 1 142 5 is_stmt 1 view .LVU468
	.loc 1 142 5 is_stmt 0 view .LVU469
.LBE76:
.LBE75:
	.loc 1 156 17 discriminator 1 view .LVU470
	vmovss	%xmm0, (%rcx,%rax)
	.loc 1 157 9 is_stmt 1 view .LVU471
	.loc 1 157 19 is_stmt 0 view .LVU472
	vmovss	(%rdx,%rax), %xmm0
.LVL105:
.LBB78:
.LBI78:
	.loc 1 135 14 is_stmt 1 view .LVU473
.LBB79:
	.loc 1 137 5 view .LVU474
	.loc 1 137 8 is_stmt 0 view .LVU475
	vcomiss	%xmm0, %xmm5
	jnb	.L91
.L88:
	.loc 1 139 12 is_stmt 1 view .LVU476
	.loc 1 140 15 is_stmt 0 view .LVU477
	vsubss	%xmm2, %xmm0, %xmm9
	vcmpltss	%xmm0, %xmm2, %xmm10
	vblendvps	%xmm10, %xmm9, %xmm0, %xmm0
.LVL106:
.L74:
	.loc 1 142 5 is_stmt 1 view .LVU478
	.loc 1 142 5 is_stmt 0 view .LVU479
.LBE79:
.LBE78:
	.loc 1 157 17 discriminator 1 view .LVU480
	vmovss	%xmm0, (%rdx,%rax)
	.loc 1 160 9 is_stmt 1 view .LVU481
	.loc 1 160 14 is_stmt 0 view .LVU482
	vcvtss2sd	(%r10,%rax), %xmm3, %xmm9
	.loc 1 160 32 view .LVU483
	vcvtss2sd	(%r15,%rax), %xmm3, %xmm0
	.loc 1 160 18 view .LVU484
	vfmadd132sd	%xmm4, %xmm9, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%r10,%rax)
	.loc 1 161 9 is_stmt 1 view .LVU485
	.loc 1 161 14 is_stmt 0 view .LVU486
	vcvtss2sd	(%r8,%rax), %xmm3, %xmm9
	.loc 1 161 32 view .LVU487
	vcvtss2sd	0(%r13,%rax), %xmm3, %xmm0
	.loc 1 161 18 view .LVU488
	vfmadd132sd	%xmm4, %xmm9, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%r8,%rax)
	.loc 1 162 9 is_stmt 1 view .LVU489
	.loc 1 162 32 is_stmt 0 view .LVU490
	vcvtss2sd	(%r9,%rax), %xmm3, %xmm0
	.loc 1 162 14 view .LVU491
	vcvtss2sd	(%rdi,%rax), %xmm3, %xmm9
	.loc 1 162 18 view .LVU492
	vfmadd132sd	%xmm4, %xmm9, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rdi,%rax)
	.loc 1 148 29 is_stmt 1 discriminator 3 view .LVU493
.LVL107:
	.loc 1 148 23 discriminator 1 view .LVU494
	addq	$4, %rax
.LVL108:
	.loc 1 148 23 is_stmt 0 discriminator 1 view .LVU495
	cmpq	$16000, %rax
	je	.L92
.LVL109:
.L76:
	.loc 1 150 9 is_stmt 1 view .LVU496
	.loc 1 150 25 is_stmt 0 view .LVU497
	vcvtss2sd	(%r10,%rax), %xmm3, %xmm0
	.loc 1 150 13 view .LVU498
	vcvtss2sd	(%rsi,%rax), %xmm3, %xmm9
	.loc 1 150 17 view .LVU499
	vfmadd231sd	%xmm8, %xmm0, %xmm9
	.loc 1 150 47 view .LVU500
	vcvtss2sd	(%r15,%rax), %xmm3, %xmm0
	.loc 1 150 17 view .LVU501
	vfmadd132sd	%xmm6, %xmm9, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rsi,%rax)
	.loc 1 151 9 is_stmt 1 view .LVU502
	.loc 1 151 25 is_stmt 0 view .LVU503
	vcvtss2sd	(%r8,%rax), %xmm3, %xmm0
	.loc 1 151 13 view .LVU504
	vcvtss2sd	(%rcx,%rax), %xmm3, %xmm9
	.loc 1 151 17 view .LVU505
	vfmadd231sd	%xmm8, %xmm0, %xmm9
	.loc 1 151 47 view .LVU506
	vcvtss2sd	0(%r13,%rax), %xmm3, %xmm0
	.loc 1 151 17 view .LVU507
	vfmadd132sd	%xmm6, %xmm9, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rcx,%rax)
	.loc 1 152 9 is_stmt 1 view .LVU508
	.loc 1 152 25 is_stmt 0 view .LVU509
	vcvtss2sd	(%rdi,%rax), %xmm3, %xmm0
	.loc 1 152 13 view .LVU510
	vcvtss2sd	(%rdx,%rax), %xmm3, %xmm9
	.loc 1 152 17 view .LVU511
	vfmadd231sd	%xmm8, %xmm0, %xmm9
	.loc 1 152 47 view .LVU512
	vcvtss2sd	(%r9,%rax), %xmm3, %xmm0
	.loc 1 152 17 view .LVU513
	vfmadd132sd	%xmm6, %xmm9, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rdx,%rax)
	.loc 1 155 9 is_stmt 1 view .LVU514
	.loc 1 155 19 is_stmt 0 view .LVU515
	vmovss	(%rsi,%rax), %xmm0
.LVL110:
.LBB81:
.LBI70:
	.loc 1 135 14 is_stmt 1 view .LVU516
.LBB73:
	.loc 1 137 5 view .LVU517
	.loc 1 137 8 is_stmt 0 view .LVU518
	vcomiss	%xmm0, %xmm5
	jb	.L86
	.loc 1 138 9 is_stmt 1 view .LVU519
	.loc 1 138 15 is_stmt 0 view .LVU520
	vaddss	%xmm2, %xmm0, %xmm0
.LVL111:
	.loc 1 142 5 is_stmt 1 view .LVU521
	.loc 1 142 5 is_stmt 0 view .LVU522
.LBE73:
.LBE81:
	.loc 1 155 17 discriminator 1 view .LVU523
	vmovss	%xmm0, (%rsi,%rax)
	.loc 1 156 9 is_stmt 1 view .LVU524
	.loc 1 156 19 is_stmt 0 view .LVU525
	vmovss	(%rcx,%rax), %xmm0
.LVL112:
.LBB82:
	.loc 1 135 14 is_stmt 1 view .LVU526
.LBB77:
	.loc 1 137 5 view .LVU527
	.loc 1 137 8 is_stmt 0 view .LVU528
	vcomiss	%xmm0, %xmm5
	jb	.L87
.L90:
	.loc 1 138 9 is_stmt 1 view .LVU529
	.loc 1 138 15 is_stmt 0 view .LVU530
	vaddss	%xmm2, %xmm0, %xmm0
.LVL113:
	.loc 1 142 5 is_stmt 1 view .LVU531
	.loc 1 142 5 is_stmt 0 view .LVU532
.LBE77:
.LBE82:
	.loc 1 156 17 discriminator 1 view .LVU533
	vmovss	%xmm0, (%rcx,%rax)
	.loc 1 157 9 is_stmt 1 view .LVU534
	.loc 1 157 19 is_stmt 0 view .LVU535
	vmovss	(%rdx,%rax), %xmm0
.LVL114:
.LBB83:
	.loc 1 135 14 is_stmt 1 view .LVU536
.LBB80:
	.loc 1 137 5 view .LVU537
	.loc 1 137 8 is_stmt 0 view .LVU538
	vcomiss	%xmm0, %xmm5
	jb	.L88
.L91:
	.loc 1 138 9 is_stmt 1 view .LVU539
	.loc 1 138 15 is_stmt 0 view .LVU540
	vaddss	%xmm2, %xmm0, %xmm0
.LVL115:
	.loc 1 138 15 view .LVU541
	jmp	.L74
.LVL116:
.L92:
	.loc 1 138 15 view .LVU542
.LBE80:
.LBE83:
.LBE87:
	.loc 1 166 5 is_stmt 1 view .LVU543
	movq	80(%rsp), %r8
	movq	8(%rsp), %rdx
	movq	%r14, %rcx
	movq	%rbx, %rsi
	movq	%r11, %rdi
	vmovaps	%xmm7, %xmm0
	call	forces
.LVL117:
	.loc 1 168 5 view .LVU544
	.loc 1 170 5 view .LVU545
.LBB88:
	.loc 1 170 10 view .LVU546
	.loc 1 170 23 discriminator 1 view .LVU547
.LBE88:
	.loc 1 168 11 is_stmt 0 view .LVU548
	vmovsd	.LC28(%rip), %xmm4
.LBB89:
	.loc 1 174 28 view .LVU549
	xorl	%eax, %eax
.LBE89:
	.loc 1 168 11 view .LVU550
	vxorps	%xmm2, %xmm2, %xmm2
.LBB90:
	.loc 1 172 10 view .LVU551
	movq	0(%rbp), %rcx
	.loc 1 172 28 view .LVU552
	movq	(%rbx), %rdi
.LBE90:
	.loc 1 168 11 view .LVU553
	vxorps	%xmm3, %xmm3, %xmm3
.LBB91:
	.loc 1 173 10 view .LVU554
	movq	8(%rbp), %rdx
	.loc 1 173 28 view .LVU555
	movq	8(%rbx), %rsi
	.loc 1 174 10 view .LVU556
	movq	16(%rbp), %r8
	.loc 1 174 28 view .LVU557
	movq	16(%rbx), %r9
.LVL118:
	.p2align 4
	.p2align 3
.L77:
	.loc 1 172 9 is_stmt 1 view .LVU558
	.loc 1 172 14 is_stmt 0 view .LVU559
	vcvtss2sd	(%rcx,%rax), %xmm3, %xmm1
	.loc 1 172 32 view .LVU560
	vcvtss2sd	(%rdi,%rax), %xmm3, %xmm0
	.loc 1 172 18 view .LVU561
	vfmadd132sd	%xmm4, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rcx,%rax)
	.loc 1 173 9 is_stmt 1 view .LVU562
	.loc 1 173 14 is_stmt 0 view .LVU563
	vcvtss2sd	(%rdx,%rax), %xmm3, %xmm1
	.loc 1 173 32 view .LVU564
	vcvtss2sd	(%rsi,%rax), %xmm3, %xmm0
	.loc 1 173 18 view .LVU565
	vfmadd132sd	%xmm4, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rdx,%rax)
	.loc 1 174 9 is_stmt 1 view .LVU566
	.loc 1 174 14 is_stmt 0 view .LVU567
	vcvtss2sd	(%r8,%rax), %xmm3, %xmm1
	.loc 1 174 32 view .LVU568
	vcvtss2sd	(%r9,%rax), %xmm3, %xmm0
	.loc 1 174 18 view .LVU569
	vfmadd132sd	%xmm4, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%r8,%rax)
	.loc 1 176 9 is_stmt 1 view .LVU570
	.loc 1 176 23 is_stmt 0 view .LVU571
	vmovss	(%rcx,%rax), %xmm1
	.loc 1 176 71 view .LVU572
	vmulss	%xmm0, %xmm0, %xmm0
	vfmadd132ss	%xmm1, %xmm2, %xmm1
	.loc 1 176 45 view .LVU573
	vmovss	(%rdx,%rax), %xmm2
.LVL119:
	.loc 1 170 23 discriminator 1 view .LVU574
	addq	$4, %rax
.LVL120:
	.loc 1 170 23 discriminator 1 view .LVU575
	vfmadd132ss	%xmm2, %xmm0, %xmm2
	.loc 1 176 15 view .LVU576
	vaddss	%xmm1, %xmm2, %xmm2
.LVL121:
	.loc 1 170 29 is_stmt 1 discriminator 3 view .LVU577
	.loc 1 170 23 discriminator 1 view .LVU578
	cmpq	$16000, %rax
	jne	.L77
.LBE91:
	.loc 1 179 5 view .LVU579
	.loc 1 179 17 is_stmt 0 view .LVU580
	vmulss	.LC16(%rip), %xmm2, %xmm0
	.loc 1 180 19 view .LVU581
	vcvtss2sd	%xmm2, %xmm2, %xmm2
.LVL122:
	.loc 1 180 19 view .LVU582
	vmulsd	.LC15(%rip), %xmm2, %xmm2
	movq	80(%rsp), %rax
.LVL123:
	.loc 1 180 19 view .LVU583
	vcvtsd2ss	%xmm2, %xmm2, %xmm2
	.loc 1 179 11 view .LVU584
	vmovss	%xmm0, (%r12)
	.loc 1 180 5 is_stmt 1 view .LVU585
	.loc 1 180 19 is_stmt 0 view .LVU586
	vmovss	%xmm2, (%rax)
	.loc 1 181 1 view .LVU587
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
.LVL124:
	.loc 1 181 1 view .LVU588
	popq	%rbp
	.cfi_def_cfa_offset 40
.LVL125:
	.loc 1 181 1 view .LVU589
	popq	%r12
	.cfi_def_cfa_offset 32
.LVL126:
	.loc 1 181 1 view .LVU590
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
.LVL127:
	.loc 1 181 1 view .LVU591
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE6565:
	.size	velocity_verlet, .-velocity_verlet
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1074790400
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC1:
	.long	0
	.long	1071644672
	.long	0
	.long	1071644672
	.long	0
	.long	1073217536
	.long	0
	.long	1073217536
	.align 32
.LC2:
	.long	0
	.long	1074003968
	.long	0
	.long	1074003968
	.long	0
	.long	1074528256
	.long	0
	.long	1074528256
	.align 32
.LC3:
	.long	0
	.long	0
	.long	1065353216
	.long	1065353216
	.long	1073741824
	.long	1073741824
	.long	1077936128
	.long	1077936128
	.align 32
.LC4:
	.long	0
	.long	1074921472
	.long	0
	.long	1074921472
	.long	0
	.long	1075183616
	.long	0
	.long	1075183616
	.align 32
.LC5:
	.long	0
	.long	1075445760
	.long	0
	.long	1075445760
	.long	0
	.long	1075707904
	.long	0
	.long	1075707904
	.align 32
.LC6:
	.long	1082130432
	.long	1082130432
	.long	1084227584
	.long	1084227584
	.long	1086324736
	.long	1086324736
	.long	1088421888
	.long	1088421888
	.section	.rodata.cst8
	.align 8
.LC7:
	.long	0
	.long	1075904512
	.align 8
.LC8:
	.long	0
	.long	1076035584
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC9:
	.long	1090519040
	.long	1090519040
	.long	1091567616
	.long	1091567616
	.set	.LC10,.LC1
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC12:
	.long	805306368
	.align 4
.LC13:
	.long	-1090519040
	.align 4
.LC14:
	.long	964891247
	.section	.rodata.cst8
	.align 8
.LC15:
	.long	-1007885659
	.long	1058396263
	.section	.rodata.cst4
	.align 4
.LC16:
	.long	1056964608
	.section	.rodata.cst8
	.align 8
.LC17:
	.long	0
	.long	1073741824
	.section	.rodata.cst16
	.align 16
.LC18:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4
	.align 4
.LC19:
	.long	1086849024
	.set	.LC20,.LC3+8
	.section	.rodata.cst8
	.align 8
.LC21:
	.long	0
	.long	-1074790400
	.align 8
.LC22:
	.long	0
	.long	1077411840
	.align 8
.LC23:
	.long	0
	.long	1072693248
	.align 8
.LC24:
	.long	120897443
	.long	1066448224
	.align 8
.LC25:
	.long	1431655765
	.long	1070945621
	.align 8
.LC26:
	.long	1202590843
	.long	1064598241
	.align 8
.LC27:
	.long	-350469331
	.long	1055536866
	.align 8
.LC28:
	.long	1202590843
	.long	1063549665
	.text
.Letext0:
	.file 2 "core.h"
	.file 3 "/usr/include/string.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.file 5 "/usr/include/stdlib.h"
	.file 6 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8e7
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x1a
	.long	.LASF44
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
	.uleb128 0xf
	.byte	0x4
	.long	0x5e
	.uleb128 0x5
	.string	"x"
	.byte	0x5
	.long	0x5e
	.byte	0
	.uleb128 0x5
	.string	"y"
	.byte	0x6
	.long	0x5e
	.byte	0x8
	.uleb128 0x5
	.string	"z"
	.byte	0x7
	.long	0x5e
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.long	0x2e
	.uleb128 0x17
	.long	0x2e
	.uleb128 0x10
	.long	.LASF4
	.byte	0x8
	.long	0x3c
	.uleb128 0x17
	.long	0x68
	.uleb128 0xf
	.byte	0xa
	.long	0x9c
	.uleb128 0x5
	.string	"vx"
	.byte	0xb
	.long	0x5e
	.byte	0
	.uleb128 0x5
	.string	"vy"
	.byte	0xc
	.long	0x5e
	.byte	0x8
	.uleb128 0x5
	.string	"vz"
	.byte	0xd
	.long	0x5e
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.long	.LASF5
	.byte	0xe
	.long	0x77
	.uleb128 0xf
	.byte	0x10
	.long	0xcb
	.uleb128 0x5
	.string	"fx"
	.byte	0x11
	.long	0x5e
	.byte	0
	.uleb128 0x5
	.string	"fy"
	.byte	0x12
	.long	0x5e
	.byte	0x8
	.uleb128 0x5
	.string	"fz"
	.byte	0x13
	.long	0x5e
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.long	.LASF6
	.byte	0x14
	.long	0xa6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.long	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF15
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF16
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF17
	.uleb128 0x2
	.byte	0x2
	.byte	0x4
	.long	.LASF18
	.uleb128 0x2
	.byte	0x2
	.byte	0x4
	.long	.LASF19
	.uleb128 0x1c
	.byte	0x8
	.uleb128 0x11
	.long	.LASF20
	.byte	0x3
	.byte	0x3d
	.byte	0xe
	.long	0x137
	.long	0x159
	.uleb128 0xc
	.long	0x137
	.uleb128 0xc
	.long	0xe3
	.uleb128 0xc
	.long	0xdc
	.byte	0
	.uleb128 0x11
	.long	.LASF21
	.byte	0x4
	.byte	0x9e
	.byte	0x1
	.long	0x35
	.long	0x16f
	.uleb128 0xc
	.long	0x35
	.byte	0
	.uleb128 0x1d
	.long	.LASF45
	.byte	0x5
	.value	0x23d
	.byte	0xc
	.long	0xe3
	.uleb128 0x11
	.long	.LASF22
	.byte	0x4
	.byte	0xa7
	.byte	0x1
	.long	0x35
	.long	0x192
	.uleb128 0xc
	.long	0x35
	.byte	0
	.uleb128 0xd
	.long	.LASF29
	.byte	0x91
	.quad	.LFB6565
	.quad	.LFE6565-.LFB6565
	.uleb128 0x1
	.byte	0x9c
	.long	0x35f
	.uleb128 0x3
	.string	"r"
	.byte	0x91
	.byte	0x21
	.long	0x35f
	.long	.LLST58
	.long	.LVUS58
	.uleb128 0x3
	.string	"v"
	.byte	0x91
	.byte	0x30
	.long	0x364
	.long	.LLST59
	.long	.LVUS59
	.uleb128 0x3
	.string	"f"
	.byte	0x91
	.byte	0x3b
	.long	0x369
	.long	.LLST60
	.long	.LVUS60
	.uleb128 0x8
	.long	.LASF23
	.byte	0x91
	.byte	0x45
	.long	0x5e
	.long	.LLST61
	.long	.LVUS61
	.uleb128 0x8
	.long	.LASF24
	.byte	0x91
	.byte	0x52
	.long	0x5e
	.long	.LLST62
	.long	.LVUS62
	.uleb128 0x8
	.long	.LASF25
	.byte	0x91
	.byte	0x5f
	.long	0x5e
	.long	.LLST63
	.long	.LVUS63
	.uleb128 0x1e
	.long	.LASF31
	.byte	0x1
	.byte	0x91
	.byte	0x6c
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.string	"rho"
	.byte	0x91
	.byte	0x7e
	.long	0x63
	.long	.LLST64
	.long	.LVUS64
	.uleb128 0x3
	.string	"V"
	.byte	0x91
	.byte	0x8f
	.long	0x63
	.long	.LLST65
	.long	.LVUS65
	.uleb128 0x3
	.string	"L"
	.byte	0x91
	.byte	0x9e
	.long	0x63
	.long	.LLST66
	.long	.LVUS66
	.uleb128 0x6
	.long	.LASF26
	.byte	0xa8
	.byte	0xb
	.long	0x2e
	.long	.LLST67
	.long	.LVUS67
	.uleb128 0x9
	.long	.LLRL68
	.long	0x30a
	.uleb128 0x1
	.string	"i"
	.byte	0x94
	.byte	0xe
	.long	0xe3
	.long	.LLST69
	.long	.LVUS69
	.uleb128 0x12
	.long	0x36e
	.quad	.LBI70
	.byte	.LVU516
	.long	.LLRL70
	.byte	0x9b
	.byte	0x13
	.long	0x2b6
	.uleb128 0x7
	.long	0x37f
	.long	.LLST71
	.long	.LVUS71
	.uleb128 0x13
	.long	0x38a
	.byte	0
	.uleb128 0x12
	.long	0x36e
	.quad	.LBI75
	.byte	.LVU463
	.long	.LLRL72
	.byte	0x9c
	.byte	0x13
	.long	0x2e1
	.uleb128 0x7
	.long	0x37f
	.long	.LLST73
	.long	.LVUS73
	.uleb128 0x13
	.long	0x38a
	.byte	0
	.uleb128 0x1f
	.long	0x36e
	.quad	.LBI78
	.byte	.LVU473
	.long	.LLRL74
	.byte	0x1
	.byte	0x9d
	.byte	0x13
	.uleb128 0x7
	.long	0x37f
	.long	.LLST75
	.long	.LVUS75
	.uleb128 0x13
	.long	0x38a
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	.LLRL76
	.long	0x325
	.uleb128 0x1
	.string	"i"
	.byte	0xaa
	.byte	0xe
	.long	0xe3
	.long	.LLST77
	.long	.LVUS77
	.byte	0
	.uleb128 0x18
	.quad	.LVL117
	.long	0x396
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x4
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
	.uleb128 0xa
	.long	0x68
	.uleb128 0xa
	.long	0x9c
	.uleb128 0xa
	.long	0xcb
	.uleb128 0x20
	.string	"pbc"
	.byte	0x1
	.byte	0x87
	.byte	0xe
	.long	0x2e
	.byte	0x1
	.long	0x396
	.uleb128 0xe
	.long	.LASF27
	.byte	0x87
	.byte	0x18
	.long	0x2e
	.uleb128 0xe
	.long	.LASF28
	.byte	0x87
	.byte	0x2b
	.long	0x63
	.byte	0
	.uleb128 0xd
	.long	.LASF30
	.byte	0x57
	.quad	.LFB6563
	.quad	.LFE6563-.LFB6563
	.uleb128 0x1
	.byte	0x9c
	.long	0x698
	.uleb128 0x3
	.string	"r"
	.byte	0x57
	.byte	0x1e
	.long	0x698
	.long	.LLST22
	.long	.LVUS22
	.uleb128 0x3
	.string	"f"
	.byte	0x57
	.byte	0x29
	.long	0x369
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
	.long	0x69d
	.long	.LLST26
	.long	.LVUS26
	.uleb128 0x3
	.string	"rho"
	.byte	0x57
	.byte	0x65
	.long	0x63
	.long	.LLST27
	.long	.LVUS27
	.uleb128 0x3
	.string	"V"
	.byte	0x57
	.byte	0x76
	.long	0x63
	.long	.LLST28
	.long	.LVUS28
	.uleb128 0x3
	.string	"L"
	.byte	0x57
	.byte	0x85
	.long	0x63
	.long	.LLST29
	.long	.LVUS29
	.uleb128 0x6
	.long	.LASF32
	.byte	0x5d
	.byte	0xb
	.long	0x2e
	.long	.LLST30
	.long	.LVUS30
	.uleb128 0x21
	.long	.LASF42
	.byte	0x1
	.byte	0x5e
	.byte	0x11
	.long	0x63
	.byte	0x4
	.long	0x40c80000
	.uleb128 0x9
	.long	.LLRL31
	.long	0x641
	.uleb128 0x1
	.string	"i"
	.byte	0x61
	.byte	0xe
	.long	0xe3
	.long	.LLST32
	.long	.LVUS32
	.uleb128 0xb
	.long	.LLRL33
	.uleb128 0x1
	.string	"xi"
	.byte	0x62
	.byte	0xf
	.long	0x2e
	.long	.LLST34
	.long	.LVUS34
	.uleb128 0x1
	.string	"yi"
	.byte	0x63
	.byte	0xf
	.long	0x2e
	.long	.LLST35
	.long	.LVUS35
	.uleb128 0x1
	.string	"zi"
	.byte	0x64
	.byte	0xf
	.long	0x2e
	.long	.LLST36
	.long	.LVUS36
	.uleb128 0xb
	.long	.LLRL37
	.uleb128 0x1
	.string	"j"
	.byte	0x66
	.byte	0x12
	.long	0xe3
	.long	.LLST38
	.long	.LVUS38
	.uleb128 0xb
	.long	.LLRL39
	.uleb128 0x1
	.string	"rx"
	.byte	0x67
	.byte	0x13
	.long	0x2e
	.long	.LLST40
	.long	.LVUS40
	.uleb128 0x1
	.string	"ry"
	.byte	0x68
	.byte	0x13
	.long	0x2e
	.long	.LLST41
	.long	.LVUS41
	.uleb128 0x1
	.string	"rz"
	.byte	0x69
	.byte	0x13
	.long	0x2e
	.long	.LLST42
	.long	.LVUS42
	.uleb128 0x6
	.long	.LASF33
	.byte	0x6f
	.byte	0x13
	.long	0x2e
	.long	.LLST43
	.long	.LVUS43
	.uleb128 0x9
	.long	.LLRL48
	.long	0x561
	.uleb128 0x6
	.long	.LASF34
	.byte	0x72
	.byte	0x17
	.long	0x2e
	.long	.LLST49
	.long	.LVUS49
	.uleb128 0x6
	.long	.LASF35
	.byte	0x73
	.byte	0x17
	.long	0x2e
	.long	.LLST50
	.long	.LVUS50
	.uleb128 0x1
	.string	"fr"
	.byte	0x74
	.byte	0x17
	.long	0x2e
	.long	.LLST51
	.long	.LVUS51
	.byte	0
	.uleb128 0x12
	.long	0x6a2
	.quad	.LBI42
	.byte	.LVU336
	.long	.LLRL44
	.byte	0x6b
	.byte	0x12
	.long	0x5a7
	.uleb128 0x7
	.long	0x6b3
	.long	.LLST45
	.long	.LVUS45
	.uleb128 0x7
	.long	0x6be
	.long	.LLST46
	.long	.LVUS46
	.uleb128 0xb
	.long	.LLRL44
	.uleb128 0x14
	.long	0x6c9
	.long	.LLST47
	.long	.LVUS47
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0x6a2
	.quad	.LBI51
	.byte	.LVU345
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.byte	0x1
	.byte	0x6c
	.byte	0x12
	.long	0x5f4
	.uleb128 0x7
	.long	0x6b3
	.long	.LLST52
	.long	.LVUS52
	.uleb128 0x7
	.long	0x6be
	.long	.LLST53
	.long	.LVUS53
	.uleb128 0x14
	.long	0x6c9
	.long	.LLST54
	.long	.LVUS54
	.byte	0
	.uleb128 0x23
	.long	0x6a2
	.quad	.LBI53
	.byte	.LVU354
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.byte	0x1
	.byte	0x6d
	.byte	0x12
	.uleb128 0x7
	.long	0x6b3
	.long	.LLST55
	.long	.LVUS55
	.uleb128 0x7
	.long	0x6be
	.long	.LLST56
	.long	.LVUS56
	.uleb128 0x14
	.long	0x6c9
	.long	.LLST57
	.long	.LVUS57
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.quad	.LVL59
	.long	0x8df
	.long	0x65f
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.value	0x3e80
	.byte	0
	.uleb128 0x15
	.quad	.LVL60
	.long	0x8df
	.long	0x67d
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.value	0x3e80
	.byte	0
	.uleb128 0x18
	.quad	.LVL61
	.long	0x8df
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.value	0x3e80
	.byte	0
	.byte	0
	.uleb128 0xa
	.long	0x72
	.uleb128 0xa
	.long	0x63
	.uleb128 0x24
	.long	.LASF36
	.byte	0x1
	.byte	0x4e
	.byte	0xe
	.long	0x2e
	.byte	0x1
	.long	0x6d6
	.uleb128 0xe
	.long	.LASF27
	.byte	0x4e
	.byte	0x22
	.long	0x2e
	.uleb128 0xe
	.long	.LASF28
	.byte	0x4e
	.byte	0x35
	.long	0x63
	.uleb128 0x25
	.long	.LASF46
	.byte	0x1
	.byte	0x50
	.byte	0x11
	.long	0x63
	.byte	0
	.uleb128 0xd
	.long	.LASF37
	.byte	0x30
	.quad	.LFB6561
	.quad	.LFE6561-.LFB6561
	.uleb128 0x1
	.byte	0x9c
	.long	0x7f0
	.uleb128 0x3
	.string	"v"
	.byte	0x30
	.byte	0x1b
	.long	0x364
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
	.uleb128 0x6
	.long	.LASF38
	.byte	0x32
	.byte	0xb
	.long	0x2e
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x6
	.long	.LASF39
	.byte	0x32
	.byte	0x18
	.long	0x2e
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x6
	.long	.LASF40
	.byte	0x32
	.byte	0x25
	.long	0x2e
	.long	.LLST15
	.long	.LVUS15
	.uleb128 0x6
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
	.uleb128 0x9
	.long	.LLRL18
	.long	0x7c9
	.uleb128 0x1
	.string	"i"
	.byte	0x34
	.byte	0xe
	.long	0xe3
	.long	.LLST19
	.long	.LVUS19
	.uleb128 0x16
	.quad	.LVL22
	.long	0x16f
	.uleb128 0x16
	.quad	.LVL23
	.long	0x16f
	.uleb128 0x16
	.quad	.LVL24
	.long	0x16f
	.byte	0
	.uleb128 0x9
	.long	.LLRL20
	.long	0x7e4
	.uleb128 0x1
	.string	"i"
	.byte	0x46
	.byte	0xe
	.long	0xe3
	.long	.LLST21
	.long	.LVUS21
	.byte	0
	.uleb128 0x19
	.quad	.LVL41
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xd
	.long	.LASF41
	.byte	0xb
	.quad	.LFB6560
	.quad	.LFE6560-.LFB6560
	.uleb128 0x1
	.byte	0x9c
	.long	0x8df
	.uleb128 0x3
	.string	"r"
	.byte	0xb
	.byte	0x1a
	.long	0x35f
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x3
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
	.uleb128 0x26
	.long	.LASF43
	.byte	0x1
	.byte	0xe
	.byte	0x9
	.long	0xe3
	.byte	0xa
	.uleb128 0x1
	.string	"idx"
	.byte	0xf
	.byte	0x9
	.long	0xe3
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x9
	.long	.LLRL4
	.long	0x8aa
	.uleb128 0x1
	.string	"i"
	.byte	0x11
	.byte	0xe
	.long	0xe3
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0xb
	.long	.LLRL6
	.uleb128 0x1
	.string	"j"
	.byte	0x12
	.byte	0x12
	.long	0xe3
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0xb
	.long	.LLRL8
	.uleb128 0x1
	.string	"k"
	.byte	0x13
	.byte	0x16
	.long	0xe3
	.long	.LLST9
	.long	.LVUS9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.quad	.LVL2
	.long	0x17c
	.long	0x8d3
	.uleb128 0x4
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
	.quad	.LVL18
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.long	.LASF20
	.long	.LASF47
	.byte	0x6
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
	.uleb128 0x4
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 24
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
.LVUS58:
	.uleb128 0
	.uleb128 .LVU454
	.uleb128 .LVU454
	.uleb128 .LVU544
	.uleb128 .LVU544
	.uleb128 0
.LLST58:
	.byte	0x4
	.uleb128 .LVL94-.Ltext0
	.uleb128 .LVL99-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL99-.Ltext0
	.uleb128 .LVL117-1-.Ltext0
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL117-1-.Ltext0
	.uleb128 .LFE6565-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS59:
	.uleb128 0
	.uleb128 .LVU440
	.uleb128 .LVU440
	.uleb128 .LVU589
	.uleb128 .LVU589
	.uleb128 0
.LLST59:
	.byte	0x4
	.uleb128 .LVL94-.Ltext0
	.uleb128 .LVL95-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL95-.Ltext0
	.uleb128 .LVL125-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL125-.Ltext0
	.uleb128 .LFE6565-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS60:
	.uleb128 0
	.uleb128 .LVU444
	.uleb128 .LVU444
	.uleb128 .LVU588
	.uleb128 .LVU588
	.uleb128 0
.LLST60:
	.byte	0x4
	.uleb128 .LVL94-.Ltext0
	.uleb128 .LVL96-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL96-.Ltext0
	.uleb128 .LVL124-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL124-.Ltext0
	.uleb128 .LFE6565-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS61:
	.uleb128 0
	.uleb128 .LVU447
	.uleb128 .LVU447
	.uleb128 0
.LLST61:
	.byte	0x4
	.uleb128 .LVL94-.Ltext0
	.uleb128 .LVL97-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL97-.Ltext0
	.uleb128 .LFE6565-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
.LVUS62:
	.uleb128 0
	.uleb128 .LVU453
	.uleb128 .LVU453
	.uleb128 .LVU590
	.uleb128 .LVU590
	.uleb128 0
.LLST62:
	.byte	0x4
	.uleb128 .LVL94-.Ltext0
	.uleb128 .LVL98-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL98-.Ltext0
	.uleb128 .LVL126-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL126-.Ltext0
	.uleb128 .LFE6565-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.byte	0
.LVUS63:
	.uleb128 0
	.uleb128 .LVU455
	.uleb128 .LVU455
	.uleb128 .LVU591
	.uleb128 .LVU591
	.uleb128 0
.LLST63:
	.byte	0x4
	.uleb128 .LVL94-.Ltext0
	.uleb128 .LVL100-.Ltext0
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL100-.Ltext0
	.uleb128 .LVL127-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL127-.Ltext0
	.uleb128 .LFE6565-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x59
	.byte	0x9f
	.byte	0
.LVUS64:
	.uleb128 0
	.uleb128 .LVU456
	.uleb128 .LVU456
	.uleb128 .LVU544
	.uleb128 .LVU544
	.uleb128 0
.LLST64:
	.byte	0x4
	.uleb128 .LVL94-.Ltext0
	.uleb128 .LVL101-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0x4
	.uleb128 .LVL101-.Ltext0
	.uleb128 .LVL117-1-.Ltext0
	.uleb128 0x1
	.byte	0x68
	.byte	0x4
	.uleb128 .LVL117-1-.Ltext0
	.uleb128 .LFE6565-.Ltext0
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x9f
	.byte	0
.LVUS65:
	.uleb128 0
	.uleb128 .LVU544
	.uleb128 .LVU544
	.uleb128 0
.LLST65:
	.byte	0x4
	.uleb128 .LVL94-.Ltext0
	.uleb128 .LVL117-1-.Ltext0
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL117-1-.Ltext0
	.uleb128 .LFE6565-.Ltext0
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x9f
	.byte	0
.LVUS66:
	.uleb128 0
	.uleb128 .LVU544
	.uleb128 .LVU544
	.uleb128 0
.LLST66:
	.byte	0x4
	.uleb128 .LVL94-.Ltext0
	.uleb128 .LVL117-1-.Ltext0
	.uleb128 0x1
	.byte	0x63
	.byte	0x4
	.uleb128 .LVL117-1-.Ltext0
	.uleb128 .LFE6565-.Ltext0
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x9f
	.byte	0
.LVUS67:
	.uleb128 .LVU545
	.uleb128 .LVU558
	.uleb128 .LVU558
	.uleb128 .LVU574
	.uleb128 .LVU577
	.uleb128 .LVU582
.LLST67:
	.byte	0x4
	.uleb128 .LVL117-.Ltext0
	.uleb128 .LVL118-.Ltext0
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x4
	.uleb128 .LVL118-.Ltext0
	.uleb128 .LVL119-.Ltext0
	.uleb128 0x1
	.byte	0x63
	.byte	0x4
	.uleb128 .LVL121-.Ltext0
	.uleb128 .LVL122-.Ltext0
	.uleb128 0x1
	.byte	0x63
	.byte	0
.LVUS69:
	.uleb128 .LVU436
	.uleb128 .LVU456
	.uleb128 .LVU456
	.uleb128 .LVU494
	.uleb128 .LVU494
	.uleb128 .LVU495
	.uleb128 .LVU495
	.uleb128 .LVU496
	.uleb128 .LVU496
	.uleb128 .LVU542
	.uleb128 .LVU542
	.uleb128 .LVU544
.LLST69:
	.byte	0x4
	.uleb128 .LVL94-.Ltext0
	.uleb128 .LVL101-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL101-.Ltext0
	.uleb128 .LVL107-.Ltext0
	.uleb128 0x5
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL107-.Ltext0
	.uleb128 .LVL108-.Ltext0
	.uleb128 0x7
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL108-.Ltext0
	.uleb128 .LVL109-.Ltext0
	.uleb128 0x7
	.byte	0x70
	.sleb128 -4
	.byte	0x32
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL109-.Ltext0
	.uleb128 .LVL116-.Ltext0
	.uleb128 0x5
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL116-.Ltext0
	.uleb128 .LVL117-1-.Ltext0
	.uleb128 0x7
	.byte	0x70
	.sleb128 -4
	.byte	0x32
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0
.LVUS71:
	.uleb128 .LVU456
	.uleb128 .LVU459
	.uleb128 .LVU516
	.uleb128 .LVU522
.LLST71:
	.byte	0x4
	.uleb128 .LVL101-.Ltext0
	.uleb128 .LVL102-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0x4
	.uleb128 .LVL110-.Ltext0
	.uleb128 .LVL111-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0
.LVUS73:
	.uleb128 .LVU463
	.uleb128 .LVU469
	.uleb128 .LVU526
	.uleb128 .LVU532
.LLST73:
	.byte	0x4
	.uleb128 .LVL103-.Ltext0
	.uleb128 .LVL104-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0x4
	.uleb128 .LVL112-.Ltext0
	.uleb128 .LVL113-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0
.LVUS75:
	.uleb128 .LVU473
	.uleb128 .LVU479
	.uleb128 .LVU536
	.uleb128 .LVU542
.LLST75:
	.byte	0x4
	.uleb128 .LVL105-.Ltext0
	.uleb128 .LVL106-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0x4
	.uleb128 .LVL114-.Ltext0
	.uleb128 .LVL116-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0
.LVUS77:
	.uleb128 .LVU547
	.uleb128 .LVU558
	.uleb128 .LVU558
	.uleb128 .LVU575
	.uleb128 .LVU575
	.uleb128 .LVU578
.LLST77:
	.byte	0x4
	.uleb128 .LVL117-.Ltext0
	.uleb128 .LVL118-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL118-.Ltext0
	.uleb128 .LVL120-.Ltext0
	.uleb128 0x5
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL120-.Ltext0
	.uleb128 .LVL121-.Ltext0
	.uleb128 0x5
	.byte	0x70
	.sleb128 -4
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 0
	.uleb128 .LVU295
	.uleb128 .LVU295
	.uleb128 .LVU432
	.uleb128 .LVU432
	.uleb128 0
.LLST22:
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL56-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL56-.Ltext0
	.uleb128 .LVL93-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL93-.Ltext0
	.uleb128 .LFE6563-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS23:
	.uleb128 0
	.uleb128 .LVU298
	.uleb128 .LVU298
	.uleb128 .LVU429
	.uleb128 .LVU429
	.uleb128 0
.LLST23:
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL58-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL58-.Ltext0
	.uleb128 .LVL90-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL90-.Ltext0
	.uleb128 .LFE6563-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS24:
	.uleb128 0
	.uleb128 .LVU297
	.uleb128 .LVU297
	.uleb128 .LVU430
	.uleb128 .LVU430
	.uleb128 0
.LLST24:
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL57-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL57-.Ltext0
	.uleb128 .LVL91-.Ltext0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL91-.Ltext0
	.uleb128 .LFE6563-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS25:
	.uleb128 0
	.uleb128 .LVU300
	.uleb128 .LVU300
	.uleb128 .LVU431
	.uleb128 .LVU431
	.uleb128 0
.LLST25:
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL59-1-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL59-1-.Ltext0
	.uleb128 .LVL92-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL92-.Ltext0
	.uleb128 .LFE6563-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0
.LVUS26:
	.uleb128 0
	.uleb128 .LVU300
	.uleb128 .LVU300
	.uleb128 0
.LLST26:
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL59-1-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL59-1-.Ltext0
	.uleb128 .LFE6563-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
.LVUS27:
	.uleb128 0
	.uleb128 .LVU300
	.uleb128 .LVU300
	.uleb128 0
.LLST27:
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL59-1-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0x4
	.uleb128 .LVL59-1-.Ltext0
	.uleb128 .LFE6563-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
.LVUS28:
	.uleb128 0
	.uleb128 .LVU300
	.uleb128 .LVU300
	.uleb128 0
.LLST28:
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL59-1-.Ltext0
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL59-1-.Ltext0
	.uleb128 .LFE6563-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
.LVUS29:
	.uleb128 0
	.uleb128 .LVU300
	.uleb128 .LVU300
	.uleb128 0
.LLST29:
	.byte	0x4
	.uleb128 .LVL55-.Ltext0
	.uleb128 .LVL59-1-.Ltext0
	.uleb128 0x1
	.byte	0x63
	.byte	0x4
	.uleb128 .LVL59-1-.Ltext0
	.uleb128 .LFE6563-.Ltext0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
.LVUS30:
	.uleb128 .LVU303
	.uleb128 .LVU319
	.uleb128 .LVU319
	.uleb128 .LVU388
	.uleb128 .LVU412
	.uleb128 .LVU424
	.uleb128 .LVU424
	.uleb128 .LVU426
	.uleb128 .LVU426
	.uleb128 0
.LLST30:
	.byte	0x4
	.uleb128 .LVL61-.Ltext0
	.uleb128 .LVL63-.Ltext0
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LVL83-.Ltext0
	.uleb128 0x1
	.byte	0x69
	.byte	0x4
	.uleb128 .LVL84-.Ltext0
	.uleb128 .LVL88-.Ltext0
	.uleb128 0x1
	.byte	0x69
	.byte	0x4
	.uleb128 .LVL88-.Ltext0
	.uleb128 .LVL89-.Ltext0
	.uleb128 0x6
	.byte	0xa5
	.uleb128 0x11
	.uleb128 0x35
	.byte	0xa8
	.uleb128 0x2e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL89-.Ltext0
	.uleb128 .LFE6563-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0
.LVUS32:
	.uleb128 .LVU309
	.uleb128 .LVU319
	.uleb128 .LVU319
	.uleb128 .LVU416
	.uleb128 .LVU416
	.uleb128 .LVU418
.LLST32:
	.byte	0x4
	.uleb128 .LVL62-.Ltext0
	.uleb128 .LVL63-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL63-.Ltext0
	.uleb128 .LVL86-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL86-.Ltext0
	.uleb128 .LVL87-.Ltext0
	.uleb128 0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.byte	0
.LVUS34:
	.uleb128 .LVU321
	.uleb128 0
.LLST34:
	.byte	0x4
	.uleb128 .LVL64-.Ltext0
	.uleb128 .LFE6563-.Ltext0
	.uleb128 0x1
	.byte	0x6d
	.byte	0
.LVUS35:
	.uleb128 .LVU323
	.uleb128 0
.LLST35:
	.byte	0x4
	.uleb128 .LVL65-.Ltext0
	.uleb128 .LFE6563-.Ltext0
	.uleb128 0x1
	.byte	0x6c
	.byte	0
.LVUS36:
	.uleb128 .LVU325
	.uleb128 0
.LLST36:
	.byte	0x4
	.uleb128 .LVL66-.Ltext0
	.uleb128 .LFE6563-.Ltext0
	.uleb128 0x1
	.byte	0x6b
	.byte	0
.LVUS38:
	.uleb128 .LVU327
	.uleb128 .LVU329
	.uleb128 .LVU329
	.uleb128 .LVU414
	.uleb128 .LVU414
	.uleb128 .LVU415
	.uleb128 .LVU415
	.uleb128 .LVU418
.LLST38:
	.byte	0x4
	.uleb128 .LVL66-.Ltext0
	.uleb128 .LVL67-.Ltext0
	.uleb128 0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL67-.Ltext0
	.uleb128 .LVL84-.Ltext0
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
	.uleb128 .LVL84-.Ltext0
	.uleb128 .LVL85-.Ltext0
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
	.uleb128 .LVL85-.Ltext0
	.uleb128 .LVL87-.Ltext0
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
.LVUS40:
	.uleb128 .LVU331
	.uleb128 .LVU340
	.uleb128 .LVU340
	.uleb128 .LVU343
.LLST40:
	.byte	0x4
	.uleb128 .LVL68-.Ltext0
	.uleb128 .LVL71-.Ltext0
	.uleb128 0x1
	.byte	0x6e
	.byte	0x4
	.uleb128 .LVL71-.Ltext0
	.uleb128 .LVL72-.Ltext0
	.uleb128 0xd
	.byte	0xa5
	.uleb128 0x1d
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
	.byte	0
.LVUS41:
	.uleb128 .LVU333
	.uleb128 .LVU349
	.uleb128 .LVU349
	.uleb128 .LVU352
.LLST41:
	.byte	0x4
	.uleb128 .LVL69-.Ltext0
	.uleb128 .LVL73-.Ltext0
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL73-.Ltext0
	.uleb128 .LVL74-.Ltext0
	.uleb128 0xd
	.byte	0xa5
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x7e
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0xa6
	.byte	0x4
	.uleb128 0x2e
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS42:
	.uleb128 .LVU335
	.uleb128 .LVU358
	.uleb128 .LVU358
	.uleb128 .LVU361
.LLST42:
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LVL75-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0x4
	.uleb128 .LVL75-.Ltext0
	.uleb128 .LVL76-.Ltext0
	.uleb128 0xd
	.byte	0xa5
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0xa6
	.byte	0x4
	.uleb128 0x2e
	.byte	0x1c
	.byte	0x9f
	.byte	0
.LVUS43:
	.uleb128 .LVU366
	.uleb128 0
.LLST43:
	.byte	0x4
	.uleb128 .LVL77-.Ltext0
	.uleb128 .LFE6563-.Ltext0
	.uleb128 0x1
	.byte	0x64
	.byte	0
.LVUS49:
	.uleb128 .LVU370
	.uleb128 .LVU379
	.uleb128 .LVU379
	.uleb128 .LVU412
.LLST49:
	.byte	0x4
	.uleb128 .LVL78-.Ltext0
	.uleb128 .LVL80-.Ltext0
	.uleb128 0x1
	.byte	0x65
	.byte	0x4
	.uleb128 .LVL80-.Ltext0
	.uleb128 .LVL84-.Ltext0
	.uleb128 0x8
	.byte	0xa5
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0xa5
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1b
	.byte	0x9f
	.byte	0
.LVUS50:
	.uleb128 .LVU371
	.uleb128 .LVU378
	.uleb128 .LVU378
	.uleb128 .LVU381
	.uleb128 .LVU381
	.uleb128 .LVU412
.LLST50:
	.byte	0x4
	.uleb128 .LVL78-.Ltext0
	.uleb128 .LVL79-.Ltext0
	.uleb128 0xa
	.byte	0xa5
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x12
	.byte	0x1e
	.byte	0xa5
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL79-.Ltext0
	.uleb128 .LVL81-.Ltext0
	.uleb128 0x1
	.byte	0x66
	.byte	0x4
	.uleb128 .LVL81-.Ltext0
	.uleb128 .LVL84-.Ltext0
	.uleb128 0x12
	.byte	0xa5
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0xa5
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1b
	.byte	0x12
	.byte	0x1e
	.byte	0xa5
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0xa5
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1b
	.byte	0x1e
	.byte	0x9f
	.byte	0
.LVUS51:
	.uleb128 .LVU385
	.uleb128 .LVU412
.LLST51:
	.byte	0x4
	.uleb128 .LVL82-.Ltext0
	.uleb128 .LVL84-.Ltext0
	.uleb128 0x1
	.byte	0x65
	.byte	0
.LVUS45:
	.uleb128 .LVU336
	.uleb128 .LVU340
.LLST45:
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LVL71-.Ltext0
	.uleb128 0x1
	.byte	0x6e
	.byte	0
.LVUS46:
	.uleb128 .LVU336
	.uleb128 .LVU343
.LLST46:
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LVL72-.Ltext0
	.uleb128 0x1
	.byte	0x63
	.byte	0
.LVUS47:
	.uleb128 .LVU338
	.uleb128 .LVU343
.LLST47:
	.byte	0x4
	.uleb128 .LVL70-.Ltext0
	.uleb128 .LVL72-.Ltext0
	.uleb128 0xc
	.byte	0xa5
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x4
	.long	0x3f000000
	.byte	0x1e
	.byte	0x9f
	.byte	0
.LVUS52:
	.uleb128 .LVU345
	.uleb128 .LVU349
.LLST52:
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LVL73-.Ltext0
	.uleb128 0x1
	.byte	0x62
	.byte	0
.LVUS53:
	.uleb128 .LVU345
	.uleb128 .LVU352
.LLST53:
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LVL74-.Ltext0
	.uleb128 0x1
	.byte	0x63
	.byte	0
.LVUS54:
	.uleb128 .LVU347
	.uleb128 .LVU352
.LLST54:
	.byte	0x4
	.uleb128 .LVL72-.Ltext0
	.uleb128 .LVL74-.Ltext0
	.uleb128 0xc
	.byte	0xa5
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x4
	.long	0x3f000000
	.byte	0x1e
	.byte	0x9f
	.byte	0
.LVUS55:
	.uleb128 .LVU354
	.uleb128 .LVU358
.LLST55:
	.byte	0x4
	.uleb128 .LVL74-.Ltext0
	.uleb128 .LVL75-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0
.LVUS56:
	.uleb128 .LVU354
	.uleb128 .LVU361
.LLST56:
	.byte	0x4
	.uleb128 .LVL74-.Ltext0
	.uleb128 .LVL76-.Ltext0
	.uleb128 0x1
	.byte	0x63
	.byte	0
.LVUS57:
	.uleb128 .LVU356
	.uleb128 .LVU361
.LLST57:
	.byte	0x4
	.uleb128 .LVL74-.Ltext0
	.uleb128 .LVL76-.Ltext0
	.uleb128 0xc
	.byte	0xa5
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x4
	.long	0x3f000000
	.byte	0x1e
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU174
	.uleb128 .LVU174
	.uleb128 .LVU266
	.uleb128 .LVU266
	.uleb128 .LVU270
	.uleb128 .LVU270
	.uleb128 .LVU288
	.uleb128 .LVU288
	.uleb128 0
.LLST10:
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
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
	.uleb128 .LVL52-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL52-.Ltext0
	.uleb128 .LFE6561-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU174
	.uleb128 .LVU174
	.uleb128 .LVU265
	.uleb128 .LVU265
	.uleb128 .LVU269
	.uleb128 .LVU269
	.uleb128 .LVU270
	.uleb128 .LVU270
	.uleb128 .LVU287
	.uleb128 .LVU287
	.uleb128 .LVU290
	.uleb128 .LVU290
	.uleb128 0
.LLST11:
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL42-.Ltext0
	.uleb128 0x2
	.byte	0x77
	.sleb128 16
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL46-.Ltext0
	.uleb128 0x7
	.byte	0x76
	.sleb128 -40
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x40
	.byte	0x1c
	.byte	0x4
	.uleb128 .LVL46-.Ltext0
	.uleb128 .LVL47-.Ltext0
	.uleb128 0x7
	.byte	0x77
	.sleb128 -48
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x40
	.byte	0x1c
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0x2
	.byte	0x77
	.sleb128 16
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL54-.Ltext0
	.uleb128 0x7
	.byte	0x76
	.sleb128 -40
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x40
	.byte	0x1c
	.byte	0x4
	.uleb128 .LVL54-.Ltext0
	.uleb128 .LFE6561-.Ltext0
	.uleb128 0x7
	.byte	0x77
	.sleb128 -48
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x40
	.byte	0x1c
	.byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU174
	.uleb128 .LVU174
	.uleb128 .LVU265
	.uleb128 .LVU265
	.uleb128 .LVU269
	.uleb128 .LVU269
	.uleb128 .LVU270
	.uleb128 .LVU270
	.uleb128 .LVU287
	.uleb128 .LVU287
	.uleb128 .LVU290
	.uleb128 .LVU290
	.uleb128 0
.LLST12:
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL42-.Ltext0
	.uleb128 0x2
	.byte	0x77
	.sleb128 8
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL46-.Ltext0
	.uleb128 0x7
	.byte	0x76
	.sleb128 -40
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x48
	.byte	0x1c
	.byte	0x4
	.uleb128 .LVL46-.Ltext0
	.uleb128 .LVL47-.Ltext0
	.uleb128 0x7
	.byte	0x77
	.sleb128 -48
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x48
	.byte	0x1c
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LVL51-.Ltext0
	.uleb128 0x2
	.byte	0x77
	.sleb128 8
	.byte	0x4
	.uleb128 .LVL51-.Ltext0
	.uleb128 .LVL54-.Ltext0
	.uleb128 0x7
	.byte	0x76
	.sleb128 -40
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x48
	.byte	0x1c
	.byte	0x4
	.uleb128 .LVL54-.Ltext0
	.uleb128 .LFE6561-.Ltext0
	.uleb128 0x7
	.byte	0x77
	.sleb128 -48
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x48
	.byte	0x1c
	.byte	0
.LVUS13:
	.uleb128 .LVU164
	.uleb128 .LVU174
	.uleb128 .LVU174
	.uleb128 .LVU207
	.uleb128 .LVU207
	.uleb128 .LVU209
	.uleb128 .LVU209
	.uleb128 .LVU225
	.uleb128 .LVU225
	.uleb128 .LVU242
	.uleb128 .LVU242
	.uleb128 .LVU265
	.uleb128 .LVU265
	.uleb128 .LVU269
	.uleb128 .LVU269
	.uleb128 .LVU270
	.uleb128 .LVU270
	.uleb128 0
.LLST13:
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL26-.Ltext0
	.uleb128 0x2
	.byte	0x77
	.sleb128 28
	.byte	0x4
	.uleb128 .LVL26-.Ltext0
	.uleb128 .LVL27-.Ltext0
	.uleb128 0x1
	.byte	0x65
	.byte	0x4
	.uleb128 .LVL27-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x2
	.byte	0x77
	.sleb128 28
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0x1
	.byte	0x65
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL42-.Ltext0
	.uleb128 0xe
	.byte	0x77
	.sleb128 28
	.byte	0xa6
	.byte	0x4
	.uleb128 0x2e
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x4
	.long	0x3983126f
	.byte	0x1e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL46-.Ltext0
	.uleb128 0x13
	.byte	0x76
	.sleb128 -40
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x34
	.byte	0x1c
	.byte	0xa6
	.byte	0x4
	.uleb128 0x2e
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x4
	.long	0x3983126f
	.byte	0x1e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL46-.Ltext0
	.uleb128 .LVL47-.Ltext0
	.uleb128 0x13
	.byte	0x77
	.sleb128 -48
	.byte	0x9
	.byte	0xe0
	.byte	0x1a
	.byte	0x34
	.byte	0x1c
	.byte	0xa6
	.byte	0x4
	.uleb128 0x2e
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x4
	.long	0x3983126f
	.byte	0x1e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LFE6561-.Ltext0
	.uleb128 0x1
	.byte	0x65
	.byte	0
.LVUS14:
	.uleb128 .LVU164
	.uleb128 .LVU174
	.uleb128 .LVU174
	.uleb128 .LVU211
	.uleb128 .LVU211
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU227
	.uleb128 .LVU227
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 .LVU267
	.uleb128 .LVU270
	.uleb128 0
.LLST14:
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL28-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL28-.Ltext0
	.uleb128 .LVL29-.Ltext0
	.uleb128 0x1
	.byte	0x68
	.byte	0x4
	.uleb128 .LVL29-.Ltext0
	.uleb128 .LVL33-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
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
	.long	0x3983126f
	.byte	0x1e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LFE6561-.Ltext0
	.uleb128 0x1
	.byte	0x64
	.byte	0
.LVUS15:
	.uleb128 .LVU164
	.uleb128 .LVU174
	.uleb128 .LVU174
	.uleb128 .LVU214
	.uleb128 .LVU214
	.uleb128 .LVU225
	.uleb128 .LVU225
	.uleb128 .LVU229
	.uleb128 .LVU229
	.uleb128 .LVU245
	.uleb128 .LVU245
	.uleb128 .LVU270
	.uleb128 .LVU270
	.uleb128 0
.LLST15:
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL30-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL30-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x1
	.byte	0x65
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x1
	.byte	0x68
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL39-.Ltext0
	.uleb128 0x1
	.byte	0x63
	.byte	0x4
	.uleb128 .LVL39-.Ltext0
	.uleb128 .LVL47-.Ltext0
	.uleb128 0xc
	.byte	0xa5
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x4
	.long	0x3983126f
	.byte	0x1e
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LFE6561-.Ltext0
	.uleb128 0x1
	.byte	0x63
	.byte	0
.LVUS16:
	.uleb128 .LVU164
	.uleb128 .LVU174
	.uleb128 .LVU174
	.uleb128 .LVU216
	.uleb128 .LVU216
	.uleb128 .LVU227
	.uleb128 .LVU227
	.uleb128 .LVU268
	.uleb128 .LVU270
	.uleb128 .LVU289
.LLST16:
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL33-.Ltext0
	.uleb128 0x1
	.byte	0x64
	.byte	0x4
	.uleb128 .LVL33-.Ltext0
	.uleb128 .LVL45-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LVL53-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS17:
	.uleb128 .LVU239
	.uleb128 .LVU243
	.uleb128 .LVU270
	.uleb128 0
.LLST17:
	.byte	0x4
	.uleb128 .LVL35-.Ltext0
	.uleb128 .LVL37-.Ltext0
	.uleb128 0x1
	.byte	0x62
	.byte	0x4
	.uleb128 .LVL47-.Ltext0
	.uleb128 .LFE6561-.Ltext0
	.uleb128 0x1
	.byte	0x62
	.byte	0
.LVUS19:
	.uleb128 .LVU166
	.uleb128 .LVU174
	.uleb128 .LVU174
	.uleb128 .LVU204
	.uleb128 .LVU204
	.uleb128 .LVU217
.LLST19:
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL21-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL21-.Ltext0
	.uleb128 .LVL25-.Ltext0
	.uleb128 0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL25-.Ltext0
	.uleb128 .LVL31-.Ltext0
	.uleb128 0x5
	.byte	0x7c
	.sleb128 -4
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0
.LVUS21:
	.uleb128 .LVU241
	.uleb128 .LVU247
	.uleb128 .LVU270
	.uleb128 .LVU271
	.uleb128 .LVU271
	.uleb128 .LVU284
	.uleb128 .LVU284
	.uleb128 .LVU285
	.uleb128 .LVU285
	.uleb128 0
.LLST21:
	.byte	0x4
	.uleb128 .LVL35-.Ltext0
	.uleb128 .LVL40-.Ltext0
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
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL49-.Ltext0
	.uleb128 .LVL50-.Ltext0
	.uleb128 0x7
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL50-.Ltext0
	.uleb128 .LFE6561-.Ltext0
	.uleb128 0x7
	.byte	0x70
	.sleb128 -4
	.byte	0x32
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 .LVU17
	.uleb128 .LVU17
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
	.uleb128 .LFE6560-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 0
.LLST1:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x1
	.byte	0x61
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LFE6560-.Ltext0
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU10
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LFE6560-.Ltext0
	.uleb128 0x1
	.byte	0x65
	.byte	0
.LVUS3:
	.uleb128 .LVU12
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU33
	.uleb128 .LVU159
	.uleb128 0
.LLST3:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LFE6560-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS5:
	.uleb128 .LVU14
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU159
	.uleb128 .LVU159
	.uleb128 0
.LLST5:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL5-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL17-.Ltext0
	.uleb128 0x3
	.byte	0x76
	.sleb128 -228
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LFE6560-.Ltext0
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS7:
	.uleb128 .LVU26
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU161
.LLST7:
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL6-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL19-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS9:
	.uleb128 .LVU33
	.uleb128 .LVU37
	.uleb128 .LVU117
	.uleb128 .LVU122
	.uleb128 .LVU122
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 .LVU156
	.uleb128 .LVU156
	.uleb128 .LVU157
.LLST9:
	.byte	0x4
	.uleb128 .LVL6-.Ltext0
	.uleb128 .LVL7-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL12-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL13-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL14-.Ltext0
	.uleb128 .LVL15-.Ltext0
	.uleb128 0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL15-.Ltext0
	.uleb128 .LVL16-.Ltext0
	.uleb128 0x1
	.byte	0x58
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
	.uleb128 .LBB21-.Ltext0
	.uleb128 .LBE21-.Ltext0
	.byte	0x4
	.uleb128 .LBB31-.Ltext0
	.uleb128 .LBE31-.Ltext0
	.byte	0x4
	.uleb128 .LBB32-.Ltext0
	.uleb128 .LBE32-.Ltext0
	.byte	0
.LLRL6:
	.byte	0x4
	.uleb128 .LBB22-.Ltext0
	.uleb128 .LBE22-.Ltext0
	.byte	0x4
	.uleb128 .LBB29-.Ltext0
	.uleb128 .LBE29-.Ltext0
	.byte	0x4
	.uleb128 .LBB30-.Ltext0
	.uleb128 .LBE30-.Ltext0
	.byte	0
.LLRL8:
	.byte	0x4
	.uleb128 .LBB23-.Ltext0
	.uleb128 .LBE23-.Ltext0
	.byte	0x4
	.uleb128 .LBB24-.Ltext0
	.uleb128 .LBE24-.Ltext0
	.byte	0x4
	.uleb128 .LBB25-.Ltext0
	.uleb128 .LBE25-.Ltext0
	.byte	0x4
	.uleb128 .LBB26-.Ltext0
	.uleb128 .LBE26-.Ltext0
	.byte	0x4
	.uleb128 .LBB27-.Ltext0
	.uleb128 .LBE27-.Ltext0
	.byte	0x4
	.uleb128 .LBB28-.Ltext0
	.uleb128 .LBE28-.Ltext0
	.byte	0
.LLRL18:
	.byte	0x4
	.uleb128 .LBB33-.Ltext0
	.uleb128 .LBE33-.Ltext0
	.byte	0x4
	.uleb128 .LBB34-.Ltext0
	.uleb128 .LBE34-.Ltext0
	.byte	0
.LLRL20:
	.byte	0x4
	.uleb128 .LBB35-.Ltext0
	.uleb128 .LBE35-.Ltext0
	.byte	0x4
	.uleb128 .LBB36-.Ltext0
	.uleb128 .LBE36-.Ltext0
	.byte	0x4
	.uleb128 .LBB37-.Ltext0
	.uleb128 .LBE37-.Ltext0
	.byte	0
.LLRL31:
	.byte	0x4
	.uleb128 .LBB38-.Ltext0
	.uleb128 .LBE38-.Ltext0
	.byte	0x4
	.uleb128 .LBB67-.Ltext0
	.uleb128 .LBE67-.Ltext0
	.byte	0x4
	.uleb128 .LBB68-.Ltext0
	.uleb128 .LBE68-.Ltext0
	.byte	0
.LLRL33:
	.byte	0x4
	.uleb128 .LBB39-.Ltext0
	.uleb128 .LBE39-.Ltext0
	.byte	0x4
	.uleb128 .LBB65-.Ltext0
	.uleb128 .LBE65-.Ltext0
	.byte	0x4
	.uleb128 .LBB66-.Ltext0
	.uleb128 .LBE66-.Ltext0
	.byte	0
.LLRL37:
	.byte	0x4
	.uleb128 .LBB40-.Ltext0
	.uleb128 .LBE40-.Ltext0
	.byte	0x4
	.uleb128 .LBB60-.Ltext0
	.uleb128 .LBE60-.Ltext0
	.byte	0x4
	.uleb128 .LBB61-.Ltext0
	.uleb128 .LBE61-.Ltext0
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
.LLRL39:
	.byte	0x4
	.uleb128 .LBB41-.Ltext0
	.uleb128 .LBE41-.Ltext0
	.byte	0x4
	.uleb128 .LBB56-.Ltext0
	.uleb128 .LBE56-.Ltext0
	.byte	0x4
	.uleb128 .LBB57-.Ltext0
	.uleb128 .LBE57-.Ltext0
	.byte	0x4
	.uleb128 .LBB58-.Ltext0
	.uleb128 .LBE58-.Ltext0
	.byte	0x4
	.uleb128 .LBB59-.Ltext0
	.uleb128 .LBE59-.Ltext0
	.byte	0
.LLRL44:
	.byte	0x4
	.uleb128 .LBB42-.Ltext0
	.uleb128 .LBE42-.Ltext0
	.byte	0x4
	.uleb128 .LBB47-.Ltext0
	.uleb128 .LBE47-.Ltext0
	.byte	0x4
	.uleb128 .LBB49-.Ltext0
	.uleb128 .LBE49-.Ltext0
	.byte	0x4
	.uleb128 .LBB50-.Ltext0
	.uleb128 .LBE50-.Ltext0
	.byte	0
.LLRL48:
	.byte	0x4
	.uleb128 .LBB48-.Ltext0
	.uleb128 .LBE48-.Ltext0
	.byte	0x4
	.uleb128 .LBB55-.Ltext0
	.uleb128 .LBE55-.Ltext0
	.byte	0
.LLRL68:
	.byte	0x4
	.uleb128 .LBB69-.Ltext0
	.uleb128 .LBE69-.Ltext0
	.byte	0x4
	.uleb128 .LBB84-.Ltext0
	.uleb128 .LBE84-.Ltext0
	.byte	0x4
	.uleb128 .LBB85-.Ltext0
	.uleb128 .LBE85-.Ltext0
	.byte	0x4
	.uleb128 .LBB86-.Ltext0
	.uleb128 .LBE86-.Ltext0
	.byte	0x4
	.uleb128 .LBB87-.Ltext0
	.uleb128 .LBE87-.Ltext0
	.byte	0
.LLRL70:
	.byte	0x4
	.uleb128 .LBB70-.Ltext0
	.uleb128 .LBE70-.Ltext0
	.byte	0x4
	.uleb128 .LBB74-.Ltext0
	.uleb128 .LBE74-.Ltext0
	.byte	0x4
	.uleb128 .LBB81-.Ltext0
	.uleb128 .LBE81-.Ltext0
	.byte	0
.LLRL72:
	.byte	0x4
	.uleb128 .LBB75-.Ltext0
	.uleb128 .LBE75-.Ltext0
	.byte	0x4
	.uleb128 .LBB82-.Ltext0
	.uleb128 .LBE82-.Ltext0
	.byte	0
.LLRL74:
	.byte	0x4
	.uleb128 .LBB78-.Ltext0
	.uleb128 .LBE78-.Ltext0
	.byte	0x4
	.uleb128 .LBB83-.Ltext0
	.uleb128 .LBE83-.Ltext0
	.byte	0
.LLRL76:
	.byte	0x4
	.uleb128 .LBB88-.Ltext0
	.uleb128 .LBE88-.Ltext0
	.byte	0x4
	.uleb128 .LBB89-.Ltext0
	.uleb128 .LBE89-.Ltext0
	.byte	0x4
	.uleb128 .LBB90-.Ltext0
	.uleb128 .LBE90-.Ltext0
	.byte	0x4
	.uleb128 .LBB91-.Ltext0
	.uleb128 .LBE91-.Ltext0
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
.LASF13:
	.string	"short int"
.LASF33:
	.string	"rij2"
.LASF10:
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
.LASF45:
	.string	"rand"
.LASF37:
	.string	"init_vel"
.LASF26:
	.string	"sumv2"
.LASF2:
	.string	"float"
.LASF9:
	.string	"long long int"
.LASF20:
	.string	"memset"
.LASF18:
	.string	"_Float16"
.LASF17:
	.string	"unsigned char"
.LASF16:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
.LASF11:
	.string	"unsigned int"
.LASF38:
	.string	"sumvx"
.LASF39:
	.string	"sumvy"
.LASF40:
	.string	"sumvz"
.LASF32:
	.string	"pres_vir"
.LASF46:
	.string	"half_cell_length"
.LASF14:
	.string	"char"
.LASF7:
	.string	"long int"
.LASF41:
	.string	"init_pos"
.LASF15:
	.string	"short unsigned int"
.LASF29:
	.string	"velocity_verlet"
.LASF8:
	.string	"long unsigned int"
.LASF3:
	.string	"double"
.LASF6:
	.string	"Forces"
.LASF47:
	.string	"__builtin_memset"
.LASF21:
	.string	"sqrt"
.LASF42:
	.string	"rcut2"
.LASF19:
	.string	"__bf16"
.LASF25:
	.string	"pres"
.LASF24:
	.string	"ekin"
.LASF44:
	.ascii	"GNU C11 14.2.0 -march=znver3 -mmmx -mpopcnt -msse -msse2 -ms"
	.ascii	"se3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -msse4a -mno-fma4"
	.ascii	" -mno-xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul -mn"
	.ascii	"o-avx512vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mno-av"
	.ascii	"x512vbmi -mno-avx512ifma -mno-avx512vpopcntdq -mno-avx512vbm"
	.ascii	"i2 -mno-gfni -mvpclmulqdq -mno-avx512vnni -mno-avx512bitalg "
	.ascii	"-mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -ma"
	.ascii	"bm -mno-cldemote -mclflushopt -mclwb -mclzero -mcx16 -mno-en"
	.ascii	"qcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzc"
	.ascii	"nt -mmovbe -mno-movdir64b -mno-movdiri -mmwaitx -mno-pconfig"
	.ascii	" -mpku -mprfchw -mno-ptwrite -mrdpid -mrdrnd -mrdseed -mno-r"
	.ascii	"tm -mno-serialize -mno-sgx -msha -mshstk -mno-tbm -mno-tsxld"
	.ascii	"trk -mvaes -mno-waitpkg -mwbnoinvd -mxsave -mxsavec -mxsaveo"
	.ascii	"pt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-u"
	.ascii	"intr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni -mno-avx51"
	.ascii	"2fp16 -mno-avxifma -mno-avxvnniint8 -mno-avxneconvert -mno-c"
	.ascii	"mpccxadd -mno-amx-fp16 -mno-prefetchi -mno-raoint -mno-amx-c"
	.ascii	"omplex -mno-avxvnniint16 -mno-sm3 -mno-sha512 -mno-sm4 -mno-"
	.ascii	"apxf -mno-us"
	.string	"ermsr --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=512 -mtune=znver3 -g -O3 -std=c11 -ffast-math -fno-signed-zeros -fno-trapping-math -ffinite-math-only -funsafe-math-optimizations -fopt-info-vec -fasynchronous-unwind-tables"
.LASF30:
	.string	"forces"
.LASF23:
	.string	"epot"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"core.c"
.LASF1:
	.string	"/users/cp2025/cp2025_033/lab2"
	.ident	"GCC: (Debian 14.2.0-16) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
