/*
 * Replimat Triangle
 * @author Timothy Schmidt
 * @date 2013-2021
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
translateFrame([0,0,0]) xFrame(5);
translateFrame([0,1,0]) zFrame(15);
translateFrame([3,0,1]) yFrame(2);
translateFrame([4,1,0]) zFrame(3);
translateFrame([4.3,0,1.8]) rotate([0,-26.5,0]) zFrame(10);


// bolts
translateFrame([0,0,0]) rotate([90,0,0]) replimat_nut_and_bolt(2);
translateFrame([0,0,10]) rotate([90,0,0]) replimat_nut_and_bolt(2);
translateFrame([4,0,0]) rotate([90,0,0]) replimat_nut_and_bolt(2);
translateFrame([4,0,2]) rotate([90,0,0]) replimat_nut_and_bolt(2);
translateFrame([5,1,2]) rotate([0,90,0]) replimat_nut_and_bolt(2);
translateFrame([3,1,0]) rotate([180,0,0]) replimat_nut_and_bolt(2);