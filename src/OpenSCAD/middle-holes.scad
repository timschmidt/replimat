/*
 * @name Replimat Middle holes
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>

frame_is_hollow = true;

// Frame
translateFrame([11,0,6]) xFrame(3);
translateFrame([10,0,4]) xFrame(5);
translateFrame([5,0,2]) xFrame(15);
translateFrame([0,0,0]) xFrame(25);