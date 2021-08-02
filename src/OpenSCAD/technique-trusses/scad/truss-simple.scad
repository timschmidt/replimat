/*
 * Replimat Simple truss
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

module replimat_simple_truss(units){

// frames
grid_translate([0,0,1]) grid_frame_x(units);
grid_translate([0,0,0]) grid_frame_x(units);

// bolts
grid_translate([0,0,2]) grid_bolt_nut_z(2);
grid_translate([abs(units/2),0,2]) grid_bolt_nut_z(2);
grid_translate([units-1,0,2]) grid_bolt_nut_z(2);
}

replimat_simple_truss(15);
