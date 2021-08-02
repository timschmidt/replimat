/*
 * @name Replimat Coffee table
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>

// Vertical 
grid_translate([1,1,0]) grid_frame_z(10);
grid_translate([13,1,0]) grid_frame_z(10);
grid_translate([1,13,0]) grid_frame_z(10);
grid_translate([13,13,0]) grid_frame_z(10);

grid_translate([0,0,8]) grid_frame_y(15);
grid_translate([14,0,8]) grid_frame_y(15);
grid_translate([0,14,9]) grid_frame_x(15);
grid_translate([0,0,9]) grid_frame_x(15);
    
// Shelving
grid_translate([0,0,10]) grid_plate_stl(15, 15);
