/*
 * @name Replimat Cargo cycle
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 * @todo pillow block bearings, bolts, axle, wheels
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>
use <../../../parts/axial-bearing/scad/axial-bearing.scad>
use <../../../techniques/wheels-and-axles/scad/go-kart-drive.scad>

module cargo_cycle(){
grid_translate([1,2,7]) grid_frame_x(15);
grid_translate([1,14,7]) grid_frame_x(15);
grid_translate([5,1,6]) grid_frame_y(15);
grid_translate([15,1,8]) grid_frame_y(15);

grid_translate([17, 8, 8])
rotate([90,0,90])
grid_pillow_block();

// Wheel posts
//grid_translate([12,1,3]) grid_frame_z(5);
//grid_translate([12,15,3]) grid_frame_z(5);

grid_translate([18,2,7]) grid_frame_x(15);
grid_translate([18,14,7]) grid_frame_x(15);
grid_translate([28,1,6]) grid_frame_y(15);
grid_translate([18,1,6]) grid_frame_y(15);
    
grid_translate([17, 8, 6])
rotate([90,0,270])
grid_pillow_block();

grid_translate([3,-2.5,6])
go_kart_drive(22);
grid_translate([31,-2.5,6])
go_kart_drive(22);
}

grid_translate([0,0,0])
cargo_cycle();