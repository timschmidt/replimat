/*
 * @name Replimat Case - Raspberry Pi
 * @author Timothy Schmidt
 * @date 2019
 * @url http://www.github.com/replimat-cad
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/grid.scad>
include <MCAD/units.scad>

radius = 13;
x=5*1.5*inch;
y=10*1.5*inch;

  linear_extrude(height=3)
  projection(cut = false)
  translate([37,43,0])
  rotate([0,0,270])
  import("../../../../../bin/stl/38.1mm/case-raspi-top-source.stl");

translate([62,7,0])
difference(){
cube([15,76.2,3]);

translate([6,1.5*inch/2, 0])
  cylinder(d=8.5,h=28);
    
translate([6,1.5*inch/2 + 1.5*inch, 0])
  cylinder(d=8.5,h=28);    
}