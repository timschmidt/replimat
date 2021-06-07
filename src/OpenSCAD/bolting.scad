/*
 * @name Replimat Bolting
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
translateFrame([0,0,0]) xFrame(3);

// nuts and bolts
translateFrame([1,0,1]) rotate([0,0,0]) replimat_nut_and_bolt(1);