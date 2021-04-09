/*
 * @name Replimat Caster joint
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */
 
 include <MCAD/frame.scad>

translateFrame([0,1,0])
translate([0,0,94])
xFrame(5);
translate([0,0,94])
translateFrame([0,0,0])
zFrame(5);
translate([0,0,94])
translateFrame([1,0,1])
yFrame(5);
translate([38+19.05,23+19.05,94]) rotate([0,180,270]) import("../../bin/stl/HFT 61855 Caster v011.stl");