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


module replimat_truss_spacers(units){
// frames
translateFrame([0,0,2]) xFrame(units);
translateFrame([0,0,0]) xFrame(units);
for (i=[0:units/6]){
    // spacers
    translateFrame([6*i,0,1]) xFrame(2);
    
    // nuts and bolts
    translateFrame([6*i,0,3]) replimat_nut_and_bolt(3);
    translateFrame([6*i+1,0,3]) replimat_nut_and_bolt(3);
}
}

replimat_truss_spacers(20);