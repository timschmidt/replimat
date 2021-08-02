/*
 * @name Replimat Steps
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>

// Vertical 
grid_frame_z(2);
grid_translate([4,0,0]) grid_frame_z(2);
grid_translate([0,5,0]) grid_frame_z(4);
grid_translate([4,5,0]) grid_frame_z(4);
grid_translate([0,9,0]) grid_frame_z(4);
grid_translate([4,9,0]) grid_frame_z(4);

// Frame
grid_translate([1,0,0]) grid_frame_y(10);
grid_translate([3,0,0]) grid_frame_y(10);
grid_translate([0,1,1]) grid_frame_x(5);
grid_translate([0,4,1]) grid_frame_x(5);

grid_translate([0,6,3]) grid_frame_x(5);
grid_translate([0,8,3]) grid_frame_x(5);
    
// Shelving
grid_translate([0,0,2]) grid_plate_stl(5, 5);
grid_translate([0,5,4]) grid_plate_stl(5, 5);