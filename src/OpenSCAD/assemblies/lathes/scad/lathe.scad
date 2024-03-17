/*
 * @name Replimat Lathe
 * @author Timothy Schmidt
 * @date 2013-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>
use <../../../assemblies/chucks/scad/chuck.scad>

module lathe(){
Frame_width = inch(3);
Frame_wall_thickness = inch(1/4);
Frame_hole_diameter = inch(3/4);

color(Steel) {

// ways
grid_translate([0,0,2]) grid_frame_x(10);
grid_translate([0,2,2]) grid_frame_x(10);

// way supports
grid_translate([1,0,0]) grid_frame_y(3);
grid_translate([9,0,0]) grid_frame_y(3);
grid_translate([1,0,1]) grid_frame_y(3);
grid_translate([9,0,1]) grid_frame_y(3);

// tailstock
grid_translate([6,0,1]) grid_frame_y(3);
grid_translate([6,0,3]) grid_frame_y(3);
grid_translate([7,1,1]) grid_frame_z(6);
grid_translate([6,0,4]) grid_frame_x(2);
grid_translate([6,2,4]) grid_frame_x(2);

// headstock
grid_translate([0,1,0]) grid_frame_z(7);

}

grid_translate([2.3,1.5,6.5])
rotate([0,90,0])
replimat_chuck();
}

lathe();