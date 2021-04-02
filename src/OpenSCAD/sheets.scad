/*
 * @name Replimat Sheet materials
 * @author Timothy Schmidt
 * @date 2019-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/units.scad>

translate([0,0,0])
linear_extrude(height=8*12*inch)
square([4*12*inch,3/4*inch]);