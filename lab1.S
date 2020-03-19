.global lab1

.syntax unified

#define A #2
#define B #10
#define C #4

lab1:
	push { r0, r1, r2, r3, r4, lr }
	mov r1, A
	mov r2, B
	mov r3, C

	sub r4, r1, r2 // (a-b)
	cmp r4, #0

	ite ge // if (a-b) >= 0
	addGE r0, r1, r2 // res = a + b
	subLT r0, r1, r2 // res = a - b

	sdiv r0, r0, r3 // res = res / c

	pop { r0, r1, r2, r3, r4, pc }
