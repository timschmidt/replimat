/*
 * @name Replimat Caster joint - suboptimal
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */
 
include <NopSCADlib/vitamins/grid.scad>
include <MCAD/units.scad>

grid_translate([0,1,0])
translate([0,0,94])
grid_frame_x(5);
translate([0,0,94])
grid_translate([0,0,0])
grid_frame_z(5);
translate([0,0,94])
grid_translate([1,0,1])
grid_frame_y(5);
translate([3*inch+19.05,15+19.05,94]) rotate([0,180,270]) import("../../../../../bin/stl/caster-HFT 61855 v011.stl");

grid_translate([0,0,3.5]) rotate([0,-90,0]) grid_bolt_nut_z(2);
grid_translate([1,2,2.4]) rotate([180,0,0]) grid_bolt_nut_z(2);
grid_translate([3,2,2.4]) rotate([180,0,0]) grid_bolt_nut_z(1);
grid_translate([0,0,2.4]) rotate([90,0,0]) grid_bolt_nut_z(2);