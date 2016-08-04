$fn=360;

spoolinner=58.5;
bearingouter=22.2;
wall=1.5;
rim=2;

difference()
{
	cylinder( d=spoolinner, h=16 );
	translate( [0,0,6] )cylinder( d1=bearingouter-rim, d2=bearingouter-rim*2, h=4.01 );
	cylinder( d=bearingouter, h=6.01 );
	translate( [0,0,10] ) cylinder( h=6, d=bearingouter );
}

