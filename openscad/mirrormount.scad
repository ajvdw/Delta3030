difference()
{
	union()
	{
		cube([16,9,3]);
		intersection()
		{	
			cube([12,9,5.75]);
			translate([3,1,0]) cylinder( d=20,h=6 );
		}
	}

	union()
	{
		translate([7.5,4.5,0]) cylinder(d=3.6,h=10,$fn=24);
	}
}