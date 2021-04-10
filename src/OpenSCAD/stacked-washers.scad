/*
 * Replimat Stacked washers
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
use <washers.scad>

frame_is_hollow = true;

// frames
translateFrame([0,0,1.5]) xFrame(5);
translateFrame([0,0,0]) xFrame(5);

// bolts
translateFrame([0,0,2.5]) rotate([0,0,0]) replimat_bolt(130);
translateFrame([4,0,2.5]) rotate([0,0,0]) replimat_bolt(130);

//nuts
translateFrame([0,0,0]) rotate([0,0,0]) replimat_nut();
translateFrame([4,0,0]) rotate([0,0,0]) replimat_nut();

//washers
translateFrame([0,0,1]) washer();
translateFrame([0,0,1.09]) washer();
translateFrame([0,0,1.18]) washer();
translateFrame([0,0,1.27]) washer();
translateFrame([0,0,1.36]) washer();
translateFrame([0,0,1.45]) washer();

translateFrame([4,0,1]) washer();
translateFrame([4,0,1.09]) washer();
translateFrame([4,0,1.18]) washer();
translateFrame([4,0,1.27]) washer();
translateFrame([4,0,1.36]) washer();
translateFrame([4,0,1.45]) washer();