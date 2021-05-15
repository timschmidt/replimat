/*
 * @name Replimat Loft
 * @author Timothy Schmidt
 * @date 2013-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/units.scad>
include <MCAD/materials.scad>
include <MCAD/frame.scad>
use <plate-rectangular.scad>

frame_is_hollow = 0;

// bed rails
translateFrame([0,14,44]) xFrame(45);
translateFrame([0,45,44]) xFrame(45);

// cornerposts
translateFrame([0,15,0]) zFrame(45);
translateFrame([2,15,0]) zFrame(40);
translateFrame([0,17,0]) zFrame(40);

translateFrame([0,44,0]) zFrame(45);
translateFrame([44,15,0]) zFrame(45);
translateFrame([44,44,0]) zFrame(45);

// bottom rails
translateFrame([1,15,0]) yFrame(30);
translateFrame([0,16,1]) xFrame(3);

translateFrame([1,15,10]) yFrame(30);
translateFrame([0,16,11]) xFrame(3);

translateFrame([0,43,1]) xFrame(45);
translateFrame([0,43,9]) xFrame(45);

// ladder support
translateFrame([0,31,0]) zFrame(40);
translateFrame([15,44,0]) zFrame(40);

// bed slats
translateFrame([0,43,39]) xFrame(45);
translateFrame([0,30,39]) xFrame(45);
translateFrame([0,16,39]) xFrame(45);
translateFrame([0,16,37]) xFrame(45);

translateFrame([1,15,38]) yFrame(30);
translateFrame([16,15,38]) yFrame(30);
translateFrame([32,15,38]) yFrame(30);
translateFrame([44,15,38]) yFrame(30);

translateFrame([15,15,37]) zFrame(3);
translateFrame([31,15,37]) zFrame(3);

// lower bed
translateFrame([16,0,8]) yFrame(45);
translateFrame([43,0,8]) yFrame(45);

translateFrame([15,1,1]) xFrame(30);
translateFrame([15,1,9]) xFrame(30);
translateFrame([15,29,9]) xFrame(30);
translateFrame([15,15,9]) xFrame(30);

translateFrame([15,0,0]) zFrame(10);
translateFrame([44,0,0]) zFrame(10);
translateFrame([15,16,0]) zFrame(10);

translateFrame([15,0,10]) replimat_plate(30,45);
translateFrame([0,15,40]) replimat_plate(45,30);