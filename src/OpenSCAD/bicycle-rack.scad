/*
 * @name Replimat Bicycle rack
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>
use <bolts.scad>

frame_is_hollow = true;

// Vertical 
translateFrame([1,10,0]) zFrame(25);
translateFrame([6,10,0]) zFrame(25);
translateFrame([12,10,0]) zFrame(25);
translateFrame([17,10,0]) zFrame(25);
translateFrame([23,10,0]) zFrame(25);
translateFrame([28,10,0]) zFrame(25);

// Base
translateFrame([0,0,0]) yFrame(20);
translateFrame([29,0,0]) yFrame(20);
translateFrame([0,9,1]) xFrame(30);
translateFrame([0,11,1]) xFrame(30);

// Rail
translateFrame([0,9,24]) xFrame(30);

// Nuts and Bolts
translateFrame([1,9,1]) yNutBolt(3);
translateFrame([6,9,1]) yNutBolt(3);
translateFrame([12,9,1]) yNutBolt(3);
translateFrame([17,9,1]) yNutBolt(3);
translateFrame([23,9,1]) yNutBolt(3);
translateFrame([28,9,1]) yNutBolt(3);
translateFrame([1,9,24]) yNutBolt(2);
translateFrame([6,9,24]) yNutBolt(2);
translateFrame([12,9,24]) yNutBolt(2);
translateFrame([17,9,24]) yNutBolt(2);
translateFrame([23,9,24]) yNutBolt(2);
translateFrame([28,9,24]) yNutBolt(2);
translateFrame([0,9,2]) zNutBolt(2);
translateFrame([0,11,2]) zNutBolt(2);
translateFrame([29,9,2]) zNutBolt(2);
translateFrame([29,11,2]) zNutBolt(2);
translateFrame([0,10,0]) xNutBolt(2);
translateFrame([30,11,0]) rotate([0,0,180]) xNutBolt(2);