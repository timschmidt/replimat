/*
 * Replimat Truss with spacers
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
translateFrame([0,0,2]) xFrame(20);
translateFrame([0,0,0]) xFrame(20);
translateFrame([0,0,1]) xFrame(2);
translateFrame([6,0,1]) xFrame(2);
translateFrame([12,0,1]) xFrame(2);
translateFrame([18,0,1]) xFrame(2);


// bolts
translateFrame([0,0,3]) replimat_nut_and_bolt(3);
translateFrame([1,0,3]) replimat_nut_and_bolt(3);
translateFrame([6,0,3]) replimat_nut_and_bolt(3);
translateFrame([7,0,3]) replimat_nut_and_bolt(3);
translateFrame([12,0,3]) replimat_nut_and_bolt(3);
translateFrame([13,0,3]) replimat_nut_and_bolt(3);
translateFrame([18,0,3]) replimat_nut_and_bolt(3);
translateFrame([19,0,3]) replimat_nut_and_bolt(3);