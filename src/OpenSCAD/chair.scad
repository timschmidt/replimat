/*
 * @name Replimat Chair
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>
use <plate-rectangular.scad>
use <bolts.scad>

frame_is_hollow = true;

// Vertical 
translateFrame([0,1,0]) zFrame(10);
translateFrame([9,1,0]) zFrame(10);
translateFrame([0,10,0]) zFrame(20);
translateFrame([9,10,0]) zFrame(20);

// Frame
translateFrame([1,1,8]) yFrame(10);
translateFrame([8,1,8]) yFrame(10);
translateFrame([0,2,9]) xFrame(10);
translateFrame([0,9,9]) xFrame(10);
    
// Seat
translateFrame([0,0,10]) replimat_plate(10, 10);

//Back
translateFrame([0,10,11]) rotate([90,0,0]) replimat_plate(10, 10);

translateFrame([0,1,8]) xNutBolt(2);
translateFrame([0,10,8]) xNutBolt(2);
translateFrame([0,1,9]) yNutBolt(2);
translateFrame([1,11,9]) rotate([0,0,180]) yNutBolt(2);
translateFrame([1,2,10]) zNutBolt(2);
translateFrame([1,9,10]) zNutBolt(2);
translateFrame([8,2,10]) zNutBolt(2);
translateFrame([8,9,10]) zNutBolt(2);
translateFrame([10,2,8]) rotate([0,0,180]) xNutBolt(2);
translateFrame([10,11,8]) rotate([0,0,180]) xNutBolt(2);
translateFrame([9,1,9]) yNutBolt(2);
translateFrame([10,11,9]) rotate([0,0,180]) yNutBolt(2);
translateFrame([0,10,11]) yNutBolt(1);
translateFrame([0,10,19]) yNutBolt(1);
translateFrame([9,10,11]) yNutBolt(1);
translateFrame([9,10,19]) yNutBolt(1);