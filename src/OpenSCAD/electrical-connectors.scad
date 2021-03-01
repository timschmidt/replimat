/*
 * @name Replimat Electrical connectors
 * @author Timothy Schmidt
 * @date 2021
 * @url https://wiki.replimat.org/wiki/Electrical_connectors
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>

translate([36,20,0])
rotate([90,0,-90])
import("../../bin/stl/Wago-221-615.stl");