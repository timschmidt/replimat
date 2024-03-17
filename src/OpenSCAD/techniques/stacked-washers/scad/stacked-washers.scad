/*
 * Replimat Stacked washers
 * @author Timothy Schmidt
 * @date 2013-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/vitamins/grid.scad>
include <MCAD/materials.scad>
include <NopSCADlib/vitamins/screws.scad>
include <NopSCADlib/vitamins/nuts.scad>
include <NopSCADlib/vitamins/washers.scad>

// frames
grid_translate([0,0,1.5]) grid_frame_x(5);
grid_translate([0,0,0]) grid_frame_x(5);

// bolts
grid_translate([0.5,0.5,2.5]) rotate([0,0,0]) screw(M12_hex_screw, 3*grid_frame_width+M12_nut_depth);
grid_translate([4.5,0.5,2.5]) rotate([0,0,0]) screw(M12_hex_screw, 3*grid_frame_width+M12_nut_depth);

//nuts
grid_translate([0,0,0]) rotate([0,0,0]) grid_nut();
grid_translate([4,0,0]) rotate([0,0,0]) grid_nut();

//washers
grid_translate([0.5,0.5,1]) washer(M8_washer);
grid_translate([0.5,0.5,1.09]) washer(M8_washer);
grid_translate([0.5,0.5,1.18]) washer(M8_washer);
grid_translate([0.5,0.5,1.27]) washer(M8_washer);
grid_translate([0.5,0.5,1.36]) washer(M8_washer);
grid_translate([0.5,0.5,1.45]) washer(M8_washer);

grid_translate([4.5,0.5,1]) washer(M8_washer);
grid_translate([4.5,0.5,1.09]) washer(M8_washer);
grid_translate([4.5,0.5,1.18]) washer(M8_washer);
grid_translate([4.5,0.5,1.27]) washer(M8_washer);
grid_translate([4.5,0.5,1.36]) washer(M8_washer);
grid_translate([4.5,0.5,1.45]) washer(M8_washer);