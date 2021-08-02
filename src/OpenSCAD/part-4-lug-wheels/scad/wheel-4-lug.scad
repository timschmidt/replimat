/*
 * @name Replimat Wheel 4 lug
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/grid.scad>
include <MCAD/materials.scad>
include <MCAD/units.scad>

$fn=100;

module wheel(){
grid_translate([0,-3,0])
rotate([-90,0,0])
difference(){
    cylinder(d=20*inch,h=10*inch);
    translate([0,0,-0.1*inch]) cylinder(d=12*inch,h=4.1*inch);
    translate([0,0,5*inch]) cylinder(d=12*inch,h=5.1*inch);

    translate([1.4375*25.4,1.4375*25.4,-1]) cylinder(d=10,h=10*inch);
    translate([-1.4375*25.4,1.4375*25.4,-1]) cylinder(d=10,h=10*inch);
    translate([1.4375*25.4,-1.4375*25.4,-1]) cylinder(d=10,h=10*inch);
    translate([-1.4375*25.4,-1.4375*25.4,-1]) cylinder(d=10,h=10*inch);
    
    cylinder(d=2*inch,h=10*inch);
}
}

wheel();