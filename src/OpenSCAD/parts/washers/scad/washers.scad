/*
 * @name Replimat Washers
 * @author Timothy Schmidt
 * @date 2019-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/vitamins/grid.scad>
include <MCAD/materials.scad>
include <MCAD/units.scad>

module washer(){
color(Steel){
grid_translate([0.5,0.5,0])
linear_extrude(height=3)
difference(){

circle(d=1.5*inch);
circle(d=21/64*inch);

}
}
}

washer();