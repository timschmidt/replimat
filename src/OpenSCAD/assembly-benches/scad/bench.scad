/*
 * @name Replimat Bench
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

//
//! Basic bench built with standardized and fully reusable components.
//

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>

//
//! Assemble right legs and rear upright
//

module right_assembly(){
    assembly("right"){

    // Vertical
    grid_translate([0,1,0]) grid_frame_z(10);
    grid_translate([0,10,0]) grid_frame_z(20);
    
    // Depth
    grid_translate([1,1,8]) grid_frame_y(10);
    
    //Nuts and bolts
    grid_translate([0,1,8]) grid_bolt_nut_x(2);
    grid_translate([0,10,8]) grid_bolt_nut_x(2);
    }
}

//
//! Assemble left legs and rear upright
//

module left_assembly(){
    assembly("left"){
    
    //Vertical
    grid_translate([29,1,0]) grid_frame_z(10);
    grid_translate([29,10,0]) grid_frame_z(20);
    
    //Depth
    grid_translate([28,1,8]) grid_frame_y(10);

    //Nuts and bolts
    grid_translate([30,2,8]) rotate([0,0,180]) grid_bolt_nut_x(2);
    grid_translate([30,11,8]) rotate([0,0,180]) grid_bolt_nut_x(2);
    }
}

//
//! Attach seats to support rails
//

module seat_assembly(){
    assembly("seat"){
    
    grid_translate([0,2,9]) grid_frame_x(30);
    grid_translate([0,9,9]) grid_frame_x(30);
    
    grid_translate([0,0,10]) grid_plate_stl(10, 10);
    grid_translate([10,0,10]) grid_plate_stl(10, 10);
    grid_translate([20,0,10]) grid_plate_stl(10, 10);
    
    grid_translate([0,1,9]) grid_bolt_nut_y(2);
    grid_translate([1,11,9]) rotate([0,0,180]) grid_bolt_nut_y(2);
    grid_translate([29,1,9]) grid_bolt_nut_y(2);
    grid_translate([30,11,9]) rotate([0,0,180]) grid_bolt_nut_y(2);
    
    grid_translate([1,2,10]) grid_bolt_nut_z(2);
    grid_translate([1,9,10]) grid_bolt_nut_z(2);
    grid_translate([9,2,10]) grid_bolt_nut_z(1);
    grid_translate([9,9,10]) grid_bolt_nut_z(1);
    grid_translate([10,2,10]) grid_bolt_nut_z(1);
    grid_translate([10,9,10]) grid_bolt_nut_z(1);
    grid_translate([19,2,10]) grid_bolt_nut_z(1);
    grid_translate([19,9,10]) grid_bolt_nut_z(1);
    grid_translate([20,2,10]) grid_bolt_nut_z(1);
    grid_translate([20,9,10]) grid_bolt_nut_z(1);
    
    grid_translate([28,2,10]) grid_bolt_nut_z(2);
    grid_translate([28,9,10]) grid_bolt_nut_z(2);
    }
}

//
//! Attach backrests to support rails
//

module back_assembly(){
    assembly("back"){
    
    grid_translate([0,9,11]) grid_frame_x(30);
    grid_translate([0,9,19]) grid_frame_x(30);
    grid_translate([0,9,11]) rotate([90,0,0]) grid_plate_stl(10, 10);
    grid_translate([10,9,11]) rotate([90,0,0]) grid_plate_stl(10, 10);
    grid_translate([20,9,11]) rotate([90,0,0]) grid_plate_stl(10, 10);
    
    grid_translate([0,9,11]) grid_bolt_nut_y(2);
    grid_translate([0,9,19]) grid_bolt_nut_y(2);
    grid_translate([9,9,11]) grid_bolt_nut_y(1);
    grid_translate([9,9,19]) grid_bolt_nut_y(1);
    grid_translate([10,9,11]) grid_bolt_nut_y(1);
    grid_translate([10,9,19]) grid_bolt_nut_y(1);
    grid_translate([19,9,11]) grid_bolt_nut_y(1);
    grid_translate([19,9,19]) grid_bolt_nut_y(1);
    grid_translate([20,9,11]) grid_bolt_nut_y(1);
    grid_translate([20,9,19]) grid_bolt_nut_y(1);
    
    grid_translate([29,9,11]) grid_bolt_nut_y(2);
    grid_translate([29,9,19]) grid_bolt_nut_y(2);
    }
}

//
//! Attach seat and back assemblies to side assembles with bolts
//

module main_assembly(){
    assembly("main"){
    
    right_assembly();
    left_assembly();
    seat_assembly();
    back_assembly();
    }
}

if($preview)
    main_assembly();