/*
 * @name Replimat Three point hitch plate - 20hp / 45hp
 * @author Timothy Schmidt
 * @date 2019-2021
 * @url http://www.github.com/replimat-cad
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 * @comment hitch pin diameters: 5/8 inch, 3/4 inch, 7/8 inch, 1 inch, 1 1/8 inch, 1 1/4 inch, 1 7/16 inch, 1 3/4 inch, 2 inch
 * @comment largest hole is centered to increase the amount of metal surrounding it
 * @todo adjust hole sizes to accomidate nearest metric bolts and document them
 */

include <MCAD/frame.scad>
include <MCAD/units.scad>
use <plate-rectangular.scad>

// 5/8 inch, 3/4 inch, 7/8 inch

module replimat_three_point_hitch_plate(){
    linear_extrude(height=14*mm){
        difference(){
            replimat_plate(3,2);
    
            translateFrame([0.5,1.5,0]) circle(d=5/8*inch);
            translateFrame([2.5,1.5,0])circle(d=3/4*inch);
            translateFrame([1.5,1.5,0])circle(d=7/8*inch);
        }
    }
}

replimat_three_point_hitch_plate();