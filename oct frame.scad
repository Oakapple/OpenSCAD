$fn=50;

module bar (height, radius)
{
    cylinder(height,radius);
    sphere(radius);
    translate ([0,0,height]) sphere (radius);
}

module box (size,origin)
{
    translate ([-size/2,0,0]+origin) bar(size,1);
    translate ([0,-size/2,0]+origin) bar(size,1);
    translate ([size/2,0,0]+origin) bar(size,1);
    translate ([0,size/2,0]+origin) bar(size,1);
    translate (origin) rotate([0,90,0])bar(size/2,1);
    translate (origin)rotate([90,0,0])bar(size/2,1);
    translate (origin)rotate([0,270,0])bar(size/2,1);
    translate (origin)rotate([270,0,0])bar(size/2,1);
    translate ([0,0,size]+origin) rotate([0,90,0])bar(size/2,1);
    translate ([0,0,size]+origin) rotate([90,0,0])bar(size/2,1);
    translate ([0,0,size]+origin) rotate([0,270,0])bar(size/2,1);
    translate ([0,0,size]+origin) rotate([270,0,0])bar(size/2,1);
}

module box2(level,size,origin)
{
    if (level==1)
    {
        box(size,origin);
    } else
    {
        box(size,origin);
        box2(level-1,size/2,origin);
        box2(level-1,size/2,origin+[0,0,size/2]);
        box2(level-1,size/2,origin+[size/4,0,size/4]);
        box2(level-1,size/2,origin+[-size/4,0,size/4]);
        box2(level-1,size/2,origin+[0,size/4,size/4]);
        box2(level-1,size/2,origin+[0,-size/4,size/4]);
    }
}

module box3 (level)
{
    box2(level,pow(2,level+2),[0,0,0]);
}

box3(3);
translate([0,0,34.5]) rotate ([0,90,0]) difference() {
    // This piece will be created:
    cylinder(r=3, h=2, center=true);
 
    // Everything else listed will be taken away:
    cylinder(r=2, h=2, center=true);
}