/*
 * @name Replimat Pallet
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>

module pallet(){

// Frame
grid_translate([2,0,0]) grid_frame_y(20);
grid_translate([15,0,0]) grid_frame_y(20);
grid_translate([27,0,0]) grid_frame_y(20);
grid_translate([0,1,1]) grid_frame_x(30);
grid_translate([0,9,1]) grid_frame_x(30);
grid_translate([0,10,1]) grid_frame_x(30);
grid_translate([0,18,1]) grid_frame_x(30);
    
// Deck
#grid_translate([2,0,2]) grid_plate_stl(10, 10);
#grid_translate([13,0,2]) grid_plate_stl(15, 10);
#grid_translate([2,10,2]) grid_plate_stl(15, 10);
#grid_translate([18,10,2]) grid_plate_stl(10, 10);

// bolts
grid_translate([2,1,2]) rotate([0,0,0]) grid_bolt_nut_z(1);
grid_translate([2,9,2]) rotate([0,0,0]) grid_bolt_nut_z(1);
grid_translate([2,10,2]) rotate([0,0,0]) grid_bolt_nut_z(1);
grid_translate([2,18,2]) rotate([0,0,0]) grid_bolt_nut_z(1);
grid_translate([11,1,2]) rotate([0,0,0]) grid_bolt_nut_z(1);
grid_translate([11,9,2]) rotate([0,0,0]) grid_bolt_nut_z(1);

grid_translate([15,1,2]) rotate([0,0,0]) grid_bolt_nut_z(2);
grid_translate([15,9,2]) rotate([0,0,0]) grid_bolt_nut_z(2);
grid_translate([15,10,2]) rotate([0,0,0]) grid_bolt_nut_z(2);
grid_translate([15,18,2]) rotate([0,0,0]) grid_bolt_nut_z(2);

grid_translate([18,10,2]) rotate([0,0,0]) grid_bolt_nut_z(1);
grid_translate([18,18,2]) rotate([0,0,0]) grid_bolt_nut_z(1);
grid_translate([27,1,2]) rotate([0,0,0]) grid_bolt_nut_z(1);
grid_translate([27,9,2]) rotate([0,0,0]) grid_bolt_nut_z(1);
grid_translate([27,10,2]) rotate([0,0,0]) grid_bolt_nut_z(1);
grid_translate([27,18,2]) rotate([0,0,0]) grid_bolt_nut_z(1);
}

pallet();