//include <system.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include "system.h"
 /* Defines an IDT entry */
struct idt_entry
{
	unsigned short base_lo;
	unsigned short sel;	/* Our kernel segment goes here! */
	unsigned char always0;	/* This will ALWAYS be set to 0! */
	unsigned char flags;	/* Set using the above table! */
	unsigned short base_hi;
} __attribute__((packed));

 struct idt_ptr
{
	unsigned short limit;
	unsigned int base;
} __attribute__((packed));

 /* Declare an IDT of 256 entries.  Although we will only use the
 * first 32 entries in this tutorial, the rest exists as a bit
 * of a trap.  If any undefined IDT entry is hit, it normally
 * will caused an "Unhandled Interrupt" exception.  Any descriptor
 * for which the 'presence' bit is cleared (0) will generate an
 * "Unhandled Interrupt" exception */
struct idt_entry idt[256];
struct idt_ptr _idtp;

 /* This exists in 'start.asm', and is used to load our IDT */
extern void _idt_load();

 /* Use this function to set an entry in the IDT.  A lot simpler
 * than twiddling with the GDT ;) */
void idt_set_gate(unsigned char num, unsigned long base, unsigned short sel, unsigned char flags)
{
	/* Assign the base values */
	idt[num].base_lo = (base & 0xFFFF);
	idt[num].base_hi = (base >> 16) & 0xFFFF;
	idt[num].always0 = 0;
 	/* Set the other fields */
	idt[num].sel = sel;
	idt[num].flags = flags;
}

 /* Installs the IDT */
void idt_install()
{
	/* Sets the special IDT pointer up, just like in 'gdt.c' */
	_idtp.limit = (sizeof (struct idt_entry) * 256) - 1;
	_idtp.base = &idt;

 	/* Clear out the entire IDT, initalizing it to zeros */
	memset(&idt, 0, sizeof(struct idt_entry) * 256);

 	/* Add any new ISRs to the IDT here using idt_set_gate */

 	/* Points the processor's internal register to the new IDT */
	_idt_load();
}
