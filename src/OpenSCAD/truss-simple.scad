/*
 * Replimat Simple truss
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

module replimat_simple_truss(units){

// frames
translateFrame([0,0,1]) xFrame(units);
translateFrame([0,0,0]) xFrame(units);

// bolts
translateFrame([0,0,2]) replimat_nut_and_bolt(2);
translateFrame([abs(units/2),0,2]) replimat_nut_and_bolt(2);
translateFrame([units-1,0,2]) replimat_nut_and_bolt(2);
}

replimat_simple_truss(15);
