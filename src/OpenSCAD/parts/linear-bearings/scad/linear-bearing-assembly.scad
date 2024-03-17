/*
 * Replimat Linear bearing assembly
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
use <linear-bearing.scad>

module linear_bearing_assembly(){

// frames
color(Aluminum)
grid_translate([1,1,0]) grid_frame_z(10);
color(Aluminum)
grid_translate([0,0,4]) grid_frame_z(2);
color(Aluminum)
grid_translate([2,2,4]) grid_frame_z(2);


// bolts
grid_translate([0,0,5]) rotate([90,0,0]) grid_bolt_nut_z(3);
grid_translate([2,0,5]) rotate([90,0,0]) grid_bolt_nut_z(3);
grid_translate([0,0,4]) rotate([0,-90,0]) grid_bolt_nut_z(3);
grid_translate([0,2,4]) rotate([0,-90,0]) grid_bolt_nut_z(3);

grid_translate([0,1,4])
linear_bearing();

grid_translate([3,2,4])
rotate([0,0,180])
linear_bearing();
}

linear_bearing_assembly();