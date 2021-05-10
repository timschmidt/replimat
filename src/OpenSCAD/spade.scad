/*
 * Replimat Spade
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>
use <bolts.scad>
use <nuts.scad>

frame_is_hollow = true;

// frames
translateFrame([3,1,0]) xFrame(10);

// blades
difference(){
  union(){
    translate([0,0,-6.5]) topShelf(5,2,0);
    translate([0,6.5,0]) translateFrame([0,2,0]) rotate([90,0,0]) topShelf(5,2,0);
  }

  translate([0,0,0]) rotate([0,-45,0]) cube([200,200,80]);
  translate([0,38.1*2,-6.6]) rotate([0,0,-135]) cube([200,200,80]);
}

// bolts
translateFrame([4,2,1]) rotate([270,90,0]) replimat_nut_and_bolt(1);
translateFrame([5,1,0]) rotate([0,180,0]) replimat_nut_and_bolt(1);