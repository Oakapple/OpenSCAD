module sponge (x,y,z,size)
{
//start of layer
translate([x,y,z+2*size]) cube([size,size,size]);
translate([x,y,z+size]) cube([size,size,size]);
translate([x,y,z]) cube([size,size,size]);
translate([x,y+size,z+2*size]) cube([size,size,size]);
//translate([1,1,1]) cube([1,1,1]);
translate([x,y+size,z]) cube([size,size,size]);
translate([x,y+2*size,z+2*size]) cube([size,size,size]);
translate([x,y+2*size,z+size]) cube([size,size,size]);
translate([x,y+2*size,z]) cube([size,size,size]);
// end of layer
translate([x+size,y,z]) cube([size,size,size]);
translate([x+size,y+2*size,z+2*size]) cube([size,size,size]);
translate([x+size,y,z+2*size]) cube([size,size,size]);
translate([x+size,y+2*size,z]) cube([size,size,size]);
//start of layer
translate([x+2*size,y,z+2*size]) cube([size,size,size]);
translate([x+2*size,y,z+size]) cube([size,size,size]);
translate([x+2*size,y,z]) cube([size,size,size]);
translate([x+2*size,y+size,z+2*size]) cube([size,size,size]);
//translate([-1,1,1]) cube([1,1,1]);
translate([x+2*size,y+size,z]) cube([size,size,size]);
translate([x+2*size,y+2*size,z+2*size]) cube([size,size,size]);
translate([x+2*size,y+2*size,z+size]) cube([size,size,size]);
translate([x+2*size,y+2*size,z]) cube([size,size,size]);
// end of layer
}

module sponge2 (size)
{
x=0;
y=0;
z=0;
//start of layer
union ()
{translate([x,y,z+2*size]) cube([size,size,size]);
translate([x,y,z+size]) cube([size,size,size]);
translate([x,y,z]) cube([size,size,size]);
translate([x,y+size,z+2*size]) cube([size,size,size]);
//translate([1,1,1]) cube([1,1,1]);
translate([x,y+size,z]) cube([size,size,size]);
translate([x,y+2*size,z+2*size]) cube([size,size,size]);
translate([x,y+2*size,z+size]) cube([size,size,size]);
translate([x,y+2*size,z]) cube([size,size,size]);
// end of layer
translate([x+size,y,z]) cube([size,size,size]);
translate([x+size,y+2*size,z+2*size]) cube([size,size,size]);
translate([x+size,y,z+2*size]) cube([size,size,size]);
translate([x+size,y+2*size,z]) cube([size,size,size]);
//start of layer
translate([x+2*size,y,z+2*size]) cube([size,size,size]);
translate([x+2*size,y,z+size]) cube([size,size,size]);
translate([x+2*size,y,z]) cube([size,size,size]);
translate([x+2*size,y+size,z+2*size]) cube([size,size,size]);
//translate([-1,1,1]) cube([1,1,1]);
translate([x+2*size,y+size,z]) cube([size,size,size]);
translate([x+2*size,y+2*size,z+2*size]) cube([size,size,size]);
translate([x+2*size,y+2*size,z+size]) cube([size,size,size]);
translate([x+2*size,y+2*size,z]) cube([size,size,size]);
// end of layer
}
}

module sponge3 (size)
{
x=0;
y=0;
z=0;
//start of layer
translate([x,y,z+2*size]) sponge2(size/3);
translate([x,y,z+size]) sponge2(size/3);
translate([x,y,z]) sponge2(size/3);
translate([x,y+size,z+2*size]) sponge2(size/3);
//translate([1,1,1]) cube([1,1,1]);
translate([x,y+size,z]) sponge2(size/3);
translate([x,y+2*size,z+2*size]) sponge2(size/3);
translate([x,y+2*size,z+size]) sponge2(size/3);
translate([x,y+2*size,z]) sponge2(size/3);
// end of layer
translate([x+size,y,z]) sponge2(size/3);
translate([x+size,y+2*size,z+2*size]) sponge2(size/3);
translate([x+size,y,z+2*size]) sponge2(size/3);
translate([x+size,y+2*size,z]) sponge2(size/3);
//start of layer
translate([x+2*size,y,z+2*size]) sponge2(size/3);
translate([x+2*size,y,z+size]) sponge2(size/3);
translate([x+2*size,y,z]) sponge2(size/3);
translate([x+2*size,y+size,z+2*size]) sponge2(size/3);
//translate([-1,1,1]) cube([1,1,1]);
translate([x+2*size,y+size,z]) sponge2(size/3);
translate([x+2*size,y+2*size,z+2*size]) sponge2(size/3);
translate([x+2*size,y+2*size,z+size]) sponge2(size/3);
translate([x+2*size,y+2*size,z]) sponge2(size/3);
// end of layer
}

module sponge4 (size)
{
x=0;
y=0;
z=0;
//start of layer
translate([x,y,z+2*size]) sponge3(size/3);
translate([x,y,z+size]) sponge3(size/3);
translate([x,y,z]) sponge3(size/3);
translate([x,y+size,z+2*size]) sponge3(size/3);
//translate([1,1,1]) cube([1,1,1]);
translate([x,y+size,z]) sponge3(size/3);
translate([x,y+2*size,z+2*size]) sponge3(size/3);
translate([x,y+2*size,z+size]) sponge3(size/3);
translate([x,y+2*size,z]) sponge3(size/3);
// end of layer
translate([x+size,y,z]) sponge3(size/3);
translate([x+size,y+2*size,z+2*size]) sponge3(size/3);
translate([x+size,y,z+2*size]) sponge3(size/3);
translate([x+size,y+2*size,z]) sponge3(size/3);
//start of layer
translate([x+2*size,y,z+2*size]) sponge3(size/3);
translate([x+2*size,y,z+size]) sponge3(size/3);
translate([x+2*size,y,z]) sponge3(size/3);
translate([x+2*size,y+size,z+2*size]) sponge3(size/3);
//translate([-1,1,1]) cube([1,1,1]);
translate([x+2*size,y+size,z]) sponge3(size/3);
translate([x+2*size,y+2*size,z+2*size]) sponge3(size/3);
translate([x+2*size,y+2*size,z+size]) sponge3(size/3);
translate([x+2*size,y+2*size,z]) sponge3(size/3);
// end of layer
}


module steps ()
{
sponge4 (1);
translate ([0,0,3]) sponge3(0.75);
translate ([0,0,3+3*0.75]) sponge2(0.5);
translate ([0,0,3+3*0.75+3*0.5]) cube(0.75);
}

module pyramid ()
{
translate ([-1.5,-1.5,0])sponge4 (1);

offset1=(3-3*0.75)/2-1.5;
offset2=(3-3*0.5)/2-1.5;
offset3=(3-0.75)/2-1.5;

translate ([offset1,offset1,3]) sponge3(0.75);
translate ([offset2,offset2,3+3*0.75]) sponge2(0.5);
translate ([offset3,offset3,3+3*0.75+3*0.5]) cube(0.75);
}

module tree ()
{
color ("darkgreen") translate ([-1.5,-1.5,0])sponge4 (1);

offset1=(3-3*0.75)/2-1.5;
offset2=(3-3*0.5)/2-1.5;
offset3=(3-0.75)/2-1.5;

color ("Green") rotate (45) translate ([offset1,offset1,3])sponge3(0.75);
color ("ForestGreen")translate ([offset2,offset2,3+3*0.75]) sponge2(0.5);
color ("gold") rotate (45) translate ([offset3,offset3,3+3*0.75+3*0.5]) cube(0.75);
}

tree ();

