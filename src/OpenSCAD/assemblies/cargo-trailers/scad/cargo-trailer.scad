/*
 * @name Replimat Cargo trailer
 * @author Timothy Schmidt
 * @date 2016-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 * @todo pillow block bearings, bolts, axle, wheels
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>
use <../../../techniques/wheels-and-axles/scad/go-kart-drive.scad>

module trailer(){
grid_translate([1,2,7]) grid_frame_x(30);
grid_translate([1,14,7]) grid_frame_x(30);
grid_translate([1,0,15]) grid_frame_x(30);
grid_translate([1,16,15]) grid_frame_x(30);

// Trailer hitch
grid_translate([30,14,10]) grid_frame_x(10);
grid_translate([39,10,9]) grid_frame_y(5);
grid_translate([38,13,9]) grid_frame_z(2);

grid_translate([1,1,6]) grid_frame_z(10);
grid_translate([1,15,6]) grid_frame_z(10);
grid_translate([30,1,6]) grid_frame_z(10);
grid_translate([30,15,6]) grid_frame_z(10);

// Wheel posts
//grid_translate([12,1,3]) grid_frame_z(5);
//grid_translate([12,15,3]) grid_frame_z(5);

grid_translate([0,1,14]) grid_frame_y(15);
grid_translate([31,1,9]) grid_frame_y(15);
grid_translate([2,1,6]) grid_frame_y(15);
grid_translate([11,1,6]) grid_frame_y(15);
grid_translate([20,1,6]) grid_frame_y(15);
grid_translate([29,1,6]) grid_frame_y(15);
}

grid_translate([14,-2.5,6])
go_kart_drive(22);

grid_translate([0,0,0])
trailer();

// bolts
grid_translate([2,3,6]) rotate([180,0,0]) grid_bolt_nut_z(2);
grid_translate([2,15,6]) rotate([180,0,0]) grid_bolt_nut_z(2);
grid_translate([29,3,6]) rotate([180,0,0]) grid_bolt_nut_z(2);
grid_translate([29,15,6]) rotate([180,0,0]) grid_bolt_nut_z(2);

grid_translate([1,1,7]) rotate([90,0,0]) grid_bolt_nut_z(2);
grid_translate([30,1,7]) rotate([90,0,0]) grid_bolt_nut_z(2);
grid_translate([1,16,8]) rotate([270,0,0]) grid_bolt_nut_z(2);
grid_translate([30,16,8]) rotate([270,0,0]) grid_bolt_nut_z(2);

grid_translate([1,1,6]) rotate([0,270,0]) grid_bolt_nut_z(2);
grid_translate([1,15,6]) rotate([0,270,0]) grid_bolt_nut_z(2);
grid_translate([31,1,7]) rotate([0,90,0]) grid_bolt_nut_z(2);
grid_translate([31,15,7]) rotate([0,90,0]) grid_bolt_nut_z(2);

grid_translate([2,1,8]) grid_plate_stl(10,15);
grid_translate([11,1,8]) grid_plate_stl(10,15);
grid_translate([20,1,8]) grid_plate_stl(10,15);
