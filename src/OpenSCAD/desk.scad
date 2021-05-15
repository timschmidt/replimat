/*
 * @name Replimat Desk
 * @author Timothy Schmidt
 * @date 2013
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>
use <plate-rectangular.scad>

frame_is_hollow = 0;

// Vertical 
translateFrame([2,15,0]) zFrame(40);
translateFrame([31,6,0]) zFrame(40);
translateFrame([0,6,0]) zFrame(40);
translateFrame([29,15,0]) zFrame(40);

// Feet
translateFrame([1,1,0]) yFrame(15);
translateFrame([30,1,0]) yFrame(15);

// Bottom shelf
translateFrame([1,14,1]) xFrame(30);
translateFrame([1,7,1]) xFrame(30);
translateFrame([1,5,2]) replimat_plate(30, 10);

// Middle shelf
translateFrame([1,14,10]) xFrame(30);
translateFrame([1,7,10]) xFrame(30);
translateFrame([1,6,9]) yFrame(10);
translateFrame([30,6,9]) yFrame(10);
translateFrame([1,5,11]) replimat_plate(30, 10);

// Desk surface
translateFrame([1,1,19]) yFrame(15);
translateFrame([30,1,19]) yFrame(15);
translateFrame([1,14,20]) xFrame(30);
translateFrame([1,1,20]) xFrame(30);
translateFrame([1,0,21]) replimat_plate(30, 15);

// Hanging shelf
translateFrame([15,14,29]) xFrame(15);
translateFrame([15,5,29]) xFrame(15);
translateFrame([28,6,29]) xFrame(4);
translateFrame([30,5,29]) xFrame(2);
translateFrame([15,15,29]) zFrame(10);
translateFrame([15,6,29]) zFrame(10);
translateFrame([16,5,30]) replimat_plate(15,10);

// Top shelf
translateFrame([1,6,37]) yFrame(10);
translateFrame([30,6,37]) yFrame(10);
translateFrame([1,5,39]) replimat_plate(30, 10);
translateFrame([1,14,38]) xFrame(30);
translateFrame([1,7,38]) xFrame(30);

