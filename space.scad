

module segment (r)
{
    intersection ()
    {
        cylinder (r=r,h=5);
        cube ([r,r,6]);
    }
}

module arc(r)
{
    difference ()
    {
        segment (r);
        segment (r-1);
    }
}

module space (r)
{
    translate ([$t*10+2,0,0]) arc (r);
    translate ([0,$t*10+2,0]) rotate ([0,0,90]) arc (r);
    translate ([$t*10-2,0,0]) rotate ([0,0,180]) arc (r);
    translate ([0,$t*10-2,0]) rotate ([0,0,270]) arc (r);
}

space (20);

