	.file	"HelloWorld.java"

	.ident	"GCC: (GNU) 4.6.4 LLVM: 3.3svn"


	.text
	.globl	_ZN10HelloWorldC1Ev
	.align	16, 0x90
	.type	_ZN10HelloWorldC1Ev,@function
_ZN10HelloWorldC1Ev:
	.cfi_startproc
	jmp	_ZN4java4lang6ObjectC1Ev
.Ltmp0:
	.size	_ZN10HelloWorldC1Ev, .Ltmp0-_ZN10HelloWorldC1Ev
	.cfi_endproc

	.globl	_ZN10HelloWorld4mainEJvP6JArrayIPN4java4lang6StringEE
	.align	16, 0x90
	.type	_ZN10HelloWorld4mainEJvP6JArrayIPN4java4lang6StringEE,@function
_ZN10HelloWorld4mainEJvP6JArrayIPN4java4lang6StringEE:
	.cfi_startproc
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 16
	movl	$_ZN10HelloWorld6class$E, %edi
	xorb	%al, %al
	callq	_Jv_InitClass
	movl	$_ZN4java4lang6System6class$E, %edi
	xorb	%al, %al
	callq	_Jv_InitClass
	movq	_ZN4java4lang6System3outE(%rip), %rdi
	movq	_CD_HelloWorld+8(%rip), %rsi
	movq	(%rdi), %rax
	movq	248(%rax), %rax
	popq	%rdx
	jmpq	*%rax  # TAILCALL
.Ltmp3:
	.size	_ZN10HelloWorld4mainEJvP6JArrayIPN4java4lang6StringEE, .Ltmp3-_ZN10HelloWorld4mainEJvP6JArrayIPN4java4lang6StringEE
	.cfi_endproc

	.align	16, 0x90
	.type	_Jv_global_static_constructor,@function
_Jv_global_static_constructor:
	.cfi_startproc
	movl	$_ZGr8_$_dummy, %edi
	jmp	_Jv_RegisterResource
.Ltmp4:
	.size	_Jv_global_static_constructor, .Ltmp4-_Jv_global_static_constructor
	.cfi_endproc

	.hidden	_ZN10HelloWorld7class$$E
	.type	_ZN10HelloWorld7class$$E,@object
	.section	.rodata,"a",@progbits
	.globl	_ZN10HelloWorld7class$$E
	.align	8
_ZN10HelloWorld7class$$E:
	.quad	_ZN10HelloWorld6class$E
	.size	_ZN10HelloWorld7class$$E, 8

	.type	_ZN10HelloWorld6class$E,@object
	.data
	.globl	_ZN10HelloWorld6class$E
	.align	32
_ZN10HelloWorld6class$E:
	.quad	_ZTVN4java4lang5ClassE+16
	.quad	406000
	.quad	_Utf7
	.short	32
	.zero	6
	.quad	_ZN4java4lang6Object6class$E
	.long	2
	.zero	4
	.quad	_CT_HelloWorld
	.quad	_CD_HelloWorld
	.quad	_MT_HelloWorld
	.short	2
	.short	6
	.zero	4
	.quad	_FL_HelloWorld
	.long	8
	.short	1
	.short	1
	.quad	_ZTVN10HelloWorldE+16
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	_catch_classes_HelloWorld
	.quad	0
	.quad	0
	.short	0
	.byte	1
	.zero	5
	.quad	0
	.short	0
	.zero	6
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	_ZN10HelloWorld6class$E, 280

	.type	_Utf7,@object
	.section	.rodata.jutf8.16,"aM",@progbits,16
	.align	2
_Utf7:
	.short	41472
	.short	10
	.asciz	 "HelloWorld\000"
	.size	_Utf7, 16

	.type	_CT_HelloWorld,@object
	.data
_CT_HelloWorld:
	.ascii	 "\000\b"
	.size	_CT_HelloWorld, 2

	.type	_CD_HelloWorld,@object
	.align	16
_CD_HelloWorld:
	.quad	0
	.quad	_Utf1
	.size	_CD_HelloWorld, 16

	.type	_Utf1,@object
	.section	.rodata.jutf8.24,"a",@progbits
	.align	2
_Utf1:
	.short	18867
	.short	19
	.asciz	 "Hello World ... !!!"
	.size	_Utf1, 24

	.type	_MT_HelloWorld,@object
	.data
	.align	32
_MT_HelloWorld:
	.quad	_Utf3
	.quad	_Utf4
	.short	16384
	.short	65535
	.zero	4
	.quad	_ZN10HelloWorldC1Ev
	.quad	0
	.quad	_Utf5
	.quad	_Utf6
	.short	16393
	.short	65535
	.zero	4
	.quad	_ZN10HelloWorld4mainEJvP6JArrayIPN4java4lang6StringEE
	.quad	0
	.size	_MT_HelloWorld, 80

	.type	_Utf3,@object
	.section	.rodata.jutf8.12,"a",@progbits
	.align	2
_Utf3:
	.short	626
	.short	6
	.asciz	 "<init>\000"
	.size	_Utf3, 12

	.type	_Utf4,@object
	.section	.rodata.jutf8.8,"aM",@progbits,8
	.align	2
_Utf4:
	.short	39797
	.short	3
	.asciz	 "()V"
	.size	_Utf4, 8

	.type	_Utf5,@object
	.section	.rodata.jutf8.10,"a",@progbits
	.align	2
_Utf5:
	.short	1465
	.short	4
	.asciz	 "main\000"
	.size	_Utf5, 10

	.type	_Utf6,@object
	.section	.rodata.jutf8.28,"a",@progbits
	.align	2
_Utf6:
	.short	59434
	.short	22
	.asciz	 "([Ljava.lang.String;)V\000"
	.size	_Utf6, 28

	.type	_Utf2,@object
	.section	.rodata.jutf8.8,"aM",@progbits,8
	.align	2
_Utf2:
	.short	48689
	.short	3
	.asciz	 "str"
	.size	_Utf2, 8

	.type	_ZN10HelloWorld3strE,@object
	.data
	.globl	_ZN10HelloWorld3strE
	.align	8
_ZN10HelloWorld3strE:
	.quad	_Utf1
	.size	_ZN10HelloWorld3strE, 8

	.type	_FL_HelloWorld,@object
	.align	32
_FL_HelloWorld:
	.quad	_Utf2
	.quad	_ZN4java4lang6String6class$E
	.short	25
	.short	8
	.zero	4
	.quad	_ZN10HelloWorld3strE
	.size	_FL_HelloWorld, 32

	.hidden	_ZTVN10HelloWorldE
	.type	_ZTVN10HelloWorldE,@object
	.globl	_ZTVN10HelloWorldE
	.align	32
_ZTVN10HelloWorldE:
	.quad	0
	.quad	0
	.quad	_ZN10HelloWorld6class$E
	.quad	8
	.quad	_ZN4java4lang6Object8finalizeEJvv
	.quad	_ZN4java4lang6Object8hashCodeEJiv
	.quad	_ZN4java4lang6Object6equalsEJbPS1_
	.quad	_ZN4java4lang6Object8toStringEJPNS0_6StringEv
	.quad	_ZN4java4lang6Object5cloneEJPS1_v
	.quad	_ZN4java4lang6Object22throwNoSuchMethodErrorEJvv
	.size	_ZTVN10HelloWorldE, 80

	.type	_catch_classes_HelloWorld,@object
	.local	_catch_classes_HelloWorld
	.comm	_catch_classes_HelloWorld,48,32
	.hidden	_ZGr8_$_dummy
	.type	_ZGr8_$_dummy,@object
	.section	.rodata,"a",@progbits
	.globl	_ZGr8_$_dummy
	.align	16
_ZGr8_$_dummy:
	.long	6
	.long	0
	.ascii	 ".dummy"
	.zero	2
	.size	_ZGr8_$_dummy, 16

	.section	.init_array,"aw",@init_array
	.align	8
	.quad	_Jv_global_static_constructor

	.section	".note.GNU-stack","",@progbits
