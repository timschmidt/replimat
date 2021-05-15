/*
 * @name Replimat Bench
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>
use <bolts.scad>
use <plate-rectangular.scad>

frame_is_hollow = true;

// Vertical 
translateFrame([0,1,0]) zFrame(10);
translateFrame([0,10,0]) zFrame(20);
translateFrame([29,1,0]) zFrame(10);
translateFrame([29,10,0]) zFrame(20);

// Frame
translateFrame([1,1,8]) yFrame(10);
translateFrame([28,1,8]) yFrame(10);
translateFrame([0,2,9]) xFrame(30);
translateFrame([0,9,9]) xFrame(30);
    
// Seat
translateFrame([0,0,10]) replimat_plate(30, 10);

//Back
translateFrame([0,10,10]) rotate([90,0,0]) replimat_plate(30, 10);

//Nuts and bolts
translateFrame([0,1,8]) xNutBolt(2);
translateFrame([0,10,8]) xNutBolt(2);
translateFrame([0,1,9]) yNutBolt(2);
translateFrame([1,11,9]) rotate([0,0,180]) yNutBolt(2);
translateFrame([1,2,10]) zNutBolt(2);
translateFrame([1,9,10]) zNutBolt(2);
translateFrame([0,10,10]) yNutBolt(1);
translateFrame([0,10,19]) yNutBolt(1);

translateFrame([30,2,8]) rotate([0,0,180]) xNutBolt(2);
translateFrame([30,11,8]) rotate([0,0,180]) xNutBolt(2);
translateFrame([29,1,9]) yNutBolt(2);
translateFrame([30,11,9]) rotate([0,0,180]) yNutBolt(2);
translateFrame([28,2,10]) zNutBolt(2);
translateFrame([28,9,10]) zNutBolt(2);
translateFrame([29,10,10]) yNutBolt(1);
translateFrame([29,10,19]) yNutBolt(1);