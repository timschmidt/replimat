/*
 * @name Replimat Avid CNC spoil board
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/units.scad>

// holes
difference(){
cube([1524,3048,38.1]);
for (y = [1,2,3,4,6,7,8,9,10,11,12,13,14,15,16,17,19]){
    if (y%2) {
        for (x = [0: 9]){
            translate([3*inch+x*6*inch, y*6*inch, 0])
            cylinder(d=19.05, h=50);
        }
    }else{
        for (x = [0: 8]){
            translate([6*inch+x*6*inch, y*6*inch, 0])
            cylinder(d=19.05, h=50);
        }
    }
}
}

// router frames
translate([0, 13*inch, -80])
cube([60*inch, 40, 80]);

translate([0, 28.738*inch, -80])
cube([60*inch, 40, 80]);

translate([0, 44.538*inch, -80])
cube([60*inch, 40, 80]);

translate([0, 60.338*inch, -80])
cube([60*inch, 40, 80]);

translate([0, 76.138*inch, -80])
cube([60*inch, 40, 80]);

translate([0, 91.938*inch, -80])
cube([60*inch, 40, 80]);

translate([0, 107.676*inch, -80])
cube([60*inch, 40, 80]);

