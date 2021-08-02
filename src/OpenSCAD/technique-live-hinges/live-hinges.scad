/*
 * @name Replimat Live hinges
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/grid.scad>
include <MCAD/materials.scad>
use <bolts.scad>
use <nuts.scad>
use <washers.scad>


// frames
grid_translate([0,0,0]) grid_frame_x(3);
grid_translate([2,0,1.1]) grid_frame_x(3);
grid_translate([0,0,2.2]) grid_frame_x(3);


// nuts and bolts
grid_translate([2,0,3.2]) rotate([0,0,0]) grid_bolt_nut_z(3.2);

grid_translate([2,0,1]) rotate([0,0,0]) washer();
grid_translate([2,0,2.1]) rotate([0,0,0]) washer();