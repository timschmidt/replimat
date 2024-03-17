/*
 * @name Replimat Bicycle rack
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>
include <NopSCADlib/vitamins/screws.scad>
include <NopSCADlib/vitamins/nuts.scad>

// Vertical 
grid_translate([1,10,0]) grid_frame_z(25);
grid_translate([6,10,0]) grid_frame_z(25);
grid_translate([12,10,0]) grid_frame_z(25);
grid_translate([17,10,0]) grid_frame_z(25);
grid_translate([23,10,0]) grid_frame_z(25);
grid_translate([28,10,0]) grid_frame_z(25);

// Base
grid_translate([0,0,0]) grid_frame_y(20);
grid_translate([29,0,0]) grid_frame_y(20);
grid_translate([0,9,1]) grid_frame_x(30);
grid_translate([0,11,1]) grid_frame_x(30);

// Rail
grid_translate([0,9,24]) grid_frame_x(30);

// Nuts and Bolts
grid_translate([1,9,1]) grid_bolt_nut_y(3);
grid_translate([6,9,1]) grid_bolt_nut_y(3);
grid_translate([12,9,1]) grid_bolt_nut_y(3);
grid_translate([17,9,1]) grid_bolt_nut_y(3);
grid_translate([23,9,1]) grid_bolt_nut_y(3);
grid_translate([28,9,1]) grid_bolt_nut_y(3);
grid_translate([1,9,24]) grid_bolt_nut_y(2);
grid_translate([6,9,24]) grid_bolt_nut_y(2);
grid_translate([12,9,24]) grid_bolt_nut_y(2);
grid_translate([17,9,24]) grid_bolt_nut_y(2);
grid_translate([23,9,24]) grid_bolt_nut_y(2);
grid_translate([28,9,24]) grid_bolt_nut_y(2);
grid_translate([0,9,2]) grid_bolt_nut_z(2);
grid_translate([0,11,2]) grid_bolt_nut_z(2);
grid_translate([29,9,2]) grid_bolt_nut_z(2);
grid_translate([29,11,2]) grid_bolt_nut_z(2);
grid_translate([0,10,0]) grid_bolt_nut_x(2);
grid_translate([30,11,0]) rotate([0,0,180]) grid_bolt_nut_x(2);