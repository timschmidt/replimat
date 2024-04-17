/*
 * @name Replimat Bookshelf
 * @author Timothy Schmidt
 * @date 2013-2024
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 * @todo: tri-joint nuts and bolts
 */

include <NopSCADlib/lib.scad>

//! Left side assembly
module left_side_assembly()
assembly("left_side") {
    grid_translate([0,1,0]) grid_frame_z(50);
    grid_translate([2,10,0]) grid_frame_z(50);
    
    // cross braces
    grid_translate([1,1,0]) grid_frame_y(10);
    grid_translate([1,1,9]) grid_frame_y(10);
    grid_translate([1,1,19]) grid_frame_y(10);
    grid_translate([1,1,29]) grid_frame_y(10);
    grid_translate([1,1,39]) grid_frame_y(10);
    grid_translate([1,1,48]) grid_frame_y(10);
}

//! Right side assembly
module right_side_assembly()
assembly("right_side") {
    grid_translate([29,10,0]) grid_frame_z(50);
    grid_translate([31,1,0]) grid_frame_z(50);
 
    // cross braces
    grid_translate([30,1,0]) grid_frame_y(10);
    grid_translate([30,1,9]) grid_frame_y(10);
    grid_translate([30,1,19]) grid_frame_y(10);
    grid_translate([30,1,29]) grid_frame_y(10);
    grid_translate([30,1,39]) grid_frame_y(10);
    grid_translate([30,1,48]) grid_frame_y(10);
}

module shelf_assembly()
assembly("shelf") {
// supports
grid_translate([1,2,1]) grid_frame_x(30);
grid_translate([1,9,1]) grid_frame_x(30);
// plates
//grid_translate([1,0,2]) grid_plate10x10_dxf();
//grid_translate([11,0,2]) grid_plate10x10_dxf();
//grid_translate([21,0,2]) grid_plate10x10_dxf();
grid_translate([1,0,2]) grid_plate_sketch(10,10);
grid_translate([11,0,2]) grid_plate_sketch(10,10);
grid_translate([21,0,2]) grid_plate_sketch(10,10);
// nuts and bolts
grid_translate([1,2,2]) grid_bolt_nut_z(1);
grid_translate([1,9,2]) grid_bolt_nut_z(1);
grid_translate([10,2,2]) grid_bolt_nut_z(1);
grid_translate([10,9,2]) grid_bolt_nut_z(1);
grid_translate([11,2,2]) grid_bolt_nut_z(1);
grid_translate([11,9,2]) grid_bolt_nut_z(1);
grid_translate([20,2,2]) grid_bolt_nut_z(1);
grid_translate([20,9,2]) grid_bolt_nut_z(1);
grid_translate([21,2,2]) grid_bolt_nut_z(1);
grid_translate([21,9,2]) grid_bolt_nut_z(1);
grid_translate([30,2,2]) grid_bolt_nut_z(1);
grid_translate([30,9,2]) grid_bolt_nut_z(1);
}

module main_assembly()
assembly("main") {
    left_side_assembly();
    right_side_assembly();
    shelf_assembly();
    grid_translate([0,0,9]) shelf_assembly();
    grid_translate([0,0,19]) shelf_assembly();
    grid_translate([0,0,29]) shelf_assembly();
    grid_translate([0,0,39]) shelf_assembly();
    grid_translate([0,0,48]) shelf_assembly();
}

if($preview) main_assembly();