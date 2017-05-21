$fn=360;

spoolinner=51.5; //58.5;
bearingouter=22.2;
wall=1.5;
rim=2;

difference()
{
	cylinder( d=spoolinner, h=16 );
	translate( [0,0,5] ) cylinder( d1=bearingouter-rim, d2=bearingouter-rim*2, h=10 );
	translate( [0,0,-1] ) cylinder( d=bearingouter, h=7 );
	translate( [0,0,10] ) cylinder( h=7, d=bearingouter );
}

