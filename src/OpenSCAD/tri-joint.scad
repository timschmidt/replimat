/*
 * Replimat Tri-joint
 * @author Timothy Schmidt
 * @date 2013-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>

holes = 10; // [2, 3, 4, 5, 10, 15, 20, 25, 30, 40, 50]
frame_is_hollow = true;

translateFrame([0,9,1]) xFrame(holes);
translateFrame([0,0,0]) yFrame(holes);
translateFrame([1,8,0]) zFrame(holes);