/*
 * @name Replimat Barrel cage
 * @author Timothy Schmidt
 * @date 2021
 * @url https://wiki.replimat.org/wiki/Barrels
 * @url http://www.github.com/timschmidt/replimat
 * @url https://www.thingiverse.com/thing:127912
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>

//translate([220,420,670]) // without rotate
translate([100,280,670])
scale([380,380,420])
rotate([0,0,90])
import("../../bin/stl/55gallon_drum.stl");

frame_is_hollow = true;
translateFrame([0,0,1]) zFrame(25);
translateFrame([11,0,1]) zFrame(25);
translateFrame([0,14,1]) zFrame(25);
translateFrame([11,14,1]) zFrame(25);
translateFrame([2,0,0]) zFrame(2);
translateFrame([9,0,0]) zFrame(2);
translateFrame([2,14,0]) zFrame(2);
translateFrame([9,14,0]) zFrame(2);


translateFrame([1,0,1]) yFrame(15);
translateFrame([10,0,1]) yFrame(15);
translateFrame([1,1,0]) xFrame(10);
translateFrame([1,13,0]) xFrame(10);
translateFrame([1,0,25]) yFrame(15);
translateFrame([10,0,25]) yFrame(15);
translateFrame([1,4,26]) xFrame(10);
translateFrame([1,10,26]) xFrame(10);