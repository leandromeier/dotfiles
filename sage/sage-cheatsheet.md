## produce a matrix of size 2 x 3 with variable entries bij
matrix(SR, 2, 3, lambda i,j: var('b{}{}'.format(j,i)))

## i-th canonical vector in QQ^n:
((QQ)^n).basis()[i-1]

## kernels
A.kernel() returns the same as A.left_kernel(), which is a vector space V such that x*A = 0 for all x in V.
A.right_kernel() returns the 'usual' kernel, i.e. the vector space V such that A*x = 0 for all x in V.

## solving linear systems (matrices)
it's called solve_left() (or solve_right())

