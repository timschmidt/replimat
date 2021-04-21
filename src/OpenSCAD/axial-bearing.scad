/*
 * @name Replimat Axial bearing in pillow block
 * @author Timothy Schmidt
 * @date 2020-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

use <NopSCADlib/lib.scad>
include <MCAD/frame.scad>
include <NopSCADlib/core.scad>
include <NopSCADlib/vitamins/pillow_blocks.scad>

use <NopSCADlib/utils/layout.scad>

//translateFrame([0,-1,0]) xFrame(5);

module axial_bearing(){
//translate([70,19,36])
translate([0,0,0])
rotate([90, 0, 0])
kp_pillow_block_assembly(UCP205_16, screw_type = M8_cap_screw, nut_type = M8_nut);
    
}

axial_bearing();