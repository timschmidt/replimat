/*
 * Replimat Triangle
 * @author Timothy Schmidt
 * @date 2013-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/vitamins/grid.scad>
include <MCAD/materials.scad>
include <NopSCADlib/vitamins/screws.scad>
include <NopSCADlib/vitamins/nuts.scad>

frame_is_hollow = true;

// frames
grid_translate([0,0,0]) grid_frame_x(5);
grid_translate([0,1,0]) grid_frame_z(15);
grid_translate([3,0,1]) grid_frame_y(2);
grid_translate([4,1,0]) grid_frame_z(3);
grid_translate([4.3,0,1.8]) rotate([0,-26.5,0]) grid_frame_z(10);


// bolts
grid_translate([0,0,0]) rotate([90,0,0]) grid_bolt_nut_z(2);
grid_translate([0,0,10]) rotate([90,0,0]) grid_bolt_nut_z(2);
grid_translate([4,0,0]) rotate([90,0,0]) grid_bolt_nut_z(2);
grid_translate([4,0,2]) rotate([90,0,0]) grid_bolt_nut_z(2);
grid_translate([5,1,2]) rotate([0,90,0]) grid_bolt_nut_z(2);
grid_translate([3,1,0]) rotate([180,0,0]) grid_bolt_nut_z(2);