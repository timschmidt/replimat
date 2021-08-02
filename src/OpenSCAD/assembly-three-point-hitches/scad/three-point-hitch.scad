/*
 * Replimat Three point hitch
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>
use <plate-three-point-hitch.scad>

category = 1;

module replimat_three_point_hitch(category){
// frames
    if (category == 0){
        grid_frame_x(10);
        grid_translate([2,0,4]) grid_frame_x(10);
        grid_translate([2,2,0]) grid_frame_x(10);
        grid_translate([0,2,4]) grid_frame_x(10);
        grid_translate([10,0,3]) grid_frame_y(2);
        grid_translate([10,1,1]) grid_frame_y(2);
    }
    if (category == 1){
        grid_frame_x(15);
        grid_translate([2,0,4]) grid_frame_x(15);
        grid_translate([2,2,0]) grid_frame_x(15);
        grid_translate([0,2,4]) grid_frame_x(15);
        grid_translate([15,0,3]) grid_frame_y(2);
        grid_translate([15,1,1]) grid_frame_y(2);        
    }
    grid_translate([1,0,1]) grid_frame_y(2);
    grid_translate([1,1,3]) grid_frame_y(2);

    // lower hitch pin
    grid_translate([0,1,0]) grid_frame_z(5);
    grid_translate([0,1,1]) rotate([0,270,0]) replimat_three_point_hitch_plate();
    grid_translate([-0.4,1,1]) rotate([0,270,0]) grid_bolt_nut_z(3);
    grid_translate([-0.4,1,2]) rotate([0,270,0]) grid_bolt_nut_z(2);
    grid_translate([-0.4,1,3]) rotate([0,270,0]) grid_bolt_nut_z(3);
    if (category == 0){
    color(Steel) grid_translate([-3,2.5,1.5]) rotate([0,90,0]) cylinder(h=3*frame_width, d=5/8*inch);
    }
    if (category == 1){
    color(Steel) grid_translate([-3,2.5,3.5]) rotate([0,90,0]) cylinder(h=3*frame_width, d=3/4*inch);
    }

    // lower hitch pin assembly
    if (category == 0){
    grid_translate([11,1,0]) grid_frame_z(5);
    grid_translate([12.4,1,1]) rotate([0,270,0]) replimat_three_point_hitch_plate();
    grid_translate([12.4,1,2]) rotate([0,90,0]) grid_bolt_nut_z(3);
    grid_translate([12.4,1,3]) rotate([0,90,0]) grid_bolt_nut_z(2);
    grid_translate([12.4,1,4]) rotate([0,90,0]) grid_bolt_nut_z(3);
    color(Steel) grid_translate([12,2.5,1.5]) rotate([0,90,0]) cylinder(h=3*frame_width, d=5/8*inch);
    }
    if (category == 1){
    grid_translate([16,1,0]) grid_frame_z(5);
    grid_translate([17.4,1,1]) rotate([0,270,0]) replimat_three_point_hitch_plate();
    grid_translate([17.4,1,2]) rotate([0,90,0]) grid_bolt_nut_z(3);
    grid_translate([17.4,1,3]) rotate([0,90,0]) grid_bolt_nut_z(2);
    grid_translate([17.4,1,4]) rotate([0,90,0]) grid_bolt_nut_z(3);
    color(Steel) grid_translate([17,2.5,3.5]) rotate([0,90,0]) cylinder(h=3*frame_width, d=3/4*inch);    
    }


    // upper hitch pin assembly
    if (category == 0){
    grid_translate([4,1,0]) grid_frame_z(10);
    grid_translate([7,1,7]) rotate([0,270,0]) replimat_three_point_hitch_plate();
    grid_translate([5.4,1,7]) rotate([0,270,0]) replimat_three_point_hitch_plate();
    grid_translate([7,1,0]) grid_frame_z(10);
    grid_translate([5,0,3]) grid_frame_y(3);
    grid_translate([6,0,1]) grid_frame_y(3);
    grid_translate([4,1,7]) rotate([0,270,0]) grid_bolt_nut_z(1);
    grid_translate([4,1,8]) rotate([0,270,0]) grid_bolt_nut_z(1);
    grid_translate([4,1,9]) rotate([0,270,0]) grid_bolt_nut_z(1);
    grid_translate([8,1,8]) rotate([0,90,0]) grid_bolt_nut_z(1);
    grid_translate([8,1,9]) rotate([0,90,0]) grid_bolt_nut_z(1);
    grid_translate([8,1,10]) rotate([0,90,0]) grid_bolt_nut_z(1);
    color(Steel) grid_translate([5,2.5,7.5]) rotate([0,90,0]) cylinder(h=2*frame_width, d=5/8*inch);
    }
    if (category ==1){
    grid_translate([6,1,0]) grid_frame_z(15);
    grid_translate([10,1,12]) rotate([0,270,0]) replimat_three_point_hitch_plate();
    grid_translate([7.4,1,12]) rotate([0,270,0]) replimat_three_point_hitch_plate();
    grid_translate([10,1,0]) grid_frame_z(15);
    grid_translate([7,0,3]) grid_frame_y(3);
    grid_translate([9,0,1]) grid_frame_y(3);
    grid_translate([6,1,12]) rotate([0,270,0]) grid_bolt_nut_z(1);
    grid_translate([6,1,13]) rotate([0,270,0]) grid_bolt_nut_z(1);
    grid_translate([6,1,14]) rotate([0,270,0]) grid_bolt_nut_z(1);
    grid_translate([11,1,13]) rotate([0,90,0]) grid_bolt_nut_z(1);
    grid_translate([11,1,14]) rotate([0,90,0]) grid_bolt_nut_z(1);
    grid_translate([11,1,15]) rotate([0,90,0]) grid_bolt_nut_z(1);
    color(Steel) grid_translate([7,2.5,13.5]) rotate([0,90,0]) cylinder(h=3*frame_width, d=7/8*inch);
    }        
}

replimat_three_point_hitch(category);