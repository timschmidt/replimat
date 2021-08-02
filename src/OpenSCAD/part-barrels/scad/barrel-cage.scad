/*
 * @name Replimat Barrel cage
 * @author Timothy Schmidt
 * @date 2021
 * @url https://wiki.replimat.org/wiki/Barrels
 * @url http://www.github.com/timschmidt/replimat
 * @url https://www.thingiverse.com/thing:127912
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/grid.scad>
include <MCAD/materials.scad>
use <bolts.scad>
use <nuts.scad>

module barrel_cage(){
if (frame_width == 38.1){
    translate([100,280,670])
    scale([380,380,420])
    rotate([0,0,90])
    import("../../bin/stl/55gallon_drum.stl");

    color(Aluminum){
    frame_is_hollow = true;
    grid_translate([0,0,1]) grid_frame_z(25);
    grid_translate([11,0,1]) grid_frame_z(25);
    grid_translate([0,14,1]) grid_frame_z(25);
    grid_translate([11,14,1]) grid_frame_z(25);
    grid_translate([2,0,0]) grid_frame_z(2);
    grid_translate([9,0,0]) grid_frame_z(2);
    grid_translate([2,14,0]) grid_frame_z(2);
    grid_translate([9,14,0]) grid_frame_z(2);
    
    
    grid_translate([1,0,1]) grid_frame_y(15);
    grid_translate([10,0,1]) grid_frame_y(15);
    grid_translate([1,1,0]) grid_frame_x(10);
    grid_translate([1,13,0]) grid_frame_x(10);
    grid_translate([1,0,25]) grid_frame_y(15);
    grid_translate([10,0,25]) grid_frame_y(15);
    grid_translate([1,4,26]) grid_frame_x(10);
    grid_translate([1,10,26]) grid_frame_x(10);
    }
    
    // Bottom origin corner bolts
    grid_translate([0,0,1]) rotate([0,-90,0]) grid_bolt_nut_z(3);
    grid_translate([1,2,0]) rotate([180,0,0]) grid_bolt_nut_z(2);
    grid_translate([2,0,0]) rotate([90,0,0]) grid_bolt_nut_z(2);
    
    // Bottom X axis corner bolts
    grid_translate([12,0,2]) rotate([0,-270,0]) grid_bolt_nut_z(3);
    grid_translate([9,0,0]) rotate([90,0,0]) grid_bolt_nut_z(2);
    grid_translate([10,2,0]) rotate([180,0,0]) grid_bolt_nut_z(2);
    
    // Bottom Y axis corner bolts
    grid_translate([0,14,1]) rotate([0,-90,0]) grid_bolt_nut_z(3);
    grid_translate([1,14,0]) rotate([180,0,0]) grid_bolt_nut_z(2);
    grid_translate([2,15,1]) rotate([-90,0,0]) grid_bolt_nut_z(2);
    
    // Bottom XY axis corner bolts
    grid_translate([12,14,2]) rotate([0,-270,0]) grid_bolt_nut_z(3);
    grid_translate([9,15,1]) rotate([-90,0,0]) grid_bolt_nut_z(2);
    grid_translate([10,14,0]) rotate([180,0,0]) grid_bolt_nut_z(2);
    
    // Top origin corner bolts
    grid_translate([0,0,25]) rotate([0,-90,0]) grid_bolt_nut_z(2);
    grid_translate([1,4,27]) rotate([0,0,0]) grid_bolt_nut_z(2);
    
    // Top X axis corner bolts
    grid_translate([12,0,26]) rotate([0,-270,0]) grid_bolt_nut_z(2);
    grid_translate([10,4,27]) rotate([0,0,0]) grid_bolt_nut_z(2);
    
    // Top Y axis corner bolts
    grid_translate([0,14,25]) rotate([0,-90,0]) grid_bolt_nut_z(2);
    grid_translate([1,10,27]) rotate([0,0,0]) grid_bolt_nut_z(2);
    
    // Top XY axis corner bolts
    grid_translate([12,14,26]) rotate([0,-270,0]) grid_bolt_nut_z(2);
    grid_translate([10,10,27]) rotate([0,0,0]) grid_bolt_nut_z(2);
    }
if (frame_width == 40){
    translate([100,290,680])
    scale([380,380,420])
    rotate([0,0,90])
    import("../../bin/stl/55gallon_drum.stl");

    color(Aluminum){
    frame_is_hollow = true;
    grid_translate([0,0,1]) grid_frame_z(25);
    grid_translate([11,0,1]) grid_frame_z(25);
    grid_translate([0,14,1]) grid_frame_z(25);
    grid_translate([11,14,1]) grid_frame_z(25);
    grid_translate([2,0,0]) grid_frame_z(2);
    grid_translate([9,0,0]) grid_frame_z(2);
    grid_translate([2,14,0]) grid_frame_z(2);
    grid_translate([9,14,0]) grid_frame_z(2);
    
    
    grid_translate([1,0,1]) grid_frame_y(15);
    grid_translate([10,0,1]) grid_frame_y(15);
    grid_translate([1,1,0]) grid_frame_x(10);
    grid_translate([1,13,0]) grid_frame_x(10);
    grid_translate([1,0,25]) grid_frame_y(15);
    grid_translate([10,0,25]) grid_frame_y(15);
    grid_translate([1,4,26]) grid_frame_x(10);
    grid_translate([1,10,26]) grid_frame_x(10);
    }
    
    // Bottom origin corner bolts
    grid_translate([0,0,1]) rotate([0,-90,0]) grid_bolt_nut_z(3);
    grid_translate([1,2,0]) rotate([180,0,0]) grid_bolt_nut_z(2);
    grid_translate([2,0,0]) rotate([90,0,0]) grid_bolt_nut_z(2);
    
    // Bottom X axis corner bolts
    grid_translate([12,0,2]) rotate([0,-270,0]) grid_bolt_nut_z(3);
    grid_translate([9,0,0]) rotate([90,0,0]) grid_bolt_nut_z(2);
    grid_translate([10,2,0]) rotate([180,0,0]) grid_bolt_nut_z(2);
    
    // Bottom Y axis corner bolts
    grid_translate([0,14,1]) rotate([0,-90,0]) grid_bolt_nut_z(3);
    grid_translate([1,14,0]) rotate([180,0,0]) grid_bolt_nut_z(2);
    grid_translate([2,15,1]) rotate([-90,0,0]) grid_bolt_nut_z(2);
    
    // Bottom XY axis corner bolts
    grid_translate([12,14,2]) rotate([0,-270,0]) grid_bolt_nut_z(3);
    grid_translate([9,15,1]) rotate([-90,0,0]) grid_bolt_nut_z(2);
    grid_translate([10,14,0]) rotate([180,0,0]) grid_bolt_nut_z(2);
    
    // Top origin corner bolts
    grid_translate([0,0,25]) rotate([0,-90,0]) grid_bolt_nut_z(2);
    grid_translate([1,4,27]) rotate([0,0,0]) grid_bolt_nut_z(2);
    
    // Top X axis corner bolts
    grid_translate([12,0,26]) rotate([0,-270,0]) grid_bolt_nut_z(2);
    grid_translate([10,4,27]) rotate([0,0,0]) grid_bolt_nut_z(2);
    
    // Top Y axis corner bolts
    grid_translate([0,14,25]) rotate([0,-90,0]) grid_bolt_nut_z(2);
    grid_translate([1,10,27]) rotate([0,0,0]) grid_bolt_nut_z(2);
    
    // Top XY axis corner bolts
    grid_translate([12,14,26]) rotate([0,-270,0]) grid_bolt_nut_z(2);
    grid_translate([10,10,27]) rotate([0,0,0]) grid_bolt_nut_z(2);        
}
}

barrel_cage();