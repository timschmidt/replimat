/*
 * @name Replimat Drying rack
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
use <pallet.scad>

frame_is_hollow = true;

module drying_rack(){

pallet();

// Frame
translateFrame([1,0,0]) zFrame(30);
translateFrame([28,0,0]) zFrame(30);
translateFrame([1,19,0]) zFrame(30);
translateFrame([28,19,0]) zFrame(30);

translateFrame([0,0,29]) yFrame(20);
translateFrame([29,0,29]) yFrame(20);
translateFrame([0,5,28]) xFrame(30);
translateFrame([0,14,28]) xFrame(30);

translateFrame([0,0,15]) yFrame(20);
translateFrame([29,0,15]) yFrame(20);
translateFrame([0,5,14]) xFrame(30);
translateFrame([0,14,14]) xFrame(30);

// bolts
translateFrame([1,9,0]) rotate([0,180,0]) replimat_bolt(90);

//nuts
translateFrame([0,10,2]) rotate([180,0,0]) replimat_nut();

}

drying_rack();