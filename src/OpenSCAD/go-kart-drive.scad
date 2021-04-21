/*
 * @name Replimat Go kart drive
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>
include <MCAD/units.scad>
use <NopSCADlib/lib.scad>
include <NopSCADlib/core.scad>
include <NopSCADlib/vitamins/pillow_blocks.scad>
use <NopSCADlib/utils/layout.scad>
use <shaft-keyed.scad>
use <wheel-4-lug.scad>
use <wheel-adapter.scad>
use <axial-bearing.scad>
use <shaft-collar.scad>

$fn=100;

shaft(holes=30,axis=2);

translate([0,0,0])
shaft_collar();

wheel();

translate([0,12,0])
wheel_adapter();

translateFrame([0,4,0])
shaft_collar();

translateFrame([0,5,0])
rotate([0,180,0])
axial_bearing();

translateFrame([0,29.7,0])
shaft_collar();

translateFrame([0,30,0])
rotate([180,0,0])
wheel();

translateFrame([0,29,0])
translate([0,26,0])
rotate([180,0,0])
wheel_adapter();

translateFrame([0,25,0])
rotate([0,180,0])
axial_bearing();

translateFrame([0,26,0])
shaft_collar();