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
bolt_length = 90;


// frames
translateFrame([0,0,0]) xFrame(5);
translateFrame([0,1,0]) zFrame(15);
translateFrame([3,0,1]) yFrame(2);
translateFrame([4,1,0]) zFrame(3);
translateFrame([4.3,0,1.8]) rotate([0,-26.5,0]) zFrame(10);


// bolts
//translateFrame([1,9,0]) rotate([0,180,0]) replimat_bolt(bolt_length);
//translateFrame([0,8,0]) rotate([0,-90,0]) replimat_bolt(bolt_length);
//translateFrame([1,10,2]) rotate([-90,0,0]) replimat_bolt(bolt_length);

//nuts
//translateFrame([0,10,2]) rotate([180,0,0]) replimat_nut();
//translateFrame([1,8,2]) rotate([-90,0,0]) replimat_nut();
//translateFrame([2,9,1]) rotate([180,90,0]) replimat_nut();