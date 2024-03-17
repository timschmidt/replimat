/*
 * @name Replimat Plate
 * @author Timothy Schmidt
 * @date 2019-2021
 * @url http://www.github.com/replimat-cad
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/vitamins/grid.scad>
include <MCAD/units.scad>

module grid_plate_stl(width, height, hole_radius=4.5, corner_radius=13){
    difference(){

    translate([1/2*width*grid_frame_width, 1/2*height*grid_frame_width, 0])
    hull(){
        // place 4 circles in the corners, with the given radius
        x=width*grid_frame_width;
        y=height*grid_frame_width;
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
        translate([x*grid_frame_width + 1/2*grid_frame_width, y*grid_frame_width + 1/2*grid_frame_width, 0])
        circle(r=hole_radius);   
    }
}

grid_plate_stl(15,10);