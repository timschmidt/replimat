/*
 * @name Replimat Desk
 * @author Timothy Schmidt
 * @date 2013
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>

// Vertical 
grid_translate([2,15,0]) grid_frame_z(40);
grid_translate([31,6,0]) grid_frame_z(40);
grid_translate([0,6,0]) grid_frame_z(40);
grid_translate([29,15,0]) grid_frame_z(40);

// Feet
grid_translate([1,1,0]) grid_frame_y(15);
grid_translate([30,1,0]) grid_frame_y(15);

// Bottom shelf
grid_translate([1,14,1]) grid_frame_x(30);
grid_translate([1,7,1]) grid_frame_x(30);
grid_translate([1,5,2]) grid_plate_stl(10, 10);
grid_translate([11,5,2]) grid_plate_stl(10, 10);
grid_translate([21,5,2]) grid_plate_stl(10, 10);


// Middle shelf
grid_translate([1,14,10]) grid_frame_x(30);
grid_translate([1,7,10]) grid_frame_x(30);
grid_translate([1,6,9]) grid_frame_y(10);
grid_translate([30,6,9]) grid_frame_y(10);
grid_translate([1,5,11]) grid_plate_stl(10, 10);
grid_translate([11,5,11]) grid_plate_stl(10, 10);
grid_translate([21,5,11]) grid_plate_stl(10, 10);


// Desk surface
grid_translate([1,1,19]) grid_frame_y(15);
grid_translate([30,1,19]) grid_frame_y(15);
grid_translate([1,14,20]) grid_frame_x(30);
grid_translate([1,1,20]) grid_frame_x(30);
grid_translate([1,0,21]) grid_plate_stl(10, 10);
grid_translate([11,0,21]) grid_plate_stl(10, 10);
grid_translate([21,0,21]) grid_plate_stl(10, 10);
grid_translate([1,10,21]) grid_plate_stl(10, 5);
grid_translate([11,10,21]) grid_plate_stl(10, 5);
grid_translate([21,10,21]) grid_plate_stl(10, 5);


// Hanging shelf
grid_translate([15,14,29]) grid_frame_x(15);
grid_translate([15,5,29]) grid_frame_x(15);
grid_translate([28,6,29]) grid_frame_x(4);
grid_translate([30,5,29]) grid_frame_x(2);
grid_translate([15,15,29]) grid_frame_z(10);
grid_translate([15,6,29]) grid_frame_z(10);
grid_translate([16,5,30]) grid_plate_stl(5,10);
grid_translate([21,5,30]) grid_plate_stl(10,10);


// Top shelf
grid_translate([1,6,37]) grid_frame_y(10);
grid_translate([30,6,37]) grid_frame_y(10);
grid_translate([1,5,39]) grid_plate_stl(10, 10);
grid_translate([11,5,39]) grid_plate_stl(10, 10);
grid_translate([21,5,39]) grid_plate_stl(10, 10);
grid_translate([1,14,38]) grid_frame_x(30);
grid_translate([1,7,38]) grid_frame_x(30);

