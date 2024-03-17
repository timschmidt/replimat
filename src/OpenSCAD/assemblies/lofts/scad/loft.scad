/*
 * @name Replimat Loft
 * @author Timothy Schmidt
 * @date 2013-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>

// bed rails
grid_translate([0,14,44]) grid_frame_x(45);
grid_translate([0,45,44]) grid_frame_x(45);

// cornerposts
grid_translate([0,15,0]) grid_frame_z(45);
grid_translate([2,15,0]) grid_frame_z(40);
grid_translate([0,17,0]) grid_frame_z(40);

grid_translate([0,44,0]) grid_frame_z(45);
grid_translate([44,15,0]) grid_frame_z(45);
grid_translate([44,44,0]) grid_frame_z(45);

// bottom rails
grid_translate([1,15,0]) grid_frame_y(30);
grid_translate([0,16,1]) grid_frame_x(3);

grid_translate([1,15,10]) grid_frame_y(30);
grid_translate([0,16,11]) grid_frame_x(3);

grid_translate([0,43,1]) grid_frame_x(45);
grid_translate([0,43,9]) grid_frame_x(45);

// ladder support
grid_translate([0,31,0]) grid_frame_z(40);
grid_translate([15,44,0]) grid_frame_z(40);

// bed slats
grid_translate([0,43,39]) grid_frame_x(45);
grid_translate([0,30,39]) grid_frame_x(45);
grid_translate([0,16,39]) grid_frame_x(45);
grid_translate([0,16,37]) grid_frame_x(45);

grid_translate([1,15,38]) grid_frame_y(30);
grid_translate([16,15,38]) grid_frame_y(30);
grid_translate([32,15,38]) grid_frame_y(30);
grid_translate([44,15,38]) grid_frame_y(30);

grid_translate([15,15,37]) grid_frame_z(3);
grid_translate([31,15,37]) grid_frame_z(3);

// lower bed
grid_translate([16,0,8]) grid_frame_y(45);
grid_translate([43,0,8]) grid_frame_y(45);

grid_translate([15,1,1]) grid_frame_x(30);
grid_translate([15,1,9]) grid_frame_x(30);
grid_translate([15,29,9]) grid_frame_x(30);
grid_translate([15,15,9]) grid_frame_x(30);

grid_translate([15,0,0]) grid_frame_z(10);
grid_translate([44,0,0]) grid_frame_z(10);
grid_translate([15,16,0]) grid_frame_z(10);

grid_translate([15,0,10]) grid_plate_stl(30,45);
grid_translate([0,15,40]) grid_plate_stl(45,30);