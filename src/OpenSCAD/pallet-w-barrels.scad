/*
 * Replimat Pallet w/ barrels
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
use <pallet.scad>
use <barrels.scad>

pallet();

translateFrame([1.5,0,2])
barrel();

translateFrame([16.5,6,2])
barrel();