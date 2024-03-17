/*
 * @name Replimat Chair
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>

// Vertical 
grid_translate([0,1,0]) grid_frame_z(10);
grid_translate([9,1,0]) grid_frame_z(10);
grid_translate([0,10,0]) grid_frame_z(20);
grid_translate([9,10,0]) grid_frame_z(20);

// Frame
grid_translate([1,1,8]) grid_frame_y(10);
grid_translate([8,1,8]) grid_frame_y(10);
grid_translate([0,2,9]) grid_frame_x(10);
grid_translate([0,9,9]) grid_frame_x(10);
    
// Seat
grid_translate([0,0,10]) grid_plate_stl(10, 10);

//Back
grid_translate([0,10,11]) rotate([90,0,0]) grid_plate_stl(10, 10);

grid_translate([0,1,8]) grid_bolt_nut_x(2);
grid_translate([0,10,8]) grid_bolt_nut_x(2);
grid_translate([0,1,9]) grid_bolt_nut_y(2);
grid_translate([1,11,9]) rotate([0,0,180]) grid_bolt_nut_y(2);
grid_translate([1,2,10]) grid_bolt_nut_z(2);
grid_translate([1,9,10]) grid_bolt_nut_z(2);
grid_translate([8,2,10]) grid_bolt_nut_z(2);
grid_translate([8,9,10]) grid_bolt_nut_z(2);
grid_translate([10,2,8]) rotate([0,0,180]) grid_bolt_nut_x(2);
grid_translate([10,11,8]) rotate([0,0,180]) grid_bolt_nut_x(2);
grid_translate([9,1,9]) grid_bolt_nut_y(2);
grid_translate([10,11,9]) rotate([0,0,180]) grid_bolt_nut_y(2);
grid_translate([0,10,11]) grid_bolt_nut_y(1);
grid_translate([0,10,19]) grid_bolt_nut_y(1);
grid_translate([9,10,11]) grid_bolt_nut_y(1);
grid_translate([9,10,19]) grid_bolt_nut_y(1);