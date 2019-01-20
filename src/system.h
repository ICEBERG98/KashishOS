#ifndef __SYSTEM_H
#define __SYSTEM_H

/* MAIN.C */
extern void* memcpy(void* dest,const void* src, size_t count);
extern void* memset(void* dest, int val, size_t count);
extern unsigned short* memsetw(unsigned short* dest, unsigned short val, int count);
extern size_t strlen(const char* str);
extern void terminal_writestring(const char* data);
/* GDT.C */
extern void _gdt_flush();
extern void gdt_set_gate(int num, unsigned long base, unsigned long limit, unsigned char access, unsigned char gran);
extern void gdt_install();
/* IDT.C */
extern void _idt_load();
extern void idt_set_gate(unsigned char num, unsigned long base, unsigned short sel, unsigned char flags);
extern void idt_install();
/* ISR.C */
struct regs /* This defines what the stack looks like after an ISR was running */
{
	unsigned int gs, fs, es, ds;                            /* pushed the segs last */
	unsigned int edi, esi, ebp, esp, ebx, edx, ecx, eax;    /* pushed by 'pusha' */
	unsigned int int_no, err_code;                          /* our 'push byte #' and ecodes do this */
	unsigned int eip, cs, eflags, useresp, ss;              /* pushed by the processor automatically */
};
extern void isrs_install();

#endif
