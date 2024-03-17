/*
 * @name Replimat Ladder
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>

// Vertical 
grid_translate([0,1,0]) grid_frame_z(50);
grid_translate([9,1,0]) grid_frame_z(50);

// Steps
grid_translate([0,0,9]) grid_frame_x(10);
grid_translate([0,0,19]) grid_frame_x(10);
grid_translate([0,0,29]) grid_frame_x(10);
grid_translate([0,0,39]) grid_frame_x(10);
grid_translate([0,0,49]) grid_frame_x(10);

// Tri joints
grid_translate([1,0,8]) grid_frame_y(2);
grid_translate([8,0,8]) grid_frame_y(2);
grid_translate([1,0,18]) grid_frame_y(2);
grid_translate([8,0,18]) grid_frame_y(2);
grid_translate([1,0,28]) grid_frame_y(2);
grid_translate([8,0,28]) grid_frame_y(2);
grid_translate([1,0,38]) grid_frame_y(2);
grid_translate([8,0,38]) grid_frame_y(2);
grid_translate([1,0,48]) grid_frame_y(2);
grid_translate([8,0,48]) grid_frame_y(2);

//Rung 1
grid_translate([1,0,10]) rotate([0,0,0]) grid_bolt_nut_z(2);
grid_translate([8,0,10]) rotate([0,0,0]) grid_bolt_nut_z(2);
grid_translate([0,0,9]) rotate([90,0,0]) grid_bolt_nut_z(2);
grid_translate([9,0,9]) rotate([90,0,0]) grid_bolt_nut_z(2);
grid_translate([0,1,8]) rotate([0,270,0]) grid_bolt_nut_z(2);
grid_translate([10,1,9]) rotate([0,90,0]) grid_bolt_nut_z(2);

//Rung 2
grid_translate([1,0,20]) rotate([0,0,0]) grid_bolt_nut_z(2);
grid_translate([8,0,20]) rotate([0,0,0]) grid_bolt_nut_z(2);
grid_translate([0,0,19]) rotate([90,0,0]) grid_bolt_nut_z(2);
grid_translate([9,0,19]) rotate([90,0,0]) grid_bolt_nut_z(2);
grid_translate([0,1,18]) rotate([0,270,0]) grid_bolt_nut_z(2);
grid_translate([10,1,19]) rotate([0,90,0]) grid_bolt_nut_z(2);

//Rung 3
grid_translate([1,0,30]) rotate([0,0,0]) grid_bolt_nut_z(2);
grid_translate([8,0,30]) rotate([0,0,0]) grid_bolt_nut_z(2);
grid_translate([0,0,29]) rotate([90,0,0]) grid_bolt_nut_z(2);
grid_translate([9,0,29]) rotate([90,0,0]) grid_bolt_nut_z(2);
grid_translate([0,1,28]) rotate([0,270,0]) grid_bolt_nut_z(2);
grid_translate([10,1,29]) rotate([0,90,0]) grid_bolt_nut_z(2);

//Rung 4
grid_translate([1,0,40]) rotate([0,0,0]) grid_bolt_nut_z(2);
grid_translate([8,0,40]) rotate([0,0,0]) grid_bolt_nut_z(2);
grid_translate([0,0,39]) rotate([90,0,0]) grid_bolt_nut_z(2);
grid_translate([9,0,39]) rotate([90,0,0]) grid_bolt_nut_z(2);
grid_translate([0,1,38]) rotate([0,270,0]) grid_bolt_nut_z(2);
grid_translate([10,1,39]) rotate([0,90,0]) grid_bolt_nut_z(2);

//Rung 5
grid_translate([1,0,50]) rotate([0,0,0]) grid_bolt_nut_z(2);
grid_translate([8,0,50]) rotate([0,0,0]) grid_bolt_nut_z(2);
grid_translate([0,0,49]) rotate([90,0,0]) grid_bolt_nut_z(2);
grid_translate([9,0,49]) rotate([90,0,0]) grid_bolt_nut_z(2);
grid_translate([0,1,48]) rotate([0,270,0]) grid_bolt_nut_z(2);
grid_translate([10,1,49]) rotate([0,90,0]) grid_bolt_nut_z(2);