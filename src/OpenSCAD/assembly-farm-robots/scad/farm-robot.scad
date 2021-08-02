/*
 * @name Replimat Farm robot
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>
use <solar-panels.scad>
use <go-kart-drive.scad>

// Vertical 
grid_translate([1,5,0]) grid_frame_z(40);
grid_translate([1,52,0]) grid_frame_z(40);
grid_translate([39,5,0]) grid_frame_z(40);
grid_translate([39,52,0]) grid_frame_z(40);

// Feet
grid_translate([0,5,0]) grid_frame_x(40);
grid_translate([0,53,0]) grid_frame_x(40);

grid_translate([0,4,39]) grid_frame_y(50);
grid_translate([51,4,39]) grid_frame_y(50);
grid_translate([1,53,38]) grid_frame_x(50);
grid_translate([1,4,38]) grid_frame_x(50);
    
// Cross bracing


    
    
// Solar panels
grid_translate([0,4,40]) replimat_solar_panel(2);
grid_translate([26,4,40]) replimat_solar_panel(2);

grid_translate([0,0,0]) half_drive(8);
grid_translate([0,60,0]) rotate([0,0,180]) half_drive(8);
grid_translate([40,0,0]) half_drive(8);
grid_translate([40,60,0]) rotate([0,0,180]) half_drive(8);