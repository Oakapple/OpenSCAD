
module space(level)
{
    dimension=pow(3,level);
    Myoffset=dimension/3;
    echo("dimension = ",dimension);
    echo("offset =", Myoffset);
    
        for (i=[Myoffset:Myoffset:dimension],j=[Myoffset:Myoffset:dimension])
        {
            echo ("i=",i,"j=",j, "offset=",Myoffset);
            translate ([0,i,j]){
            
            cube([dimension,i,j]);
            }
        }
        Myoffset=Myoffset/3;

    
//    translate([0,offset,offset]){
//    cube([dimension,offset,offset]);
//    }
//    
//    translate([offset,0,offset]){
//    cube([offset,dimension,offset]);
//    }
//    
//    translate([offset,offset,0]){
//    cube([offset,offset,dimension]);
//    }
    
//    for (i=[0:2],j=[0:2])
//    {
//        if (i!=1 || j!=1)
//        {
//            translate ([0,3*i+1,3*j+1])
//            cube ([dimension,1,1]);
//        }
//    }
            
            
//    for (i=[0:2],j=[0:2])
//    {
//        if (i!=1 || j!=1)
//        {
//            translate ([0,3*i+1,3*j+1])
//            cube ([dimension,1,1]);
//
//            translate ([3*i+1,0,3*j+1])
//            cube ([1,dimension,1]);
//            
//            
//            translate ([3*i+1,3*j+1,0])
//            cube ([1,1,dimension]);
//        }
//    }
    
}

module other ()
{
    
    translate([0,3,3]){
    cube([length,3,3]);
}
translate([3,0,3]){
    cube([3,length,3]);
}
translate([3,3,0]){
    cube([3,3,length]);
}


translate([0,1,1]){
    cube([legth,1,1]);
}
translate([0,4,1]){
    cube([9,1,1]);
}
translate([0,7,1]){
    cube([9,1,1]);
}
translate([0,1,4]){
    cube([9,1,1]);
}
translate([0,7,4]){
    cube([9,1,1]);
}
translate([0,1,7]){
    cube([9,1,1]);
}
translate([0,4,7]){
    cube([9,1,1]);
}
translate([0,7,7]){
    cube([9,1,1]);
}



translate([1,0,1]){
    cube([1,9,1]);
}
translate([4,0,1]){
    cube([1,9,1]);
}
translate([7,0,1]){
    cube([1,9,1]);
}
translate([1,0,4]){
    cube([1,9,1]);
}
translate([7,0,4]){
    cube([1,9,1]);
}
translate([1,0,7]){
    cube([1,9,1]);
}
translate([4,0,7]){
    cube([1,9,1]);
}
translate([7,0,7]){
    cube([1,9,1]);
}


translate([1,1,0]){
    cube([1,1,9]);
}
translate([4,1,0]){
    cube([1,1,9]);
}
translate([7,1,0]){
    cube([1,1,9]);
}
translate([1,4,0]){
    cube([1,1,9]);
}
translate([7,4,0]){
    cube([1,1,9]);
}
translate([1,7,0]){
    cube([1,1,9]);
}
translate([4,7,0]){
    cube([1,1,9]);
}
translate([7,7,0]){
    cube([1,1,9]);
}
}

space(3);