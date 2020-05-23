/*
 * @name Replimat Locking Caster
 * @author Timothy Schmidt
 * @version 0.1
 * @date 2016
 * @url http://www.github.com/replimat-cad
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 * @part cam
 * @part hub
 * @part wheel
 * @assembly caster
 * @requires 2 bolt [8 * mm, 50 * mm]
 * @requires 3 nut "M8"
 * @requires 1 washer "M8"
 * @todo cam lock that fits between one wheel and hub, and wedges the two apart when depressed - one for each wheel?
 */

include <../MCAD/units.scad>
include <../MCAD/materials.scad>
include <../MCAD/wheels.scad>
include <../MCAD/cam_profile.scad>
include <../MCAD/nuts_and_bolts.scad>

hub_thickness = 16 * mm;
hub_bolt_diameter = 8 * mm;
hub_bolt_length = 50 * mm;
wheel_bolt_diameter = 8 * mm;
wheel_bolt_length = 50 * mm;

caster();

module caster(){
  hub();

  translate([20,8,-1])
  circle(d = 40 * mm);    
}

module cam(){
  linear_extrude(height = 3) polar_profile([ [0,5], [140,10], [350,10], [360,5] ],5);
}

module hub(){
  // body
  difference(){
    linear_extrude(height = hub_thickness){
      polygon([[0,2],[2,0],[28,0],[30,2],[30,10],[16,28],[14,30],[2,30],[0,28],[0,0]]);
    }
    
    // hub bolt hole
    rotate([270,0,0])
    translate([8,-hub_thickness / 2,-1])
      #cylinder(d = hub_bolt_diameter, h = hub_bolt_length);
    
    rotate([90,0,0])
    translate([8,hub_thickness / 2,-METRIC_NUT_THICKNESS[hub_bolt_diameter] + 1])
      #nutHole(8);
    
    // wheel bolt hole
    translate([20,8,-1])
      cylinder(d = wheel_bolt_diameter, h = hub_thickness + 2);
    
    // cam bolt hole
    
    
  }
}

module wheel(){


}