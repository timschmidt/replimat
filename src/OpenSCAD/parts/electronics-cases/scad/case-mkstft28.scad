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

translate([2*1.5*inch+5, 2*1.5*inch+5, 2])
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

// MKS TFT Dimensions (origin = 0,0)
// Board: 93,80
// Holes: 2.5,12.5;90.5,12.5;2.5,77.5;90.5,77.5
// Screen: 11,20;81,20;11,70;81,70x4z
// Buttons/knobs: none?

translate([grid_frame_width+16,6,1]){
    translate([2.5,2.5,0])
    cylinder(r=4,h=3);
    translate([2.5,90.5,0])
    cylinder(r=4,h=3);
    translate([67.5,2.5,0])
    cylinder(r=4,h=3);
    translate([67.5,90.5,0])
    cylinder(r=4,h=3);
}
}

translate([grid_frame_width+16,6,1]){
    translate([2.5,2.5,-1])
    cylinder(r=2,h=7,$fn=8);
    translate([2.5,90.5,-1])
    cylinder(r=2,h=7,$fn=8);
    translate([67.5,2.5,-1])
    cylinder(r=2,h=7,$fn=8);
    translate([67.5,90.5,-1])
    cylinder(r=2,h=7,$fn=8);
    translate([8,9,-2])
    cube([54,74,8]);    
}

// Wire cutouts
//Left
translate([65,-1,5])
cube([50,15,13]);
}