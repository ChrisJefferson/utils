##############################################################################
##
#W  number.gd                    GAP4 package `Utils'             Stefan Kohl 
##
##  version 0.12, 01/12/2015 
##
#Y  Copyright (C) 2015, The GAP Group, 

#############################################################################
##  this function transferred from RCWA 
##
#F  AllSmoothIntegers( <maxp>, <maxn> )
##
##  Returns the set of all integers in the range [1..<maxn>] which have only
##  prime divisors in the range [2..<maxp>].
##
DeclareGlobalFunction( "AllSmoothIntegers" );

#############################################################################
##  this function transferred from RCWA 
##
#F  ExponentOfPrime( <n>, <p> )
##
##  The exponent of the prime <p> in the prime factorization of <n>.
##
DeclareGlobalFunction( "ExponentOfPrime" );

#############################################################################
##  this function transferred from RCWA 
##
#F  NextProbablyPrimeInt( <n> ) . . next integer passing `IsProbablyPrimeInt'
##
##  Returns the smallest integer larger than <n> which passes GAP's
##  probabilistic primality test.
##
##  The function `NextProbablyPrimeInt' does the same as `NextPrimeInt',
##  except that for reasons of performance it tests numbers only for
##  `IsProbablyPrimeInt' instead of `IsPrimeInt'.
##  For large <n>, this function is much faster than `NextPrimeInt'.
##
DeclareGlobalFunction( "NextProbablyPrimeInt" );

#############################################################################
##  this function transferred from RCWA 
##
#F  PrimeNumbersIterator(  )
#F  PrimeNumbersIterator( chunksize )
##
##  Iterator running through the prime numbers in ascending order.
##
DeclareGlobalFunction ( "PrimeNumbersIterator" );

#############################################################################
##  this function transferred from RCWA 
##
#O  AllProducts( <D>, <k> ) . . all products of <k>-tuples of elements of <D>
#M  AllProducts( <l>, <k> ) . . . . . . . . . . . . . . . . . . . . for lists
##
DeclareOperation( "AllProducts", [ IsListOrCollection, IsPosInt ] );

#############################################################################
##  this function transferred from RCWA 
##
#F  RestrictedPartitionsWithoutRepetitions( <n>, <S> )
##
##  Given a positive integer n and a set of positive integers S, this func-
##  tion returns a list of all partitions of n into distinct elements of S.
##  The only difference to `RestrictedPartitions' is that no repetitions are
##  allowed.
##
DeclareGlobalFunction( "RestrictedPartitionsWithoutRepetitions" );



#############################################################################
##
#E  number.gd . . . . . . . . . . . . . . . . . . . . . . . . . . . ends here
