// Nema 16 Motor Mount
thickness=4;
width = 38;

$fn=36;

intersection()
{
	cylinder(d=52,h=50);
difference()
{
	// Solids
	union()
	{

		for( a=[0:90:359] ) rotate([0,0,a]) 
			translate( [15.5,15.5,0] ) cylinder( d=7,h=thickness+2 );

		translate( [-width/2,-21.5,0] ) cube([width,43,4]);

		for( a=[0:180:359] ) rotate([0,0,a]) 
		{

			translate( [width/2+2.5,-12.1,0] )	
			rotate([0,-120,0]) 
			{
				cube([18,24.2,thickness]);
	
			}

			translate( [width/2+5.5,-3.25,0] )	
			rotate([0,-120,0]) 
			{
				cube([19.5,6.5,6]);
	
			}

		}


	}

	// Holes
	cylinder( d=28, h=thickness );
	for( a=[0:90:359] ) rotate([0,0,a]) 
		translate( [15.5,15.5,0] ) cylinder( d=3.5,h=thickness+3 );

	//translate( [0,-6.5] )	
	for( a=[0:180:359] ) rotate([0,0,a]) 
	{

		translate( [width/2,-15] )	
		rotate([0,-120,0]) 
		{
			translate( [9,15,-8] )
			{
				translate([0,0,9.83]) cylinder( d=10,h=5 );
			 cylinder( d=3.5,h=20 );
			}
		}
	}
}
}