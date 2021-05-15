/*
 * @name Replimat Shelf tower
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
translateFrame([0,0,0]) yFrame(10);
translateFrame([9,0,0]) yFrame(10);

translateFrame([0,0,6]) yFrame(10);
translateFrame([9,0,6]) yFrame(10);

translateFrame([0,0,12]) yFrame(10);
translateFrame([9,0,12]) yFrame(10);

translateFrame([0,0,18]) yFrame(10);
translateFrame([9,0,18]) yFrame(10);

translateFrame([0,0,24]) yFrame(10);
translateFrame([9,0,24]) yFrame(10);

translateFrame([0,0,30]) yFrame(10);
translateFrame([9,0,30]) yFrame(10);
    
// Shelving
translateFrame([0,0,1]) replimat_plate(10, 10);
translateFrame([0,0,7]) replimat_plate(10, 10);
translateFrame([0,0,13]) replimat_plate(10, 10);
translateFrame([0,0,19]) replimat_plate(10, 10);
translateFrame([0,0,25]) replimat_plate(10, 10);
translateFrame([0,0,31]) replimat_plate(10, 10);


// Sides
translateFrame([0,0,31]) rotate([0,90,0]) replimat_plate(30, 10);
translateFrame([10,0,31]) rotate([0,90,0]) replimat_plate(30, 10);