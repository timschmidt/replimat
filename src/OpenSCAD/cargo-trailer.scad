/*
 * @name Replimat Cargo trailer
 * @author Timothy Schmidt
 * @date 2016-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 * @todo pillow block bearings, bolts, axle, wheels
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>

frame_is_hollow = true;

translateFrame([1,2,7]) xFrame(30);
translateFrame([1,14,7]) xFrame(30);
translateFrame([1,0,10]) xFrame(30);
translateFrame([1,16,10]) xFrame(30);

// Trailer hitch
translateFrame([30,14,10]) xFrame(10);
translateFrame([39,10,9]) yFrame(5);
translateFrame([38,13,9]) zFrame(2);

translateFrame([1,1,6]) zFrame(5);
translateFrame([1,15,6]) zFrame(5);
translateFrame([30,1,6]) zFrame(5);
translateFrame([30,15,6]) zFrame(5);

// Wheel posts
//translateFrame([12,1,3]) zFrame(5);
//translateFrame([12,15,3]) zFrame(5);

translateFrame([0,1,9]) yFrame(15);
translateFrame([31,1,9]) yFrame(15);
translateFrame([2,1,6]) yFrame(15);
translateFrame([11,1,6]) yFrame(15);
translateFrame([20,1,6]) yFrame(15);
translateFrame([29,1,6]) yFrame(15);

