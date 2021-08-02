/*
 * Replimat Pallet w/ barrels
 * @author Timothy Schmidt
 * @date 2013-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>
use <pallet.scad>
use <barrels.scad>

pallet();

grid_translate([1.5,0,2])
barrel();

grid_translate([16.5,6,2])
barrel();