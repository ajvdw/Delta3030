$fn=18;
holes_size_inner=3.25;
holes_size_outter=8;
holes_support = 6;

difference() 
{
	// Solids
	union()
	{
	// LCD
	translate([1,1,0])
		cube(size=[148,53,4]);
	translate([2.5,2.5,0])
		cylinder(h=4,d=holes_size_outter);
	translate([2.5,52.5,0])
		cylinder(h=4,d=holes_size_outter);
	translate([147.5,2.5,0])
		cylinder(h=4,d=holes_size_outter);
	translate([147.5,52.5,0])
		cylinder(h=4,d=holes_size_outter);

	// ARDUINO
	translate([48,51.26,0])
	{
        //RB
        translate([0,-48.26,0]) cylinder(d=holes_size_outter,h=holes_support);
        //LB
        translate([1.27,0,0])cylinder(d=holes_size_outter,h=holes_support);
        //RT
        translate([82.55,-48.26,0])cylinder(d=holes_size_outter,h=holes_support);
        //LT
        translate([76.2,0,0])cylinder(d=holes_size_outter,h=holes_support);
	}

	}
	// Holes

   // LCD
	translate([2.5,2.5,-1])
		cylinder(h=7,d=holes_size_inner);
	translate([2.5,52.5,-1])
		cylinder(h=7,d=holes_size_inner);
	translate([147.5,2.5,-1])
		cylinder(h=7,d=holes_size_inner);
	translate([147.5,52.5,-1])
		cylinder(h=7,d=holes_size_inner);
	translate([10,8,-1])
		cube(size=[35,39,7]);
	translate([55,8,-1])
		cube(size=[85,39,7]);


	// ARDUINO
	translate([48,51.26,-1])
	{
        //RB
        translate([0,-48.26,0]) cylinder(d=holes_size_inner,h=holes_support+2);
        //LB
        translate([1.27,0,0])cylinder(d=holes_size_inner,h=holes_support+2);
        //RT
        translate([82.55,-48.2,0])cylinder(d=holes_size_inner,h=holes_support+2);
        //LT
        translate([76.2,0,0])cylinder(d=holes_size_inner,h=holes_support+2);
	}

}
