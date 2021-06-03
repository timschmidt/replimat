/*
 * Replimat Mounting brackets
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
use <washers.scad>

frame_is_hollow = true;

// frames
translateFrame([0,0,2]) xFrame(3);
translateFrame([0,0,0]) xFrame(3);
translateFrame([1,-2,1]) yFrame(5);

// bolts
translateFrame([0,0,3]) rotate([0,0,0]) replimat_nut_and_bolt(3);
translateFrame([2,0,3]) rotate([0,0,0]) replimat_nut_and_bolt(3);