/*
 * @name Replimat Farm robot
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>
use <plate-rectangular.scad>
use <solar-panels.scad>
use <go-kart-drive.scad>

frame_is_hollow = true;

// Vertical 
translateFrame([1,5,0]) zFrame(15);
translateFrame([1,53,0]) zFrame(15);
translateFrame([39,5,0]) zFrame(15);
translateFrame([39,53,0]) zFrame(15);

// Feet
translateFrame([0,5,0]) xFrame(40);
translateFrame([0,53,0]) xFrame(40);

translateFrame([0,4,14]) yFrame(50);
translateFrame([51,4,14]) yFrame(50);
translateFrame([1,53,13]) xFrame(50);
translateFrame([1,4,13]) xFrame(50);
    
// Shelving
translateFrame([0,4,15]) replimat_solar_panel(2);
translateFrame([26,4,15]) replimat_solar_panel(2);

translateFrame([0,0,0]) half_drive(8);
translateFrame([0,60,0]) rotate([0,0,180]) half_drive(8);
translateFrame([40,0,0]) half_drive(8);
translateFrame([40,60,0]) rotate([0,0,180]) half_drive(8);