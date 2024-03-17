/*
 * @name Replimat Linear Bushing
 * @author Timothy Schmidt
 * @date 2019
 * @url http://www.github.com/replimat-cad
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/vitamins/grid.scad>
include <MCAD/materials.scad>
include <MCAD/units.scad>
include <NopSCADlib/vitamins/nuts.scad>
include <NopSCADlib/vitamins/screws.scad>


difference(){
    union(){
    difference(){
    //Body
    cube([grid_frame_width * 2, grid_frame_width * 2, grid_frame_width * 2]);
    
    //frame void
    translate([grid_frame_width / 2 - 17, grid_frame_width / 2 - 3, 0])
        cube([grid_frame_width+20, grid_frame_width * 2, grid_frame_width * 2]);
    }
    
    // bearing surfaces
    translate([grid_frame_width / 2 + 6, grid_frame_width / 2 - 3, 0])
    cube([1, 3, grid_frame_width * 2]);
    
    translate([grid_frame_width * 1.5 - 7, grid_frame_width / 2 - 3, 0])
    cube([1, 3, grid_frame_width * 2]);
    
    translate([grid_frame_width * 1.5, grid_frame_width / 2 + 6, 0])
    cube([3, 1, grid_frame_width * 2]);
    
    translate([grid_frame_width * 1.5, grid_frame_width * 1.5 - 6, 0])
    cube([3, 1, grid_frame_width * 2]);
    
}
    
    //Half cut
    rotate([0, 0, 45])
    translate([-2,-2,0])
    cube([grid_frame_width * 3, grid_frame_width* 2, grid_frame_width * 2]);
    
    //Holes side x
    translate([grid_frame_width, grid_frame_width, grid_frame_width / 2])
    rotate([90, 0, 0])
    #cylinder(r=4.5, h=grid_frame_width * 2);
    translate([grid_frame_width, grid_frame_width, grid_frame_width * 1.5])
    rotate([90, 0, 0])
    #cylinder(r=4.5, h=grid_frame_width * 2);

    translate([grid_frame_width * 2, grid_frame_width, grid_frame_width / 2])
    rotate([90, 0, 0])
    #cylinder(r=4.5, h=grid_frame_width * 2);
    translate([grid_frame_width * 2, grid_frame_width, grid_frame_width * 1.5])
    rotate([90, 0, 0])
    #cylinder(r=4.5, h=grid_frame_width * 2);

    //Holes side y
    translate([grid_frame_width, grid_frame_width, grid_frame_width / 2])
    rotate([0, 90, 0])
    cylinder(r=4.5, h=grid_frame_width * 2);
    translate([grid_frame_width, grid_frame_width, grid_frame_width * 1.5])
    rotate([0, 90, 0])
    cylinder(r=4.5, h=grid_frame_width * 2);
    
    // nut traps
    translate([grid_frame_width, grid_frame_width / 2 - 6, grid_frame_width / 2])
    rotate([90, 0, 0])
    #nutHole(8, units=MM, tolerance=0.2);
    
    translate([grid_frame_width, grid_frame_width / 2 - 6, grid_frame_width * 1.5])
    rotate([90, 0, 0])
    #nutHole(8, units=MM, tolerance=0.2);
    
    translate([grid_frame_width * 1.5 + 6, grid_frame_width, grid_frame_width / 2])
    rotate([0, 90, 0])
    #nutHole(8, units=MM, tolerance=0.2);
    
    translate([grid_frame_width * 1.5 + 6, grid_frame_width, grid_frame_width * 1.5])
    rotate([0, 90, 0])
    #nutHole(8, units=MM, tolerance=0.2);
    
// nut access
    translate([grid_frame_width, grid_frame_width / 2, grid_frame_width / 2])
    rotate([90, 0, 0])
    #cylinder(r=10, h=6);
    
    translate([grid_frame_width, grid_frame_width / 2, grid_frame_width * 1.5])
    rotate([90, 0, 0])
    #cylinder(r=10, h=6);
    
    translate([grid_frame_width * 1.5, grid_frame_width, grid_frame_width / 2])
    rotate([0, 90, 0])
    #cylinder(r=10, h=6);
    
    translate([grid_frame_width * 1.5, grid_frame_width, grid_frame_width * 1.5])
    rotate([0, 90, 0])
    #cylinder(r=10, h=6);
    
    // mounting holes
    rotate([90, 0, 45])
    translate([11,grid_frame_width / 2,-20])
    #cylinder(r=4.5, h=40);
    
    rotate([90, 0, 45])
    translate([11,grid_frame_width * 1.5,-20])
    #cylinder(r=4.5, h=40);
    
    rotate([90, 0, 45])
    translate([95,grid_frame_width / 2,-20])
    #cylinder(r=4.5, h=40);
    
    rotate([90, 0, 45])
    translate([95,grid_frame_width * 1.5,-20])
    #cylinder(r=4.5, h=40);
    
    // mounting holes cutouts
    rotate([90, 0, 45])
    translate([11,grid_frame_width / 2,6])
    #cylinder(r=8, h=40);
    
    rotate([90, 0, 45])
    translate([11,grid_frame_width * 1.5,6])
    #cylinder(r=8, h=40);
    
    rotate([90, 0, 45])
    translate([95,grid_frame_width / 2,6])
    #cylinder(r=8, h=40);
    
    rotate([90, 0, 45])
    translate([95,grid_frame_width * 1.5,6])
    #cylinder(r=8, h=40);
    
}

//translate([beam_width / 2, beam_width / 2, 0])
//zBeam(2);

