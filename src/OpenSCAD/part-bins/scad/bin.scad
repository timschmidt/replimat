/*
 * @name Replimat Bin
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/grid.scad>
include <MCAD/materials.scad>

frame_is_hollow = true;

// 2 x 3

module bin(){
// Deck
grid_translate([0,0,0]) grid_plate_stl(2, 4, 0);

// Sides
#grid_translate([0,0.175,0]) rotate([90,0,0]) grid_plate_stl(2, 2, 0);
grid_translate([0,4,0]) rotate([90,0,0]) grid_plate_stl(2, 2, 0);
grid_translate([0,0,2]) rotate([0,90,0]) grid_plate_stl(2, 4, 0);
#grid_translate([1.825,0,2]) rotate([0,90,0]) grid_plate_stl(2, 4, 0);
}

bin();