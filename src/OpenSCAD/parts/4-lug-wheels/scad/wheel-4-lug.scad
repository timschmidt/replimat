/*
 * @name Replimat Wheel 4 lug
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>

$fn=100;

module wheel(){
grid_translate([0,-3,0])
rotate([-90,0,0])
difference(){
    cylinder(d=inch(20),h=inch(10));
    translate([0,0,inch(-0.1)]) cylinder(d=inch(12),h=inch(4.1));
    translate([0,0,inch(5)]) cylinder(d=inch(12),h=inch(5.1));

    translate([inch(1.4375),inch(1.4375),-1]) cylinder(d=10,h=inch(10));
    translate([inch(-1.4375),inch(1.4375),-1]) cylinder(d=10,h=inch(10));
    translate([inch(1.4375),inch(-1.4375),-1]) cylinder(d=10,h=inch(10));
    translate([inch(-1.4375),inch(-1.4375),-1]) cylinder(d=10,h=inch(10));
    
    cylinder(d=inch(2),h=inch(10));
}
}

wheel();