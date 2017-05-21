$fn=72;

difference()
{
	union()
	{
		//cylinder( h=16, r=16 );
		intersection()
		{
			cylinder( h=16, r=36, $fn=3 );
			rotate([0,0,30]) cylinder( h=16, r=26, $fn=6 );
		}

	}
	// cutouts
	
	// vertical hole
	translate([0,0,-1])cylinder( h=18, d=8.5 );

	// nut holes
	translate([9,-7,-1]) cube([8,14,18]);
	rotate([0,0,120]) translate([9,-7,-1]) cube([8,14,18]);
	rotate([0,0,240]) translate([9,-7,-1]) cube([8,14,18]);

	// horizontal holes
	rotate([-90,0,30]) translate([0,-8,6]) cylinder( d=8.5, h = 50);
	rotate([-90,0,150]) translate([0,-8,6]) cylinder( d=8.5, h = 50);
	rotate([-90,0,270]) translate([0,-8,6]) cylinder( d=8.5, h = 50);
}
