/*
 * Replimat Stacked washers
 * @author Timothy Schmidt
 * @date 2013-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/grid.scad>
include <MCAD/materials.scad>
use <bolts.scad>
use <nuts.scad>
use <washers.scad>

frame_is_hollow = true;

// frames
grid_translate([0,0,1.5]) grid_frame_x(5);
grid_translate([0,0,0]) grid_frame_x(5);

// bolts
grid_translate([0,0,2.5]) rotate([0,0,0]) replimat_bolt(3);
grid_translate([4,0,2.5]) rotate([0,0,0]) replimat_bolt(3);

//nuts
grid_translate([0,0,0]) rotate([0,0,0]) grid_nut();
grid_translate([4,0,0]) rotate([0,0,0]) grid_nut();

//washers
grid_translate([0,0,1]) washer();
grid_translate([0,0,1.09]) washer();
grid_translate([0,0,1.18]) washer();
grid_translate([0,0,1.27]) washer();
grid_translate([0,0,1.36]) washer();
grid_translate([0,0,1.45]) washer();

grid_translate([4,0,1]) washer();
grid_translate([4,0,1.09]) washer();
grid_translate([4,0,1.18]) washer();
grid_translate([4,0,1.27]) washer();
grid_translate([4,0,1.36]) washer();
grid_translate([4,0,1.45]) washer();