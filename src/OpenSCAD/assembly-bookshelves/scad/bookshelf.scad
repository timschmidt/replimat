/*
 * @name Replimat Bookshelf
 * @author Timothy Schmidt
 * @date 2013-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 * @todo: tri-joint nuts and bolts
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>

// uprights
grid_translate([0,1,0]) grid_frame_z(50);
grid_translate([31,1,0]) grid_frame_z(50);
grid_translate([2,10,0]) grid_frame_z(50);
grid_translate([29,10,0]) grid_frame_z(50);

// cross braces
grid_translate([1,1,0]) grid_frame_y(10);
grid_translate([30,1,0]) grid_frame_y(10);

grid_translate([1,1,8]) grid_frame_y(10);
grid_translate([30,1,8]) grid_frame_y(10);

grid_translate([1,1,18]) grid_frame_y(10);
grid_translate([30,1,18]) grid_frame_y(10);

grid_translate([1,1,28]) grid_frame_y(10);
grid_translate([30,1,28]) grid_frame_y(10);

grid_translate([1,1,38]) grid_frame_y(10);
grid_translate([30,1,38]) grid_frame_y(10);

grid_translate([1,1,47]) grid_frame_y(10);
grid_translate([30,1,47]) grid_frame_y(10);

// shelf supports
grid_translate([1,2,1]) grid_frame_x(30);
grid_translate([1,9,1]) grid_frame_x(30);

grid_translate([1,2,9]) grid_frame_x(30);
grid_translate([1,9,9]) grid_frame_x(30);

grid_translate([1,2,19]) grid_frame_x(30);
grid_translate([1,9,19]) grid_frame_x(30);

grid_translate([1,2,29]) grid_frame_x(30);
grid_translate([1,9,29]) grid_frame_x(30);

grid_translate([1,2,39]) grid_frame_x(30);
grid_translate([1,9,39]) grid_frame_x(30);

grid_translate([1,2,48]) grid_frame_x(30);
grid_translate([1,9,48]) grid_frame_x(30);


// shelves
grid_translate([1,0,2]) grid_plate_stl(10,10);
grid_translate([11,0,2]) grid_plate_stl(10,10);
grid_translate([21,0,2]) grid_plate_stl(10,10);
grid_translate([1,2,2]) grid_bolt_nut_z(1);
grid_translate([1,9,2]) grid_bolt_nut_z(1);
grid_translate([10,2,2]) grid_bolt_nut_z(1);
grid_translate([10,9,2]) grid_bolt_nut_z(1);
grid_translate([11,2,2]) grid_bolt_nut_z(1);
grid_translate([11,9,2]) grid_bolt_nut_z(1);
grid_translate([20,2,2]) grid_bolt_nut_z(1);
grid_translate([20,9,2]) grid_bolt_nut_z(1);
grid_translate([21,2,2]) grid_bolt_nut_z(1);
grid_translate([21,9,2]) grid_bolt_nut_z(1);
grid_translate([30,2,2]) grid_bolt_nut_z(1);
grid_translate([30,9,2]) grid_bolt_nut_z(1);

grid_translate([1,0,10]) grid_plate_stl(10,10);
grid_translate([11,0,10]) grid_plate_stl(10,10);
grid_translate([21,0,10]) grid_plate_stl(10,10);
grid_translate([1,2,10]) grid_bolt_nut_z(1);
grid_translate([1,9,10]) grid_bolt_nut_z(1);
grid_translate([10,2,10]) grid_bolt_nut_z(1);
grid_translate([10,9,10]) grid_bolt_nut_z(1);
grid_translate([11,2,10]) grid_bolt_nut_z(1);
grid_translate([11,9,10]) grid_bolt_nut_z(1);
grid_translate([20,2,10]) grid_bolt_nut_z(1);
grid_translate([20,9,10]) grid_bolt_nut_z(1);
grid_translate([21,2,10]) grid_bolt_nut_z(1);
grid_translate([21,9,10]) grid_bolt_nut_z(1);
grid_translate([30,2,10]) grid_bolt_nut_z(1);
grid_translate([30,9,10]) grid_bolt_nut_z(1);

grid_translate([1,0,20]) grid_plate_stl(10,10);
grid_translate([11,0,20]) grid_plate_stl(10,10);
grid_translate([21,0,20]) grid_plate_stl(10,10);
grid_translate([1,2,20]) grid_bolt_nut_z(1);
grid_translate([1,9,20]) grid_bolt_nut_z(1);
grid_translate([10,2,20]) grid_bolt_nut_z(1);
grid_translate([10,9,20]) grid_bolt_nut_z(1);
grid_translate([11,2,20]) grid_bolt_nut_z(1);
grid_translate([11,9,20]) grid_bolt_nut_z(1);
grid_translate([20,2,20]) grid_bolt_nut_z(1);
grid_translate([20,9,20]) grid_bolt_nut_z(1);
grid_translate([21,2,20]) grid_bolt_nut_z(1);
grid_translate([21,9,20]) grid_bolt_nut_z(1);
grid_translate([30,2,20]) grid_bolt_nut_z(1);
grid_translate([30,9,20]) grid_bolt_nut_z(1);

grid_translate([1,0,30]) grid_plate_stl(10,10);
grid_translate([11,0,30]) grid_plate_stl(10,10);
grid_translate([21,0,30]) grid_plate_stl(10,10);
grid_translate([1,2,30]) grid_bolt_nut_z(1);
grid_translate([1,9,30]) grid_bolt_nut_z(1);
grid_translate([10,2,30]) grid_bolt_nut_z(1);
grid_translate([10,9,30]) grid_bolt_nut_z(1);
grid_translate([11,2,30]) grid_bolt_nut_z(1);
grid_translate([11,9,30]) grid_bolt_nut_z(1);
grid_translate([20,2,30]) grid_bolt_nut_z(1);
grid_translate([20,9,30]) grid_bolt_nut_z(1);
grid_translate([21,2,30]) grid_bolt_nut_z(1);
grid_translate([21,9,30]) grid_bolt_nut_z(1);
grid_translate([30,2,30]) grid_bolt_nut_z(1);
grid_translate([30,9,30]) grid_bolt_nut_z(1);

grid_translate([1,0,40]) grid_plate_stl(10,10);
grid_translate([11,0,40]) grid_plate_stl(10,10);
grid_translate([21,0,40]) grid_plate_stl(10,10);
grid_translate([1,2,40]) grid_bolt_nut_z(1);
grid_translate([1,9,40]) grid_bolt_nut_z(1);
grid_translate([10,2,40]) grid_bolt_nut_z(1);
grid_translate([10,9,40]) grid_bolt_nut_z(1);
grid_translate([11,2,40]) grid_bolt_nut_z(1);
grid_translate([11,9,40]) grid_bolt_nut_z(1);
grid_translate([20,2,40]) grid_bolt_nut_z(1);
grid_translate([20,9,40]) grid_bolt_nut_z(1);
grid_translate([21,2,40]) grid_bolt_nut_z(1);
grid_translate([21,9,40]) grid_bolt_nut_z(1);
grid_translate([30,2,40]) grid_bolt_nut_z(1);
grid_translate([30,9,40]) grid_bolt_nut_z(1);

grid_translate([1,0,49]) grid_plate_stl(10,10);
grid_translate([11,0,49]) grid_plate_stl(10,10);
grid_translate([21,0,49]) grid_plate_stl(10,10);
grid_translate([1,2,49]) grid_bolt_nut_z(1);
grid_translate([1,9,49]) grid_bolt_nut_z(1);
grid_translate([10,2,49]) grid_bolt_nut_z(1);
grid_translate([10,9,49]) grid_bolt_nut_z(1);
grid_translate([11,2,49]) grid_bolt_nut_z(1);
grid_translate([11,9,49]) grid_bolt_nut_z(1);
grid_translate([20,2,49]) grid_bolt_nut_z(1);
grid_translate([20,9,49]) grid_bolt_nut_z(1);
grid_translate([21,2,49]) grid_bolt_nut_z(1);
grid_translate([21,9,49]) grid_bolt_nut_z(1);
grid_translate([30,2,49]) grid_bolt_nut_z(1);
grid_translate([30,9,49]) grid_bolt_nut_z(1);

