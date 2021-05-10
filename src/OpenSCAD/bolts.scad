/*
 * @name Replimat Bolts
 * @author Timothy Schmidt
 * @date 2020-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

use <NopSCADlib/lib.scad>
use <nuts.scad>
include <NopSCADlib/vitamins/screw.scad>
include <NopSCADlib/vitamins/screws.scad>
include <MCAD/frame.scad>

length = 2; // [50:1, 90:2, 130:3]

module replimat_bolt(length){
  translateFrame([0.5,0.5,0])
  screw(M8_hex_screw, length*frame_width+M8_nut_depth);
};

module replimat_nut_and_bolt(length){
  translateFrame([0.5,0.5,0])
  screw(M8_hex_screw, length*frame_width+M8_nut_depth);
  
  translate([0,0,-length*frame_width])
  replimat_nut();
};

replimat_bolt(length);