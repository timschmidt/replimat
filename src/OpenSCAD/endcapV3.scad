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

difference(){
    cube([plug_width, plug_width, beam_width]);
    
    cylinder(r=5, h=beam_width * 2);
    translate([plug_width,0,0])
    cylinder(r=5, h=beam_width * 2);
    translate([plug_width,plug_width,0])
    cylinder(r=5, h=beam_width * 2);
    translate([0,plug_width,0])
    cylinder(r=5, h=beam_width * 2);
    
    translate([0,0,0])
    rotate([90,0,0])
    #cylinder(r=4, h=plug_width);
    
    translate([0,0,0])
    rotate([90,0,0])
    #cylinder(r=4, h=plug_width);
    
}