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

holes = 10; // [2, 3, 4, 5, 10, 15, 20, 25, 30, 40, 50]
frame_is_hollow = true;
bolt_length = 2;


// frames
translateFrame([0,9,1]) xFrame(holes);
translateFrame([0,0,0]) yFrame(holes);
translateFrame([1,8,0]) zFrame(holes);

// nuts and bolts
translateFrame([1,9,0]) rotate([0,180,0]) replimat_nut_and_bolt(bolt_length);
translateFrame([0,8,0]) rotate([0,-90,0]) replimat_nut_and_bolt(bolt_length);
translateFrame([1,10,2]) rotate([-90,0,0]) replimat_nut_and_bolt(bolt_length);