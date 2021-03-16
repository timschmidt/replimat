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