/*
 * @name Replimat Wardrobe
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>

// Shelving
grid_translate([15,0,1]) grid_plate_stl(15, 10);
grid_translate([15,0,8]) grid_plate_stl(15, 10);
grid_translate([15,0,16]) grid_plate_stl(15, 10);
grid_translate([15,0,24]) grid_plate_stl(15, 10);
grid_translate([15,0,32]) grid_plate_stl(15, 10);

// Top
grid_translate([0,0,41]) grid_plate_stl(30, 10);

// Sides
grid_translate([0,0,41]) rotate([0,90,0]) grid_plate_stl(40, 10);
grid_translate([15,0,41]) rotate([0,90,0]) grid_plate_stl(40, 10);
grid_translate([30,0,41]) rotate([0,90,0]) grid_plate_stl(40, 10);

// Frames
grid_translate([0,0,0]) grid_frame_x(30);
grid_translate([0,9,0]) grid_frame_x(30);

grid_translate([0,0,1]) grid_frame_y(10);
grid_translate([14,0,1]) grid_frame_y(10);
grid_translate([29,0,1]) grid_frame_y(10);
grid_translate([15,0,1]) grid_frame_y(10);

grid_translate([29,0,7]) grid_frame_y(10);
grid_translate([15,0,7]) grid_frame_y(10);

grid_translate([29,0,15]) grid_frame_y(10);
grid_translate([15,0,15]) grid_frame_y(10);

grid_translate([29,0,23]) grid_frame_y(10);
grid_translate([15,0,23]) grid_frame_y(10);

grid_translate([29,0,31]) grid_frame_y(10);
grid_translate([15,0,31]) grid_frame_y(10);

grid_translate([0,0,40]) grid_frame_y(10);
grid_translate([14,0,40]) grid_frame_y(10);
grid_translate([29,0,40]) grid_frame_y(10);
grid_translate([15,0,40]) grid_frame_y(10);
