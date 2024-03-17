/*
 * @name Replimat Splicing frames
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/vitamins/grid.scad>
include <MCAD/materials.scad>
include <NopSCADlib/vitamins/screws.scad>
include <NopSCADlib/vitamins/nuts.scad>


// frames
grid_translate([0,0,0]) grid_frame_x(10);
grid_translate([8,0,1]) grid_frame_x(10);


// nuts and bolts
grid_translate([8,0,2]) rotate([0,0,0]) grid_bolt_nut_z(2);
grid_translate([9,0,2]) rotate([0,0,0]) grid_bolt_nut_z(2);