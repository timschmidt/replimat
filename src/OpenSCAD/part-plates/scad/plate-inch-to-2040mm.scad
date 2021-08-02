/*
 * @name Replimat Plate - 1.5 inch to 20mm/40mm
 * @author Timothy Schmidt
 * @date 2019
 * @url http://www.github.com/replimat-cad
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/grid.scad>

radius = 13;
x=152.4;
y=38.1;

linear_extrude(height=6)

translate([152.4/2,38.1/2, 0])

difference(){
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

    translate([38.1 * 1.5,0,0])
    circle(r=4.5);
    
    translate([-38.1 * 1.5,0,0])
    circle(r=4.5);

    // row 1
    translate([-10,-10,0])
    circle(r=2.5);

    translate([-30,-10,0])
    circle(r=2.5);

    translate([10,-10,0])
    circle(r=2.5);
    
    translate([30,-10,0])
    circle(r=2.5);

    // row 2
    translate([-10,10,0])
    circle(r=2.5);
    
    translate([-30,10,0])
    circle(r=2.5);

    translate([10,10,0])
    circle(r=2.5);
    
    translate([30,10,0])
    circle(r=2.5);
    
}