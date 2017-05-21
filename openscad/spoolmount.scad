// Spool mount

$fn=48;
height=43;
thickness=4;
rim=2.5;

difference()
{
	union()
	{
		hull()
		{
			cube([20,20,thickness]);
			translate([height,10,0]) cylinder(d=16, h=thickness);
		}
		translate([7.5,0,0]) cube([6.5,20,thickness+rim]);
	}
	translate([height,10,-1]) cylinder(d=8.5,h=thickness+2);
	translate([10.75,10,-1]) cylinder(d=5,h=thickness+rim+2);
}