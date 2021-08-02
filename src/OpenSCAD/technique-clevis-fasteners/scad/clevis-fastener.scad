/*
 * @name Replimat Clevis fastener
 * @author Timothy Schmidt
 * @date 2017-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/grid.scad>
include <MCAD/materials.scad>
use <bolts.scad>
use <nuts.scad>

// clevis
grid_translate([0,0,2]) grid_frame_y(3);
grid_translate([0,1,1]) grid_frame_x(2);

// prongs
grid_translate([1,0,0]) grid_frame_z(3);
grid_translate([1,2,0]) grid_frame_z(3);

// bolts
grid_translate([0,0,2]) rotate([0,-90,0]) grid_bolt_nut_z(2);
grid_translate([0,2,2]) rotate([0,-90,0]) grid_bolt_nut_z(2);
grid_translate([1,1,1]) rotate([0,180,0]) grid_bolt_nut_z(2);
grid_translate([1,0,0]) rotate([90,0,0]) grid_bolt_nut_z(3);
grid_translate([1,0,1]) rotate([90,0,0]) grid_bolt_nut_z(3);