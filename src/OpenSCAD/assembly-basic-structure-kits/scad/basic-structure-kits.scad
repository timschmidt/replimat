/*
 * @name Replimat Basic structure kits
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

//
//! A kit of standardized parts for building frames and structures
//

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>
include <../../assembly-casters/scad/casters.scad>

grid_frame_type = tube;

module grid_basic_structure_kit(){
    layout([40,40,40,40,40], 40) grid_frame_y(2, grid_frame_type);
    grid_translate([0,3,0]) layout([40,40,40,40,40], 40) grid_frame_y(3, grid_frame_type);
    grid_translate([0,7,0]) layout([40,40,40,40,40], 40) grid_frame_y(4, grid_frame_type);
    grid_translate([0,12,0]) layout([40,40,40,40,40,40], 40) grid_frame_y(5, grid_frame_type);
    grid_translate([0,18,0]) layout([40,40,40,40,40,40], 40) grid_frame_y(10, grid_frame_type);
    grid_translate([0,29,0]) layout([40,40,40,40], 40) grid_frame_y(15, grid_frame_type);
    grid_translate([12,0,0]) layout([40,40,40,40], 40) grid_frame_y(20, grid_frame_type);
    grid_translate([12,21,0]) layout([40,40,40,40], 40) grid_frame_y(25, grid_frame_type);
    grid_translate([20,0,0]) layout([20,20,20,20,20,20,20,20,20,20], 20) grid_bolt_y(1);
    grid_translate([20,2,0]) layout([20,20,20,20,20,20,20,20,20,20], 20) grid_bolt_y(1);
    grid_translate([20,4,0]) layout([20,20,20,20,20], 20) grid_bolt_y(1);
    grid_translate([20,7,0]) layout([20,20,20,20,20,20,20,20,20,20], 20) grid_bolt_y(2);
    grid_translate([20,10,0]) layout([20,20,20,20,20,20,20,20,20,20], 20) grid_bolt_y(2);
    grid_translate([20,13,0]) layout([20,20,20,20,20,20,20,20,20,20], 20) grid_bolt_y(2);
    grid_translate([20,16,0]) layout([20,20,20,20,20,20,20,20,20,20], 20) grid_bolt_y(2);
    grid_translate([20,19,0]) layout([20,20,20,20,20,20,20,20,20,20], 20) grid_bolt_y(2);
    grid_translate([20,23,0]) layout([20,20,20,20,20,20,20,20,20,20], 20) grid_bolt_y(3);
    grid_translate([20,27,0]) layout([20,20,20,20,20,20,20,20,20,20], 20) grid_bolt_y(3);
    grid_translate([20,31,0]) layout([20,20,20,20,20], 20) grid_bolt_y(3);
    grid_translate([20,36,0]) layout([20,20,20,20,20,20,20,20,20,20], 20) grid_nut();
    grid_translate([20,37,0]) layout([20,20,20,20,20,20,20,20,20,20], 20) grid_nut();
    grid_translate([20,38,0]) layout([20,20,20,20,20,20,20,20,20,20], 20) grid_nut();
    grid_translate([20,39,0]) layout([20,20,20,20,20,20,20,20,20,20], 20) grid_nut();
    grid_translate([20,40,0]) layout([20,20,20,20,20,20,20,20,20,20], 20) grid_nut();
    grid_translate([20,41,0]) layout([20,20,20,20,20,20,20,20,20,20], 20) grid_nut();
    grid_translate([20,42,0]) layout([20,20,20,20,20,20,20,20,20,20], 20) grid_nut();
    grid_translate([20,43,0]) layout([20,20,20,20,20,20,20,20,20,20], 20) grid_nut();
    grid_translate([20,44,0]) layout([20,20,20,20,20,20,20,20,20,20], 20) grid_nut();
    grid_translate([20,45,0]) layout([20,20,20,20,20,20,20,20,20,20], 20) grid_nut();
    grid_translate([28,0,0]) layout([200,200,200], 40) grid_plate_stl(5,5);
    grid_translate([28,6,0]) layout([200,200,200], 40) grid_plate_stl(5,5);
    grid_translate([25.5,12,0]) layout([400,400], 40) grid_plate_stl(10,10);
    grid_translate([25.5,23,0]) layout([400,400], 40) grid_plate_stl(10,10);
    grid_translate([29,33,0]) layout([120,120,120], 40) caster_stl();
    grid_translate([29,37,0]) layout([120,120,120], 40) caster_stl();
}

grid_basic_structure_kit();