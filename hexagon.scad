$fn=6;

module cell (h,r,open)
{
    if (open)
    {
        difference ()
        {
            cylinder (h=h, r=r);
            translate ([0,0,1]) cylinder (h=h, r=r-1);
        }
    } else {
        cylinder (h=h, r=r);
    }
}

module build ()
{
    cell (5,5,true);
    translate ([13,0,0]) cell (5,5,false);
    translate ([6,4,0]) cell (5,5,true);
}

module mesh (h,r)
{
    for (i=[0:10])
    {
        for (j=[0:10])
        {
            translate ([i*2.2*r,j*2*r,0]) cylinder (h=h, r=r);
        }
    }
}

module wall (h,r)
{
    difference ()
    {   
        cube ([10*r*2.2,10*r*2,r+1]);
        mesh (h,r);
    }
}

wall (5,5);
translate ([110,0,0]) wall (5,5);

