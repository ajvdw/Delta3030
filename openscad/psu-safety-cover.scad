difference()
{
union()
{
translate([-2,0,0]) cube([2,25,15]);
cube([25,25,2]);
translate([25,0,0]) cube([3,25,20]);
translate([-2,25,0]) cube([30,2,20]);
}
translate([24,18,11]) rotate([0,90,0])cylinder(d=3.5,h=5);
}