/*
 * @name Replimat Crate
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>
use <bolts.scad>
use <nuts.scad>

frame_is_hollow = true;

// Frame
translateFrame([1,0,1]) yFrame(10);
translateFrame([23,0,1]) yFrame(10);
translateFrame([0,1,0]) xFrame(25);
translateFrame([0,8,0]) xFrame(25);

translateFrame([0,0,0]) zFrame(10);
translateFrame([24,0,0]) zFrame(10);
translateFrame([0,9,0]) zFrame(10);
translateFrame([24,9,0]) zFrame(10);
    
// Deck
translateFrame([0,0,0]) topShelf(25, 10, 0);

// Sides
#translateFrame([0,0,0]) rotate([90,0,0]) topShelf(25, 10, 0);
translateFrame([0,10,0]) rotate([90,0,0]) topShelf(25, 10, 0);
translateFrame([0,0,10]) rotate([0,90,0]) topShelf(10, 10, 0);
#translateFrame([25,0,10]) rotate([0,90,0]) topShelf(10, 10, 0);

// bolts
translateFrame([1,2,0]) rotate([180,0,0]) replimat_nut_and_bolt(2);
translateFrame([1,9,0]) rotate([180,0,0]) replimat_nut_and_bolt(2);
translateFrame([23,2,0]) rotate([180,0,0]) replimat_nut_and_bolt(2);
translateFrame([23,9,0]) rotate([180,0,0]) replimat_nut_and_bolt(2);

translateFrame([0,0,0]) rotate([90,0,0]) replimat_nut_and_bolt(2);
translateFrame([24,0,0]) rotate([90,0,0]) replimat_nut_and_bolt(2);
translateFrame([0,10,1]) rotate([270,0,0]) replimat_nut_and_bolt(2);
translateFrame([24,10,1]) rotate([270,0,0]) replimat_nut_and_bolt(2);

translateFrame([0,0,1]) rotate([0,270,0]) replimat_nut_and_bolt(2);
translateFrame([0,9,1]) rotate([0,270,0]) replimat_nut_and_bolt(2);
translateFrame([25,0,2]) rotate([0,90,0]) replimat_nut_and_bolt(2);
translateFrame([25,9,2]) rotate([0,90,0]) replimat_nut_and_bolt(2);