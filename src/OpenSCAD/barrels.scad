/*
 * @name Replimat Barrels
 * @author Timothy Schmidt
 * @date 2021
 * @url https://wiki.replimat.org/wiki/Barrels
 * @url http://www.github.com/timschmidt/replimat
 * @url https://www.thingiverse.com/thing:127912
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>

module barrel(){
translate([100,280,600])
scale([380,380,420])
rotate([0,0,90])
import("../../bin/stl/55gallon_drum.stl");
}

barrel();