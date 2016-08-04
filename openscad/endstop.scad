
$fn=36;

rotate([0,180,0])
difference()
{
	union()
	{
		cube([20,20,9]);
		translate([4,0,-2]) cube([6.5,20,2]);
	}
	translate([5,7,0]) cylinder(d=3.5,h=10);
	translate([15,7,0]) cylinder(d=3.5,h=10);
	translate([5,7,-4]) cylinder(d=7,h=8);
	translate([15,7,0]) cylinder(d=7,h=4);

	translate([7,13,-4]) cylinder(d=3.5,h=14);
	translate([7,13,5]) cylinder(d=7.5,h=9);
}
//translate([-5,-10]) cube([5,20,10]);
