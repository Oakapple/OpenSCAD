
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

frame(100);
for (i=[5:5:45])
{
    translate([0,2*i,0])
    {
        cross (100,i);
        frame (100);
    }
}

