nozzle=0.5;
wall=2;
spaceh=6;
spacev=3;
height=12;

difference()
{
	cube([spaceh+2*wall+nozzle,spacev+2*wall+nozzle,height],center=true);
	cube([spaceh+nozzle,spacev+nozzle,height],center=true);
}
