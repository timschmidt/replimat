/*
 * @name Replimat Middle holes
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/grid.scad>
include <MCAD/materials.scad>

frame_is_hollow = true;

// Frame
grid_translate([11,0,6]) grid_frame_x(3);
grid_translate([10,0,4]) grid_frame_x(5);
grid_translate([5,0,2]) grid_frame_x(15);
grid_translate([0,0,0]) grid_frame_x(25);