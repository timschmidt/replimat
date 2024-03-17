/*
 * @name Replimat Automated Drilling Machine
 * @authors Timothy Schmidt, Michael Spreng
 * @dates 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 * @todo fix nuts in feet
 * @todo correct angle brackets
 * @todo draw triangle plate
 * @todo draw two hole plate
 * @todo draw C-beam profile and add to extrusions nopscadlib 
 * @todo draw linear axis profile and add to extrusions
 * @todo draw 3 custom plates for linear axis
 * @todo draw linear axis nut block
 * @todo draw 775 series motors
 * @todo draw 775 motor bracket
 * @todo add WAGO connectors to nopscadlib wire lib
 * @todo nopscadlib pressure regulator
 * @todo nopscadlib solenoid valve
 * @todo NEMA 17 motor bracket
 * @todo draw TN10x50 air cylinders
 * @todo import OpenBuilds plates
 * @todo draw http://makerstore.cc/product/us-gear-m1-int-500-d/ using https://github.com/nophead/NopSCADlib#Gears
 */

//
//! Automated drilling machine for producing frames with a repeating hole pattern
//

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>
include <NopSCADlib/printed/foot.scad>
include <NopSCADlib/vitamins/screw.scad>

//
//! Assemble right legs and rear upright
//

module clamp_assembly(){
    assembly("clamp"){
    

    /*
        PARTS 
        2x M4 insert nuts
        4x TN10x50
        8x PC4-M% fitings
        4x 5 tap operations
        8x M3x20 bolts 
        4x 5-unit 20mm frame
        4x 2040 brackets
        10x M5x10 bolts
        6x M5 insert T-nuts
        8x 500mm x 4mm OD air hose
        3x Y-coupling 4mm OD
        4x 600mm x 4mm OD air hose
        8x remove protective cap operations
        8x screw in fitting operations
        8x teflon tape fitting operations
        8x drill frame operations 
        12x tube cutting op
        12x meaasuring op
        8x T-couplings
        2x 1/4 NPT -> 4mm push fit cap
        1x 4v210-08 pneumatic valve
        1x pressure regulator + bracket
        1x pressure gage
        2x M4 x 25 bolt
        2x 4mm OD x 100mm hose  
    */
    }
}

module c_beam(length){
    
      grid_translate([0,0,0]) extrusion(E2080, length);
      grid_translate([.5,-.75,0]) extrusion(E2020, length);
      grid_translate([.5,.75,0]) extrusion(E2020, length);  
   
}

//
//! Mod 1 gear rack compatible with http://makerstore.cc/product/us-gear-m1-int-500-d/
//! * 20 degree pressure angle, 2.25mm height
//! * teeth are 6.1mm wide, 5mm height
//! * ridge is 10.5mm wide, 2mm height
//! * feet are 1.5mm wide, 2.2mm height, 2.6mm space between
//
module rack_stl(length)
    stl("rack"){
    
    involute_rack_tooth_profile(m = 1, pa = 20, clearance = undef);
    
    
        
}

//
//! Linear actuator extrusion
//
module linear_actuator_extrusion(length){
    
    
    
}


//
//! Assemble linear rail
//

module  linear_rail_assembly()
    assembly("linear_rail"){
        
        translate([0,0,60]) rotate([90,90,90]) c_beam(1500);
        
        translate([250,-60,20]) rotate([90,0,0]) extrusion(E2020,300);
        translate([-250,-60,20]) rotate([90,0,0]) extrusion(E2020,300);
        translate([740,-60,20]) rotate([90,0,0]) extrusion(E2020,300);
        translate([-740,-60,20]) rotate([90,0,0]) extrusion(E2020,300);
        
        // Endstops and brackets
        translate([720,10,170]) extrusion(E2020,200);
        translate([-720,10,170]) extrusion(E2020,200);
        
        grid_translate([-18.25,0.25,1.75]) rotate([90,0,180]) extrusion_corner_bracket_assembly(E20_corner_bracket, 2, M5_cap_screw, M5_sliding_t_nut, 8, E2020t);
        grid_translate([18.25,0.25,1.75]) rotate([90,0,0]) extrusion_corner_bracket_assembly(E20_corner_bracket, 2, M5_cap_screw, M5_sliding_t_nut, 8, E2020t);
        
        // Leg brackets
        grid_translate([18.25,-0.75,0.75]) rotate([0,90,90]) extrusion_corner_bracket_assembly(E20_corner_bracket, 2, M5_cap_screw, M5_sliding_t_nut, 8, E2020t);
        grid_translate([18.25,0.75,0.75]) rotate([0,90,90]) extrusion_corner_bracket_assembly(E20_corner_bracket, 2, M5_cap_screw, M5_sliding_t_nut, 8, E2020t);
        grid_translate([6,-0.75,0.75]) rotate([0,90,90]) extrusion_corner_bracket_assembly(E20_corner_bracket, 2, M5_cap_screw, M5_sliding_t_nut, 8, E2020t);
        grid_translate([6,0.75,0.75]) rotate([0,90,90]) extrusion_corner_bracket_assembly(E20_corner_bracket, 2, M5_cap_screw, M5_sliding_t_nut, 8, E2020t);
        grid_translate([-18.25,-0.75,0.75]) rotate([0,90,270]) extrusion_corner_bracket_assembly(E20_corner_bracket, 2, M5_cap_screw, M5_sliding_t_nut, 8, E2020t);
        grid_translate([-18.25,0.75,0.75]) rotate([0,90,270]) extrusion_corner_bracket_assembly(E20_corner_bracket, 2, M5_cap_screw, M5_sliding_t_nut, 8, E2020t);
        grid_translate([-6,-0.75,0.75]) rotate([0,90,270]) extrusion_corner_bracket_assembly(E20_corner_bracket, 2, M5_cap_screw, M5_sliding_t_nut, 8, E2020t);
        grid_translate([-6,0.75,0.75]) rotate([0,90,270]) extrusion_corner_bracket_assembly(E20_corner_bracket, 2, M5_cap_screw, M5_sliding_t_nut, 8, E2020t);
        
        // Feet
        translate([-250,-200,10]) foot_assembly(t = 8, type = foot, flip = false, no_washer = false);
        translate([-250,80,10]) foot_assembly(t = 8, type = foot, flip = false, no_washer = false);
        translate([250,-200,10]) foot_assembly(t = 8, type = foot, flip = false, no_washer = false);
        translate([250,80,10]) foot_assembly(t = 8, type = foot, flip = false, no_washer = false);
        translate([740,-200,10]) foot_assembly(t = 8, type = foot, flip = false, no_washer = false);
        translate([740,80,10]) foot_assembly(t = 8, type = foot, flip = false, no_washer = false);
        translate([-740,80,10]) foot_assembly(t = 8, type = foot, flip = false, no_washer = false);
        translate([-740,-200,10]) foot_assembly(t = 8, type = foot, flip = false, no_washer = false);
        
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
        
   //rail(HGH15CA, 200);
   //rail(HGH15CA, 200);
   carriage(HGH15CA_carriage);
   carriage(HGH15CA_carriage);
   carriage(HGH15CA_carriage);
   carriage(HGH15CA_carriage);
   
   //rail_assembly(HGH15CA_carriage, 1500, 1, carriage_end_colour = grey(20), carriage_wiper_colour = grey(20));
}

module extension_kit_assembly(){
    
}

//
//
//! Assemble the work cell
//

module work_cell_assembly()
   assembly("work_cell"){
    
   //frame
   grid_translate([0,3.75,8.75]) rotate([0,0,270]) c_beam(400);
   grid_translate([0,-1,3]) rotate([90,270,0]) c_beam(400);
       
   grid_translate([0.75,3.75,3.75]) rotate([90,0,270]) extrusion_inner_corner_bracket(E20_inner_corner_bracket);
   grid_translate([0.75,3,3.75]) rotate([90,0,270]) extrusion_inner_corner_bracket(E20_inner_corner_bracket);
   grid_translate([-0.75,3.75,3.75]) rotate([90,0,270]) extrusion_inner_corner_bracket(E20_inner_corner_bracket);
   grid_translate([-0.75,3,3.75]) rotate([90,0,270]) extrusion_inner_corner_bracket(E20_inner_corner_bracket);
   
   // clamp arms
   translate([-30,-20,205]) extrusion(E2020,100);
   translate([-30,-10,240]) rotate([90,0,0]) foot_assembly(t = 8, type = foot, flip = false, no_washer = false);
       
   translate([30,-20,205]) extrusion(E2020,100);
   translate([30,-10,240]) rotate([90,0,0]) foot_assembly(t = 8, type = foot, flip = false, no_washer = false);
   translate([-30,65,280]) rotate([90,0,0]) extrusion(E2020,100);
   translate([-30,30,270]) rotate([0,0,0]) foot_assembly(t = 8, type = foot, flip = false, no_washer = false);
   translate([30,65,280]) rotate([90,0,0]) extrusion(E2020,100);
   translate([30,30,270]) rotate([0,0,0]) foot_assembly(t = 8, type = foot, flip = false, no_washer = false);
   
   //backstop
   translate([-30,60,200]) extrusion(E2020,100);
   translate([30,60,200]) extrusion(E2020,100);
   translate([0,40,200]) rotate([0,90,0]) extrusion(E2020,80);
       
   grid_translate([-0.75,1.75,3.75]) rotate([90,0,90]) extrusion_corner_bracket_assembly(E20_corner_bracket, 2, M5_cap_screw, M5_sliding_t_nut, 8, E2020t);
   grid_translate([0.75,1.75,3.75]) rotate([90,0,90]) extrusion_corner_bracket_assembly(E20_corner_bracket, 2, M5_cap_screw, M5_sliding_t_nut, 8, E2020t);
   grid_translate([-0.75,1.25,4.75]) rotate([0,90,180]) extrusion_corner_bracket_assembly(E20_corner_bracket, 2, M5_cap_screw, M5_sliding_t_nut, 8, E2020t);
   grid_translate([0.75,1.25,4.75]) rotate([0,90,180]) extrusion_corner_bracket_assembly(E20_corner_bracket, 2, M5_cap_screw, M5_sliding_t_nut, 8, E2020t);
       
   grid_translate([18.25,-0.75,0.75]) rotate([0,90,90]) extrusion_corner_bracket_assembly(E20_corner_bracket, 2, M5_cap_screw, M5_sliding_t_nut, 8, E2020t);
   grid_translate([18.25,-0.75,0.75]) rotate([0,90,90]) extrusion_corner_bracket_assembly(E20_corner_bracket, 2, M5_cap_screw, M5_sliding_t_nut, 8, E2020t);
   grid_translate([18.25,-0.75,0.75]) rotate([0,90,90]) extrusion_corner_bracket_assembly(E20_corner_bracket, 2, M5_cap_screw, M5_sliding_t_nut, 8, E2020t);
   grid_translate([18.25,-0.75,0.75]) rotate([0,90,90]) extrusion_corner_bracket_assembly(E20_corner_bracket, 2, M5_cap_screw, M5_sliding_t_nut, 8, E2020t);
              
   grid_translate([0,0,0]) screw(M5_grub_screw, 10);
   grid_translate([0,0,0]) screw(M5_grub_screw, 10);
   grid_translate([0,0,0]) screw(M5_grub_screw, 10);
   grid_translate([0,0,0]) screw(M5_grub_screw, 10);
   grid_translate([0,0,0]) screw(M5_grub_screw, 10);
   grid_translate([0,0,0]) screw(M5_grub_screw, 10);
   grid_translate([0,0,0]) screw(M5_grub_screw, 10);
   grid_translate([0,0,0]) screw(M5_grub_screw, 10);
   grid_translate([0,0,0]) screw(M5_grub_screw, 10);
   grid_translate([0,0,0]) screw(M5_grub_screw, 10);
   grid_translate([0,0,0]) screw(M5_grub_screw, 10);
   grid_translate([0,0,0]) screw(M5_grub_screw, 10);
   grid_translate([0,0,0]) screw(M5_grub_screw, 10);
   grid_translate([0,0,0]) screw(M5_grub_screw, 10);
   grid_translate([0,0,0]) screw(M5_grub_screw, 10);
   grid_translate([0,0,0]) screw(M5_grub_screw, 10);
       
   grid_translate([0,0,0]) sliding_t_nut(M5_sliding_t_nut);
   grid_translate([0,0,0]) sliding_t_nut(M5_sliding_t_nut);
   grid_translate([0,0,0]) sliding_t_nut(M5_sliding_t_nut);
   grid_translate([0,0,0]) sliding_t_nut(M5_sliding_t_nut);
   grid_translate([0,0,0]) sliding_t_nut(M5_sliding_t_nut);
   grid_translate([0,0,0]) sliding_t_nut(M5_sliding_t_nut);
   grid_translate([0,0,0]) sliding_t_nut(M5_sliding_t_nut);
   grid_translate([0,0,0]) sliding_t_nut(M5_sliding_t_nut);
   grid_translate([0,0,0]) sliding_t_nut(M5_sliding_t_nut);
   grid_translate([0,0,0]) sliding_t_nut(M5_sliding_t_nut);
   grid_translate([0,0,0]) sliding_t_nut(M5_sliding_t_nut);
   grid_translate([0,0,0]) sliding_t_nut(M5_sliding_t_nut);
   grid_translate([0,0,0]) sliding_t_nut(M5_sliding_t_nut);
   grid_translate([0,0,0]) sliding_t_nut(M5_sliding_t_nut);
   grid_translate([0,0,0]) sliding_t_nut(M5_sliding_t_nut);
   grid_translate([0,0,0]) sliding_t_nut(M5_sliding_t_nut);
   
   
   translate([62,80,120]) rotate([180,0,180]) NEMA(NEMA17, 0, true);
   translate([0,-240,170]) rotate([-90, 0, 0]) NEMA(NEMA17, 0, true);
   translate([0,-216,170]) rotate([-90, 0, 0]) shaft_coupling(SC_5x8_rigid);
   translate([0,100,550]) rotate([180, 0, 180]) NEMA(NEMA17, 0, true);
   translate([0,100,526]) rotate([180, 0, 0]) shaft_coupling(SC_5x8_rigid);
   leadnut(SFU1610);
   leadnut(SFU1610);
   translate([0,-154,170]) rotate([-90, 180, 0]) leadscrew(16, 100, 16, 4);
   translate([0,100,464]) rotate([180, 0, 0]) leadscrew(16, 100, 16, 4);
}

//
//! Attach backrests to support rails
//

module main_assembly(){
    assembly("main"){
    
    clamp_assembly();
    linear_rail_assembly();
    extension_kit_assembly();
    work_cell_assembly();    
    }
}

if($preview)
    main_assembly();