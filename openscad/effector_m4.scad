m3_radius=1.5;
m4_radius=2.0;
separation = 45;  			// Distance between ball joint mounting faces.
offset = 23;  				// Same as DELTA_EFFECTOR_OFFSET in Marlin.
hotend_radius = 8.4;
magnet_radius=6.35;

$fn=72;

module effector() 
{
	height = 6;
	difference() 
	{
		union() // Solids
		{
			intersection()
			{
				translate( [-12.5,-12.5,0] ) cube([25,25,18]);
				translate( [0,0,0] ) cylinder( r1=16,r2=15,h=15 );
			}
			// Base
			cylinder(r=offset+10, h=height, center=true,$fn=72);
			for (a = [0:120:359]) rotate([0, 0, a])
				for( s = [-1,1] )
					translate( [separation*s/2,offset,-height/2] ) cylinder( r=magnet_radius,  h=height );;
		}
		{	
			// Fan holes
			for (a = [60,300]) rotate([0, 0, a]) 
				translate([0,22,-3.5]) cylinder(r=m3_radius,h=height+1,$fn=12); 
			// Fixation holes
			for (a = [120,240]) rotate([0, 0, a])
				translate([0,16.5,-3.5]) cylinder(r=m3_radius,h=height+1,$fn=12); 
			
			// Extruder
			translate([0,0,-3.5])cylinder(r=hotend_radius,h=16.0, $fn=36);
			translate([0,0,-3.5])cylinder(r=hotend_radius-1.5, h=23.5,$fn=36);
			translate( [0,0,12.5] ) cylinder(r1=hotend_radius,r2=hotend_radius-1.5,h=0.5, $fn=36);

			// Horizontal extruder j-mount
			translate([7.4,15,8.1]) rotate([90,0,0]) cylinder(r=1.6,h=30,$fn=12);
			translate([-7.4,15,8.1]) rotate([90,0,0]) cylinder(r=1.6,h=30,$fn=12);
			

			// Magnet ball holes
			for (a = [0:120:359]) rotate([0, 0, a])
				for( s = [-1,1] )
					translate( [separation*s/2,offset,-3.5] ) cylinder( r=m4_radius, h = height+1 );

			// Cutouts		
			for (a = [0:120:359]) rotate([0, 0, a])
				translate([0, separation+4, 0] ) cylinder( r=offset+5, h=height+1, center=true );
				 
		}
	}
}

 effector();
