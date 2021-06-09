/*
 * @name Replimat Adapter - Bicycle bottom bracket
 * @comment This adapter fits the Shimano BB-UN55
 * @author Timothy Schmidt
 * @date 2020
 * @url http://www.github.com/replimat-cad
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>

/* measurements
32mm cartridge diameter
49mm depth
35mm thread diameter
14mm thread depth
113mm end to end
28/62/23
radius = 13;
x=152.4;
y=38.1;
*/

radius = 13;
x=1.5*inch;
y=2*1.5*inch;

difference(){

union(){
linear_extrude(height=19.05, convexity=4)
difference(){
translate([0.5*1.5*inch, 1.5*inch, 0])
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
    
    for(y=[0:1])
        translate([0.75*inch, y*1.5*inch + 0.75 * inch, 0])
        circle(r=4.5);
    
}


difference(){
translate([-13,38.1,19.05])
rotate([0,90,0])
cylinder(h=13,d=44);

translate([-19,0,19.05])
cube([20,100,30]);
    
translate([-20,0,-20])
cube([21,100,20]);
}

difference(){
translate([38.1,38.1,19.05])
rotate([0,90,0])
cylinder(h=15,d=44);

translate([37.1,0,19.05])
cube([20,100,30]);
    
translate([37,0,-20])
cube([21,100,20]);
}
}

translate([0,0,19.05])
union(){
translate([-37.45,38.1,0])
rotate([0,90,0])
cylinder(h=113,d=26);

translate([-9.45,38.1,0])
rotate([0,90,0])
cylinder(h=12,d=32);

translate([2.55,38.1,0])
rotate([0,90,0])
cylinder(h=23,d=28.5);

translate([25.55,38.1,0])
rotate([0,90,0])
cylinder(h=17,d=32);

translate([39.55,38.1,0])
rotate([0,90,0])
cylinder(h=14,d=36);

translate([53.55,38.1,0])
rotate([0,90,0])
cylinder(h=2,d=38);
}
}

//translateFrame([0,0,-1])
//yFrame(3);