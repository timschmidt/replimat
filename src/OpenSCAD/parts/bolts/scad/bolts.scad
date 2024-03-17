/*
 * @name Replimat Bolts
 * @author Timothy Schmidt
 * @date 2020-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

use <NopSCADlib/lib.scad>
use <../../nuts/scad/nuts.scad>
include <NopSCADlib/vitamins/screw.scad>
include <NopSCADlib/vitamins/screws.scad>
include <NopSCADlib/vitamins/grid.scad>

length = 2; // [50:1, 90:2, 130:3]

module replimat_bolt(length){
  grid_translate([0.5,0.5,0])
  screw(M12_hex_screw, length*grid_frame_width+M12_nut_depth);
};

module grid_bolt_nut_z(length){
  grid_translate([0.5,0.5,0])
  screw(M12_hex_screw, length*grid_frame_width+M12_nut_depth);
  
  translate([0,0,-length*grid_frame_width])
  grid_nut();
};

module zNutBolt(length){
    grid_bolt_nut_z(length);
}

module xNutBolt(length){
    rotate([0,270,0])
    grid_bolt_nut_z(length);
}

module yNutBolt(length){
    rotate([90,0,0])
    grid_bolt_nut_z(length);
}

replimat_bolt(length);