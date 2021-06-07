/*
 * @name Replimat Splicing frames
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


// frames
translateFrame([0,0,0]) xFrame(10);
translateFrame([8,0,1]) xFrame(10);


// nuts and bolts
translateFrame([8,0,2]) rotate([0,0,0]) replimat_nut_and_bolt(2);
translateFrame([9,0,2]) rotate([0,0,0]) replimat_nut_and_bolt(2);