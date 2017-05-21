$fn=36; //90;

module rod_end()
{
	difference()
	{
		// Solid
		cylinder(d=12.6,h=9);
	
		// Holes
		translate( [0,0,2]) cylinder( d=10.3,h=11 );
		cylinder( d=6,h=11 );
		translate( [0,0,-1.5]) sphere( d=10.3);
	}
}


for( x=[-15,0,15] ) for(y=[-30,-15,0,15])
	translate([x,y,0]) rod_end();


