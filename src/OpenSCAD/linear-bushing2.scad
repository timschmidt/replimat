/*
 * @name Replimat Linear Bushing
 * @author Timothy Schmidt
 * @date 2019
 * @url http://www.github.com/replimat-cad
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>
include <MCAD/units.scad>
include <MCAD/nuts_and_bolts.scad>

difference(){
    union(){
    difference(){
    //Body
    cube([frame_width * 2, frame_width * 2, frame_width * 2]);
    
    //frame void
    translate([frame_width / 2 - 17, frame_width / 2 - 3, 0])
        cube([frame_width+20, frame_width * 2, frame_width * 2]);
    }
    
    // bearing surfaces
    translate([frame_width / 2 + 6, frame_width / 2 - 3, 0])
    cube([1, 3, frame_width * 2]);
    
    translate([frame_width * 1.5 - 7, frame_width / 2 - 3, 0])
    cube([1, 3, frame_width * 2]);
    
    translate([frame_width * 1.5, frame_width / 2 + 6, 0])
    cube([3, 1, frame_width * 2]);
    
    translate([frame_width * 1.5, frame_width * 1.5 - 6, 0])
    cube([3, 1, frame_width * 2]);
    
}
    
    //Half cut
    rotate([0, 0, 45])
    translate([-2,-2,0])
    cube([frame_width * 3, frame_width* 2, frame_width * 2]);
    
    //Holes
    translate([frame_width, frame_width, frame_width / 2])
    rotate([90, 0, 0])
    #cylinder(r=4.5, h=frame_width * 2);
    translate([frame_width, frame_width, frame_width * 1.5])
    rotate([90, 0, 0])
    #cylinder(r=4.5, h=frame_width * 2);
    translate([frame_width, frame_width, frame_width / 2])
    rotate([0, 90, 0])
    #cylinder(r=4.5, h=frame_width * 2);
    translate([frame_width, frame_width, frame_width * 1.5])
    rotate([0, 90, 0])
    #cylinder(r=4.5, h=frame_width * 2);
    
    // nut traps
    translate([frame_width, frame_width / 2 - 6, frame_width / 2])
    rotate([90, 0, 0])
    #nutHole(8, units=MM);
    
    translate([frame_width, frame_width / 2 - 6, frame_width * 1.5])
    rotate([90, 0, 0])
    #nutHole(8, units=MM);
    
    translate([frame_width * 1.5 + 6, frame_width, frame_width / 2])
    rotate([0, 90, 0])
    #nutHole(8, units=MM);
    
    translate([frame_width * 1.5 + 6, frame_width, frame_width * 1.5])
    rotate([0, 90, 0])
    #nutHole(8, units=MM);
    
// nut access
    translate([frame_width, frame_width / 2, frame_width / 2])
    rotate([90, 0, 0])
    #cylinder(r=10, h=6);
    
    translate([frame_width, frame_width / 2, frame_width * 1.5])
    rotate([90, 0, 0])
    #cylinder(r=10, h=6);
    
    translate([frame_width * 1.5, frame_width, frame_width / 2])
    rotate([0, 90, 0])
    #cylinder(r=10, h=6);
    
    translate([frame_width * 1.5, frame_width, frame_width * 1.5])
    rotate([0, 90, 0])
    #cylinder(r=10, h=6);
    
    // mounting holes
    rotate([90, 0, 45])
    translate([11,frame_width / 2,-20])
    #cylinder(r=4, h=40);
    
    rotate([90, 0, 45])
    translate([11,frame_width * 1.5,-20])
    #cylinder(r=4, h=40);
    
    rotate([90, 0, 45])
    translate([95,frame_width / 2,-20])
    #cylinder(r=4, h=40);
    
    rotate([90, 0, 45])
    translate([95,frame_width * 1.5,-20])
    #cylinder(r=4, h=40);
    
    // mounting holes cutouts
    rotate([90, 0, 45])
    translate([11,frame_width / 2,6])
    #cylinder(r=6, h=40);
    
    rotate([90, 0, 45])
    translate([11,frame_width * 1.5,6])
    #cylinder(r=6, h=40);
    
    rotate([90, 0, 45])
    translate([95,frame_width / 2,6])
    #cylinder(r=6, h=40);
    
    rotate([90, 0, 45])
    translate([95,frame_width * 1.5,6])
    #cylinder(r=6, h=40);
    
}

//translate([beam_width / 2, beam_width / 2, 0])
//zBeam(2);

