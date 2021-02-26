/*
 * @name Replimat Frame standard sizes
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>

// Wood frame
frame_is_hollow = 0;
color(Pine){
translateFrame([0,0,0]) yFrame(2);
translateFrame([2,0,0]) yFrame(3);
translateFrame([4,0,0]) yFrame(4);
translateFrame([6,0,0]) yFrame(5);
translateFrame([8,0,0]) yFrame(10);
translateFrame([10,0,0]) yFrame(15);
translateFrame([12,0,0]) yFrame(20);
translateFrame([14,0,0]) yFrame(25);
translateFrame([16,0,0]) yFrame(30);
translateFrame([18,0,0]) yFrame(40);
translateFrame([20,0,0]) yFrame(50);
}


// Aluminum frame
frame_is_hollow = 1;
color(Aluminum){
translateFrame([22,0,0]) yFrame(2);
translateFrame([24,0,0]) yFrame(3);
translateFrame([26,0,0]) yFrame(4);
translateFrame([28,0,0]) yFrame(5);
translateFrame([30,0,0]) yFrame(10);
translateFrame([32,0,0]) yFrame(15);
translateFrame([34,0,0]) yFrame(20);
translateFrame([36,0,0]) yFrame(25);
translateFrame([38,0,0]) yFrame(30);
translateFrame([40,0,0]) yFrame(40);
translateFrame([42,0,0]) yFrame(50);
}    