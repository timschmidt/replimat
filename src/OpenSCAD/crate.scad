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
translateFrame([2,1,2]) rotate([180,0,0]) replimat_bolt(50);
translateFrame([2,9,2]) rotate([180,0,0]) replimat_bolt(50);
translateFrame([2,10,2]) rotate([180,0,0]) replimat_bolt(50);
translateFrame([2,18,2]) rotate([180,0,0]) replimat_bolt(50);
translateFrame([11,1,2]) rotate([180,0,0]) replimat_bolt(50);
translateFrame([11,9,2]) rotate([180,0,0]) replimat_bolt(50);

translateFrame([15,1,2]) rotate([180,0,0]) replimat_bolt(90);
translateFrame([15,9,2]) rotate([180,0,0]) replimat_bolt(90);
translateFrame([15,10,2]) rotate([180,0,0]) replimat_bolt(90);
translateFrame([15,18,2]) rotate([180,0,0]) replimat_bolt(90);

translateFrame([18,10,2]) rotate([180,0,0]) replimat_bolt(50);
translateFrame([18,18,2]) rotate([180,0,0]) replimat_bolt(50);
translateFrame([27,1,2]) rotate([180,0,0]) replimat_bolt(50);
translateFrame([27,9,2]) rotate([180,0,0]) replimat_bolt(50);
translateFrame([27,10,2]) rotate([180,0,0]) replimat_bolt(50);
translateFrame([27,18,2]) rotate([180,0,0]) replimat_bolt(50);

//nuts
translateFrame([2,1,1]) rotate([180,0,0]) replimat_nut();
translateFrame([2,9,1]) rotate([180,0,0]) replimat_nut();
translateFrame([2,10,1]) rotate([180,0,0]) replimat_nut();
translateFrame([2,18,1]) rotate([180,0,0]) replimat_nut();
translateFrame([11,1,1]) rotate([180,0,0]) replimat_nut();
translateFrame([11,9,1]) rotate([180,0,0]) replimat_nut();

translateFrame([15,1,0]) rotate([180,0,0]) replimat_nut();
translateFrame([15,9,0]) rotate([180,0,0]) replimat_nut();
translateFrame([15,10,0]) rotate([180,0,0]) replimat_nut();
translateFrame([15,18,0]) rotate([180,0,0]) replimat_nut();

translateFrame([18,10,1]) rotate([180,0,0]) replimat_nut();
translateFrame([18,18,1]) rotate([180,0,0]) replimat_nut();
translateFrame([27,1,1]) rotate([180,0,0]) replimat_nut();
translateFrame([27,9,1]) rotate([180,0,0]) replimat_nut();
translateFrame([27,10,1]) rotate([180,0,0]) replimat_nut();
translateFrame([27,19,1]) rotate([180,0,0]) replimat_nut();