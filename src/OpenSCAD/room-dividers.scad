/*
 * @name Replimat Room divider
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

// Panels
translateFrame([0,0,41]) rotate([45,90,0]) replimat_plate(40, 10);
translateFrame([14,0,41]) rotate([-45,90,0]) replimat_plate(40, 10);
translateFrame([14,0,41]) rotate([45,90,0]) replimat_plate(40, 10);