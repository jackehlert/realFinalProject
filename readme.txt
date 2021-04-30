1. It is necessary to put a base case into a recursive function so that it
can work in the first place. You can't have a recursive funciton that
uses the term before if there is no start term. This would cause the function
to continue to search for the first term for infinity.
2. One pitfall to a wronly implemented recursive function is that it could
end up going one for infinity. This would happen if you don't have a base
case or not have enough base cases if more than one is neccesary. Another 
pitfall could happen if you don't give the recursive function a term to 
end on. In this case, the function will go on forever in the other direction
unitl you stop it. And then, it doesn't save itself so you have to run 
througg the whole sequence again to get a new term.
3. One problem you could solve with divide and conquer is a search problem. 
You could create a code to didve up a large data set into smaller ones
and search for the presence of one type of data. Another problem is sorting
something from least to greatest or greatest to least. As in quicksort, you 
split the data into sub pieces and sort the different pieces and then put
all the pieces back together to form the sorted solution. The last problem
you can solve with divide and conquer is large multiplication problems. 
Because multiplication is communitive you can break up parts of the
problem into parts, multiply the parts together and then multiply the 
products together to get the solution.
https://people.eecs.berkeley.edu/~vazirani/algorithms/chap2.pdf
https://afteracademy.com/blog/divide-and-conquer-approach-in-programming