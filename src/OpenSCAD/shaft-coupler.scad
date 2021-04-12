/*
 * @name Replimat Shaft coupler
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 * @comment 4'' Bolt Circle 2-7/8'' Bolt To Bolt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>

frame_is_hollow = true;

translateFrame([0.5,0.5,0])
difference(){

    cylinder(d=44.45,h=100);
        
    translate([-1/8*25.4,-25.4/2-(1/8*25.4), -1]) cube([1/4*25.4,1/4*25.4,102]);
    translate([0,0,-1]) cylinder(d=25.4,h=102);
    
    translate([1.4375*25.4,1.4375*25.4,-1]) cylinder(d=10,h=8);
    translate([-1.4375*25.4,1.4375*25.4,-1]) cylinder(d=10,h=73);
    translate([1.4375*25.4,-1.4375*25.4,-1]) cylinder(d=10,h=73);
    translate([-1.4375*25.4,-1.4375*25.4,-1]) cylinder(d=10,h=73);
}