/*
 * @name Replimat Washer - Thick
 * @author Timothy Schmidt
 * @date 2019
 * @url http://www.github.com/replimat-cad
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/grid.scad>

grid_translate([0.5,0.5,0])
linear_extrude(height=1.5*inch / 4)
difference(){

circle(d=1.5*inch);
circle(d=21/64*inch);

}