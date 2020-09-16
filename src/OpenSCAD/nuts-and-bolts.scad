/*
 * @name Replimat Nuts and Bolts
 * @author Timothy Schmidt
 * @date 2020
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

use <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/screw.scad>
include <NopSCADlib/vitamins/screws.scad>
include <NopSCADlib/vitamins/nut.scad>
include <NopSCADlib/vitamins/nuts.scad>

nut(M8_nut, true);

translate([30,0,0])
screw(M8_hex_screw, 50);

translate([60,0,0])
screw(M8_hex_screw, 90);

translate([90,0,0])
screw(M8_hex_screw, 130);

