/*
 * @name Replimat Work Cube
 * @author Timothy Schmidt
 * @date 2016-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

/* TODO: add casters
 * TODO: add power strip, extension cord, two hook bolts
 * Description: The work cube has room for mounting a tool or two,
 *              and space for a project tray below.  Lockable casters
 *              and an integrated extension cord and power strip make
 *              this workspace mobile.
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>

// Vertical 
grid_frame_z(15);
grid_translate([14,0,0]) grid_frame_z(15);
grid_translate([0,14,0]) grid_frame_z(15);
grid_translate([14,14,0]) grid_frame_z(15);

// Feet
grid_translate([1,0,0]) grid_frame_y(15);
grid_translate([13,0,0]) grid_frame_y(15);
grid_translate([0,1,1]) grid_frame_x(15);
grid_translate([0,13,1]) grid_frame_x(15);

grid_translate([1,0,13]) grid_frame_y(15);
grid_translate([13,0,13]) grid_frame_y(15);
grid_translate([0,13,14]) grid_frame_x(15);
grid_translate([0,1,14]) grid_frame_x(15);
    
// Shelving
grid_translate([0,0,2]) grid_plate_stl(15, 15);
grid_translate([0,0,15]) grid_plate_stl(15, 15);
