/*
 * @name Replimat Side table
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>

// Feet
grid_translate([0,0,4]) grid_frame_y(10);
grid_translate([9,0,4]) grid_frame_y(10);

grid_translate([0,0,9]) grid_frame_y(10);
grid_translate([9,0,9]) grid_frame_y(10);
    
// Shelving
grid_translate([0,0,5]) grid_plate_stl(10, 10);
grid_translate([0,0,10]) grid_plate_stl(10, 10);

// Sides
grid_translate([0,0,10]) rotate([0,90,0]) grid_plate_stl(10, 10);
grid_translate([10,0,10]) rotate([0,90,0]) grid_plate_stl(10, 10);