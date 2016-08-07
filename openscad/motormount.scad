// Nema 17 Motor Mount
thickness=4;
width = 34;

$fn=36;

intersection()
{
	cylinder(d=54,h=50);
difference()
{
	// Solids
	union()
	{

		for( a=[0:90:359] ) rotate([0,0,a]) 
			translate( [15.5,15.5,0] ) cylinder( d=7,h=thickness+2 );

		translate( [-width/2-4,-20,0] ) cube([width+8,40,4]);

		for( a=[0:180:359] ) rotate([0,0,a]) 
		{

			translate( [width/2+6.5,-12.1,0] )	
			rotate([0,-120,0]) 
			{
				cube([18,24.2,thickness]);
	
			}

			translate( [width/2+9.5,-3.25,0] )	
			rotate([0,-120,0]) 
			{
				cube([19.5,6.5,6]);
	
			}

		}


	}

	// Holes
	translate([0,0,-1]) cylinder( d=28, h=thickness+2 );
	for( a=[0:90:359] ) rotate([0,0,a]) 
		translate( [15.5,15.5,-1] ) cylinder( d=3.5,h=thickness+4);

	//translate( [0,-6.5] )	
	for( a=[0:180:359] ) rotate([0,0,a]) 
	{

		translate( [width/2+4,-15] )	
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