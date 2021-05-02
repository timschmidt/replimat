/*
 * @name Replimat Shaft - keyed
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>
include <MCAD/units.scad>

frame_is_hollow = true;

// Customizer values
holes=2; // [2,3,4,5,10,15,20,25,30,40,50]
axis=3; // [1:X, 2:Y, 3:Z]

module shaft(holes=5,axis=3){
if (axis == 1) { translateFrame([0,0,0]) rotate([0,90,0]) zShaft(holes); }
if (axis == 2) { translateFrame([0,0,0]) rotate([-90,0,0]) zShaft(holes); }
if (axis == 3) { zShaft(holes); }
}

module zShaft(holes){
  //translate([0.75*inch,0.75*inch,0])
  color(Steel)
  difference(){
    cylinder(h=holes * 1.5*inch, d=1*inch);
    translate([-1/8*inch,-1*inch/2,-1]) cube([1/4*inch, 1/4*inch, holes * 1.5*inch + 2]);
  }
}

shaft();