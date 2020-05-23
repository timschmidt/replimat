include <MCAD/motors.scad>;

difference(){
union(){
translate([0,0,2.5])
cube([41,41,5],center=true);
translate([22,0,0])
cylinder(r=6,h=5);
}
translate([0,0,0])
linear_extrude(height=10){
stepper_motor_mount(17,0,false,0.5);
}    

translate([22,0,0])    
cylinder(h=20,r=4.4);
}