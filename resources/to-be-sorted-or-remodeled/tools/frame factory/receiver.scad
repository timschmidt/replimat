bolt = 5/16 * 25.4;
wall = 5;

module receiver(size){
    difference(){
        cube([size+wall*2,size+wall*2,25.4]);
        translate([wall,wall,wall]) cube([size,size,25.4]);
    }
}

difference(){
    receiver(1.5*25.4);
    
    translate([(1.5*25.4)/2+wall, 1.5*25.4 + wall*2, 25.4])
    rotate([90,0,0])
    cylinder(r=8, h=1.5*25.4+wall*2);
    
    translate([0, (1.5*25.4)/2+wall, 25.4])
    rotate([0,90,0])
    cylinder(r=8, h=1.5*25.4+wall*2);
}