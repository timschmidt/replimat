/*
 * @name Replimat Side table
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

// Feet
translateFrame([0,0,4]) yFrame(10);
translateFrame([9,0,4]) yFrame(10);

translateFrame([0,0,9]) yFrame(10);
translateFrame([9,0,9]) yFrame(10);
    
// Shelving
translateFrame([0,0,5]) replimat_plate(10, 10);
translateFrame([0,0,10]) replimat_plate(10, 10);

// Sides
translateFrame([0,0,10]) rotate([0,90,0]) replimat_plate(10, 10);
translateFrame([10,0,10]) rotate([0,90,0]) replimat_plate(10, 10);