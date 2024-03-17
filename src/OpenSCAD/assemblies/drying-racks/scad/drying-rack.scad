/*
 * @name Replimat Drying rack
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */
 
include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>
use <../../pallets/scad/pallet.scad>

module drying_rack(){

pallet();

// Frame
grid_translate([1,0,0]) grid_frame_z(30);
grid_translate([28,0,0]) grid_frame_z(30);
grid_translate([1,19,0]) grid_frame_z(30);
grid_translate([28,19,0]) grid_frame_z(30);

grid_translate([0,0,29]) grid_frame_y(20);
grid_translate([29,0,29]) grid_frame_y(20);
grid_translate([0,5,28]) grid_frame_x(30);
grid_translate([0,14,28]) grid_frame_x(30);

grid_translate([0,0,15]) grid_frame_y(20);
grid_translate([29,0,15]) grid_frame_y(20);
grid_translate([0,5,14]) grid_frame_x(30);
grid_translate([0,14,14]) grid_frame_x(30);

// bolts
grid_translate([1,9,0]) rotate([0,180,0]) grid_bolt_nut_z(2);

}

drying_rack();