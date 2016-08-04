$fn=72;

difference()
{
	union()
	{
		//cylinder( h=16, r=16 );
		intersection()
		{
			cylinder( h=16, r=40, $fn=3 );
			rotate([0,0,30]) cylinder( h=16, r=30, $fn=6 );
		}

	}
	// cutouts
	
	// vertical hole
	cylinder( h=16, d=8.5 );

	// nut holes
	translate([9,-7,0]) cube([8,14,16]);
	rotate([0,0,120]) translate([9,-7,0]) cube([8,14,16]);
	rotate([0,0,240]) translate([9,-7,0]) cube([8,14,16]);

	// horizontal holes
	rotate([-90,0,30]) translate([0,-8,6]) cylinder( d=8.5, h = 50);
	rotate([-90,0,150]) translate([0,-8,6]) cylinder( d=8.5, h = 50);
	rotate([-90,0,270]) translate([0,-8,6]) cylinder( d=8.5, h = 50);
}