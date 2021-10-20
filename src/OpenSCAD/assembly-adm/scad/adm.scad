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
include <NopSCADlib/printed/foot.scad>
include <NopSCADlib/vitamins/screw.scad>

//
//! Assemble right legs and rear upright
//

module clamp_assembly(){
    /*assembly("right"){

    // Vertical
    grid_translate([0,1,0]) grid_frame_z(10);
    grid_translate([0,10,0]) grid_frame_z(20);
    
    // Depth
    grid_translate([1,1,8]) grid_frame_y(10);
    
    //Nuts and bolts
    grid_translate([0,1,8]) grid_bolt_nut_x(2);
    grid_translate([0,10,8]) grid_bolt_nut_x(2);
    }
    */
    
}

module c_beam(length){
    
      grid_translate([0,0,0]) extrusion(E2080, length);
      grid_translate([.5,-.75,0]) extrusion(E2020, length);
      grid_translate([.5,.75,0]) extrusion(E2020, length);  
   
}
//
//! Assemble linear rail
//

module  linear_rail_assembly(){
    assembly("linear_rail"){
        
        grid_translate([0,0,1.5]) rotate([90,90,90]) c_beam(1500);
        
        translate([250,-60,20]) rotate([90,0,0]) extrusion(E2020,300);
        translate([-250,-60,20]) rotate([90,0,0]) extrusion(E2020,300);
        translate([740,-60,20]) rotate([90,0,0]) extrusion(E2020,300);
        translate([-740,-60,20]) rotate([90,0,0]) extrusion(E2020,300);
        
        translate([-250,-200,10]) foot_assembly(t = 0, type = foot, flip = false, no_washer = false);
        translate([-250,80,10]) foot_assembly(t = 0, type = foot, flip = false, no_washer = false);
        translate([250,-200,10]) foot_assembly(t = 0, type = foot, flip = false, no_washer = false);
        translate([250,80,10]) foot_assembly(t = 0, type = foot, flip = false, no_washer = false);
        translate([740,-200,10]) foot_assembly(t = 0, type = foot, flip = false, no_washer = false);
        translate([740,80,10]) foot_assembly(t = 0, type = foot, flip = false, no_washer = false);
        translate([-740,80,10]) foot_assembly(t = 0, type = foot, flip = false, no_washer = false);
        translate([-740,-200,10]) foot_assembly(t = 0, type = foot, flip = false, no_washer = false);
        
        grid_translate([-18.25,0.25,1.75]) rotate([90,0,180]) extrusion_corner_bracket(E20_corner_bracket);
        grid_translate([18.25,0.25,1.75]) rotate([90,0,0]) extrusion_corner_bracket(E20_corner_bracket);
        grid_translate([18,-0.75,0.75]) rotate([0,90,90]) extrusion_corner_bracket(E20_corner_bracket);
        grid_translate([18,0.75,0.75]) rotate([0,90,90]) extrusion_corner_bracket(E20_corner_bracket);
        grid_translate([6,-0.75,0.75]) rotate([0,90,90]) extrusion_corner_bracket(E20_corner_bracket);
        grid_translate([6,0.75,0.75]) rotate([0,90,90]) extrusion_corner_bracket(E20_corner_bracket);
        grid_translate([-18.25,-0.75,0.75]) rotate([0,90,270]) extrusion_corner_bracket(E20_corner_bracket);
        grid_translate([-18,0.75,0.75]) rotate([0,90,270]) extrusion_corner_bracket(E20_corner_bracket);
        grid_translate([-6,-0.75,0.75]) rotate([0,90,270]) extrusion_corner_bracket(E20_corner_bracket);
        grid_translate([-6,0.75,0.75]) rotate([0,90,270]) extrusion_corner_bracket(E20_corner_bracket);
        
        translate([720,10,170]) extrusion(E2020,200);
        translate([-720,10,170]) extrusion(E2020,200);
        
        grid_translate([1,1,0]) sliding_t_nut(M5_sliding_t_nut);
        grid_translate([1,2,0]) sliding_t_nut(M5_sliding_t_nut);
        grid_translate([1,3,0]) sliding_t_nut(M5_sliding_t_nut);
        grid_translate([1,4,0]) sliding_t_nut(M5_sliding_t_nut);
        grid_translate([1,5,0]) sliding_t_nut(M5_sliding_t_nut);
        grid_translate([1,6,0]) sliding_t_nut(M5_sliding_t_nut);
        grid_translate([1,7,0]) sliding_t_nut(M5_sliding_t_nut);
        grid_translate([1,8,0]) sliding_t_nut(M5_sliding_t_nut);
        grid_translate([1,9,0]) sliding_t_nut(M5_sliding_t_nut);
        grid_translate([1,10,0]) sliding_t_nut(M5_sliding_t_nut);
        grid_translate([1,11,0]) sliding_t_nut(M5_sliding_t_nut);
        grid_translate([1,12,0]) sliding_t_nut(M5_sliding_t_nut);
        grid_translate([1,13,0]) sliding_t_nut(M5_sliding_t_nut);
        grid_translate([1,14,0]) sliding_t_nut(M5_sliding_t_nut);
        grid_translate([1,15,0]) sliding_t_nut(M5_sliding_t_nut);
        grid_translate([1,16,0]) sliding_t_nut(M5_sliding_t_nut);
        grid_translate([1,17,0]) sliding_t_nut(M5_sliding_t_nut);
        grid_translate([1,18,0]) sliding_t_nut(M5_sliding_t_nut);
        
        grid_translate([-1,1,0]) screw(M5_grub_screw, 10);
        grid_translate([-1,1,0]) screw(M5_grub_screw, 10);
        grid_translate([-1,1,0]) screw(M5_grub_screw, 10);
        grid_translate([-1,1,0]) screw(M5_grub_screw, 10);
        grid_translate([-1,1,0]) screw(M5_grub_screw, 10);
        grid_translate([-1,1,0]) screw(M5_grub_screw, 10);
        grid_translate([-1,1,0]) screw(M5_grub_screw, 10);
        grid_translate([-1,1,0]) screw(M5_grub_screw, 10);
        grid_translate([-1,1,0]) screw(M5_grub_screw, 10);
        grid_translate([-1,1,0]) screw(M5_grub_screw, 10);
        grid_translate([-1,1,0]) screw(M5_grub_screw, 10);
        grid_translate([-1,1,0]) screw(M5_grub_screw, 10);
        grid_translate([-1,1,0]) screw(M5_grub_screw, 10);
        grid_translate([-1,1,0]) screw(M5_grub_screw, 10);
        grid_translate([-1,1,0]) screw(M5_grub_screw, 10);
        grid_translate([-1,1,0]) screw(M5_grub_screw, 10);
        grid_translate([-1,1,0]) screw(M5_grub_screw, 10);
        grid_translate([-1,1,0]) screw(M5_grub_screw, 10);
        
         
    }
    
    
}

module extension_kit_assembly(){
    
}


//
//! Attach seats to support rails
//

module drill_assembly(){
    
    /*assembly("seat"){
    
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
    */
    
}

//
//! Attach backrests to support rails
//

module work_cell_assembly(){
    /*assembly("back"){
    
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
    */
    
}

//
//! Attach seat and back assemblies to side assembles with bolts
//

module main_assembly(){
    assembly("main"){
    
    clamp_assembly();
    linear_rail_assembly();
    extension_kit_assembly();
    drill_assembly();
    work_cell_assembly();    
    }
}

if($preview)
    main_assembly();