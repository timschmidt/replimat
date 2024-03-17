/*
 * @name Replimat Case - MKS Base 1.4
 * @author Timothy Schmidt
 * @date 2019
 * @url http://www.github.com/replimat-cad
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 * @todo make waterproof
 * @todo add wire labels
 */

include <NopSCADlib/vitamins/grid.scad>
include <MCAD/units.scad>

board = "MKS Base 1.4";

radius = 13;
x=4*1.5*inch;
y=4*1.5*inch;

// MKS TFT Dimensions (origin = 0,0)
// Board: 93,80
// Holes: 2.5,12.5;90.5,12.5;2.5,77.5;90.5,77.5
// Screen: 11,20;81,20;11,70;81,70x4z
// Buttons/knobs: none?

difference(){
union(){
difference(){

linear_extrude(height=19.05){
difference(){
translate([2*1.5*inch, 2*1.5*inch, 0])
hull()
{
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
    
    for(y=[0:3])
    for(x=[0:0])
        translate([x*1.5*inch + 0.75*inch, y*1.5*inch + 0.75 * inch, 0])
        circle(r=4.5);
}}

translate([2*1.5*inch+5, 2*1.5*inch+5, 1.8])
linear_extrude(height=18.05){
hull()
{
    // place 4 circles in the corners, with the given radius
    translate([(-x/2)+radius+35, (-y/2)+(radius), 0])
    circle(r=radius);

    translate([(x/2)-radius-10, (-y/2)+radius, 0])
    circle(r=radius);

    translate([(-x/2)+radius+35, (y/2)-radius-10, 0])
    circle(r=radius);

    translate([(x/2)-radius-10, (y/2)-radius-10, 0])
    circle(r=radius);
}
}
}

// MKS Base 1.4 dimensions (origin = 0,0):
// Board: 110,90
// Holes: 5,5;5,85;105,5;105,85

translate([grid_frame_width+10,grid_frame_width/2+2,1]){
//#cube([90,110,15]);
    translate([5,5,0])
    cylinder(r=4,h=3);
    translate([5,105,0])
    cylinder(r=4,h=3);
    translate([85,5,0])
    cylinder(r=4,h=3);
    translate([85,105,0])
    cylinder(r=4,h=3);
}
}

translate([grid_frame_width+10,grid_frame_width/2+2,1]){
    translate([5,5,-1])
    cylinder(r=2,h=10,$fn=8);
    translate([5,105,-1])
    cylinder(r=2,h=10,$fn=8);
    translate([85,5,-1])
    cylinder(r=2,h=10,$fn=8);
    translate([85,105,-1])
    cylinder(r=2,h=10,$fn=8);    
}

// Wire cutouts
//Left
translate([53,-1,5])
cube([7,15,13]);
translate([68,-1,5])
cube([7,15,13]);
translate([83,-1,5])
cube([7,15,13]);
translate([98,-1,5])
cube([7,15,13]);
translate([113,-1,5])
cube([7,15,13]);
translate([128,-1,5])
cube([7,15,13]);

// Bottom
translate([140,20,5])
cube([15,7,13]);
translate([140,35,5])
cube([15,7,13]);
translate([140,50,5])
cube([15,7,13]);
translate([140,65,5])
cube([15,7,13]);
translate([140,80,5])
cube([15,7,13]);
translate([140,95,5])
cube([15,7,13]);
translate([140,110,5])
cube([15,7,13]);
translate([140,125,5])
cube([15,7,13]);

// Right
translate([60,145,5])
cube([7,15,13]);
translate([75,145,5])
cube([7,15,13]);
translate([90,145,5])
cube([7,15,13]);
translate([105,145,5])
cube([7,15,13]);
translate([120,145,5])
cube([7,15,13]);

// Top
translate([-1,100,2])
cube([50,15,16]);
}