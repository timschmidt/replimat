/*
 * @name Replimat Bottom Bracket Shell Mount
 * @author Timothy Schmidt
 * @date 2019
 * @url http://www.github.com/replimat-cad
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/units.scad>

difference(){
union(){
cube([4.5*inch,1.5*inch,1.5*inch]);
translate([2.25*inch,56.05,38.1]){
rotate([90,0,0]){
cylinder(d=40,h=74);
}}}

translate([2.25*inch,53.05,38.1]){
rotate([90,0,0]){
cylinder(d=38.1,h=69);
translate([0,0,-4])
cylinder(d=34,h=76);
}}

translate([0.75*inch,0.75*inch,0])
cylinder(d=9,h=40);

translate([2.25*inch,0.75*inch,0])
cylinder(d=9,h=40);

translate([3.75*inch,0.75*inch,0])
cylinder(d=9,h=40);

translateFrame([0,-1,1])
cube([4.5*inch,4.5*inch,1.5*inch]);

translateFrame([0,-1,0])
#cube([4.5*inch,4.5*inch,0.75*inch]);
}