/*
 * Copyright (C) 1995-2000 Russell King
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation.
 */

#include <machine/cpu-features.h>
#include <private/bionic_asm.h>

/* thumb is a little slower, but we're
 * more likely to come from thumb than arm */
#define STRRCHR_USE_THUMB

	.syntax unified
	.arch armv7-a

	.text

#ifdef STRRCHR_USE_THUMB
	.thumb

	.thumb_func
#endif

ENTRY(strrchr)
	mov	r3,#0

1:
	ldrb	r2,[r0],#1
	teq	r2,r1
#ifdef STRRCHR_USE_THUMB
	it	eq
#endif
	subeq	r3,r0,#1
	teq	r2,#0
	bne	1b
	mov	r0,r3
	bx	lr
END(strrchr)

#ifdef STRRCHR_USE_THUMB
#undef STRRCHR_USE_THUMB
#endif
