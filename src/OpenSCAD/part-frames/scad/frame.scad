/*
 * @name Replimat Frame standard sizes
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/grid.scad>
include <MCAD/materials.scad>

// Customizer values
segments=35; // [2,3,4,5,10,15,20,25,30,40,50]
frame_is_hollow=true;
axis=3; // [1:X, 2:Y, 3:Z]

if (axis == 1) { grid_frame_x(segments); }
if (axis == 2) { grid_frame_y(segments); }
if (axis == 3) { grid_frame_z(segments); }