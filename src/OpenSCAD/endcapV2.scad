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

plug_width = beam_width - (3.175 * 2);

union(){
    cube([3, plug_width, plug_width]);    
    
    leg();
    translate([0, plug_width, 0])
    mirror([0,1,0]) leg();
    

    prong();
    translate([0, plug_width, 0])
    mirror([0,1,0]) prong();

}

module leg(){
    difference(){
    cube([20, 0.8, 20]);
    
    translate([plug_width / 2 - 5,-1,0])
    rotate([0,45,0])
      cube([10,3,20]);
    }
}

module prong(){
    difference(){
        
    translate([plug_width / 2,0,plug_width / 2])
    rotate([90,0,0])
    cylinder(r=4,h=5);

    translate([plug_width / 2 + 4,0,plug_width / 2 - 5])
    rotate([0,0,-135])
    cube([10,5,10]);
        
    translate([plug_width / 2 - 5,-1,plug_width / 2 - 6])
    rotate([60,0,0])
    cube([10,3,10]);
    }
}