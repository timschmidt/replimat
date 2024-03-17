/*
 * @name Replimat Case - Raspberry Pi
 * @author Timothy Schmidt
 * @date 2019
 * @url http://www.github.com/replimat-cad
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/vitamins/grid.scad>
include <MCAD/units.scad>

radius = 13;
x=5*1.5*inch;
y=10*1.5*inch;

translate([27,49,0])
import("../../../../../bin/stl/38.1mm/case-raspi-bottom-source.stl");

translate([62,7,0])
difference(){
cube([15,76.2,24]);

translate([6,1.5*inch/2, 0])
  cylinder(d=8.5,h=28);
    
translate([6,1.5*inch/2 + 1.5*inch, 0])
  cylinder(d=8.5,h=28);    
}