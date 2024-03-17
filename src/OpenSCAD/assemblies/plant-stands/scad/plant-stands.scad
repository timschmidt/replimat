/*
 * @name Replimat Plant stands
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>

// Vertical 
grid_translate([5,1,0]) grid_frame_z(25);
grid_translate([7,5,0]) grid_frame_z(25);
grid_translate([11,1,0]) grid_frame_z(25);
grid_translate([9,5,0]) grid_frame_z(25);

//Base
grid_translate([6,4,0]) grid_frame_x(5);
grid_translate([6,2,0]) grid_frame_x(5);

grid_translate([6,1,1]) grid_frame_y(5);
grid_translate([10,1,1]) grid_frame_y(5);

grid_translate([7,4,8]) grid_frame_x(10);
grid_translate([5,2,8]) grid_frame_x(10);

grid_translate([0,4,16]) grid_frame_x(10);
grid_translate([2,2,16]) grid_frame_x(10);

grid_translate([6,1,24]) grid_frame_y(5);
grid_translate([10,1,24]) grid_frame_y(5);
   
// Shelving
grid_translate([6,0,2]) grid_plate_stl(5, 5);
grid_translate([6,0,9]) grid_plate_stl(5, 5);
grid_translate([12,0,9]) grid_plate_stl(5, 5);
grid_translate([6,0,17]) grid_plate_stl(5, 5);
grid_translate([0,0,17]) grid_plate_stl(5, 5);
grid_translate([6,0,25]) grid_plate_stl(5, 5);

