/*
 * @name Replimat Bushing
 * @author Timothy Schmidt
 * @date 2019
 * @url http://www.github.com/replimat-cad
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/units.scad>

difference(){
cylinder(d=5/8*inch - 0.4, h=61);
cylinder(d=9, h=61);
}