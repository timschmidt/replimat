/*
 * @name Replimat Pallet
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

module pallet(){

// Frame
translateFrame([2,0,0]) yFrame(20);
translateFrame([15,0,0]) yFrame(20);
translateFrame([27,0,0]) yFrame(20);
translateFrame([0,1,1]) xFrame(30);
translateFrame([0,9,1]) xFrame(30);
translateFrame([0,10,1]) xFrame(30);
translateFrame([0,18,1]) xFrame(30);
    
// Deck
#translateFrame([2,0,2]) topShelf(10, 10, 0);
#translateFrame([13,0,2]) topShelf(15, 10, 0);
#translateFrame([2,10,2]) topShelf(15, 10, 0);
#translateFrame([18,10,2]) topShelf(10, 10, 0);

// bolts
translateFrame([2,1,2]) rotate([0,0,0]) replimat_nut_and_bolt(1);
translateFrame([2,9,2]) rotate([0,0,0]) replimat_nut_and_bolt(1);
translateFrame([2,10,2]) rotate([0,0,0]) replimat_nut_and_bolt(1);
translateFrame([2,18,2]) rotate([0,0,0]) replimat_nut_and_bolt(1);
translateFrame([11,1,2]) rotate([0,0,0]) replimat_nut_and_bolt(1);
translateFrame([11,9,2]) rotate([0,0,0]) replimat_nut_and_bolt(1);

translateFrame([15,1,2]) rotate([0,0,0]) replimat_nut_and_bolt(2);
translateFrame([15,9,2]) rotate([0,0,0]) replimat_nut_and_bolt(2);
translateFrame([15,10,2]) rotate([0,0,0]) replimat_nut_and_bolt(2);
translateFrame([15,18,2]) rotate([0,0,0]) replimat_nut_and_bolt(2);

translateFrame([18,10,2]) rotate([0,0,0]) replimat_nut_and_bolt(1);
translateFrame([18,18,2]) rotate([0,0,0]) replimat_nut_and_bolt(1);
translateFrame([27,1,2]) rotate([0,0,0]) replimat_nut_and_bolt(1);
translateFrame([27,9,2]) rotate([0,0,0]) replimat_nut_and_bolt(1);
translateFrame([27,10,2]) rotate([0,0,0]) replimat_nut_and_bolt(1);
translateFrame([27,18,2]) rotate([0,0,0]) replimat_nut_and_bolt(1);
}

pallet();