/*
 * @name Replimat Toolbox
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>
use <bin.scad>

frame_is_hollow = true;

// Vertical 
translateFrame([0,3,0]) zFrame(10);
translateFrame([9,3,0]) zFrame(10);

// Frame
translateFrame([1,0,0]) yFrame(5);
translateFrame([8,0,0]) yFrame(5);
translateFrame([0,4,1]) xFrame(10);
translateFrame([0,2,9]) xFrame(10);
    
// Seat
translateFrame([0,4,4]) rotate([90,0,0]) topShelf(10, 1, 0);

//Back
translateFrame([0,4,7]) rotate([90,0,0]) topShelf(10, 1, 0);

translateFrame([1,0,6]) bin();
translateFrame([3,0,6]) bin();
translateFrame([5,0,6]) bin();
translateFrame([7,0,6]) bin();
translateFrame([1,0,3]) bin();
translateFrame([3,0,3]) bin();
translateFrame([5,0,3]) bin();
translateFrame([7,0,3]) bin();