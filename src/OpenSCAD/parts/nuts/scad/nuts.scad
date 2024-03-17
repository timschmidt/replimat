/*
 * @name Replimat Nuts
 * @author Timothy Schmidt
 * @date 2020-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/nut.scad>
include <NopSCADlib/vitamins/nuts.scad>
include <NopSCADlib/vitamins/grid.scad>

module grid_nut(){
  grid_translate([0.5,0.5,0])
  rotate([180,0,0])
  nut(M12_nut, true);
}

rotate([180,0,0])
grid_nut();