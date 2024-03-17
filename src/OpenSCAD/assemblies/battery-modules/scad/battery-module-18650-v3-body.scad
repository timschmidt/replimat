/*
 * @name Replimat Battery Module 18650
 * @author Timothy Schmidt
 * @date 2018
 * @url http://www.github.com/replimat-cad
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/vitamins/grid.scad>
include <MCAD/materials.scad>
include <MCAD/units.scad>
include <MCAD/battery-18650.scad>

// Rails 
//xBeam(15);
//translateBeam([0,4,0]) xBeam(15);
    
// Body
difference(){

// Base
//translateBeam([0,0,1])
//translate([0,0,32])
//cube([7.5 * inch, 7.5 * inch, 8]);

// Body
translateBeam([0,0,1])
translate([0,0,40])
cube([7.5 * inch, 7.5 * inch, 65]);

union(){

// Batteries
for(j=[0:4]){
  for(i=[0:9]){
    translate([10+j*38,10+i*19,78.2]) battery_long();
  } // for
  for(i=[0:9]){
    //%#translate([29+j*38,19+i*19,2]) battery();
    translate([29+j*38,10+i*19,78.2]) battery_long();
  } // for
} // for

// galvanized strips
translate([0,0,77]){
  for(k=[0:4]){
    translateBeam([k,0,0])
    translate([(beam_width - strip_width)/2,6,0])
    yStrip(5);
  }
}
translate([0,0,141]){
  for(k=[0:4]){
    translateBeam([k,0,0])
    translate([(beam_width - strip_width)/2,6,2])
    yStrip(5);
  }
}

// Bolts
translate([0.75 * inch, 0.75 * inch, -5])
  cylinder(r=4,h=160);
//translate([2.25 * inch, 0.75 * inch, -5])
//  cylinder(r=4,h=160);
translate([3.75 * inch, 0.75 * inch, -5])
  cylinder(r=4,h=160);
//translate([5.25 * inch, 0.75 * inch, -5])
//  cylinder(r=4,h=160);
translate([6.75 * inch, 0.75 * inch, -5])
  cylinder(r=4,h=160);

//translate([0.75 * inch, 2.25 * inch, -5])
//  cylinder(r=4,h=160);
//translate([2.25 * inch, 2.25 * inch, -5])
//  cylinder(r=4,h=160);
//translate([3.75 * inch, 2.25 * inch, -5])
//  cylinder(r=4,h=160);
//translate([5.25 * inch, 2.25 * inch, -5])
//  cylinder(r=4,h=160);
//translate([6.75 * inch, 2.25 * inch, -5])
//  cylinder(r=4,h=160);

//translate([0.75 * inch, 3.75 * inch, -5])
//  cylinder(r=4,h=160);
translate([2.25 * inch, 3.75 * inch, -5])
  cylinder(r=4,h=160);
//translate([3.75 * inch, 3.75 * inch, -5])
//  cylinder(r=4,h=160);
translate([5.25 * inch, 3.75 * inch, -5])
  cylinder(r=4,h=160);
//translate([6.75 * inch, 3.75 * inch, -5])
//  cylinder(r=4,h=160);
  
//translate([0.75 * inch, 5.25 * inch, -5])
//  cylinder(r=4,h=160);
//translate([2.25 * inch, 5.25 * inch, -5])
//  cylinder(r=4,h=160);
//translate([3.75 * inch, 5.25 * inch, -5])
//  cylinder(r=4,h=160);
//translate([5.25 * inch, 5.25 * inch, -5])
//  cylinder(r=4,h=160);
//translate([6.75 * inch, 5.25 * inch, -5])
//  cylinder(r=4,h=160);
  
translate([0.75 * inch, 6.75 * inch, -5])
  cylinder(r=4,h=160);
//translate([2.25 * inch, 6.75 * inch, -5])
//  cylinder(r=4,h=160);
translate([3.75 * inch, 6.75 * inch, -5])
  cylinder(r=4,h=160);
//translate([5.25 * inch, 6.75 * inch, -5])
//  cylinder(r=4,h=160);
translate([6.75 * inch, 6.75 * inch, -5])
  cylinder(r=4,h=160);

} // union

}