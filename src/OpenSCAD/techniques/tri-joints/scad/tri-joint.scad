/*
 * Replimat Tri-joint
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

holes = 10; // [2, 3, 4, 5, 10, 15, 20, 25, 30, 40, 50]
frame_is_hollow = true;

// frames
grid_translate([0,9,1]) grid_frame_x(holes);
grid_translate([0,0,0]) grid_frame_y(holes);
grid_translate([1,8,0]) grid_frame_z(holes);

// bolts
grid_translate([1,9,0]) rotate([0,180,0]) grid_bolt_nut_z(2);
grid_translate([0,8,0]) rotate([0,-90,0]) grid_bolt_nut_z(2);
grid_translate([1,10,2]) rotate([-90,0,0]) grid_bolt_nut_z(2);