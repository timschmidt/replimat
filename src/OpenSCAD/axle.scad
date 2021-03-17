/*
 * @name Replimat Axle
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>

frame_is_hollow = true;

// Customizer values
holes=2; // [2,3,4,5,10,15,20,25,30,40,50]
axis=3; // [1:X, 2:Y, 3:Z]

if (axis == 1) { translateFrame([0,0,1]) rotate([0,90,0]) Axle(); }
if (axis == 2) { translateFrame([0,0,1]) rotate([-90,0,0]) Axle(); }
if (axis == 3) { Axle(); }

module Axle(){
  translate([0.75*25.4,0.75*25.4,0])
  difference(){
    cylinder(h=holes * 38.1, d=25.4);
    translate([-1/8*25.4,-25.4/2,-1]) cube([1/4*25.4, 1/4*25.4, holes * 38.1 + 2]);
  }
}

