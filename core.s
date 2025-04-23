	.file	"core.c"
	.text
	.p2align 4
	.globl	init_pos
	.type	init_pos, @function
init_pos:
.LFB6445:
	.cfi_startproc
	endbr64
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r14
	pushq	%r13
	pushq	%r12
	.cfi_escape 0x10,0xe,0x2,0x76,0x78
	.cfi_escape 0x10,0xd,0x2,0x76,0x70
	.cfi_escape 0x10,0xc,0x2,0x76,0x68
	movq	%rdi, %r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x60,0x6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x58
	vmovsd	.LC0(%rip), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	call	cbrt@PLT
	movq	32(%r12), %r10
	movq	(%r12), %rbx
	xorl	%r11d, %r11d
	vcvtsd2ss	%xmm0, %xmm0, %xmm2
	vcvtss2sd	%xmm2, %xmm2, %xmm6
	vmovddup	%xmm6, %xmm0
	vshufps	$0, %xmm2, %xmm2, %xmm4
	vmulpd	.LC7(%rip), %xmm0, %xmm1
	vaddss	%xmm2, %xmm2, %xmm15
	vmovsd	%xmm6, -56(%rbp)
	movq	64(%r12), %r9
	vmulpd	.LC8(%rip), %xmm0, %xmm0
	vmulps	.LC6(%rip), %xmm4, %xmm4
	vmulss	.LC2(%rip), %xmm2, %xmm14
	vmulss	.LC1(%rip), %xmm2, %xmm13
	vmulss	.LC3(%rip), %xmm2, %xmm11
	vmulss	.LC4(%rip), %xmm2, %xmm12
	vinsertf128	$0x1, %xmm0, %ymm1, %ymm0
	vcvtpd2psy	%ymm0, %xmm0
	vpermilps	$0, %xmm4, %xmm9
	vpermilps	$0, %xmm0, %xmm5
	vpermilps	$85, %xmm0, %xmm3
	vpermilps	$170, %xmm0, %xmm1
	vpermilps	$85, %xmm4, %xmm8
	vpermilps	$170, %xmm4, %xmm7
	vunpcklps	%xmm5, %xmm9, %xmm6
	vpermilps	$255, %xmm0, %xmm0
	vpermilps	$255, %xmm4, %xmm4
	vmulss	.LC5(%rip), %xmm2, %xmm10
	vunpckhps	%xmm5, %xmm9, %xmm9
	vunpcklps	%xmm3, %xmm8, %xmm5
	vmovaps	%xmm6, -80(%rbp)
	vunpckhps	%xmm3, %xmm8, %xmm8
	vunpcklps	%xmm1, %xmm7, %xmm3
	vmovaps	%xmm5, -96(%rbp)
	vunpckhps	%xmm1, %xmm7, %xmm5
	vmovaps	%xmm3, -112(%rbp)
	vunpcklps	%xmm15, %xmm15, %xmm1
	vunpcklps	%xmm0, %xmm4, %xmm3
	vunpckhps	%xmm0, %xmm4, %xmm4
	vunpcklps	%xmm14, %xmm14, %xmm0
	vmovaps	%xmm3, -144(%rbp)
	vunpcklps	%xmm13, %xmm13, %xmm3
	vmovd	%xmm11, %r14d
	vmovlhps	%xmm1, %xmm0, %xmm0
	vunpcklps	%xmm2, %xmm2, %xmm1
	vmovaps	%xmm5, -128(%rbp)
	vunpcklps	%xmm11, %xmm11, %xmm5
	vmovlhps	%xmm1, %xmm3, %xmm3
	vxorps	%xmm6, %xmm6, %xmm6
	vinsertf128	$0x1, %xmm0, %ymm3, %ymm3
	vunpcklps	%xmm12, %xmm12, %xmm0
	vmovlhps	%xmm0, %xmm5, %xmm5
.L2:
	vcvtsi2sdl	%r11d, %xmm6, %xmm1
	movq	%rbx, %rax
	movq	%r10, %rdx
	addq	$256, %rbx
	movq	%r9, %rcx
	vcvtsi2ssl	%r11d, %xmm6, %xmm0
	movq	%r10, %rdi
	movq	%r9, %rsi
	addq	$256, %r10
	addq	$256, %r9
	cmpq	%rbx, %rdx
	setnb	%r12b
	cmpq	%r10, %rax
	vaddsd	.LC10(%rip), %xmm1, %xmm7
	setnb	%r8b
	vmulss	%xmm2, %xmm0, %xmm0
	orl	%r8d, %r12d
	cmpq	%rbx, %rcx
	setnb	%r13b
	cmpq	%r9, %rax
	vmulsd	-56(%rbp), %xmm7, %xmm7
	setnb	%r8b
	orl	%r13d, %r8d
	vcvtsd2ss	%xmm7, %xmm7, %xmm7
	testb	%r8b, %r12b
	je	.L8
	cmpq	%r10, %rcx
	setnb	%r12b
	cmpq	%r9, %rdx
	setnb	%r8b
	orb	%r12b, %r8b
	je	.L8
	vunpcklps	%xmm0, %xmm7, %xmm1
	vunpcklps	%xmm7, %xmm0, %xmm0
	vmovaps	-80(%rbp), %xmm7
	movq	$0, (%rcx)
	vmovlhps	%xmm1, %xmm0, %xmm0
	movq	$0, 64(%rcx)
	vmovaps	-96(%rbp), %xmm1
	movq	$0, 128(%rcx)
	movq	$0, 192(%rcx)
	vmovups	%xmm0, (%rax)
	vmovups	%xmm0, 16(%rax)
	vmovups	%xmm0, 32(%rax)
	vmovups	%xmm0, 48(%rax)
	vmovups	%xmm0, 64(%rax)
	vmovups	%xmm0, 80(%rax)
	vmovups	%xmm0, 96(%rax)
	vmovups	%xmm0, 112(%rax)
	vmovups	%xmm0, 128(%rax)
	vmovups	%xmm0, 144(%rax)
	vmovups	%xmm0, 160(%rax)
	vmovups	%xmm0, 176(%rax)
	vmovups	%xmm0, 192(%rax)
	vmovups	%xmm0, 208(%rax)
	vmovups	%xmm0, 224(%rax)
	vmovups	%xmm0, 240(%rax)
	vmovsldup	%xmm10, %xmm0
	vmovups	%xmm7, (%rdx)
	vmovups	%xmm7, 32(%rdx)
	vmovaps	-112(%rbp), %xmm7
	vmovups	%xmm9, 16(%rdx)
	vmovups	%xmm7, 128(%rdx)
	vmovups	%xmm9, 48(%rdx)
	vmovups	%xmm1, 64(%rdx)
	vmovups	%xmm8, 80(%rdx)
	vmovups	%xmm1, 96(%rdx)
	vmovups	%xmm8, 112(%rdx)
	vmovaps	-128(%rbp), %xmm1
	vmovups	%xmm7, 160(%rdx)
	vmovaps	-144(%rbp), %xmm7
	vmovups	%xmm1, 144(%rdx)
	vmovups	%xmm1, 176(%rdx)
	vmovups	%xmm7, 192(%rdx)
	vmovups	%xmm4, 208(%rdx)
	vmovups	%xmm7, 224(%rdx)
	vmovups	%xmm4, 240(%rdx)
	vmovups	%ymm3, 8(%rcx)
	vmovups	%xmm5, 40(%rcx)
	vmovlps	%xmm0, 56(%rcx)
	vmovups	%ymm3, 72(%rcx)
	vmovups	%xmm5, 104(%rcx)
	vmovlps	%xmm0, 120(%rcx)
	vmovups	%ymm3, 136(%rcx)
	vmovups	%xmm5, 168(%rcx)
	vmovlps	%xmm0, 184(%rcx)
	vmovups	%ymm3, 200(%rcx)
	vmovups	%xmm5, 232(%rcx)
	vmovlps	%xmm0, 248(%rcx)
.L4:
	incl	%r11d
	cmpl	$4, %r11d
	jne	.L2
	vzeroupper
	addq	$136, %rsp
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
.L8:
	.cfi_restore_state
	xorl	%edx, %edx
	vmovaps	%xmm4, -160(%rbp)
.L3:
	vcvtsi2ssl	%edx, %xmm6, %xmm1
	vmovss	%xmm0, (%rax)
	addq	$64, %rdi
	addq	$64, %rax
	addq	$64, %rsi
	vmulss	%xmm2, %xmm1, %xmm4
	vcvtsi2sdl	%edx, %xmm6, %xmm1
	incl	%edx
	vaddsd	.LC10(%rip), %xmm1, %xmm11
	vmovss	%xmm4, -64(%rdi)
	movl	$0x00000000, -64(%rsi)
	vmulsd	-56(%rbp), %xmm11, %xmm11
	vmovss	%xmm7, -60(%rax)
	vcvtsd2ss	%xmm11, %xmm11, %xmm11
	vmovss	%xmm11, -60(%rdi)
	movl	$0x00000000, -60(%rsi)
	vmovss	%xmm7, -56(%rax)
	vmovss	%xmm4, -56(%rdi)
	vmovss	%xmm13, -56(%rsi)
	vmovss	%xmm0, -52(%rax)
	vmovss	%xmm11, -52(%rdi)
	vmovss	%xmm13, -52(%rsi)
	vmovss	%xmm0, -48(%rax)
	vmovss	%xmm4, -48(%rdi)
	vmovss	%xmm2, -48(%rsi)
	vmovss	%xmm7, -44(%rax)
	vmovss	%xmm11, -44(%rdi)
	vmovss	%xmm2, -44(%rsi)
	vmovss	%xmm7, -40(%rax)
	vmovss	%xmm4, -40(%rdi)
	vmovss	%xmm14, -40(%rsi)
	vmovss	%xmm0, -36(%rax)
	vmovss	%xmm11, -36(%rdi)
	vmovss	%xmm14, -36(%rsi)
	vmovss	%xmm0, -32(%rax)
	vmovss	%xmm4, -32(%rdi)
	vmovss	%xmm15, -32(%rsi)
	vmovss	%xmm7, -28(%rax)
	vmovss	%xmm11, -28(%rdi)
	vmovss	%xmm15, -28(%rsi)
	vmovss	%xmm7, -24(%rax)
	vmovss	%xmm4, -24(%rdi)
	movl	%r14d, -24(%rsi)
	vmovss	%xmm0, -20(%rax)
	vmovss	%xmm11, -20(%rdi)
	movl	%r14d, -20(%rsi)
	vmovss	%xmm0, -16(%rax)
	vmovss	%xmm4, -16(%rdi)
	vmovss	%xmm12, -16(%rsi)
	vmovss	%xmm7, -12(%rax)
	vmovss	%xmm11, -12(%rdi)
	vmovss	%xmm12, -12(%rsi)
	vmovss	%xmm7, -8(%rax)
	vmovss	%xmm4, -8(%rdi)
	vmovss	%xmm10, -8(%rsi)
	vmovss	%xmm0, -4(%rax)
	vmovss	%xmm11, -4(%rdi)
	vmovss	%xmm10, -4(%rsi)
	cmpl	$4, %edx
	jne	.L3
	vmovaps	-160(%rbp), %xmm4
	jmp	.L4
	.cfi_endproc
.LFE6445:
	.size	init_pos, .-init_pos
	.p2align 4
	.globl	init_vel
	.type	init_vel, @function
init_vel:
.LFB6446:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	.cfi_offset 15, -24
	xorl	%r15d, %r15d
	pushq	%r14
	.cfi_offset 14, -32
	xorl	%r14d, %r14d
	pushq	%r13
	.cfi_offset 13, -40
	xorl	%r13d, %r13d
	pushq	%r12
	.cfi_offset 12, -48
	xorl	%r12d, %r12d
	pushq	%rbx
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	andq	$-32, %rsp
	subq	$32, %rsp
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movl	$0x00000000, 28(%rsp)
	.p2align 4,,10
	.p2align 3
.L17:
	call	rand@PLT
	vxorps	%xmm5, %xmm5, %xmm5
	vmovss	.LC12(%rip), %xmm6
	movl	%eax, %ecx
	movq	(%rbx), %rax
	vcvtsi2ssl	%ecx, %xmm5, %xmm0
	addq	%r12, %rax
	vfmadd132ss	.LC11(%rip), %xmm6, %xmm0
	vmovss	%xmm0, (%rax)
	call	rand@PLT
	vxorps	%xmm5, %xmm5, %xmm5
	vmovss	.LC12(%rip), %xmm7
	movl	%eax, %ecx
	movq	32(%rbx), %rax
	vcvtsi2ssl	%ecx, %xmm5, %xmm0
	addq	%r12, %rax
	vfmadd132ss	.LC11(%rip), %xmm7, %xmm0
	vmovss	%xmm0, (%rax)
	call	rand@PLT
	vxorps	%xmm5, %xmm5, %xmm5
	vmovss	.LC12(%rip), %xmm3
	movq	32(%rbx), %rsi
	movl	%eax, %ecx
	movq	64(%rbx), %rax
	vmovd	%r15d, %xmm6
	vcvtsi2ssl	%ecx, %xmm5, %xmm0
	movq	(%rbx), %rcx
	vfmadd132ss	.LC11(%rip), %xmm3, %xmm0
	vmovd	%r13d, %xmm3
	vmovss	%xmm0, (%rax,%r12)
	vmovss	(%rsi,%r12), %xmm2
	vmovss	(%rcx,%r12), %xmm1
	addq	$4, %r12
	vaddss	%xmm2, %xmm3, %xmm7
	vmulss	%xmm2, %xmm2, %xmm2
	vaddss	28(%rsp), %xmm1, %xmm4
	vmovd	%xmm7, %r13d
	vmovd	%r14d, %xmm7
	vmovss	%xmm4, 28(%rsp)
	vaddss	%xmm0, %xmm6, %xmm4
	vfmadd132ss	%xmm0, %xmm7, %xmm0
	vfmadd132ss	%xmm1, %xmm2, %xmm1
	vmovd	%xmm4, %r15d
	vaddss	%xmm0, %xmm1, %xmm3
	vmovd	%xmm3, %r14d
	cmpq	$1024, %r12
	jne	.L17
	vmovss	.LC13(%rip), %xmm2
	vmovd	%r13d, %xmm1
	movq	16(%rsp), %rdi
	movq	8(%rsp), %rdx
	vmulss	%xmm2, %xmm1, %xmm3
	vmovd	%r15d, %xmm1
	vmulss	28(%rsp), %xmm2, %xmm4
	vmulss	%xmm2, %xmm1, %xmm2
	vmovd	%r14d, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm0
	vmulsd	.LC14(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rdi)
	vmulss	.LC1(%rip), %xmm1, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovss	%xmm0, (%rdx)
	leaq	31(%rsi), %rdx
	vcvtss2sd	(%rdi), %xmm1, %xmm0
	vmovsd	.LC15(%rip), %xmm1
	movq	%rdx, %rdi
	subq	%rax, %rdi
	vdivsd	%xmm0, %xmm1, %xmm1
	cmpq	$62, %rdi
	seta	%dil
	subq	%rcx, %rdx
	cmpq	$62, %rdx
	seta	%dl
	vsqrtsd	%xmm1, %xmm1, %xmm1
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
	testb	%dl, %dil
	je	.L21
	leaq	31(%rcx), %rdx
	subq	%rax, %rdx
	cmpq	$62, %rdx
	jbe	.L21
	vbroadcastss	%xmm4, %ymm4
	vbroadcastss	%xmm1, %ymm1
	vbroadcastss	%xmm3, %ymm3
	xorl	%edx, %edx
	vbroadcastss	%xmm2, %ymm2
	.p2align 4,,10
	.p2align 3
.L19:
	vmovups	(%rcx,%rdx), %ymm6
	vsubps	%ymm4, %ymm6, %ymm0
	vmulps	%ymm1, %ymm0, %ymm0
	vmovups	%ymm0, (%rcx,%rdx)
	vmovups	(%rsi,%rdx), %ymm7
	vsubps	%ymm3, %ymm7, %ymm0
	vmulps	%ymm1, %ymm0, %ymm0
	vmovups	%ymm0, (%rsi,%rdx)
	vmovups	(%rax,%rdx), %ymm6
	vsubps	%ymm2, %ymm6, %ymm0
	vmulps	%ymm1, %ymm0, %ymm0
	vmovups	%ymm0, (%rax,%rdx)
	addq	$32, %rdx
	cmpq	$1024, %rdx
	jne	.L19
	vzeroupper
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L21:
	.cfi_restore_state
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L18:
	vmovss	(%rcx,%rdx), %xmm0
	vsubss	%xmm4, %xmm0, %xmm0
	vmulss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, (%rcx,%rdx)
	vmovss	(%rsi,%rdx), %xmm0
	vsubss	%xmm3, %xmm0, %xmm0
	vmulss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, (%rsi,%rdx)
	vmovss	(%rax,%rdx), %xmm0
	vsubss	%xmm2, %xmm0, %xmm0
	vmulss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, (%rax,%rdx)
	addq	$4, %rdx
	cmpq	$1024, %rdx
	jne	.L18
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6446:
	.size	init_vel, .-init_vel
	.p2align 4
	.globl	forces
	.type	forces, @function
forces:
.LFB6448:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r8, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	(%rsi), %r12
	movq	32(%rsi), %rbp
	movq	%rdx, 24(%rsp)
	movl	$1024, %edx
	movq	64(%rsi), %rbx
	xorl	%esi, %esi
	vmovss	%xmm2, 20(%rsp)
	movq	%r12, %rdi
	movq	%rcx, (%rsp)
	vmovss	%xmm0, 12(%rsp)
	vmovss	%xmm1, 16(%rsp)
	call	memset@PLT
	movl	$1024, %edx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	call	memset@PLT
	movl	$1024, %edx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	call	memset@PLT
	vmovss	20(%rsp), %xmm2
	movq	24(%rsp), %r9
	movl	$1, %edx
	movq	0(%r13), %r8
	movq	32(%r13), %r15
	vxorps	%xmm9, %xmm9, %xmm9
	vmulss	.LC1(%rip), %xmm2, %xmm6
	movq	64(%r13), %r13
	movl	$0x00000000, (%r9)
	vxorps	.LC16(%rip), %xmm6, %xmm15
	.p2align 4,,10
	.p2align 3
.L49:
	vxorps	%xmm8, %xmm8, %xmm8
	vmovss	-4(%r8,%rdx,4), %xmm14
	vmovss	-4(%r15,%rdx,4), %xmm13
	movq	%rdx, %rax
	vmovss	-4(%r13,%rdx,4), %xmm12
	vmovaps	%xmm8, %xmm10
	vmovaps	%xmm8, %xmm11
	vmovd	%xmm8, %esi
	.p2align 4,,10
	.p2align 3
.L48:
	vsubss	(%r8,%rax,4), %xmm14, %xmm4
	vsubss	(%r15,%rax,4), %xmm13, %xmm1
	vsubss	0(%r13,%rax,4), %xmm12, %xmm0
	vcomiss	%xmm6, %xmm4
	jbe	.L34
	vsubss	%xmm2, %xmm4, %xmm4
.L34:
	vcomiss	%xmm4, %xmm15
	jb	.L36
	vaddss	%xmm2, %xmm4, %xmm4
.L36:
	vcomiss	%xmm6, %xmm1
	jbe	.L38
	vsubss	%xmm2, %xmm1, %xmm1
.L38:
	vcomiss	%xmm1, %xmm15
	jb	.L40
	vaddss	%xmm2, %xmm1, %xmm1
.L40:
	vcomiss	%xmm6, %xmm0
	jbe	.L42
	vsubss	%xmm2, %xmm0, %xmm0
.L42:
	vcomiss	%xmm0, %xmm15
	jb	.L44
	vaddss	%xmm2, %xmm0, %xmm0
.L44:
	vmulss	%xmm1, %xmm1, %xmm7
	vmovss	.LC17(%rip), %xmm3
	vfmadd231ss	%xmm4, %xmm4, %xmm7
	vfmadd231ss	%xmm0, %xmm0, %xmm7
	vcomiss	%xmm7, %xmm3
	jb	.L46
	vmovss	.LC18(%rip), %xmm5
	vmovss	.LC19(%rip), %xmm8
	vdivss	%xmm7, %xmm5, %xmm3
	vmulss	%xmm3, %xmm3, %xmm5
	vmulss	%xmm3, %xmm5, %xmm5
	vmulss	.LC21(%rip), %xmm3, %xmm3
	vfmadd213ss	.LC20(%rip), %xmm5, %xmm8
	vmulss	%xmm8, %xmm5, %xmm8
	vmulss	%xmm8, %xmm3, %xmm3
	vmovd	%esi, %xmm8
	vfmadd231ss	%xmm3, %xmm0, %xmm8
	vfnmadd213ss	(%rbx,%rax,4), %xmm3, %xmm0
	vfmadd231ss	%xmm3, %xmm4, %xmm11
	vfnmadd213ss	(%r12,%rax,4), %xmm3, %xmm4
	vfmadd231ss	%xmm3, %xmm1, %xmm10
	vfnmadd213ss	0(%rbp,%rax,4), %xmm3, %xmm1
	vfmadd231ss	%xmm3, %xmm7, %xmm9
	vmovss	%xmm0, (%rbx,%rax,4)
	vsubss	.LC18(%rip), %xmm5, %xmm0
	vmulss	.LC22(%rip), %xmm5, %xmm5
	vmovd	%xmm8, %esi
	vmovss	%xmm4, (%r12,%rax,4)
	vxorpd	%xmm4, %xmm4, %xmm4
	vmovss	%xmm1, 0(%rbp,%rax,4)
	vmulss	%xmm5, %xmm0, %xmm5
	vcvtss2sd	(%r9), %xmm4, %xmm0
	vaddsd	.LC23(%rip), %xmm0, %xmm0
	vcvtss2sd	%xmm5, %xmm5, %xmm5
	vaddsd	%xmm0, %xmm5, %xmm5
	vcvtsd2ss	%xmm5, %xmm5, %xmm5
	vmovss	%xmm5, (%r9)
.L46:
	incq	%rax
	cmpl	$256, %eax
	jne	.L48
	vmovd	%esi, %xmm8
	vaddss	-4(%r12,%rdx,4), %xmm11, %xmm11
	vaddss	-4(%rbp,%rdx,4), %xmm10, %xmm10
	vaddss	-4(%rbx,%rdx,4), %xmm8, %xmm8
	vmovss	%xmm11, -4(%r12,%rdx,4)
	vmovss	%xmm10, -4(%rbp,%rdx,4)
	vmovss	%xmm8, -4(%rbx,%rdx,4)
	incq	%rdx
	cmpq	$256, %rdx
	jne	.L49
	vmulss	.LC24(%rip), %xmm9, %xmm0
	vmovss	12(%rsp), %xmm6
	movq	(%rsp), %rax
	vdivss	16(%rsp), %xmm0, %xmm0
	vfmadd132ss	(%r14), %xmm0, %xmm6
	vmovss	%xmm6, (%rax)
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE6448:
	.size	forces, .-forces
	.p2align 4
	.globl	velocity_verlet
	.type	velocity_verlet, @function
velocity_verlet:
.LFB6450:
	.cfi_startproc
	endbr64
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	vmovaps	%xmm2, %xmm5
	xorl	%eax, %eax
	pushq	-8(%r10)
	vbroadcastss	%xmm2, %ymm2
	vxorps	%xmm15, %xmm15, %xmm15
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15
	pushq	%r14
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	movq	%rdi, %r14
	pushq	%r13
	pushq	%r12
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	movq	%rdx, %r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rsi, %rbx
	subq	$64, %rsp
	movq	%rcx, -56(%rbp)
	movq	(%r10), %r15
	movq	(%rdx), %r13
	movq	%r8, -64(%rbp)
	movq	32(%rdx), %r11
	movq	(%rsi), %r8
	movq	%r9, -72(%rbp)
	movq	32(%rsi), %rsi
	movq	(%rdi), %r9
	vmovss	%xmm0, -76(%rbp)
	movq	32(%rdi), %rdi
	movq	64(%r14), %rcx
	vmovss	%xmm1, -80(%rbp)
	movq	64(%rbx), %rdx
	movq	64(%r12), %r10
	vmovss	%xmm5, -84(%rbp)
	vbroadcastsd	.LC28(%rip), %ymm3
	vbroadcastss	.LC1(%rip), %ymm14
	.p2align 4,,10
	.p2align 3
.L61:
	vmovups	0(%r13,%rax), %ymm1
	vmovups	(%r8,%rax), %ymm12
	vmovups	(%r11,%rax), %ymm7
	vmovups	(%r9,%rax), %ymm0
	vmulps	.LC25(%rip), %ymm1, %ymm1
	vcvtps2pd	%xmm12, %ymm4
	vextractf128	$0x1, %ymm12, %xmm12
	vmovups	(%rsi,%rax), %ymm11
	vmulps	.LC25(%rip), %ymm7, %ymm6
	vcvtps2pd	%xmm12, %ymm12
	vcvtps2pd	%xmm0, %ymm9
	vextractf128	$0x1, %ymm0, %xmm0
	vcvtps2pd	%xmm0, %ymm0
	vmovups	(%rdx,%rax), %ymm10
	vcvtps2pd	%xmm10, %ymm13
	vextractf128	$0x1, %ymm10, %xmm10
	vcvtps2pd	%xmm1, %ymm5
	vextractf128	$0x1, %ymm1, %xmm1
	vfmadd231pd	%ymm3, %ymm4, %ymm5
	vcvtps2pd	%xmm10, %ymm10
	vcvtps2pd	%xmm1, %ymm1
	vfmadd231pd	%ymm3, %ymm12, %ymm1
	vcvtps2pd	%xmm6, %ymm7
	vextractf128	$0x1, %ymm6, %xmm6
	vcvtps2pd	%xmm6, %ymm6
	vaddpd	%ymm5, %ymm9, %ymm9
	vaddpd	%ymm1, %ymm0, %ymm0
	vcvtps2pd	%xmm11, %ymm1
	vfmadd231pd	%ymm3, %ymm1, %ymm7
	vextractf128	$0x1, %ymm11, %xmm11
	vcvtps2pd	%xmm11, %ymm11
	vfmadd231pd	%ymm3, %ymm11, %ymm6
	vcvtpd2psy	%ymm9, %xmm9
	vcvtpd2psy	%ymm0, %xmm0
	vinsertf128	$0x1, %xmm0, %ymm9, %ymm9
	vmovups	(%rdi,%rax), %ymm0
	vcvtps2pd	%xmm0, %ymm8
	vaddpd	%ymm7, %ymm8, %ymm8
	vmovups	(%r10,%rax), %ymm7
	vextractf128	$0x1, %ymm0, %xmm0
	vcvtps2pd	%xmm0, %ymm0
	vaddpd	%ymm6, %ymm0, %ymm0
	vmovups	(%rcx,%rax), %ymm6
	vmulps	.LC25(%rip), %ymm7, %ymm7
	vcvtpd2psy	%ymm8, %xmm8
	vcvtpd2psy	%ymm0, %xmm0
	vinsertf128	$0x1, %xmm0, %ymm8, %ymm8
	vcvtps2pd	%xmm7, %ymm0
	vextractf128	$0x1, %ymm7, %xmm7
	vmovapd	%ymm0, %ymm5
	vcvtps2pd	%xmm6, %ymm0
	vfmadd231pd	%ymm3, %ymm13, %ymm5
	vcvtps2pd	%xmm7, %ymm7
	vfmadd231pd	%ymm3, %ymm10, %ymm7
	vextractf128	$0x1, %ymm6, %xmm6
	vcvtps2pd	%xmm6, %ymm6
	vaddpd	%ymm5, %ymm0, %ymm0
	vaddpd	%ymm7, %ymm6, %ymm6
	vcmpltps	%ymm9, %ymm15, %ymm7
	vaddps	%ymm2, %ymm9, %ymm5
	vcvtpd2psy	%ymm6, %xmm6
	vcvtpd2psy	%ymm0, %xmm0
	vinsertf128	$0x1, %xmm6, %ymm0, %ymm0
	vcmpleps	%ymm2, %ymm9, %ymm6
	vpand	%ymm7, %ymm6, %ymm7
	vsubps	%ymm2, %ymm9, %ymm6
	vblendvps	%ymm7, %ymm9, %ymm6, %ymm6
	vcmpleps	%ymm15, %ymm9, %ymm9
	vcmpltps	%ymm8, %ymm15, %ymm7
	vblendvps	%ymm9, %ymm5, %ymm6, %ymm9
	vcmpleps	%ymm2, %ymm8, %ymm6
	vmovups	%ymm9, (%r9,%rax)
	vaddps	%ymm2, %ymm8, %ymm9
	vpand	%ymm7, %ymm6, %ymm7
	vsubps	%ymm2, %ymm8, %ymm6
	vblendvps	%ymm7, %ymm8, %ymm6, %ymm6
	vcmpleps	%ymm15, %ymm8, %ymm8
	vcmpltps	%ymm0, %ymm15, %ymm7
	vblendvps	%ymm8, %ymm9, %ymm6, %ymm8
	vcmpleps	%ymm2, %ymm0, %ymm6
	vmovups	%ymm8, (%rdi,%rax)
	vaddps	%ymm2, %ymm0, %ymm8
	vpand	%ymm7, %ymm6, %ymm7
	vsubps	%ymm2, %ymm0, %ymm6
	vblendvps	%ymm7, %ymm0, %ymm6, %ymm6
	vcmpleps	%ymm15, %ymm0, %ymm0
	vblendvps	%ymm0, %ymm8, %ymm6, %ymm0
	vmovups	%ymm0, (%rcx,%rax)
	vmulps	0(%r13,%rax), %ymm14, %ymm0
	vcvtps2pd	%xmm0, %ymm6
	vextractf128	$0x1, %ymm0, %xmm0
	vfmadd132pd	%ymm3, %ymm4, %ymm6
	vcvtps2pd	%xmm0, %ymm0
	vfmadd132pd	%ymm3, %ymm12, %ymm0
	vcvtpd2psy	%ymm6, %xmm6
	vcvtpd2psy	%ymm0, %xmm0
	vinsertf128	$0x1, %xmm0, %ymm6, %ymm6
	vmulps	(%r11,%rax), %ymm14, %ymm0
	vmovups	%ymm6, (%r8,%rax)
	vcvtps2pd	%xmm0, %ymm4
	vextractf128	$0x1, %ymm0, %xmm0
	vfmadd231pd	%ymm3, %ymm4, %ymm1
	vcvtps2pd	%xmm0, %ymm0
	vfmadd132pd	%ymm3, %ymm11, %ymm0
	vcvtpd2psy	%ymm1, %xmm1
	vcvtpd2psy	%ymm0, %xmm0
	vinsertf128	$0x1, %xmm0, %ymm1, %ymm0
	vmovups	%ymm0, (%rsi,%rax)
	vmulps	(%r10,%rax), %ymm14, %ymm0
	vcvtps2pd	%xmm0, %ymm1
	vextractf128	$0x1, %ymm0, %xmm0
	vfmadd132pd	%ymm3, %ymm13, %ymm1
	vcvtps2pd	%xmm0, %ymm0
	vfmadd132pd	%ymm3, %ymm10, %ymm0
	vcvtpd2psy	%ymm1, %xmm1
	vcvtpd2psy	%ymm0, %xmm0
	vinsertf128	$0x1, %xmm0, %ymm1, %ymm0
	vmovups	%ymm0, (%rdx,%rax)
	addq	$32, %rax
	cmpq	$1024, %rax
	jne	.L61
	vmovss	-76(%rbp), %xmm4
	vmovss	-84(%rbp), %xmm5
	movq	%r15, %r8
	movq	%r12, %rsi
	vmovss	-80(%rbp), %xmm1
	movq	-72(%rbp), %rcx
	movq	%r14, %rdi
	movq	-56(%rbp), %rdx
	vmovaps	%xmm5, %xmm2
	vmovaps	%xmm4, %xmm0
	vzeroupper
	call	forces
	movq	(%rbx), %rsi
	movq	(%r12), %r9
	xorl	%eax, %eax
	movq	32(%rbx), %rcx
	movq	32(%r12), %r8
	vxorps	%xmm1, %xmm1, %xmm1
	movq	64(%rbx), %rdx
	movq	64(%r12), %rdi
	vmovaps	.LC29(%rip), %ymm14
	vmovapd	.LC27(%rip), %ymm3
	.p2align 4,,10
	.p2align 3
.L62:
	vmulps	(%r9,%rax), %ymm14, %ymm2
	vmovups	(%rsi,%rax), %ymm4
	vcvtps2pd	%xmm4, %ymm5
	vextractf128	$0x1, %ymm4, %xmm4
	vcvtps2pd	%xmm4, %ymm4
	vcvtps2pd	%xmm2, %ymm0
	vextractf128	$0x1, %ymm2, %xmm2
	vfmadd132pd	%ymm3, %ymm5, %ymm0
	vmovups	(%rcx,%rax), %ymm5
	vcvtps2pd	%xmm2, %ymm2
	vfmadd132pd	%ymm3, %ymm4, %ymm2
	vcvtps2pd	%xmm5, %ymm6
	vextractf128	$0x1, %ymm5, %xmm5
	vcvtps2pd	%xmm5, %ymm5
	vcvtpd2psy	%ymm0, %xmm0
	vcvtpd2psy	%ymm2, %xmm2
	vinsertf128	$0x1, %xmm2, %ymm0, %ymm0
	vmulps	(%r8,%rax), %ymm14, %ymm2
	vmovups	%ymm0, (%rsi,%rax)
	vcvtps2pd	%xmm2, %ymm4
	vextractf128	$0x1, %ymm2, %xmm2
	vfmadd132pd	%ymm3, %ymm6, %ymm4
	vmovups	(%rdx,%rax), %ymm6
	vcvtps2pd	%xmm2, %ymm2
	vfmadd132pd	%ymm3, %ymm5, %ymm2
	vmulps	(%rdi,%rax), %ymm14, %ymm5
	vcvtps2pd	%xmm6, %ymm7
	vextractf128	$0x1, %ymm6, %xmm6
	vcvtps2pd	%xmm6, %ymm6
	vcvtpd2psy	%ymm4, %xmm4
	vcvtpd2psy	%ymm2, %xmm2
	vinsertf128	$0x1, %xmm2, %ymm4, %ymm4
	vcvtps2pd	%xmm5, %ymm2
	vextractf128	$0x1, %ymm5, %xmm5
	vfmadd132pd	%ymm3, %ymm7, %ymm2
	vmovups	%ymm4, (%rcx,%rax)
	vcvtps2pd	%xmm5, %ymm5
	vmulps	%ymm4, %ymm4, %ymm4
	vfmadd132pd	%ymm3, %ymm6, %ymm5
	vcvtpd2psy	%ymm2, %xmm2
	vcvtpd2psy	%ymm5, %xmm5
	vinsertf128	$0x1, %xmm5, %ymm2, %ymm2
	vfmadd132ps	%ymm0, %ymm4, %ymm0
	vmovups	%ymm2, (%rdx,%rax)
	vfmadd132ps	%ymm2, %ymm1, %ymm2
	addq	$32, %rax
	vaddps	%ymm0, %ymm2, %ymm1
	cmpq	$1024, %rax
	jne	.L62
	vextractf128	$0x1, %ymm1, %xmm0
	movq	-64(%rbp), %rax
	vaddps	%xmm1, %xmm0, %xmm0
	vmovhlps	%xmm0, %xmm0, %xmm1
	vaddps	%xmm0, %xmm1, %xmm1
	vshufps	$85, %xmm1, %xmm1, %xmm0
	vaddps	%xmm1, %xmm0, %xmm0
	vmulss	.LC1(%rip), %xmm0, %xmm1
	vmulss	.LC30(%rip), %xmm0, %xmm0
	vmovss	%xmm1, (%rax)
	vmovss	%xmm0, (%r15)
	vzeroupper
	addq	$64, %rsp
	popq	%rbx
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
.LFE6450:
	.size	velocity_verlet, .-velocity_verlet
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1074790400
	.set	.LC1,.LC29
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC2:
	.long	1069547520
	.align 4
.LC3:
	.long	1075838976
	.set	.LC4,.LC6+12
	.align 4
.LC5:
	.long	1080033280
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC6:
	.long	0
	.long	1065353216
	.long	1073741824
	.long	1077936128
	.align 16
.LC7:
	.long	0
	.long	1071644672
	.long	0
	.long	1073217536
	.align 16
.LC8:
	.long	0
	.long	1074003968
	.long	0
	.long	1074528256
	.set	.LC10,.LC7
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
	.section	.rodata.cst8
	.align 8
.LC14:
	.long	1431655765
	.long	1062557013
	.align 8
.LC15:
	.long	0
	.long	1073741824
	.section	.rodata.cst16
	.align 16
.LC16:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4
	.align 4
.LC17:
	.long	1086849024
	.set	.LC18,.LC6+4
	.set	.LC19,.LC6+8
	.align 4
.LC20:
	.long	-1082130432
	.align 4
.LC21:
	.long	1103101952
	.align 4
.LC22:
	.long	1082130432
	.section	.rodata.cst8
	.align 8
.LC23:
	.long	120897443
	.long	1066448224
	.section	.rodata.cst4
	.align 4
.LC24:
	.long	1051372203
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC25:
	.long	928102167
	.long	928102167
	.long	928102167
	.long	928102167
	.long	928102167
	.long	928102167
	.long	928102167
	.long	928102167
	.align 32
.LC27:
	.long	1202590843
	.long	1064598241
	.long	1202590843
	.long	1064598241
	.long	1202590843
	.long	1064598241
	.long	1202590843
	.long	1064598241
	.set	.LC28,.LC27
	.align 32
.LC29:
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.section	.rodata.cst4
	.align 4
.LC30:
	.long	984263339
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
