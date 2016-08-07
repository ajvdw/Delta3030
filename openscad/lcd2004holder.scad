// LCD 2004
$fn=24;

module lcd2004()
{
	difference()
	{
		// Solids
		union()
        {
            // Case
            hull()
            {
                cube( [153, 70, 16] );
                translate([153,70,0]) cylinder(r=2,h=14,$fn=8);
                translate([153,0,0]) cylinder(r=2,h=14,$fn=8);
                translate([0,0,0]) cylinder(r=2,h=14,$fn=8);
                translate([0,70,0]) cylinder(r=2,h=14,$fn=8);
            }
            // Rim around SD Slot
            hull() 
            {
                translate([-3,20.9,0]) cube([2.5,27.2,8]); 
                translate([-1,12.9,0]) cube([1,43.2,14]);           }          
        }
		// Holes

		// LCD display
		translate([14.9,13.4, 0]) cube([98.7,41.7,17]);
		// LCD pcb
		translate([13.9,1.15,0]) cube([100.7,66.7,14]);
		// Master pcb 
		translate([0.9,1.9,0]) cube([151.2,66.5,8]);
		// SD Slot
		translate([-5,20.9,0]) cube([10,27.2,8]);
	
		// Mounting screw holes
		translate([149.3,65,0]) cylinder(r=1.75,h=17);
		translate([3.9,14.5,0]) cylinder(r=1.75,h=17);
		translate([149.3,14.5,0]) cylinder(r=1.75,h=17);
		translate([3.9,65,0]) cylinder(r=1.75,h=17);
	
		// Rotary encoder
		translate([138.5,37.5,0]) cylinder(r=5,h=17);
		// Beeper
		translate([138,56.5,0]) cylinder(r=6.75,h=178);
		// Reset
		translate([138,20,0]) cylinder(r=2,h=17);
	
		// Material Savings
		translate([117,3,0]) cube([30,63,14]);
		translate([119,20,0]) cube([33,41,14]);
		translate([1,20,0]) cube([11,41,14]);
        translate([-4,-5,-1]) cube([160,80,2]);
	}
}

// Center and Flip
rotate([180,0,0]) translate([-75,-35,-16]) 
	lcd2004();