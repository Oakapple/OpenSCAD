
module dome (size, steps, diam)
{
    step = (2*size)/steps;
    for (i=[-1*size:step:size])
    {
        for (j=[-1*size:step:size])
        {
            rod(size,i,j, diam);
        }
    }
}

module rod (r, x, y, diam)
{
    pos = sqrt ((x*x)+(y*y));
    height = sqrt((r*r)-(pos*pos));
    translate ([x,y,-height]) cylinder (height*2,d=diam);
}

module align_in_grid ()
{
    children(0);
    rotate ([90,0,0]) children (0);
    rotate ([0,90,0]) children (0);
}


module morelett (radius, halfsteps, rod_diam)
{
    dome(radius, halfsteps, rod_diam);
    rotate ([90,0,0]) dome(radius, halfsteps, rod_diam);
    rotate ([0,90,0]) dome(radius, halfsteps, rod_diam);
}

morelett (100,5,(20*$t)+1);