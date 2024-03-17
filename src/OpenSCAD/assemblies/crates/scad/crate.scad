/*
 * @name Replimat Crate
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>

// Frame
grid_translate([1,0,1]) grid_frame_y(10);
grid_translate([23,0,1]) grid_frame_y(10);
grid_translate([0,1,0]) grid_frame_x(25);
grid_translate([0,8,0]) grid_frame_x(25);

grid_translate([0,0,0]) grid_frame_z(10);
grid_translate([24,0,0]) grid_frame_z(10);
grid_translate([0,9,0]) grid_frame_z(10);
grid_translate([24,9,0]) grid_frame_z(10);
    
// Deck
grid_translate([0,0,0]) grid_plate_stl(25, 10, 0);

// Sides
#grid_translate([0,0,0]) rotate([90,0,0]) grid_plate_stl(25, 10, 0);
grid_translate([0,10,0]) rotate([90,0,0]) grid_plate_stl(25, 10, 0);
grid_translate([0,0,10]) rotate([0,90,0]) grid_plate_stl(10, 10, 0);
#grid_translate([25,0,10]) rotate([0,90,0]) grid_plate_stl(10, 10, 0);

// bolts
grid_translate([1,2,0]) rotate([180,0,0]) grid_bolt_nut_z(2);
grid_translate([1,9,0]) rotate([180,0,0]) grid_bolt_nut_z(2);
grid_translate([23,2,0]) rotate([180,0,0]) grid_bolt_nut_z(2);
grid_translate([23,9,0]) rotate([180,0,0]) grid_bolt_nut_z(2);

grid_translate([0,0,0]) rotate([90,0,0]) grid_bolt_nut_z(2);
grid_translate([24,0,0]) rotate([90,0,0]) grid_bolt_nut_z(2);
grid_translate([0,10,1]) rotate([270,0,0]) grid_bolt_nut_z(2);
grid_translate([24,10,1]) rotate([270,0,0]) grid_bolt_nut_z(2);

grid_translate([0,0,1]) rotate([0,270,0]) grid_bolt_nut_z(2);
grid_translate([0,9,1]) rotate([0,270,0]) grid_bolt_nut_z(2);
grid_translate([25,0,2]) rotate([0,90,0]) grid_bolt_nut_z(2);
grid_translate([25,9,2]) rotate([0,90,0]) grid_bolt_nut_z(2);