/*
 * @name Replimat Cargo trailer
 * @author Timothy Schmidt
 * @date 2016-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 * @todo pillow block bearings, bolts, axle, wheels
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>
use <go-kart-drive.scad>
use <bolts.scad>
use <nuts.scad>

frame_is_hollow = true;

module trailer(){
translateFrame([1,2,7]) xFrame(30);
translateFrame([1,14,7]) xFrame(30);
translateFrame([1,0,15]) xFrame(30);
translateFrame([1,16,15]) xFrame(30);

// Trailer hitch
translateFrame([30,14,10]) xFrame(10);
translateFrame([39,10,9]) yFrame(5);
translateFrame([38,13,9]) zFrame(2);

translateFrame([1,1,6]) zFrame(10);
translateFrame([1,15,6]) zFrame(10);
translateFrame([30,1,6]) zFrame(10);
translateFrame([30,15,6]) zFrame(10);

// Wheel posts
//translateFrame([12,1,3]) zFrame(5);
//translateFrame([12,15,3]) zFrame(5);

translateFrame([0,1,14]) yFrame(15);
translateFrame([31,1,9]) yFrame(15);
translateFrame([2,1,6]) yFrame(15);
translateFrame([11,1,6]) yFrame(15);
translateFrame([20,1,6]) yFrame(15);
translateFrame([29,1,6]) yFrame(15);
}

translateFrame([14,-2.5,6])
go_kart_drive(22);

translateFrame([0,0,0])
trailer();

// bolts
translateFrame([2,3,6]) rotate([180,0,0]) replimat_nut_and_bolt(2);
translateFrame([2,15,6]) rotate([180,0,0]) replimat_nut_and_bolt(2);
translateFrame([29,3,6]) rotate([180,0,0]) replimat_nut_and_bolt(2);
translateFrame([29,15,6]) rotate([180,0,0]) replimat_nut_and_bolt(2);

translateFrame([1,1,7]) rotate([90,0,0]) replimat_nut_and_bolt(2);
translateFrame([30,1,7]) rotate([90,0,0]) replimat_nut_and_bolt(2);
translateFrame([1,16,8]) rotate([270,0,0]) replimat_nut_and_bolt(2);
translateFrame([30,16,8]) rotate([270,0,0]) replimat_nut_and_bolt(2);

translateFrame([1,1,6]) rotate([0,270,0]) replimat_nut_and_bolt(2);
translateFrame([1,15,6]) rotate([0,270,0]) replimat_nut_and_bolt(2);
translateFrame([31,1,7]) rotate([0,90,0]) replimat_nut_and_bolt(2);
translateFrame([31,15,7]) rotate([0,90,0]) replimat_nut_and_bolt(2);
