/*
 * @name Replimat Divisible by two
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
translateFrame([24,0,12]) xFrame(2);
translateFrame([23,0,10]) xFrame(4);
translateFrame([20,0,8]) xFrame(10);
translateFrame([15,0,6]) xFrame(20);
translateFrame([10,0,4]) xFrame(30);
translateFrame([5,0,2]) xFrame(40);
translateFrame([0,0,0]) xFrame(50);