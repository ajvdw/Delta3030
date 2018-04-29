$fn=60;

module cable_clamp_s()
{
    difference()
    {
        // solid
        union()
        {
            translate([5,4.5,0]) cylinder(d=15,h=3);
            translate([0,1.5,3]) cube([10,6,2]);
        }
        // holes
        translate([3.5,4.5,-1]) cylinder(d=3.2,h=10);
        translate([6,0.25,-1]) cube([3,1.75,10]);
        translate([6,7,-1]) cube([3,1.75,10]);
        translate([6,0.25,4]) cube([5,7.5,7]);
    }
}

module cable_clamp_l()
{
    difference()
    {
        // solid
        union()
        {
            translate([5,4.5,0]) cylinder(d=15,h=3);
            translate([0.5,-0.5,3]) cube([6,10,2]);
        }
        // holes
        translate([3.5,4.5,-1]) cylinder(d=3.2,h=10);
        translate([7,2.25,-1]) cube([1.75,4.5,10]);
        translate([8,2.25,2]) cube([5,4.5,2]);

    }
}


// proper printing position
    cable_clamp_l();