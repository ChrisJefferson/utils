##############################################################################
##
#W  iterator.tst                  Utils Package                    
##
#Y  Copyright (C) 2015-2019, The GAP Group 
##  

gap> ReadPackage( "utils", "tst/loadall.g" );;
gap> UtilsLoadingComplete;
true

## SubSection 6.1.1 
gap> G := SmallGroup( 6,1);; 
gap> s3 := Group( (5,6), (6,7) );; 
gap> iter := AllIsomorphismsIterator( G, s3 );;
gap> NextIterator( iter );
[ f1, f2 ] -> [ (6,7), (5,6,7) ]
gap> n := AllIsomorphismsNumber( G, s3 );
6
gap> AllIsomorphisms( G, s3 );
[ [ f1, f2 ] -> [ (6,7), (5,6,7) ], [ f1, f2 ] -> [ (5,7), (5,6,7) ], 
  [ f1, f2 ] -> [ (5,6), (5,7,6) ], [ f1, f2 ] -> [ (6,7), (5,7,6) ], 
  [ f1, f2 ] -> [ (5,7), (5,7,6) ], [ f1, f2 ] -> [ (5,6), (5,6,7) ] ]
gap> iter := AllIsomorphismsIterator( G, s3 );;
gap> for h in iter do Print( ImageElm( h, G.1 ) = (6,7), ", " ); od;
true, false, false, true, false, false,
gap> s4 := Group( (1,2),(2,3),(3,4) );;
gap> AllIsomorphismsNumber( s3, s4 );
0
gap> AllIsomorphisms( s3, s4 );
[ ]

## SubSection 6.1.2 
gap> c3c3 := Group( (1,2,3), (4,5,6) );; 
gap> iter := AllSubgroupsIterator( c3c3 );
<iterator>
gap> while not IsDoneIterator(iter) do Print(NextIterator(iter),"\n"); od;
Group( () )
Group( [ (4,5,6) ] )
Group( [ (1,2,3) ] )
Group( [ (1,2,3)(4,5,6) ] )
Group( [ (1,3,2)(4,5,6) ] )
Group( [ (4,5,6), (1,2,3) ] )

## Subsection 6.2.1 
gap> c4 := Group( (1,2,3,4) );;
gap> itc4 := AllSubgroupsIterator( c4 );;
gap> c6 := Group( (5,6), (7,8,9) );;
gap> itc6 := AllSubgroupsIterator( c6 );;
gap> iter := CartesianIterator( itc4, itc6 );;
gap> while not IsDoneIterator(iter) do Print(NextIterator(iter),"\n"); od;
[ Group( () ), Group( () ) ]
[ Group( () ), Group( [ (5,6) ] ) ]
[ Group( () ), Group( [ (7,8,9) ] ) ]
[ Group( () ), Group( [ (5,6), (7,8,9) ] ) ]
[ Group( [ (1,3)(2,4) ] ), Group( () ) ]
[ Group( [ (1,3)(2,4) ] ), Group( [ (5,6) ] ) ]
[ Group( [ (1,3)(2,4) ] ), Group( [ (7,8,9) ] ) ]
[ Group( [ (1,3)(2,4) ] ), Group( [ (5,6), (7,8,9) ] ) ]
[ Group( [ (1,3)(2,4), (1,2,3,4) ] ), Group( () ) ]
[ Group( [ (1,3)(2,4), (1,2,3,4) ] ), Group( [ (5,6) ] ) ]
[ Group( [ (1,3)(2,4), (1,2,3,4) ] ), Group( [ (7,8,9) ] ) ]
[ Group( [ (1,3)(2,4), (1,2,3,4) ] ), Group( [ (5,6), (7,8,9) ] ) ]
gap> ## try some trivial cases 
gap> iter0 := IteratorList( [ ] );;
gap> iter4 := IteratorList( [ 4 ] );; 
gap> cart := CartesianIterator( iter0, iter0 );;
gap> IsDoneIterator( cart );
true
gap> cart := CartesianIterator( iter0, iter4 );;
gap> IsDoneIterator( cart );
true
gap> cart := CartesianIterator( iter4, iter0 );;
gap> IsDoneIterator( cart );
true

## Subsection 6.2.2 
gap> L := [6,7,8,9];;
gap> iterL := IteratorList( L );; 
gap> pairsL := UnorderedPairsIterator( iterL );;                              
gap> while not IsDoneIterator(pairsL) do Print(NextIterator(pairsL),"\n"); od;
[ 6, 6 ]
[ 6, 7 ]
[ 7, 7 ]
[ 6, 8 ]
[ 7, 8 ]
[ 8, 8 ]
[ 6, 9 ]
[ 7, 9 ]
[ 8, 9 ]
[ 9, 9 ]
gap> iter4 := IteratorList( [ 4 ] );
<iterator>
gap> pairs4 := UnorderedPairsIterator(iter4);
<iterator>
gap> NextIterator( pairs4 );
[ 4, 4 ]
gap> IsDoneIterator( pairs4 );
true
gap> pairs0 := UnorderedPairsIterator( iter0 );;
gap> IsDoneIterator( pairs0 );
true
