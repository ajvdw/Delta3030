$fn=12;
difference()
{
	// Solids
	union()
	{
		// effector mount
		hull()
		{
			translate([-20,-10,0]) cube( [40,20,6] );
			rotate([90,0,0]) for( x=[-19,19] ) 
				translate([x,4,-10]) cylinder( r=3,h=20 );
		}

		// duct
		intersection()
		{
			translate([-15,-15,0]) cube( [30,30,15] );
			cylinder( r1=20, r2=12.5, h=20, $fn=60 );
		}
	}


	// effector mount holes
	rotate([90,0,0]) for( x=[-19,19]) 
		translate([x,4,-16]) cylinder( r=1.6,h=32 );

	// extruder cutout
	rotate([90,0,0]) translate([-0,14,-16]) cylinder( r=12.5,h=32,$fn=60 );

	// fan flow cutout
	translate([0,0,-1]) cylinder( r1=14,r2=12,h=18, $fn=60 );

	// fan mount holes
	for( x=[-12,12] ) for( y=[-12,12] ) 
		translate([x,y,0]) cylinder(r1=1,r2=0.3,h=7, $fn=6);
}
