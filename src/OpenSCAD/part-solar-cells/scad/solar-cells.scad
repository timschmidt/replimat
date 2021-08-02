/*
 * @name Replimat Solar cells
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/grid.scad>
include <MCAD/units.scad>

module replimat_solar_cell(){
    difference(){
    translate([-12.5,-12.5,0])
    cube([150,150,3]);
    
    translate([-37,87,-1])
    rotate([0,0,45])
    cube([100,100,5]);
    translate([163,87,-1])
    rotate([0,0,45])
    cube([100,100,5]);
    translate([-37,-104,-1])
    rotate([0,0,45])
    cube([100,100,5]);
    translate([163,-104,-1])
    rotate([0,0,45])
    cube([100,100,5]);
    }
}

replimat_solar_cell();