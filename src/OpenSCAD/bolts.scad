/*
 * @name Replimat Bolts
 * @author Timothy Schmidt
 * @date 2020-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

use <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/screw.scad>
include <NopSCADlib/vitamins/screws.scad>

length = 90; // [50:1, 90:2, 130:3]

screw(M8_hex_screw, length);