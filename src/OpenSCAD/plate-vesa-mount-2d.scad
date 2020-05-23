/*
 * @name Replimat Plate - VESA Mount
 * @author Timothy Schmidt
 * @date 2019
 * @url http://www.github.com/replimat-cad
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/units.scad>
include <MCAD/nuts_and_bolts.scad>

module PlateVesaMount2d() {

radius = 13;
x=120;
y=120;

translate([60, 60, 0])
difference(){
  hull(){
      // place 4 circles in the corners, with the given radius
    translate([(-x/2)+radius, (-y/2)+(radius), 0])
    circle(r=radius);

    translate([(x/2)-radius, (-y/2)+radius, 0])
    circle(r=radius);

    translate([(-x/2)+radius, (y/2)-radius, 0])
    circle(r=radius);

    translate([(x/2)-radius, (y/2)-radius, 0])
    circle(r=radius);
  }
  
  // Replimat holes
  translate([0,-1.5*inch,0])
  circle(r=4.5);
  translate([0,0*inch,0])
  circle(r=4.5);
  translate([0,1.5*inch,0])
  circle(r=4.5);
  
  translate([-1.5*inch,-1.5*inch,0])
  circle(r=4.5);
  translate([-1.5*inch,0*inch,0])
  circle(r=4.5);
  translate([-1.5*inch,1.5*inch,0])
  circle(r=4.5);
  
  translate([1.5*inch,-1.5*inch,0])
  circle(r=4.5);
  translate([1.5*inch,0*inch,0])
  circle(r=4.5);
  translate([1.5*inch,1.5*inch,0])
  circle(r=4.5);
    
    // VESA 50mm
    translate([25,25,0])
    circle(r=2.75);
    translate([25,-25,0])
    circle(r=2.75);
    translate([-25,-25,0])
    circle(r=2.75);
    translate([-25,25,0])
    circle(r=2.75);
  
    // VESA 75mm
    translate([37.5,37.5,0])
    circle(r=2.75);
    translate([37.5,-37.5,0])
    circle(r=2.75);
    translate([-37.5,-37.5,0])
    circle(r=2.75);
    translate([-37.5,37.5,0])
    circle(r=2.75);
    
    // VESA 100mm
    translate([50,50,0])
    circle(r=2.75);
    translate([50,-50,0])
    circle(r=2.75);
    translate([-50,-50,0])
    circle(r=2.75);
    translate([-50,50,0])
    circle(r=2.75);
}

}

PlateVesaMount2d();