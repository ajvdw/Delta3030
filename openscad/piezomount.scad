$fn=60;

height=5.5;
m3=3.25;
m3_washer=10.3;
piezo=28;

module PiezoMount()
{
    intersection()
    {
        difference()
        {
            // solid
            union()
            {
                translate([-16,0,0]) cylinder(h=5+height,d2=10, d1=12);
                translate([16,0,0]) cylinder(h=5+height,d2=10, d1=12);
                translate([0,4,0]) cylinder(h=5+height,d=12);
                cylinder(h=5+height,d=6+piezo);
            }
            // holes
            translate([0,0,-0.1]) cylinder(h=1,d=piezo);
            translate([-16,0,-0.1]) cylinder(h=5+height,d=m3);
            translate([16,0,-0.1]) cylinder(h=5+height,d=m3);
            translate([0,4,-0.1]) cylinder(h=5+height,d=m3);
            translate([0,4,-0.1]) cylinder(h=3.5,d=6.1);
            translate([0,4,-0.1]) cylinder(h=2,d=m3_washer);
            translate([0,-2,-1.8]) rotate([70,0,0]) cylinder(d=4,h=20);
        }
        cube(center=true, [80,20,2*height]); // clipping
    }
}

translate([0,0,height]) scale([1,1,-1]) PiezoMount();