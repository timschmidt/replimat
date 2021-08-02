/*
 * @name Replimat Plate - Drill Robot
 * @author Timothy Schmidt
 * @date 2019
 * @url http://www.github.com/replimat-cad
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 * @todo z limit switch
 * @todo improve feedstock drive motor mount
 */

include <MCAD/grid.scad>
include <MCAD/units.scad>
include <MCAD/motors.scad>
include <MCAD/mounts.scad>

radius = 13;
x=4*1.5*inch;
y=5*1.5*inch;

difference(){

translate([2*1.5*inch, 2.5*1.5*inch, 0])
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
    
    for(y=[0:6])
    for(x=[0:4])
        translate([x*1.5*inch + 0.75*inch, y*1.5*inch + 0.75 * inch, 0])
        circle(r=4.5);
    
    // stepper 1
    translate([1.5*inch * 1.5, 1.5*inch * 4.5, 0])
    mount(4,5,31,8);
    
    // stepper 2
    translate([1.5*inch * 1.5, 1.5*inch * 0.5, 0])
    mount(4,5,31,8);
    
    // stepper 3
    translate([1.5*inch * 3, 1.5*inch * 0.5, 0])
    rotate([0,0,90])
    stepper_motor_mount(17,20,false,0.5);
    
    // rod mounts
    translate([1.5*inch * 1.5, 1.5*inch * 1.5, 0])
    mount(2,5.5,32,8);
    
    translate([1.5*inch * 1.5, 1.5*inch * 3.5, 0])
    mount(2,5.5,32,8);
    
    // alignment roller mounts
    translate([1.5*inch * 0.5, 1.5*inch * 1.5, 0])
    rotate([0,0,45])
    mount(2,5.5,32,8);
    
    translate([1.5*inch * 0.5, 1.5*inch * 3.5, 0])
    rotate([0,0,45])
    mount(2,5.5,32,8);
    
    translate([1.5*inch * 2.5, 1.5*inch * 1.5, 0])
    rotate([0,0,45])
    mount(2,5.5,32,8);
    
    translate([1.5*inch * 2.5, 1.5*inch * 3.5, 0])
    rotate([0,0,45])
    mount(2,5.5,32,8);
    
    // drill bushing
    translate([1.5*inch * 1.5, 1.5*inch * 2.5, 0])
    mount(2,5.5,40,16);
    
    // 608 mounts
    translate([1.5*inch * 1.5, 1.5*inch * 4.5, 0])
    mount(2,5.5,32,8);
    
    translate([1.5*inch * 1.5, 1.5*inch * 0.5, 0])
    mount(2,5.5,32,8);
    
}