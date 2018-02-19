	.file	"HelloWorld.class.bc"
	.text
	.globl	JnJVM_HelloWorld__0003Cinit_0003E__
	.align	16, 0x90
	.type	JnJVM_HelloWorld__0003Cinit_0003E__,@function
JnJVM_HelloWorld__0003Cinit_0003E__:    # @JnJVM_HelloWorld__0003Cinit_0003E__
# BB#0:                                 # %start
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rbp, %rax
	andq	$-1048576, %rax         # imm = 0xFFFFFFFFFFF00000
	movb	48(%rax), %al
	testb	%al, %al
	je	.LBB0_2
# BB#1:                                 # %inSafePoint
	callq	conditionalSafePoint
.Ltmp0:
.LBB0_2:                                # %afterSafePoint
	popq	%rbp
	ret
.Ltmp1:
	.size	JnJVM_HelloWorld__0003Cinit_0003E__, .Ltmp1-JnJVM_HelloWorld__0003Cinit_0003E__

	.globl	____Vstatic_buf
	.align	16, 0x90
	.type	____Vstatic_buf,@function
____Vstatic_buf:                        # @____Vstatic_buf
# BB#0:                                 # %enter
	pushq	%rax
	callq	*%rsi
.Ltmp2:
	popq	%rax
	ret
.Ltmp3:
	.size	____Vstatic_buf, .Ltmp3-____Vstatic_buf

	.globl	____Vvirtual_buf
	.align	16, 0x90
	.type	____Vvirtual_buf,@function
____Vvirtual_buf:                       # @____Vvirtual_buf
# BB#0:                                 # %enter
	pushq	%rax
	movq	%rdx, %rdi
	callq	*%rsi
.Ltmp4:
	popq	%rax
	ret
.Ltmp5:
	.size	____Vvirtual_buf, .Ltmp5-____Vvirtual_buf

	.globl	JnJVM_HelloWorld_main___3Ljava_lang_String_2
	.align	16, 0x90
	.type	JnJVM_HelloWorld_main___3Ljava_lang_String_2,@function
JnJVM_HelloWorld_main___3Ljava_lang_String_2: # @JnJVM_HelloWorld_main___3Ljava_lang_String_2
# BB#0:                                 # %start
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	movq	%rbp, %rax
	andq	$-1048576, %rax         # imm = 0xFFFFFFFFFFF00000
	movb	48(%rax), %al
	testb	%al, %al
	je	.LBB3_1
# BB#4:                                 # %inSafePoint
	callq	conditionalSafePoint
.Ltmp8:
.LBB3_1:                                # %afterSafePoint
	cmpb	$1, java_lang_System+73(%rip)
	je	.LBB3_2
# BB#5:                                 # %Uninitialized
	movl	$java_lang_System, %edi
	callq	j3RuntimeInitialiseClass
.Ltmp9:
.LBB3_2:
	movq	java_lang_System_static+32(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	__unnamed_1+24(%rip), %rax
	testq	%rax, %rax
	jne	.LBB3_3
# BB#6:                                 # %Ctp Not OK
	movl	$HelloWorld, %edi
	movl	$3, %esi
	xorb	%al, %al
	callq	j3StringLookup
.Ltmp10:
.LBB3_3:
	movq	(%rax), %rsi
	movq	-8(%rbp), %rdi
.Ltmp6:
	movq	(%rdi), %rax
	movq	(%rdi), %rax
	callq	*544(%rax)
.Ltmp7:
	addq	$16, %rsp
	popq	%rbp
	ret
.Ltmp11:
	.size	JnJVM_HelloWorld_main___3Ljava_lang_String_2, .Ltmp11-JnJVM_HelloWorld_main___3Ljava_lang_String_2

	.globl	__L__Vstatic_buf
	.align	16, 0x90
	.type	__L__Vstatic_buf,@function
__L__Vstatic_buf:                       # @__L__Vstatic_buf
# BB#0:                                 # %enter
	pushq	%rax
	movq	(%rdx), %rax
	testq	%rax, %rax
	je	.LBB4_1
# BB#3:                                 # %loadRefArg
	movq	(%rax), %rdi
	jmp	.LBB4_2
.LBB4_1:
	xorl	%edi, %edi
.LBB4_2:                                # %refArgDone
	callq	*%rsi
.Ltmp12:
	popq	%rax
	ret
.Ltmp13:
	.size	__L__Vstatic_buf, .Ltmp13-__L__Vstatic_buf

	.globl	__L__Vvirtual_buf
	.align	16, 0x90
	.type	__L__Vvirtual_buf,@function
__L__Vvirtual_buf:                      # @__L__Vvirtual_buf
# BB#0:                                 # %enter
	pushq	%rax
	movq	%rsi, %rax
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB5_1
# BB#3:                                 # %loadRefArg
	movq	(%rcx), %rsi
	jmp	.LBB5_2
.LBB5_1:
	xorl	%esi, %esi
.LBB5_2:                                # %refArgDone
	movq	%rdx, %rdi
	callq	*%rax
.Ltmp14:
	popq	%rax
	ret
.Ltmp15:
	.size	__L__Vvirtual_buf, .Ltmp15-__L__Vvirtual_buf

	.align	16, 0x90
	.type	Init,@function
Init:                                   # @Init
	.cfi_startproc
# BB#0:                                 # %enter
	pushq	%rax
.Ltmp17:
	.cfi_def_cfa_offset 16
	movl	$HelloWorld, %esi
	callq	vmjcAddPreCompiledClass
	popq	%rax
	ret
.Ltmp18:
	.size	Init, .Ltmp18-Init
	.cfi_endproc

	.type	HelloWorld,@object      # @HelloWorld
	.data
	.globl	HelloWorld
	.align	16
HelloWorld:
	.zero	8
	.long	65570                   # 0x10022
	.zero	4
	.quad	0
	.short	0                       # 0x0
	.zero	6
	.quad	__unnamed_2
	.quad	java_lang_Object
	.quad	0
	.quad	HelloWorld_VT
	.long	8                       # 0x8
	.long	8                       # 0x8
	.byte	2                       # 0x2
	.byte	0                       # 0x0
	.zero	6
	.quad	HelloWorld_static
	.quad	__unnamed_3
	.short	0                       # 0x0
	.zero	6
	.quad	__unnamed_3
	.short	1                       # 0x1
	.zero	6
	.quad	HelloWorld_VirtualMethods
	.short	1                       # 0x1
	.zero	6
	.quad	HelloWorld_VirtualMethods+80
	.short	1                       # 0x1
	.zero	6
	.quad	0
	.quad	0
	.quad	__unnamed_4
	.quad	__unnamed_5
	.short	1                       # 0x1
	.zero	6
	.quad	0
	.short	0                       # 0x0
	.zero	6
	.quad	0
	.short	0                       # 0x0
	.byte	1                       # 0x1
	.byte	0                       # 0x0
	.long	30                      # 0x1e
	.long	8                       # 0x8
	.short	1                       # 0x1
	.short	6                       # 0x6
	.short	0                       # 0x0
	.zero	6
	.size	HelloWorld, 240

	.type	__unnamed_2,@object     # @0
	.section	.rodata,"a",@progbits
	.align	16
__unnamed_2:
	.long	10                      # 0xa
	.short	72                      # 0x48
	.short	101                     # 0x65
	.short	108                     # 0x6c
	.short	108                     # 0x6c
	.short	111                     # 0x6f
	.short	87                      # 0x57
	.short	111                     # 0x6f
	.short	114                     # 0x72
	.short	108                     # 0x6c
	.short	100                     # 0x64
	.size	__unnamed_2, 24

	.type	HelloWorld_VT,@object   # @HelloWorld_VT
	.data
	.globl	HelloWorld_VT
	.align	16
HelloWorld_VT:
	.quad	EmptyDestructor
	.quad	0
	.quad	RegularObjectTracer
	.quad	HelloWorld
	.quad	1
	.quad	8
	.quad	0
	.quad	java_lang_Object_VT
	.quad	HelloWorld_VT
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	__unnamed_6
	.quad	0
	.quad	__unnamed_7
	.quad	JnJVM_HelloWorld__0003Cinit_0003E__
	.quad	JnJVM_java_lang_Object_getClass__
	.quad	JnJVM_java_lang_Object_hashCode__
	.quad	JnJVM_java_lang_Object_equals__Ljava_lang_Object_2
	.quad	JnJVM_java_lang_Object_clone__
	.quad	JnJVM_java_lang_Object_toString__
	.quad	JnJVM_java_lang_Object_notify__
	.quad	JnJVM_java_lang_Object_notifyAll__
	.quad	JnJVM_java_lang_Object_wait__J
	.quad	JnJVM_java_lang_Object_wait__JI
	.quad	JnJVM_java_lang_Object_wait__
	.size	HelloWorld_VT, 240

	.type	__unnamed_6,@object     # @1
	.section	.rodata,"a",@progbits
	.align	8
__unnamed_6:
	.size	__unnamed_6, 0

	.type	__unnamed_7,@object     # @2
	.data
	.align	16
__unnamed_7:
	.quad	0
	.quad	0
	.quad	JnJVM_java_lang_Object_wait__JI
	.quad	JnJVM_HelloWorld__0003Cinit_0003E__
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	JnJVM_java_lang_Object_wait__
	.quad	JnJVM_java_lang_Object_getClass__
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	JnJVM_java_lang_Object_wait__J
	.quad	JnJVM_java_lang_Object_toString__
	.quad	0
	.quad	JnJVM_java_lang_Object_equals__Ljava_lang_Object_2
	.quad	JnJVM_java_lang_Object_hashCode__
	.quad	JnJVM_java_lang_Object_notifyAll__
	.quad	0
	.quad	JnJVM_java_lang_Object_clone__
	.quad	0
	.quad	JnJVM_java_lang_Object_notify__
	.quad	JnJVM_java_lang_Object_finalize__
	.size	__unnamed_7, 232

	.type	HelloWorld_static,@object # @HelloWorld_static
	.bss
	.globl	HelloWorld_static
	.align	8
HelloWorld_static:
	.zero	8
	.size	HelloWorld_static, 8

	.type	__unnamed_8,@object     # @3
	.section	.rodata,"a",@progbits
	.align	8
__unnamed_8:
	.long	3                       # 0x3
	.short	115                     # 0x73
	.short	116                     # 0x74
	.short	114                     # 0x72
	.zero	2
	.size	__unnamed_8, 12

	.type	__unnamed_9,@object     # @4
	.align	16
__unnamed_9:
	.long	18                      # 0x12
	.short	76                      # 0x4c
	.short	106                     # 0x6a
	.short	97                      # 0x61
	.short	118                     # 0x76
	.short	97                      # 0x61
	.short	47                      # 0x2f
	.short	108                     # 0x6c
	.short	97                      # 0x61
	.short	110                     # 0x6e
	.short	103                     # 0x67
	.short	47                      # 0x2f
	.short	83                      # 0x53
	.short	116                     # 0x74
	.short	114                     # 0x72
	.short	105                     # 0x69
	.short	110                     # 0x6e
	.short	103                     # 0x67
	.short	59                      # 0x3b
	.size	__unnamed_9, 40

	.type	__unnamed_10,@object    # @5
	.align	16
__unnamed_10:
	.long	13                      # 0xd
	.short	67                      # 0x43
	.short	111                     # 0x6f
	.short	110                     # 0x6e
	.short	115                     # 0x73
	.short	116                     # 0x74
	.short	97                      # 0x61
	.short	110                     # 0x6e
	.short	116                     # 0x74
	.short	86                      # 0x56
	.short	97                      # 0x61
	.short	108                     # 0x6c
	.short	117                     # 0x75
	.short	101                     # 0x65
	.zero	2
	.size	__unnamed_10, 32

	.type	__unnamed_11,@object    # @6
	.align	8
__unnamed_11:
	.quad	__unnamed_10
	.long	376                     # 0x178
	.long	2                       # 0x2
	.size	__unnamed_11, 16

	.type	__unnamed_3,@object     # @7
	.data
	.align	16
__unnamed_3:
	.quad	0
	.short	25                      # 0x19
	.zero	6
	.quad	__unnamed_8
	.quad	__unnamed_9
	.quad	__unnamed_11
	.short	1                       # 0x1
	.zero	6
	.quad	HelloWorld
	.long	0                       # 0x0
	.short	0                       # 0x0
	.zero	2
	.size	__unnamed_3, 64

	.type	__unnamed_12,@object    # @8
	.section	.rodata,"a",@progbits
	.align	8
__unnamed_12:
	.long	4                       # 0x4
	.short	67                      # 0x43
	.short	111                     # 0x6f
	.short	100                     # 0x64
	.short	101                     # 0x65
	.size	__unnamed_12, 12

	.type	__unnamed_13,@object    # @9
	.align	8
__unnamed_13:
	.quad	__unnamed_12
	.long	394                     # 0x18a
	.long	29                      # 0x1d
	.size	__unnamed_13, 16

	.type	__unnamed_14,@object    # @10
	.align	8
__unnamed_14:
	.long	6                       # 0x6
	.short	60                      # 0x3c
	.short	105                     # 0x69
	.short	110                     # 0x6e
	.short	105                     # 0x69
	.short	116                     # 0x74
	.short	62                      # 0x3e
	.size	__unnamed_14, 16

	.type	__unnamed_15,@object    # @11
	.align	8
__unnamed_15:
	.long	3                       # 0x3
	.short	40                      # 0x28
	.short	41                      # 0x29
	.short	86                      # 0x56
	.zero	2
	.size	__unnamed_15, 12

	.type	__unnamed_16,@object    # @12
	.align	8
__unnamed_16:
	.quad	__unnamed_12
	.long	437                     # 0x1b5
	.long	37                      # 0x25
	.size	__unnamed_16, 16

	.type	__unnamed_17,@object    # @13
	.align	8
__unnamed_17:
	.long	4                       # 0x4
	.short	109                     # 0x6d
	.short	97                      # 0x61
	.short	105                     # 0x69
	.short	110                     # 0x6e
	.size	__unnamed_17, 12

	.type	__unnamed_18,@object    # @14
	.align	16
__unnamed_18:
	.long	22                      # 0x16
	.short	40                      # 0x28
	.short	91                      # 0x5b
	.short	76                      # 0x4c
	.short	106                     # 0x6a
	.short	97                      # 0x61
	.short	118                     # 0x76
	.short	97                      # 0x61
	.short	47                      # 0x2f
	.short	108                     # 0x6c
	.short	97                      # 0x61
	.short	110                     # 0x6e
	.short	103                     # 0x67
	.short	47                      # 0x2f
	.short	83                      # 0x53
	.short	116                     # 0x74
	.short	114                     # 0x72
	.short	105                     # 0x69
	.short	110                     # 0x6e
	.short	103                     # 0x67
	.short	59                      # 0x3b
	.short	41                      # 0x29
	.short	86                      # 0x56
	.size	__unnamed_18, 48

	.type	HelloWorld_VirtualMethods,@object # @HelloWorld_VirtualMethods
	.data
	.globl	HelloWorld_VirtualMethods
	.align	16
HelloWorld_VirtualMethods:
	.quad	0
	.short	0                       # 0x0
	.zero	6
	.quad	__unnamed_13
	.short	1                       # 0x1
	.zero	6
	.quad	HelloWorld
	.quad	__unnamed_14
	.quad	__unnamed_15
	.byte	0                       # 0x0
	.zero	7
	.quad	JnJVM_HelloWorld__0003Cinit_0003E__
	.long	19                      # 0x13
	.zero	4
	.quad	0
	.short	9                       # 0x9
	.zero	6
	.quad	__unnamed_16
	.short	1                       # 0x1
	.zero	6
	.quad	HelloWorld
	.quad	__unnamed_17
	.quad	__unnamed_18
	.byte	0                       # 0x0
	.zero	7
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.size	HelloWorld_VirtualMethods, 160

	.type	__unnamed_19,@object    # @15
	.align	16
__unnamed_19:
	.ascii	 "\000\n\t\b\n\007\007\001\001\001\001\001\001\001\001\001\001\001\f\007\f\001\007\f\001\001\001\001\001\001\001\001"
	.size	__unnamed_19, 32

	.type	__unnamed_20,@object    # @16
	.align	16
__unnamed_20:
	.long	0                       # 0x0
	.long	393234                  # 0x60012
	.long	1245204                 # 0x130014
	.long	21                      # 0x15
	.long	1441815                 # 0x160017
	.long	24                      # 0x18
	.long	25                      # 0x19
	.long	35                      # 0x23
	.long	41                      # 0x29
	.long	62                      # 0x3e
	.long	78                      # 0x4e
	.long	87                      # 0x57
	.long	93                      # 0x5d
	.long	100                     # 0x64
	.long	118                     # 0x76
	.long	125                     # 0x7d
	.long	150                     # 0x96
	.long	163                     # 0xa3
	.long	655371                  # 0xa000b
	.long	26                      # 0x1a
	.long	1769500                 # 0x1b001c
	.long	194                     # 0xc2
	.long	29                      # 0x1d
	.long	1966111                 # 0x1e001f
	.long	216                     # 0xd8
	.long	229                     # 0xe5
	.long	248                     # 0xf8
	.long	267                     # 0x10b
	.long	273                     # 0x111
	.long	297                     # 0x129
	.long	319                     # 0x13f
	.long	329                     # 0x149
	.size	__unnamed_20, 128

	.type	__unnamed_21,@object    # @17
	.section	.rodata,"a",@progbits
	.align	16
__unnamed_21:
	.long	15                      # 0xf
	.short	76                      # 0x4c
	.short	105                     # 0x69
	.short	110                     # 0x6e
	.short	101                     # 0x65
	.short	78                      # 0x4e
	.short	117                     # 0x75
	.short	109                     # 0x6d
	.short	98                      # 0x62
	.short	101                     # 0x65
	.short	114                     # 0x72
	.short	84                      # 0x54
	.short	97                      # 0x61
	.short	98                      # 0x62
	.short	108                     # 0x6c
	.short	101                     # 0x65
	.zero	2
	.size	__unnamed_21, 36

	.type	__unnamed_22,@object    # @18
	.align	16
__unnamed_22:
	.long	10                      # 0xa
	.short	83                      # 0x53
	.short	111                     # 0x6f
	.short	117                     # 0x75
	.short	114                     # 0x72
	.short	99                      # 0x63
	.short	101                     # 0x65
	.short	70                      # 0x46
	.short	105                     # 0x69
	.short	108                     # 0x6c
	.short	101                     # 0x65
	.size	__unnamed_22, 24

	.type	__unnamed_23,@object    # @19
	.align	16
__unnamed_23:
	.long	15                      # 0xf
	.short	72                      # 0x48
	.short	101                     # 0x65
	.short	108                     # 0x6c
	.short	108                     # 0x6c
	.short	111                     # 0x6f
	.short	87                      # 0x57
	.short	111                     # 0x6f
	.short	114                     # 0x72
	.short	108                     # 0x6c
	.short	100                     # 0x64
	.short	46                      # 0x2e
	.short	106                     # 0x6a
	.short	97                      # 0x61
	.short	118                     # 0x76
	.short	97                      # 0x61
	.zero	2
	.size	__unnamed_23, 36

	.type	__unnamed_24,@object    # @20
	.align	16
__unnamed_24:
	.long	11                      # 0xb
	.short	72                      # 0x48
	.short	101                     # 0x65
	.short	108                     # 0x6c
	.short	108                     # 0x6c
	.short	111                     # 0x6f
	.short	32                      # 0x20
	.short	87                      # 0x57
	.short	111                     # 0x6f
	.short	114                     # 0x72
	.short	108                     # 0x6c
	.short	100                     # 0x64
	.zero	2
	.size	__unnamed_24, 28

	.type	__unnamed_25,@object    # @21
	.align	16
__unnamed_25:
	.long	16                      # 0x10
	.short	106                     # 0x6a
	.short	97                      # 0x61
	.short	118                     # 0x76
	.short	97                      # 0x61
	.short	47                      # 0x2f
	.short	108                     # 0x6c
	.short	97                      # 0x61
	.short	110                     # 0x6e
	.short	103                     # 0x67
	.short	47                      # 0x2f
	.short	79                      # 0x4f
	.short	98                      # 0x62
	.short	106                     # 0x6a
	.short	101                     # 0x65
	.short	99                      # 0x63
	.short	116                     # 0x74
	.size	__unnamed_25, 36

	.type	__unnamed_26,@object    # @22
	.align	16
__unnamed_26:
	.long	16                      # 0x10
	.short	106                     # 0x6a
	.short	97                      # 0x61
	.short	118                     # 0x76
	.short	97                      # 0x61
	.short	47                      # 0x2f
	.short	108                     # 0x6c
	.short	97                      # 0x61
	.short	110                     # 0x6e
	.short	103                     # 0x67
	.short	47                      # 0x2f
	.short	83                      # 0x53
	.short	121                     # 0x79
	.short	115                     # 0x73
	.short	116                     # 0x74
	.short	101                     # 0x65
	.short	109                     # 0x6d
	.size	__unnamed_26, 36

	.type	__unnamed_27,@object    # @23
	.align	8
__unnamed_27:
	.long	3                       # 0x3
	.short	111                     # 0x6f
	.short	117                     # 0x75
	.short	116                     # 0x74
	.zero	2
	.size	__unnamed_27, 12

	.type	__unnamed_28,@object    # @24
	.align	16
__unnamed_28:
	.long	21                      # 0x15
	.short	76                      # 0x4c
	.short	106                     # 0x6a
	.short	97                      # 0x61
	.short	118                     # 0x76
	.short	97                      # 0x61
	.short	47                      # 0x2f
	.short	105                     # 0x69
	.short	111                     # 0x6f
	.short	47                      # 0x2f
	.short	80                      # 0x50
	.short	114                     # 0x72
	.short	105                     # 0x69
	.short	110                     # 0x6e
	.short	116                     # 0x74
	.short	83                      # 0x53
	.short	116                     # 0x74
	.short	114                     # 0x72
	.short	101                     # 0x65
	.short	97                      # 0x61
	.short	109                     # 0x6d
	.short	59                      # 0x3b
	.zero	2
	.size	__unnamed_28, 48

	.type	__unnamed_29,@object    # @25
	.align	16
__unnamed_29:
	.long	19                      # 0x13
	.short	106                     # 0x6a
	.short	97                      # 0x61
	.short	118                     # 0x76
	.short	97                      # 0x61
	.short	47                      # 0x2f
	.short	105                     # 0x69
	.short	111                     # 0x6f
	.short	47                      # 0x2f
	.short	80                      # 0x50
	.short	114                     # 0x72
	.short	105                     # 0x69
	.short	110                     # 0x6e
	.short	116                     # 0x74
	.short	83                      # 0x53
	.short	116                     # 0x74
	.short	114                     # 0x72
	.short	101                     # 0x65
	.short	97                      # 0x61
	.short	109                     # 0x6d
	.zero	2
	.size	__unnamed_29, 44

	.type	__unnamed_30,@object    # @26
	.align	16
__unnamed_30:
	.long	7                       # 0x7
	.short	112                     # 0x70
	.short	114                     # 0x72
	.short	105                     # 0x69
	.short	110                     # 0x6e
	.short	116                     # 0x74
	.short	108                     # 0x6c
	.short	110                     # 0x6e
	.zero	2
	.size	__unnamed_30, 20

	.type	__unnamed_31,@object    # @27
	.align	16
__unnamed_31:
	.long	21                      # 0x15
	.short	40                      # 0x28
	.short	76                      # 0x4c
	.short	106                     # 0x6a
	.short	97                      # 0x61
	.short	118                     # 0x76
	.short	97                      # 0x61
	.short	47                      # 0x2f
	.short	108                     # 0x6c
	.short	97                      # 0x61
	.short	110                     # 0x6e
	.short	103                     # 0x67
	.short	47                      # 0x2f
	.short	83                      # 0x53
	.short	116                     # 0x74
	.short	114                     # 0x72
	.short	105                     # 0x69
	.short	110                     # 0x6e
	.short	103                     # 0x67
	.short	59                      # 0x3b
	.short	41                      # 0x29
	.short	86                      # 0x56
	.zero	2
	.size	__unnamed_31, 48

	.type	__unnamed_1,@object     # @28
	.data
	.align	16
__unnamed_1:
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	HelloWorld
	.quad	java_lang_Object
	.quad	__unnamed_8
	.quad	__unnamed_9
	.quad	__unnamed_10
	.quad	__unnamed_14
	.quad	__unnamed_15
	.quad	__unnamed_12
	.quad	__unnamed_21
	.quad	__unnamed_17
	.quad	__unnamed_18
	.quad	__unnamed_22
	.quad	__unnamed_23
	.quad	0
	.quad	java_lang_System
	.quad	0
	.quad	__unnamed_24
	.quad	0
	.quad	0
	.quad	__unnamed_2
	.quad	__unnamed_25
	.quad	__unnamed_26
	.quad	__unnamed_27
	.quad	__unnamed_28
	.quad	__unnamed_29
	.quad	__unnamed_30
	.quad	__unnamed_31
	.size	__unnamed_1, 256

	.type	__unnamed_4,@object     # @29
	.align	16
__unnamed_4:
	.quad	HelloWorld
	.long	32                      # 0x20
	.zero	4
	.quad	__unnamed_19
	.quad	__unnamed_20
	.quad	__unnamed_1
	.size	__unnamed_4, 40

	.type	__unnamed_5,@object     # @30
	.section	.rodata,"a",@progbits
	.align	8
__unnamed_5:
	.quad	__unnamed_22
	.long	482                     # 0x1e2
	.long	2                       # 0x2
	.size	__unnamed_5, 16

	.weak	JnJVM_java_lang_Object_wait__JI
	.weak	JnJVM_java_lang_Object_wait__
	.weak	JnJVM_java_lang_Object_getClass__
	.weak	JnJVM_java_lang_Object_wait__J
	.weak	JnJVM_java_lang_Object_toString__
	.weak	JnJVM_java_lang_Object_equals__Ljava_lang_Object_2
	.weak	JnJVM_java_lang_Object_hashCode__
	.weak	JnJVM_java_lang_Object_notifyAll__
	.weak	JnJVM_java_lang_Object_clone__
	.weak	JnJVM_java_lang_Object_notify__
	.weak	JnJVM_java_lang_Object_finalize__
	.weak	JnJVM_java_lang_Object__0003Cinit_0003E__

	.data
	.align	8
	.globl	vmkitHelloWorld_2E_class_2E_bc__frametable
vmkitHelloWorld_2E_class_2E_bc__frametable:
	.long	6
	.align	8
	.long	1
	.align	8
                                        # live roots for JnJVM_HelloWorld__0003Cinit_0003E__
	.quad	HelloWorld_VirtualMethods
	.quad	.Ltmp0
	.short	0
	.short	8
	.short	0
	.align	8
	.long	1
	.align	8
                                        # live roots for ____Vstatic_buf
	.long	0
	.long	0
	.quad	.Ltmp2
	.short	0
	.short	8
	.short	0
	.align	8
	.long	1
	.align	8
                                        # live roots for ____Vvirtual_buf
	.long	0
	.long	0
	.quad	.Ltmp4
	.short	0
	.short	8
	.short	0
	.align	8
	.long	5
	.align	8
                                        # live roots for JnJVM_HelloWorld_main___3Ljava_lang_String_2
	.quad	HelloWorld_VirtualMethods+80
	.quad	.Ltmp6+1
	.short	5
	.short	24
	.short	1
	.short	-8
	.align	8
	.quad	HelloWorld_VirtualMethods+80
	.quad	.Ltmp7
	.short	5
	.short	24
	.short	1
	.short	-8
	.align	8
	.quad	HelloWorld_VirtualMethods+80
	.quad	.Ltmp8
	.short	0
	.short	24
	.short	1
	.short	-8
	.align	8
	.quad	HelloWorld_VirtualMethods+80
	.quad	.Ltmp9
	.short	0
	.short	24
	.short	1
	.short	-8
	.align	8
	.quad	HelloWorld_VirtualMethods+80
	.quad	.Ltmp10
	.short	0
	.short	24
	.short	1
	.short	-8
	.align	8
	.long	1
	.align	8
                                        # live roots for __L__Vstatic_buf
	.long	0
	.long	0
	.quad	.Ltmp12
	.short	0
	.short	8
	.short	0
	.align	8
	.long	1
	.align	8
                                        # live roots for __L__Vvirtual_buf
	.long	0
	.long	0
	.quad	.Ltmp14
	.short	0
	.short	8
	.short	0
	.align	8
	.section	".note.GNU-stack","",@progbits
