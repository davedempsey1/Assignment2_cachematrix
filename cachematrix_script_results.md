#This markdown file shows the results of the script
#from the cachematrix.R script:

#> x = rbind(c(1, 0, 5), c(2, 1, 6), c(3, 5, 0))
#> m = makeCacheMatrix(x)
#> m$get()
#     [,1] [,2] [,3]
#[1,]    1    0    5
#[2,]    2    1    6
#[3,]    3    5    0
#> cacheSolve(m)
#     [,1] [,2] [,3]
#[1,] -6.0    5 -1.0
#[2,]  3.6   -3  0.8
#[3,]  1.4   -1  0.2
#> cacheSolve(m)
#already computed, here it is:
#     [,1] [,2] [,3]
#[1,] -6.0    5 -1.0
#[2,]  3.6   -3  0.8
#[3,]  1.4   -1  0.2
#> 