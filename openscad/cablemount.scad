$fn=60;

// 1: small
// 2: medium
// 3: large

module cable_mount_1()
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

module cable_mount_2()
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


module cable_mount_3()
{
    difference()
    {
        // solid
        union()
        {
            translate([5,4.5,0]) cylinder(d=16,h=3.5);
            translate([-2,1.5,3]) cube([10,6,2]);
        }
        // holes
        translate([3.5,4.5,-1]) cylinder(d=3.2,h=10);
        translate([7.5,1.25,-1]) cube([1.75,6.5,10]);
    }
}

// proper printing position
cable_mount_3();