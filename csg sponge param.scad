module space(level)
{
    dimension=pow(3,level);
    Myoffset=dimension/3;
    echo("dimension = ",dimension);
    echo("offset =", Myoffset);
    
    for(k=[1:level])
    {
        bars(dimension/pow(3,k),dimension);
    }
   
}

module bars (Myoffset, dimension)
{
   
	   for (i=[Myoffset:2*Myoffset:dimension-1],j=[Myoffset:2*Myoffset:dimension-1])
			{
				translate ([0,i,j])
				{
					cube([dimension,Myoffset,Myoffset]);
				}
				translate ([i,0,j])
				{
					cube ([Myoffset,dimension,Myoffset]);
				}
				
				translate ([i,j,0])
				{
					cube ([Myoffset,Myoffset,dimension]);
				}
			}
	
}


module menger (level)
{
    dimension=pow(3,level);
    translate ([-dimension/2,-dimension/2,-dimension/2])
    difference()
    {
        cube([dimension,dimension,dimension]);
        for(k=[1:level])
        {
            bars(pow(3,level)/pow(3,k),pow(3,level));
        }
    }
}

module star (level,time)
{
side=pow(3,level);
difference() {
        
        rotate([45,90-atan(sqrt(2)),0])  
		menger(level);
        translate([0,0,-side/(3*time)]) cube(size=[side*3,side*3,side], center=true);
    }
}

menger(2);
//star(2,$t+0.1);

    