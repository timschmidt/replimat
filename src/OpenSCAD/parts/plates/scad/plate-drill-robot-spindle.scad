/*
 * @name Replimat Plate - Drill Robot Spindle
 * @author Timothy Schmidt
 * @date 2019
 * @url http://www.github.com/replimat-cad
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 * @todo improve spindle mount bolt holes
 * @todo double check nut / bearing mount correctness
 */

include <NopSCADlib/vitamins/grid.scad>
include <MCAD/units.scad>
include <MCAD/motors.scad>
include <MCAD/mounts.scad>

radius = 13;
x=1*1.5*inch;
y=5*1.5*inch;

difference(){

translate([0.5*1.5*inch, 2.5*1.5*inch, 0])
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
    
    for(y=[0:4])
    for(x=[0:1])
        translate([x*1.5*inch + 0.75*inch, y*1.5*inch + 0.75 * inch, 0])
        circle(r=4.5);
    
    // nut 1
    translate([1.5*inch * 0.5, 1.5*inch * 4.5, 0])
    mount(4,5,22,8);
    
    // nut 2
    translate([1.5*inch * 0.5, 1.5*inch * 0.5, 0])
    mount(4,5,22,8);
    
    // rod mounts
    translate([1.5*inch * 0.5, 1.5*inch * 1.5, 0])
    mount(4,5.5,22,8);
    
    translate([1.5*inch * 0.5, 1.5*inch * 3.5, 0])
    mount(4,5.5,22,8);
    
    // drill spindle
    translate([1.5*inch * 0.5, 1.5*inch * 2.5, 0])
    mount(4,5.5,32,16);
    
}