/*
 * @name Replimat Ferrule
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 * @url https://wiki.replimat.org/images/7/7d/Ferrule_datasheet.pdf
 */

include <MCAD/grid.scad>
include <MCAD/materials.scad>

frame_is_hollow = true;
$fn=100;

grid_translate([0.5,0.5,0])
difference(){
    union(){
        cylinder(d=3, h=20);
        translate([0,0,8])
        cylinder(d1=5.1, d2=3, h=2);
        cylinder(d=5.1,h=8);
    }
    
    union(){
        cylinder(d=2.8, h=21);
        translate([0,0,8])
        cylinder(d1=4.8, d2=2.8, h=2);
        translate([0,0,-1])
        cylinder(d=4.8,h=9);
    }
    
}