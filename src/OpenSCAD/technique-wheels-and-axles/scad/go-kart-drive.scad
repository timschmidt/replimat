/*
 * @name Replimat Go kart drive
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/grid.scad>
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

module go_kart_drive(width){

shaft(holes=width,axis=2);

translate([0,0,0])
shaft_collar();

wheel();

translate([0,12,0])
wheel_adapter();

grid_translate([0,4,0])
shaft_collar();

grid_translate([0,5,0])
rotate([0,180,0])
axial_bearing();

grid_translate([0,width-0.3,0])
shaft_collar();

grid_translate([0,width,0])
rotate([180,0,0])
wheel();

grid_translate([0,width-1,0])
translate([0,26,0])
rotate([180,0,0])
wheel_adapter();

grid_translate([0,width-5,0])
rotate([0,180,0])
axial_bearing();

grid_translate([0,width-4,0])
shaft_collar();
}

module half_drive(width){

shaft(holes=width,axis=2);

translate([0,0,0])
shaft_collar();

wheel();

translate([0,12,0])
wheel_adapter();

grid_translate([0,4,0])
shaft_collar();

grid_translate([0,5,0])
rotate([0,180,0])
axial_bearing();

grid_translate([0,width-0.3,0])
shaft_collar();

grid_translate([0,width-1,0])
rotate([0,180,0])
axial_bearing();

grid_translate([0,width-4,0])
shaft_collar();
}

go_kart_drive(30);
//half_drive(10);