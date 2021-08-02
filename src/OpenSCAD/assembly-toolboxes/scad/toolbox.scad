/*
 * @name Replimat Toolbox
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>

// Vertical 
grid_translate([0,3,0]) grid_frame_z(10);
grid_translate([9,3,0]) grid_frame_z(10);

// Frame
grid_translate([1,0,0]) grid_frame_y(5);
grid_translate([8,0,0]) grid_frame_y(5);
grid_translate([0,4,1]) grid_frame_x(10);
grid_translate([0,2,9]) grid_frame_x(10);
    
// Seat
grid_translate([0,4,4]) rotate([90,0,0]) grid_plate_stl(10, 1, 0);

//Back
grid_translate([0,4,7]) rotate([90,0,0]) grid_plate_stl(10, 1, 0);

grid_translate([1,0,6]) bin();
grid_translate([3,0,6]) bin();
grid_translate([5,0,6]) bin();
grid_translate([7,0,6]) bin();
grid_translate([1,0,3]) bin();
grid_translate([3,0,3]) bin();
grid_translate([5,0,3]) bin();
grid_translate([7,0,3]) bin();

grid_translate([0,3,1]) rotate([90,0,0]) grid_bolt_nut_z(2);
grid_translate([9,3,1]) rotate([90,0,0]) grid_bolt_nut_z(2);
grid_translate([0,2,9]) rotate([90,0,0]) grid_bolt_nut_z(2);
grid_translate([9,2,9]) rotate([90,0,0]) grid_bolt_nut_z(2);
grid_translate([1,5,0]) rotate([180,0,0]) grid_bolt_nut_z(2);
grid_translate([8,5,0]) rotate([180,0,0]) grid_bolt_nut_z(2);
grid_translate([1,1,0]) rotate([180,0,0]) grid_bolt_nut_z(1);
grid_translate([8,1,0]) rotate([180,0,0]) grid_bolt_nut_z(1);
grid_translate([0,3,0]) rotate([0,270,0]) grid_bolt_nut_z(2);
grid_translate([10,3,1]) rotate([0,90,0]) grid_bolt_nut_z(2);