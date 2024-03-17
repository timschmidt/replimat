include <MCAD/motors.scad>;

difference(){
union(){
translate([-15,0,0])
cube([30,5,40]);

translate([-15,0,0])
cube([30,40,8]);
    
translate([-3.5,-3,0])
cube([7,3,3]);
}

// Clamp slice
translate([-16,29,0])
cube([25,2.5,10]);

// Clamp hole
translate([-8,44,4])
rotate([90,0,0])
cylinder(h=40,r=1.5);

translate([-8,40,4])
rotate([90,0,0])
cylinder(h=10,r=2);

// Bolt holes
translate([0,6,15])
rotate([90,0,0])
cylinder(h=10,r=3);

translate([0,6,32])
rotate([90,0,0])
cylinder(h=10,r=3);

// Smooth rod mount
translate([6.506,30.5,-1])
cylinder(h=10,r=4.5);
}