/*
 * @name Replimat Steps
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
zFrame(2);
translateFrame([4,0,0]) zFrame(2);
translateFrame([0,5,0]) zFrame(4);
translateFrame([4,5,0]) zFrame(4);
translateFrame([0,9,0]) zFrame(4);
translateFrame([4,9,0]) zFrame(4);

// Frame
translateFrame([1,0,0]) yFrame(10);
translateFrame([3,0,0]) yFrame(10);
translateFrame([0,1,1]) xFrame(5);
translateFrame([0,4,1]) xFrame(5);

translateFrame([0,6,3]) xFrame(5);
translateFrame([0,8,3]) xFrame(5);
    
// Shelving
translateFrame([0,0,2]) replimat_plate(5, 5);
translateFrame([0,5,4]) replimat_plate(5, 5);