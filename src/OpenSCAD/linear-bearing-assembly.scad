/*
 * Replimat Linear bearing assembly
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
use <linear-bearing.scad>

module linear_bearing_assembly(){

// frames
color(Aluminum)
translateFrame([1,1,0]) zFrame(10);
color(Aluminum)
translateFrame([0,0,4]) zFrame(2);
color(Aluminum)
translateFrame([2,2,4]) zFrame(2);


// bolts
translateFrame([0,0,5]) rotate([90,0,0]) replimat_bolt(130);
translateFrame([2,0,5]) rotate([90,0,0]) replimat_bolt(130);
translateFrame([0,0,4]) rotate([0,-90,0]) replimat_bolt(130);
translateFrame([0,2,4]) rotate([0,-90,0]) replimat_bolt(130);

//nuts
translateFrame([0,3,5]) rotate([90,0,0]) replimat_nut();
translateFrame([2,3,5]) rotate([90,0,0]) replimat_nut();
translateFrame([3,1,5]) rotate([180,90,0]) replimat_nut();
translateFrame([3,3,5]) rotate([180,90,0]) replimat_nut();

translateFrame([0,1,4])
linear_bearing();

translateFrame([3,2,4])
rotate([0,0,180])
linear_bearing();
}

linear_bearing_assembly();