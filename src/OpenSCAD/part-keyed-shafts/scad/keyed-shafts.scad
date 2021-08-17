/*
 * @name Replimat Shaft - keyed
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>

// Customizer values
holes=2; // [2,3,4,5,10,15,20,25,30,40,50]
axis=3; // [1:X, 2:Y, 3:Z]

module shaft(holes=5,axis=3){
if (axis == 1) { grid_translate([0,0,0]) rotate([0,90,0]) zShaft(holes); }
if (axis == 2) { grid_translate([0,0,0]) rotate([-90,0,0]) zShaft(holes); }
if (axis == 3) { zShaft(holes); }
}

module zShaft(holes){
  //translate([inch(0.75),inch(0.75),0])
  color("grey")
  difference(){
    cylinder(h=holes * grid_frame_width, d=inch(1));
    translate([inch(-1/8),inch(-1/2),-1]) cube([inch(1/4), inch(1/4), holes * grid_frame_width + 2]);
  }
}

shaft();