/*
 * @name Replimat Keys
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/grid.scad>
include <MCAD/materials.scad>
include <MCAD/units.scad>

module key(){
color(Steel)
cube([1/4*inch, 1/4*inch, 1*inch]);
}

key();