/*
 * @name Replimat Plant stands
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
translateFrame([5,1,0]) zFrame(25);
translateFrame([7,5,0]) zFrame(25);
translateFrame([11,1,0]) zFrame(25);
translateFrame([9,5,0]) zFrame(25);

//Base
translateFrame([6,4,0]) xFrame(5);
translateFrame([6,2,0]) xFrame(5);

translateFrame([6,1,1]) yFrame(5);
translateFrame([10,1,1]) yFrame(5);

translateFrame([7,4,8]) xFrame(10);
translateFrame([5,2,8]) xFrame(10);

translateFrame([0,4,16]) xFrame(10);
translateFrame([2,2,16]) xFrame(10);

translateFrame([6,1,24]) yFrame(5);
translateFrame([10,1,24]) yFrame(5);
   
// Shelving
translateFrame([6,0,2]) topShelf(5, 5, 0);
translateFrame([6,0,9]) topShelf(5, 5, 0);
translateFrame([12,0,9]) topShelf(5, 5, 0);
translateFrame([6,0,17]) topShelf(5, 5, 0);
translateFrame([0,0,17]) topShelf(5, 5, 0);
translateFrame([6,0,25]) topShelf(5, 5, 0);

