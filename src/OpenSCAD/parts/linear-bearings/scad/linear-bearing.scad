/*
 * @name Replimat - Linear bearing
 * @author Timothy Schmidt
 * @date 2019-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/vitamins/grid.scad>
include <MCAD/units.scad>
include <MCAD/nuts_and_bolts.scad>

//frame_hole_diameter = 11/32 * inch;

torus_diameter = 1 * inch;
torus_width = 6 * mm;

module body(){
difference(){
union(){
//grid_frame_z(2,frame_is_hollow=true,frame_extrusion=0);
grid_frame_z(2);

grid_translate([1,0,0])
grid_frame_z(2, material="wood");

grid_translate([0,1,0])
grid_frame_z(2, material="wood");
}

translate([37.5,37.5,-1])
cube([42.2,42.2,78.2]);
}
}

module half_torus(){
    difference(){
      //torus
      rotate_extrude(convexity=10,$fn=100)
      translate([torus_diameter/2,0,0])
      circle(r=torus_width/2+0.5,$fn=100);
    
      //cut torus in half
      translate([-torus_diameter/2-torus_width/2,0,-torus_width/2-1])
      cube([torus_diameter+2 + torus_width+2,torus_diameter+2 + torus_width+2, torus_width+2]);

    }
}

module bearing_race(){
    union(){
    translate([0,-20,0])
    half_torus();
    translate([0,20,0])
    rotate([0,0,180])
    half_torus();

    rotate([90,0,0])
    translate([0.5*inch,0,-20.05])
    cylinder(r=torus_width/2+0.5,h=40.1,$fn=50);

    rotate([90,0,0])
    translate([-0.5*inch,0,-20.05])
    cylinder(r=torus_width/2+0.5,h=40.1,$fn=50);
    }
}

module vertical_bearing_race(r){
translate([torus_diameter/2+6.5,0,20+torus_diameter/2+5])
rotate([90,0,r])
bearing_race();
}

module linear_bearing(){
grid_translate([0,2,0])
rotate([0,0,-90])
difference(){
body();

grid_translate([1,1,0])
translate([0,-5,0])
vertical_bearing_race(10);

grid_translate([1,1,0])
translate([-5,0,0])
rotate([0,0,90])
vertical_bearing_race(-10);

translate([grid_frame_width*1.5, grid_frame_width-0.5, grid_frame_width * 1.5])
rotate([90, 90, 0])
nutHole(8, units=MM, tolerance=0.4);
    
translate([grid_frame_width*1.5, grid_frame_width-0.5, grid_frame_width/2])
rotate([90, 90, 0])
nutHole(8, units=MM, tolerance=0.4);
    
translate([grid_frame_width-7.4, grid_frame_width*1.5, grid_frame_width/2])
rotate([0, 90, 0])
nutHole(8, units=MM, tolerance=0.4);

translate([grid_frame_width-7.4, grid_frame_width*1.5, grid_frame_width*1.5])
rotate([0, 90, 0])
nutHole(8, units=MM, tolerance=0.4);

// ball beaing installation cutouts
translate([grid_frame_width-3, grid_frame_width*2-8.9, grid_frame_width+20])
rotate([0,90,0])
cylinder(d=2,h=4);

translate([grid_frame_width*2-8.9, grid_frame_width+1, grid_frame_width+20])
rotate([90,0,0])
cylinder(d=2,h=4);

}
}

linear_bearing();

//grid_translate([1,1,0])
//#grid_frame_z(2);