/*
 * @name Replimat Coffee table
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
translateFrame([1,1,0]) zFrame(10);
translateFrame([13,1,0]) zFrame(10);
translateFrame([1,13,0]) zFrame(10);
translateFrame([13,13,0]) zFrame(10);

translateFrame([0,0,8]) yFrame(15);
translateFrame([14,0,8]) yFrame(15);
translateFrame([0,14,9]) xFrame(15);
translateFrame([0,0,9]) xFrame(15);
    
// Shelving
translateFrame([0,0,10]) topShelf(15, 15, 0);
