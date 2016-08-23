r=50;
for (theta=[0:10:360])
{
    x=r*cos(theta);
    y=r*sin(theta);
    translate ([x,y,0]) cylinder (h=15,r1=5, r2=1);
}
difference ()
{
    cylinder (h=3, r=50);
    translate ([0,0,-1])cylinder (h=5,r=45);
}

