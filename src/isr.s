/*Define the global interrupt service routine labels here.*/
.global _isr0
.global _isr1
.global _isr2
.global _isr3
.global _isr4
.global _isr5
.global _isr6
.global _isr7
.global _isr8
.global _isr9
.global _isr10
.global _isr11
.global _isr12
.global _isr13
.global _isr14
.global _isr15
.global _isr16
.global _isr17
.global _isr18
.global _isr19
.global _isr20
.global _isr21
.global _isr22
.global _isr23
.global _isr24
.global _isr25
.global _isr26
.global _isr27
.global _isr28
.global _isr29
.global _isr30
.global _isr31

/* Interrupt service routine handlers.*/
_isr0:
	cli
	push $0
	push $0
	jmp isr_common_stub
_isr1:
	cli
	push $0
	push $1
	jmp isr_common_stub
_isr2:
	cli
	push $0
	push $2
	jmp isr_common_stub
_isr3:
	cli
	push $0
	push $3
	jmp isr_common_stub
_isr4:
	cli
	push $0
	push $4
	jmp isr_common_stub
_isr5:
	cli
	push $0
	push $5
	jmp isr_common_stub
_isr6:
	cli
	push $0
	push $6
	jmp isr_common_stub
_isr7:
	cli
	push $0
	push $7
	jmp isr_common_stub
_isr8:
	cli
	push $8
	jmp isr_common_stub
_isr9:
	cli
	push $0x0
	push $0x9
	jmp isr_common_stub
_isr10:
	cli
	push $0xa
	jmp isr_common_stub
_isr11:
	cli
	push $0xb
	jmp isr_common_stub
_isr12:
	cli
	push $0xc
	jmp isr_common_stub
_isr13:
	cli
	push $0xd
	jmp isr_common_stub
_isr14:
	cli
	push $0xe
	jmp isr_common_stub
_isr15:
	cli
	push $0x0
	push $0xf
	jmp isr_common_stub
_isr16:
	cli
	push $0x0
	push $0x10
	jmp isr_common_stub
_isr17:
	cli
	push $0x0
	push $0x11
	jmp isr_common_stub
_isr18:
	cli
	push $0x0
	push $0x12
	jmp isr_common_stub
_isr19:
	cli
	push $0x0
	push $0x13
	jmp isr_common_stub
_isr20:
	cli
	push $0x0
	push $0x14
	jmp isr_common_stub
_isr21:
	cli
	push $0x0
	push $0x15
	jmp isr_common_stub
_isr22:
	cli
	push $0x0
	push $0x16
	jmp isr_common_stub
_isr23:
	cli
	push $0x0
	push $0x17
	jmp isr_common_stub
_isr24:
	cli
	push $0x0
	push $0x18
	jmp isr_common_stub
_isr25:
	cli
	push $0x0
	push $0x19
	jmp isr_common_stub
_isr26:
	cli
	push $0x0
	push $0x1a
	jmp isr_common_stub
_isr27:
	cli
	push $0x0
	push $0x1b
	jmp isr_common_stub
_isr28:
	cli
	push $0x0
	push $0x1c
	jmp isr_common_stub
_isr29:
	cli
	push $0x0
	push $0x1d
	jmp isr_common_stub
_isr30:
	cli
	push $0x0
	push $0x1e
	jmp isr_common_stub
_isr31:
	cli
	push $0x0
	push $0x1f
	jmp isr_common_stub
