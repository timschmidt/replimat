/*
 * @name Replimat Sign board
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>

// Vertical 
grid_translate([0,5,0]) grid_frame_z(40);
grid_translate([29,5,0]) grid_frame_z(40);

// Feet
grid_translate([1,0,0]) grid_frame_y(10);
grid_translate([28,0,0]) grid_frame_y(10);
grid_translate([0,6,1]) grid_frame_x(30);

// Sign
grid_translate([0,5,10]) rotate([90,0,0]) grid_plate_stl(30, 30);
