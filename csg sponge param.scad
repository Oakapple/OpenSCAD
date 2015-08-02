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
            echo ("i=",i,"j=",j,"offset=",Myoffset);
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
    difference()
    {
        cube([dimension,dimension,dimension]);
        space(level);
    }
}

menger(6);

    