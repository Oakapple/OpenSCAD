
module cross(x,offset)
{
    midpoint=x/2;
    above=midpoint+offset;
    below=midpoint-offset;
    translate ([below,0]) {cylinder (h=above, r=2);}
    translate ([above,0,below]) {cylinder (h=above,r=2);}
    translate ([0,0,below]) rotate (90,[0,1,0]) {cylinder (h=above,r=2);}
    translate([below,0,above]) rotate (90,[0,1,0])  {cylinder (h=above,r=2);}
}


module frame (x)
{
    cylinder (h=x,r=2);
    translate ([x,0]) {cylinder (h=x,r=2);}
    rotate (90,[0,1,0]) {cylinder (h=x,r=2);}
    translate([0,0,x]) rotate (90,[0,1,0])  cylinder (h=x,r=2);
}

module main ()
{
    frame(100);
for (i=[5:5:45])
{
    translate([0,2*i,0])
    {
        cross (100,i);
        frame (100);
    }
}
}

module shaft (number, gap)
{
    for (j=[0:number])
    {
        for (i=[0:number])
    {
        translate ([i*gap,j*gap,0]) {cylinder (h=number*gap,r=2);}
    }
}
}


module wirecube (number, gap)
{
    offset = -(number*gap)/2;
    translate ([offset,offset,offset]) {shaft (number,gap);}
rotate (90,[0,1,0]) translate ([offset,offset,offset]) {shaft (number,gap);}
rotate (90,[1,0,0]) translate ([offset,offset,offset]) {shaft (number,gap);}
}

intersection ()
{
    wirecube(10,10);
    sphere (55);
}



