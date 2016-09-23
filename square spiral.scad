module square_spiral (side)
{
}

module side (x,y,z,offset_x, offset_y, steps)
{
    for (i=[1:steps])
    {
        translate ([x+i*offset_x,y+i*offset_y,z]) cube (10,10,1);
    }
}

side (100,100,0,-20,0,10);
side (-100,100,0,0,-20,9);

        