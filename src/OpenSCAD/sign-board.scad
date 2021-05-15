/*
 * @name Replimat Sign board
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>
use <plate-rectangular.scad>

frame_is_hollow = true;

// Vertical 
translateFrame([0,5,0]) zFrame(40);
translateFrame([29,5,0]) zFrame(40);

// Feet
translateFrame([1,0,0]) yFrame(10);
translateFrame([28,0,0]) yFrame(10);
translateFrame([0,6,1]) xFrame(30);

// Sign
translateFrame([0,5,10]) rotate([90,0,0]) replimat_plate(30, 30);
