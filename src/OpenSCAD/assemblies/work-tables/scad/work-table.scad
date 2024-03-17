/*
 * @name Replimat Work table
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>

// Vertical 
grid_frame_z(15);
grid_translate([0,19,0]) grid_frame_z(15);
grid_translate([39,0,0]) grid_frame_z(15);
grid_translate([39,19,0]) grid_frame_z(15);

// Feet
grid_translate([0,1,0]) grid_frame_x(40);
grid_translate([0,18,0]) grid_frame_x(40);

grid_translate([1,0,14]) grid_frame_y(20);
grid_translate([38,0,14]) grid_frame_y(20);
grid_translate([0,18,13]) grid_frame_x(40);
grid_translate([0,1,13]) grid_frame_x(40);
    
// Shelving
grid_translate([0,0,15]) grid_plate_stl(40, 20);
