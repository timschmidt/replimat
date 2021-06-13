/*
 * @name Replimat Bookshelf
 * @author Timothy Schmidt
 * @date 2013-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 * @todo: tri-joint nuts and bolts
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>
use <bolts.scad>
use <plate-rectangular.scad>

frame_extrusion=false;

// uprights
translateFrame([0,1,0]) zFrame(50);
translateFrame([31,1,0]) zFrame(50);
translateFrame([2,10,0]) zFrame(50);
translateFrame([29,10,0]) zFrame(50);

// cross braces
translateFrame([1,1,0]) yFrame(10);
translateFrame([30,1,0]) yFrame(10);

translateFrame([1,1,8]) yFrame(10);
translateFrame([30,1,8]) yFrame(10);

translateFrame([1,1,18]) yFrame(10);
translateFrame([30,1,18]) yFrame(10);

translateFrame([1,1,28]) yFrame(10);
translateFrame([30,1,28]) yFrame(10);

translateFrame([1,1,38]) yFrame(10);
translateFrame([30,1,38]) yFrame(10);

translateFrame([1,1,47]) yFrame(10);
translateFrame([30,1,47]) yFrame(10);

// shelf supports
translateFrame([1,2,1]) xFrame(30);
translateFrame([1,9,1]) xFrame(30);

translateFrame([1,2,9]) xFrame(30);
translateFrame([1,9,9]) xFrame(30);

translateFrame([1,2,19]) xFrame(30);
translateFrame([1,9,19]) xFrame(30);

translateFrame([1,2,29]) xFrame(30);
translateFrame([1,9,29]) xFrame(30);

translateFrame([1,2,39]) xFrame(30);
translateFrame([1,9,39]) xFrame(30);

translateFrame([1,2,48]) xFrame(30);
translateFrame([1,9,48]) xFrame(30);


// shelves
translateFrame([1,0,2]) replimat_plate(10,10);
translateFrame([11,0,2]) replimat_plate(10,10);
translateFrame([21,0,2]) replimat_plate(10,10);
translateFrame([1,2,2]) zNutBolt(1);
translateFrame([1,9,2]) zNutBolt(1);
translateFrame([10,2,2]) zNutBolt(1);
translateFrame([10,9,2]) zNutBolt(1);
translateFrame([11,2,2]) zNutBolt(1);
translateFrame([11,9,2]) zNutBolt(1);
translateFrame([20,2,2]) zNutBolt(1);
translateFrame([20,9,2]) zNutBolt(1);
translateFrame([21,2,2]) zNutBolt(1);
translateFrame([21,9,2]) zNutBolt(1);
translateFrame([30,2,2]) zNutBolt(1);
translateFrame([30,9,2]) zNutBolt(1);

translateFrame([1,0,10]) replimat_plate(10,10);
translateFrame([11,0,10]) replimat_plate(10,10);
translateFrame([21,0,10]) replimat_plate(10,10);
translateFrame([1,2,10]) zNutBolt(1);
translateFrame([1,9,10]) zNutBolt(1);
translateFrame([10,2,10]) zNutBolt(1);
translateFrame([10,9,10]) zNutBolt(1);
translateFrame([11,2,10]) zNutBolt(1);
translateFrame([11,9,10]) zNutBolt(1);
translateFrame([20,2,10]) zNutBolt(1);
translateFrame([20,9,10]) zNutBolt(1);
translateFrame([21,2,10]) zNutBolt(1);
translateFrame([21,9,10]) zNutBolt(1);
translateFrame([30,2,10]) zNutBolt(1);
translateFrame([30,9,10]) zNutBolt(1);

translateFrame([1,0,20]) replimat_plate(10,10);
translateFrame([11,0,20]) replimat_plate(10,10);
translateFrame([21,0,20]) replimat_plate(10,10);
translateFrame([1,2,20]) zNutBolt(1);
translateFrame([1,9,20]) zNutBolt(1);
translateFrame([10,2,20]) zNutBolt(1);
translateFrame([10,9,20]) zNutBolt(1);
translateFrame([11,2,20]) zNutBolt(1);
translateFrame([11,9,20]) zNutBolt(1);
translateFrame([20,2,20]) zNutBolt(1);
translateFrame([20,9,20]) zNutBolt(1);
translateFrame([21,2,20]) zNutBolt(1);
translateFrame([21,9,20]) zNutBolt(1);
translateFrame([30,2,20]) zNutBolt(1);
translateFrame([30,9,20]) zNutBolt(1);

translateFrame([1,0,30]) replimat_plate(10,10);
translateFrame([11,0,30]) replimat_plate(10,10);
translateFrame([21,0,30]) replimat_plate(10,10);
translateFrame([1,2,30]) zNutBolt(1);
translateFrame([1,9,30]) zNutBolt(1);
translateFrame([10,2,30]) zNutBolt(1);
translateFrame([10,9,30]) zNutBolt(1);
translateFrame([11,2,30]) zNutBolt(1);
translateFrame([11,9,30]) zNutBolt(1);
translateFrame([20,2,30]) zNutBolt(1);
translateFrame([20,9,30]) zNutBolt(1);
translateFrame([21,2,30]) zNutBolt(1);
translateFrame([21,9,30]) zNutBolt(1);
translateFrame([30,2,30]) zNutBolt(1);
translateFrame([30,9,30]) zNutBolt(1);

translateFrame([1,0,40]) replimat_plate(10,10);
translateFrame([11,0,40]) replimat_plate(10,10);
translateFrame([21,0,40]) replimat_plate(10,10);
translateFrame([1,2,40]) zNutBolt(1);
translateFrame([1,9,40]) zNutBolt(1);
translateFrame([10,2,40]) zNutBolt(1);
translateFrame([10,9,40]) zNutBolt(1);
translateFrame([11,2,40]) zNutBolt(1);
translateFrame([11,9,40]) zNutBolt(1);
translateFrame([20,2,40]) zNutBolt(1);
translateFrame([20,9,40]) zNutBolt(1);
translateFrame([21,2,40]) zNutBolt(1);
translateFrame([21,9,40]) zNutBolt(1);
translateFrame([30,2,40]) zNutBolt(1);
translateFrame([30,9,40]) zNutBolt(1);

translateFrame([1,0,49]) replimat_plate(10,10);
translateFrame([11,0,49]) replimat_plate(10,10);
translateFrame([21,0,49]) replimat_plate(10,10);
translateFrame([1,2,49]) zNutBolt(1);
translateFrame([1,9,49]) zNutBolt(1);
translateFrame([10,2,49]) zNutBolt(1);
translateFrame([10,9,49]) zNutBolt(1);
translateFrame([11,2,49]) zNutBolt(1);
translateFrame([11,9,49]) zNutBolt(1);
translateFrame([20,2,49]) zNutBolt(1);
translateFrame([20,9,49]) zNutBolt(1);
translateFrame([21,2,49]) zNutBolt(1);
translateFrame([21,9,49]) zNutBolt(1);
translateFrame([30,2,49]) zNutBolt(1);
translateFrame([30,9,49]) zNutBolt(1);

