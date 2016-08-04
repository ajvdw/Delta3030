// 8 + 10
$fn=36;
separation=45;

union()
{
	
	difference()
	{
		// Solids
		union()
		{
				// Base
				translate( [-14, -4, 0] ) cube( [28,28,14] );	//m3x20mm

				// Magnet mounts - "canons"
				for( x=[-separation,separation])
				{	
					translate([x/2,20,0]) rotate([45,0,0]) 
					{
						translate([0,0,5]) cylinder( d=18, h=11 );
						translate([0,0,16]) cylinder( d1=18, d2=12, h=8 );
					}
				}



				// Support beam
				intersection()
				{
					translate([-separation/2,20,0]) rotate([45,0,0]) translate([0,-9,5]) cube([separation,18,11]);
					translate( [-50, 0, 0] ) cube( [100,15,14] );
				}
		}
	


		// Cutouts

		// Flatten bottom
		translate([-50,-4,-10]) cube([100,28,10]);

		for( x=[-.5*separation,.5*separation] )
		{	
			translate([x, 20,0]) rotate([45,0,0])
			{
				// Thread m4
				cylinder( d=4.1, h=25);
				// Bolt head
				cylinder( d=8, h=13); //m4x20mm
			}

		}

		// mgn12h holes
		for( x=[-10,10] ) for( y=[0,20] ) translate( [ x,y,-0.5 ] ) cylinder( d=3.5, h=15 ); 

		// Room for belts
		translate( [-8, -5, 6] ) cube( [16,32,10] );
	}
	
	// Belt mount
	translate( [-1, -4, 5] ) cube( [7,8.5,9] );
	translate( [-1, 15.5, 5] ) cube( [7,8.5,9] );
	translate( [2.5, 4.5, 5] ) cylinder( r=3.5, h=9 );
	translate( [2.5, 15.5, 5] ) cylinder( r=3.5, h=9 );
	

}