module cable_clamp()
{
    difference()
    {
        // solid
        union()
        {
            translate( [5,4.5,0] )
                cylinder( d=15, h=3, $fn=30 );
            translate([0,1.5,3])cube([10,6,2]);
        }
        // holes
        translate( [3.5,4.5,-1] )
        { 
            cylinder( d=3.2,h=10, $fn=30 );
            //cylinder( d=6.2,h=1.5, $fn=30 );
        }
       // translate([6,-1,2.25])cube([3,12,1.8]);
        translate([6,0.25,-1])cube([3,1.75,10]);
        translate([6,7,-1])cube([3,1.75,10]);
        translate([6,0.25,4])cube([5,7.5,7]);
    }
}

// proper printing position
    cable_clamp();