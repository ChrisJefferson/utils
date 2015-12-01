##############################################################################
##
#W  lists.tst                   Utils Package                    
##
##  version 0.12, 01/12/2015   
##
#Y  Copyright (C) 2015, The GAP Group
##  

## SubSection 2.1.1 
gap> L := [ 1, 3, 5, -1, -3, -5 ];
[ 1, 3, 5, -1, -3, -5 ]
gap> DifferencesList( L );        
[ 2, 2, -6, -2, -2 ]
gap> QuotientsList( L );
[ 3, 5/3, -1/5, 3, 5/3 ]
gap> FloatQuotientsList( L );
[ 3., 1.66667, -0.2, 3., 1.66667 ]
gap> L := [ 0 ];;         
gap> DifferencesList( L );
[  ]
gap> L := [ ];;           
gap> DifferencesList( L );
[  ]

## SubSection 2.2.1 
gap> J := [ [1,2,3], [3,4], [3,4], [1,2,4] ];;
gap> DistinctRepresentatives( J );
[ 1, 3, 4, 2 ]
gap> K := [ [3,4], [1,2], [2,3], [2,3,4] ];;
gap> CommonRepresentatives( J, K );
[ [ 3, 3, 3, 1 ], [ 1, 3, 4, 2 ] ]
gap> d16 := DihedralGroup( IsPermGroup, 16 );  SetName( d16, "d16" );
Group([ (1,2,3,4,5,6,7,8), (2,8)(3,7)(4,6) ])
gap> c4 := Subgroup( d16, [ d16.1^2 ] );  SetName( c4, "c4" );
Group([ (1,3,5,7)(2,4,6,8) ])
gap> RightCosets( d16, c4 );
[ RightCoset(c4,()), RightCoset(c4,(2,8)(3,7)(4,6)), RightCoset(c4,(1,8,7,6,5,
   4,3,2)), RightCoset(c4,(1,8)(2,7)(3,6)(4,5)) ]
gap> trans := CommonTransversal( d16, c4 );
[ (), (2,8)(3,7)(4,6), (1,2,3,4,5,6,7,8), (1,2)(3,8)(4,7)(5,6) ]
gap> IsCommonTransversal( d16, c4, trans );
true



#############################################################################
##
#E  lists.tst . . . . . . . . . . . . . . . . . . . . . . . . . . . ends here
