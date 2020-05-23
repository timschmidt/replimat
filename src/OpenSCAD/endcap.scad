/*
 * @name Replimat End Cap
 * @author Timothy Schmidt
 * @date 2018
 * @url http://www.github.com/replimat-cad
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>
include <MCAD/units.scad>

union(){
    cube([beam_width, beam_width, 3]);
    prong();
    //translate([beam_width,0,0])
    //    rotate([0,0,90])
    //    prong();
    translate([beam_width, beam_width,0])
        rotate([0,0,180])
        prong();
    //translate([0, beam_width,0])
    //    rotate([0,0,270])
    //    prong();
}

module prong(){
    translate([1.5*inch / 2 - 2.5,5,0])
    cube([5, 2, 26.05]);

    difference(){
    translate([1.5*inch / 2,5,22.05])
    rotate([90,0,0])
    cylinder(r=4,h=5);

    translate([1.5*inch / 2 - 5,4,26.05])
    rotate([135,0,0])
    cube([10,3,10]);
        
    translate([1.5*inch / 2 - 5,4,15.05])
    rotate([75,0,0])
    cube([10,3,10]);
    }
}