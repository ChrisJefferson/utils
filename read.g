#############################################################################
##
#W  read.g                 The Utils package                    Chris Wensley
## 
#Y  Copyright (C) 2015-2022, The GAP Group,  
##

## read the actual code 

ReadPackage( "utils", "lib/files.gi" );
ReadPackage( "utils", "lib/groups.gi" );
ReadPackage( "utils", "lib/iterator.gi" );
ReadPackage( "utils", "lib/latex.gi" );
ReadPackage( "utils", "lib/lcset.gi" );
ReadPackage( "utils", "lib/lists.gi" );
ReadPackage( "utils", "lib/magma.gi" );
ReadPackage( "utils", "lib/maps.gi" );
ReadPackage( "utils", "lib/number.gi" );
ReadPackage( "utils", "lib/print.gi" );
ReadPackage( "utils", "lib/record.gi" );
ReadPackage( "utils", "lib/string.gi" );
if not CompareVersionNumbers( GAPInfo.Version, "4.13.0" ) then 
    ReadPackage( "utils", "lib/download.gi" );
fi; 