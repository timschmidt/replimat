/*
 * @name Replimat Frame standard sizes
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>

// Customizer values
holes=2; // [2,3,4,5,10,15,20,25,30,40,50]
frame_is_hollow=true;
axis=3; // [1:X, 2:Y, 3:Z]

if (axis == 1) { xFrame(holes); }
if (axis == 2) { yFrame(holes); }
if (axis == 3) { zFrame(holes); }