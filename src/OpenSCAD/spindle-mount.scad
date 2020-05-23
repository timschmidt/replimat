/*
 * @name Replimat Spindle Mount
 * @author Timothy Schmidt
 * @date 2019
 * @url http://www.github.com/replimat-cad
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/units.scad>
include <MCAD/nuts_and_bolts.scad>

difference(){
cube([4.5*inch,1.5*inch,1.5*inch]);

translate([19.05+38.1,99,38.1])
rotate([90,0,0])
cylinder(d=55,h=100);
    
translate([19.05,19.05,-1])
cylinder(d=9,h=100);
    
translate([19.05 + 38.1,19.05,-1])
cylinder(d=9,h=100);

translate([19.05 + 38.1,19.05,3])
nutHole(8, units=MM, tolerance=0.4);
    
translate([19.05 + 38.1 + 38.1,19.05,-1])
cylinder(d=9,h=100);

}