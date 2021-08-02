/*
 * @name Replimat Shelf tower
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */
 
include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>

// Feet
grid_translate([0,0,0]) grid_frame_y(10);
grid_translate([9,0,0]) grid_frame_y(10);

grid_translate([0,0,6]) grid_frame_y(10);
grid_translate([9,0,6]) grid_frame_y(10);

grid_translate([0,0,12]) grid_frame_y(10);
grid_translate([9,0,12]) grid_frame_y(10);

grid_translate([0,0,18]) grid_frame_y(10);
grid_translate([9,0,18]) grid_frame_y(10);

grid_translate([0,0,24]) grid_frame_y(10);
grid_translate([9,0,24]) grid_frame_y(10);

grid_translate([0,0,30]) grid_frame_y(10);
grid_translate([9,0,30]) grid_frame_y(10);
    
// Shelving
grid_translate([0,0,1]) grid_plate_stl(10, 10);
grid_translate([0,0,7]) grid_plate_stl(10, 10);
grid_translate([0,0,13]) grid_plate_stl(10, 10);
grid_translate([0,0,19]) grid_plate_stl(10, 10);
grid_translate([0,0,25]) grid_plate_stl(10, 10);
grid_translate([0,0,31]) grid_plate_stl(10, 10);


// Sides
grid_translate([0,0,31]) rotate([0,90,0]) grid_plate_stl(30, 10);
grid_translate([10,0,31]) rotate([0,90,0]) grid_plate_stl(30, 10);