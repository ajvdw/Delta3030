$fn=72;
difference()
{
	{  // ++
		union()
		{	
			cylinder( d1=14, d2=17,h=10 );
 			cylinder( d=12, h=13 );
		}
	}
	{  // --
		translate([0,0,3]) cylinder( d=6.5,h=10 );
		translate([0,0,10]) cylinder( d=9,h=3 );	}
}
translate([-3.25,-2.5,0]) cube([1.5,5,6]);
