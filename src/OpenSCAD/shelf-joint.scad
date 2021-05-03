/*
 * Replimat Shelf joint - supported at ends
 * @author Timothy Schmidt
 * @date 2013-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>
use <bolts.scad>
use <nuts.scad>

holes = 10; // [2, 3, 4, 5, 10, 15, 20, 25, 30, 40, 50]
frame_is_hollow = true;
bolt_length = 90;


// frames
translateFrame([0,10,1]) xFrame(holes);
translateFrame([0,1,1]) xFrame(holes);
translateFrame([1,1,0]) yFrame(holes);
translateFrame([9,0,0]) zFrame(holes);
translateFrame([0,2,0]) zFrame(holes);
translateFrame([0,9,0]) zFrame(holes);
translateFrame([9,11,0]) zFrame(holes);


// bolts
translateFrame([9,0,1]) rotate([90,0,0]) replimat_bolt(bolt_length);
translateFrame([1,1,2]) rotate([0,0,0]) replimat_bolt(bolt_length);
translateFrame([0,1,1]) rotate([90,0,0]) replimat_bolt(bolt_length);
translateFrame([9,12,2]) rotate([-90,0,0]) replimat_bolt(bolt_length);
translateFrame([1,10,2]) rotate([0,0,0]) replimat_bolt(bolt_length);
translateFrame([0,11,2]) rotate([-90,0,0]) replimat_bolt(bolt_length);

// nuts
translateFrame([0,3,1]) rotate([90,0,0]) replimat_nut();
translateFrame([9,2,1]) rotate([90,0,0]) replimat_nut();
translateFrame([0,9,2]) rotate([270,0,0]) replimat_nut();
translateFrame([9,10,2]) rotate([270,0,0]) replimat_nut();
translateFrame([1,1,0]) rotate([0,0,0]) replimat_nut();
translateFrame([1,10,0]) rotate([0,0,0]) replimat_nut();

// shelf
#translateFrame([1,1,2]) topShelf(holes,holes,0);