/*
 * @name Replimat Plate - keyed coupler
 * @author Timothy Schmidt
 * @date 2019
 * @url http://www.github.com/replimat-cad
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/grid.scad>
include <MCAD/units.scad>

radius = 13;
x=5*1.5*inch;
y=10*1.5*inch;


difference(){

translate([2.5*1.5*inch, 5*1.5*inch, 0])
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
    
    for(y=[0:9])
    for(x=[0:4])
        translate([x*1.5*inch + 0.75*inch, y*1.5*inch + 0.75 * inch, 0])
        circle(r=4.5);
    
    
    
}