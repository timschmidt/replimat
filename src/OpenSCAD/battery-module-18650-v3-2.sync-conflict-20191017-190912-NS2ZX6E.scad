/*
 * @name Replimat Battery Module 18650
 * @author Timothy Schmidt
 * @date 2018
 * @url http://www.github.com/replimat-cad
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>
include <MCAD/units.scad>
include <MCAD/battery-18650.scad>

nozzle_width=0.4;
walls=3;
wall_thickness=nozzle_width*walls*2;
frame_is_hollow = 1;

union(){  
difference(){
// Body
//cube([7.5 * inch, 7.5 * inch, 65]);
//translateFrame([0,0,2]) {
//    translate([0,0,2])
//      //#%cube([1.5*5*inch,1.5*5*inch,65]);
//      cube([1,1,1]); // dummy

// Batteries
for(j=[0:4]){
  for(i=[0:9]){
    translate([10+j*38,10+i*19,0]) 
    difference(){
        cylinder(d=19+wall_thickness*2,h=65);
        translate([0,0,-1])
        cylinder(d=18.6,h=67);
    }
  } // for
  for(i=[0:9]){
    //%#translate([29+j*38,19+i*19,2]) battery();
    translate([29+j*38,10+i*19,0]) difference(){
        cylinder(d=19+wall_thickness*2,h=65);
        translate([0,0,-1])
        cylinder(d=18.6,h=67);
    }
  } // for
} // for

for(j=[0:4]){
  for(i=[0:9]){
    translate([10+j*38,10+i*19,0]) 
        cylinder(d=18.6,h=67);
  } // for
  for(i=[0:9]){
    //%#translate([29+j*38,19+i*19,2]) battery();
    translate([29+j*38,10+i*19,0])
        cylinder(d=18.6,h=67);
  } // for
} // for

// galvanized strips
//translate([0,0,0]){
//  for(k=[0:4]){
//    translateFrame([k,0,0])
//    translate([(frame_width - strip_width)/2,6,0])
//    yStrip(5);
//  }
//}
//translate([0,0,77]){
//  for(k=[0:4]){
//    translateFrame([k,0,0])
//    translate([(frame_width - strip_width)/2,6,2])
//    #yStrip(5);
//  }
//}

// Base
//translateFrame([0,0,1])
//translate([0,0,32])
//#%cube([7.5 * inch, 7.5 * inch, 8]);
}

// Bolts
translate([0.75 * inch, 0.75 * inch, 0])
  difference(){
  cylinder(d=10,h=65);
  translate([0,0,-1])
  cylinder(d=9,h=160);
  }
//translate([2.25 * inch, 0.75 * inch, -5])
//  cylinder(r=4,h=160);
translate([3.75 * inch, 0.75 * inch, 0])
  difference(){
  cylinder(d=10,h=65);
  translate([0,0,-1])
  cylinder(d=9,h=160);
  }//translate([5.25 * inch, 0.75 * inch, -5])
//  cylinder(r=4,h=160);
translate([6.75 * inch, 0.75 * inch, 0])
  difference(){
  cylinder(d=10,h=65);
  translate([0,0,-1])
  cylinder(d=9,h=160);
  }
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
translate([2.25 * inch, 3.75 * inch, 0])
  difference(){
  cylinder(d=10,h=65);
  translate([0,0,-1])
  cylinder(d=9,h=160);
  }//translate([3.75 * inch, 3.75 * inch, -5])
//  cylinder(r=4,h=160);
translate([5.25 * inch, 3.75 * inch, 0])
  difference(){
  cylinder(d=10,h=65);
  translate([0,0,-1])
  cylinder(d=9,h=160);
  }//translate([6.75 * inch, 3.75 * inch, -5])
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
  
translate([0.75 * inch, 6.75 * inch, 0])
  difference(){
  cylinder(d=10,h=65);
  translate([0,0,-1])
  cylinder(d=9,h=160);
  }
//translate([2.25 * inch, 6.75 * inch, -5])
//  cylinder(r=4,h=160);
translate([3.75 * inch, 6.75 * inch, 0])
  difference(){
  cylinder(d=10,h=65);
  translate([0,0,-1])
  cylinder(d=9,h=160);
  }
//translate([5.25 * inch, 6.75 * inch, -5])
//  cylinder(r=4,h=160);
translate([6.75 * inch, 6.75 * inch, 0])
  difference(){
  cylinder(d=10,h=65);
  translate([0,0,-1])
  cylinder(d=9,h=160);
  }
  
}