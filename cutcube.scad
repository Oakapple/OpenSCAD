difference () {
    cube (81);
    union (){
        cutcube (27,[0,0,0]);
        cutcube (9,[27,0,0]);
        cutcube (9,[0,27,0]);
        cutcube (9,[27,54,0]);
        cutcube (9,[54,27,0]);
    
        cutcube (9,[0,0,27]);
        cutcube (9,[54,0,27]);
        cutcube (9,[0,54,27]);
        cutcube (9,[54,54,27]);

        
        cutcube (9,[27,0,54]);
        cutcube (9,[0,27,54]);
        cutcube (9,[27,54,54]);
        cutcube (9,[54,27,54]);
   }
}

module cutcube (size, origin)
{
    shift = 2* size;
    
    translate(origin) cube(size);
    translate([shift,0,0]+origin) cube(size);
    translate([shift,shift,0]+origin) cube (size);
    translate([0,shift,0]+origin) cube(size);
    translate([0,0,shift]+origin) cube(size);
    translate([shift,0,shift]+origin) cube(size);
    translate([shift,shift,shift]+origin) cube (size);
    translate([0,shift,shift]+origin) cube(size);
}
