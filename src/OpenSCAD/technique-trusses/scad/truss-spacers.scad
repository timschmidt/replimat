/*
 * Replimat Truss with spacers
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/grid.scad>
include <MCAD/materials.scad>
use <bolts.scad>
use <nuts.scad>

frame_is_hollow = true;


module replimat_truss_spacers(units){
// frames
grid_translate([0,0,2]) grid_frame_x(units);
grid_translate([0,0,0]) grid_frame_x(units);
for (i=[0:abs((units-2)/6)]){
    // spacers
    grid_translate([6*i,0,1]) grid_frame_x(2);
    
    // nuts and bolts
    grid_translate([6*i,0,3]) grid_bolt_nut_z(3);
    grid_translate([6*i+1,0,3]) grid_bolt_nut_z(3);
}
}

replimat_truss_spacers(20);