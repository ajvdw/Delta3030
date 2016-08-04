// Idler Mount
thickness=4;
width = 30;

$fn=36;

rotate([90,0,0])
{
difference()
{
union()
{
intersection()
{
	difference()
	{
		// Solids
		union()
		{
	
			translate( [-width/2,-7,0] ) cube([width,14,4]);
	
			for( a=[0:180:359] ) rotate([0,0,a]) 
			{
	
				translate( [width/2+2.5,-7,0] )	
				rotate([0,-120,0]) 
				{
					cube([40,14,thickness]);
		
				}
	
				translate( [width/2+7,-3.25,0] )	
				rotate([0,-120,0]) 
				{
					cube([40,6.5,5]);
		
				}
	
			}
	
			
			translate([0,1.5,0]) cylinder( d=8, h=20 );
			
	
		}
	

		translate([-9,-10,5]) cube( [18,20,11] );
	
	}
		translate([-20,-3.25,0]) cube( [40,20,26] );
	
}			

translate([0,1.5,15]) cylinder( d=8, h=2 );
translate([-4,-3.25,16]) cube([8,10.25,6.3]);

}
		// Holes
		translate([0,1.5,0]) cylinder( d=4.25, h=50 );
}
}
