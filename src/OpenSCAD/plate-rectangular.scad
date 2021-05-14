/*
 * @name Replimat Plate
 * @author Timothy Schmidt
 * @date 2019-2021
 * @url http://www.github.com/replimat-cad
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/units.scad>

module replimat_plate(width, height, hole_radius=4.5, corner_radius=13){
    difference(){

    translate([1/2*width*frame_width, 1/2*height*frame_width, 0])
    hull(){
        // place 4 circles in the corners, with the given radius
        x=width*frame_width;
        y=height*frame_width;
        translate([(-x/2)+corner_radius, (-y/2)+(corner_radius), 0])
        circle(r=corner_radius);

        translate([(x/2)-corner_radius, (-y/2)+corner_radius, 0])
        circle(r=corner_radius);

        translate([(-x/2)+corner_radius, (y/2)-corner_radius, 0])
        circle(r=corner_radius);

        translate([(x/2)-corner_radius, (y/2)-corner_radius, 0])
        circle(r=corner_radius);
    }
    
    for(y=[0:height-1])
    for(x=[0:width-1])
        translate([x*frame_width + 1/2*frame_width, y*frame_width + 1/2*frame_width, 0])
        circle(r=hole_radius);   
    }
}

replimat_plate(15,10);