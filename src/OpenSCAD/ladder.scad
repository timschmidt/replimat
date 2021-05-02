/*
 * @name Replimat Ladder
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

// Vertical 
translateFrame([0,1,0]) zFrame(50);
translateFrame([9,1,0]) zFrame(50);

// Steps
translateFrame([0,0,9]) xFrame(10);
translateFrame([0,0,19]) xFrame(10);
translateFrame([0,0,29]) xFrame(10);
translateFrame([0,0,39]) xFrame(10);
translateFrame([0,0,49]) xFrame(10);

// Tri joints
translateFrame([1,0,8]) yFrame(2);
translateFrame([8,0,8]) yFrame(2);
translateFrame([1,0,18]) yFrame(2);
translateFrame([8,0,18]) yFrame(2);
translateFrame([1,0,28]) yFrame(2);
translateFrame([8,0,28]) yFrame(2);
translateFrame([1,0,38]) yFrame(2);
translateFrame([8,0,38]) yFrame(2);
translateFrame([1,0,48]) yFrame(2);
translateFrame([8,0,48]) yFrame(2);

//Rung 1
translateFrame([1,0,10]) rotate([0,0,0]) replimat_bolt(90);
translateFrame([1,0,8]) rotate([0,0,0]) replimat_nut();
translateFrame([8,0,10]) rotate([0,0,0]) replimat_bolt(90);
translateFrame([8,0,8]) rotate([0,0,0]) replimat_nut();
translateFrame([0,0,9]) rotate([90,0,0]) replimat_bolt(90);
translateFrame([0,2,9]) rotate([90,0,0]) replimat_nut();
translateFrame([9,0,9]) rotate([90,0,0]) replimat_bolt(90);
translateFrame([9,2,9]) rotate([90,0,0]) replimat_nut();
translateFrame([0,1,8]) rotate([0,270,0]) replimat_bolt(90);
translateFrame([2,1,8]) rotate([0,270,0]) replimat_nut();
translateFrame([10,1,9]) rotate([0,90,0]) replimat_bolt(90);
translateFrame([8,1,9]) rotate([0,90,0]) replimat_nut();

//Rung 2
translateFrame([1,0,20]) rotate([0,0,0]) replimat_bolt(90);
translateFrame([1,0,18]) rotate([0,0,0]) replimat_nut();
translateFrame([8,0,20]) rotate([0,0,0]) replimat_bolt(90);
translateFrame([8,0,18]) rotate([0,0,0]) replimat_nut();
translateFrame([0,0,19]) rotate([90,0,0]) replimat_bolt(90);
translateFrame([0,2,19]) rotate([90,0,0]) replimat_nut();
translateFrame([9,0,19]) rotate([90,0,0]) replimat_bolt(90);
translateFrame([9,2,19]) rotate([90,0,0]) replimat_nut();
translateFrame([0,1,18]) rotate([0,270,0]) replimat_bolt(90);
translateFrame([2,1,18]) rotate([0,270,0]) replimat_nut();
translateFrame([10,1,19]) rotate([0,90,0]) replimat_bolt(90);
translateFrame([8,1,19]) rotate([0,90,0]) replimat_nut();

//Rung 3
translateFrame([1,0,30]) rotate([0,0,0]) replimat_bolt(90);
translateFrame([1,0,28]) rotate([0,0,0]) replimat_nut();
translateFrame([8,0,30]) rotate([0,0,0]) replimat_bolt(90);
translateFrame([8,0,28]) rotate([0,0,0]) replimat_nut();
translateFrame([0,0,29]) rotate([90,0,0]) replimat_bolt(90);
translateFrame([0,2,29]) rotate([90,0,0]) replimat_nut();
translateFrame([9,0,29]) rotate([90,0,0]) replimat_bolt(90);
translateFrame([9,2,29]) rotate([90,0,0]) replimat_nut();
translateFrame([0,1,28]) rotate([0,270,0]) replimat_bolt(90);
translateFrame([2,1,28]) rotate([0,270,0]) replimat_nut();
translateFrame([10,1,29]) rotate([0,90,0]) replimat_bolt(90);
translateFrame([8,1,29]) rotate([0,90,0]) replimat_nut();

//Rung 4
translateFrame([1,0,40]) rotate([0,0,0]) replimat_bolt(90);
translateFrame([1,0,38]) rotate([0,0,0]) replimat_nut();
translateFrame([8,0,40]) rotate([0,0,0]) replimat_bolt(90);
translateFrame([8,0,38]) rotate([0,0,0]) replimat_nut();
translateFrame([0,0,39]) rotate([90,0,0]) replimat_bolt(90);
translateFrame([0,2,39]) rotate([90,0,0]) replimat_nut();
translateFrame([9,0,39]) rotate([90,0,0]) replimat_bolt(90);
translateFrame([9,2,39]) rotate([90,0,0]) replimat_nut();
translateFrame([0,1,38]) rotate([0,270,0]) replimat_bolt(90);
translateFrame([2,1,38]) rotate([0,270,0]) replimat_nut();
translateFrame([10,1,39]) rotate([0,90,0]) replimat_bolt(90);
translateFrame([8,1,39]) rotate([0,90,0]) replimat_nut();

//Rung 5
translateFrame([1,0,50]) rotate([0,0,0]) replimat_bolt(90);
translateFrame([1,0,48]) rotate([0,0,0]) replimat_nut();
translateFrame([8,0,50]) rotate([0,0,0]) replimat_bolt(90);
translateFrame([8,0,48]) rotate([0,0,0]) replimat_nut();
translateFrame([0,0,49]) rotate([90,0,0]) replimat_bolt(90);
translateFrame([0,2,49]) rotate([90,0,0]) replimat_nut();
translateFrame([9,0,49]) rotate([90,0,0]) replimat_bolt(90);
translateFrame([9,2,49]) rotate([90,0,0]) replimat_nut();
translateFrame([0,1,48]) rotate([0,270,0]) replimat_bolt(90);
translateFrame([2,1,48]) rotate([0,270,0]) replimat_nut();
translateFrame([10,1,49]) rotate([0,90,0]) replimat_bolt(90);
translateFrame([8,1,49]) rotate([0,90,0]) replimat_nut();