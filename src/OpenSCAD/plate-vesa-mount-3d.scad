/*
 * @name Replimat Plate - VESA Mount
 * @author Timothy Schmidt
 * @date 2019
 * @url http://www.github.com/replimat-cad
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/units.scad>
include <MCAD/nuts_and_bolts.scad>

use <plate-vesa-mount-2d.scad>
use <plate-vesa-mount-nuts-2d.scad>

linear_extrude(height=10){
PlateVesaMount2d();
}
translate([0,0,10])
linear_extrude(height=10){
PlateVesaMountNuts2d();
}