/*
 * @name Replimat Room divider
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>

// Panels
grid_translate([0,0,41]) rotate([45,90,0]) grid_plate_stl(40, 10);
grid_translate([14,0,41]) rotate([-45,90,0]) grid_plate_stl(40, 10);
grid_translate([14,0,41]) rotate([45,90,0]) grid_plate_stl(40, 10);