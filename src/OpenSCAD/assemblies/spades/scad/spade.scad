/*
 * Replimat Spade
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>

// frames
grid_translate([3,1,0]) grid_frame_x(10);

// blades
difference(){
  union(){
    translate([0,0,-6.5]) grid_plate_stl(5,2,0);
    translate([0,6.5,0]) grid_translate([0,2,0]) rotate([90,0,0]) grid_plate_stl(5,2,0);
  }

  translate([0,0,0]) rotate([0,-45,0]) cube([200,200,80]);
  translate([0,38.1*2,-6.6]) rotate([0,0,-135]) cube([200,200,80]);
}

// bolts
grid_translate([4,2,1]) rotate([270,90,0]) grid_bolt_nut_z(1);
grid_translate([5,1,0]) rotate([0,180,0]) grid_bolt_nut_z(1);