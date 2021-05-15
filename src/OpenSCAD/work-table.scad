/*
 * @name Replimat Work table
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
zFrame(15);
translateFrame([0,19,0]) zFrame(15);
translateFrame([39,0,0]) zFrame(15);
translateFrame([39,19,0]) zFrame(15);

// Feet
translateFrame([0,1,0]) xFrame(40);
translateFrame([0,18,0]) xFrame(40);

translateFrame([1,0,14]) yFrame(20);
translateFrame([38,0,14]) yFrame(20);
translateFrame([0,18,13]) xFrame(40);
translateFrame([0,1,13]) xFrame(40);
    
// Shelving
translateFrame([0,0,15]) replimat_plate(40, 20);
