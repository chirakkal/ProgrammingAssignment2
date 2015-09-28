# ProgrammingAssignment2
Repository for Programming Assignment 2 for R Programming on Coursera

This file contains two functions 

1. makeCacheMatrix
2. cacheSolve

'makeCacheMatrix' accepts a matrix valued parameter and converts it into a list of functions. 
The functions can be used on the object to get its matrix value, set its matrix value, get and set 
its matrix inverse

'cacheSolve' looks for the inverse in the cache and, if found, returns it without any computation.
Otherwise it does the calculation to find the matrix inverse

NB: No check is done to check the invertibility of matrices. All matrix inputs are assumed non-singular.
