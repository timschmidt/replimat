/*
 * Replimat Three point hitch
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>
use <bolts.scad>
use <nuts.scad>
use <plate-three-point-hitch.scad>

frame_is_hollow = true;

module replimat_three_point_hitch(category){
// frames
    if (category == 0){
        xFrame(10);
        translateFrame([2,0,4]) xFrame(10);
        translateFrame([2,2,0]) xFrame(10);
        translateFrame([0,2,4]) xFrame(10);
        translateFrame([10,0,3]) yFrame(2);
        translateFrame([10,1,1]) yFrame(2);
    }
    if (category == 1){
        xFrame(15);
        translateFrame([2,0,4]) xFrame(15);
        translateFrame([2,2,0]) xFrame(15);
        translateFrame([0,2,4]) xFrame(15);
        translateFrame([15,0,3]) yFrame(2);
        translateFrame([15,1,1]) yFrame(2);        
    }
    translateFrame([1,0,1]) yFrame(2);
    translateFrame([1,1,3]) yFrame(2);

    // lower hitch pin
    translateFrame([0,1,0]) zFrame(5);
    translateFrame([0,1,1]) rotate([0,270,0]) replimat_three_point_hitch_plate();
    translateFrame([-0.4,1,1]) rotate([0,270,0]) replimat_nut_and_bolt(3);
    translateFrame([-0.4,1,2]) rotate([0,270,0]) replimat_nut_and_bolt(2);
    translateFrame([-0.4,1,3]) rotate([0,270,0]) replimat_nut_and_bolt(3);
    if (category == 0){
    color(Steel) translateFrame([-3,2.5,1.5]) rotate([0,90,0]) cylinder(h=3*frame_width, d=5/8*inch);
    }
    if (category == 1){
    color(Steel) translateFrame([-3,2.5,3.5]) rotate([0,90,0]) cylinder(h=3*frame_width, d=3/4*inch);
    }

    // lower hitch pin assembly
    if (category == 0){
    translateFrame([11,1,0]) zFrame(5);
    translateFrame([12.4,1,1]) rotate([0,270,0]) replimat_three_point_hitch_plate();
    translateFrame([12.4,1,2]) rotate([0,90,0]) replimat_nut_and_bolt(3);
    translateFrame([12.4,1,3]) rotate([0,90,0]) replimat_nut_and_bolt(2);
    translateFrame([12.4,1,4]) rotate([0,90,0]) replimat_nut_and_bolt(3);
    color(Steel) translateFrame([12,2.5,1.5]) rotate([0,90,0]) cylinder(h=3*frame_width, d=5/8*inch);
    }
    if (category == 1){
    translateFrame([16,1,0]) zFrame(5);
    translateFrame([17.4,1,1]) rotate([0,270,0]) replimat_three_point_hitch_plate();
    translateFrame([17.4,1,2]) rotate([0,90,0]) replimat_nut_and_bolt(3);
    translateFrame([17.4,1,3]) rotate([0,90,0]) replimat_nut_and_bolt(2);
    translateFrame([17.4,1,4]) rotate([0,90,0]) replimat_nut_and_bolt(3);
    color(Steel) translateFrame([17,2.5,3.5]) rotate([0,90,0]) cylinder(h=3*frame_width, d=3/4*inch);    
    }


    // upper hitch pin assembly
    if (category == 0){
    translateFrame([4,1,0]) zFrame(10);
    translateFrame([7,1,7]) rotate([0,270,0]) replimat_three_point_hitch_plate();
    translateFrame([5.4,1,7]) rotate([0,270,0]) replimat_three_point_hitch_plate();
    translateFrame([7,1,0]) zFrame(10);
    translateFrame([5,0,3]) yFrame(3);
    translateFrame([6,0,1]) yFrame(3);
    translateFrame([4,1,7]) rotate([0,270,0]) replimat_nut_and_bolt(1);
    translateFrame([4,1,8]) rotate([0,270,0]) replimat_nut_and_bolt(1);
    translateFrame([4,1,9]) rotate([0,270,0]) replimat_nut_and_bolt(1);
    translateFrame([8,1,8]) rotate([0,90,0]) replimat_nut_and_bolt(1);
    translateFrame([8,1,9]) rotate([0,90,0]) replimat_nut_and_bolt(1);
    translateFrame([8,1,10]) rotate([0,90,0]) replimat_nut_and_bolt(1);
    color(Steel) translateFrame([5,2.5,7.5]) rotate([0,90,0]) cylinder(h=2*frame_width, d=5/8*inch);
    }
    if (category ==1){
    translateFrame([6,1,0]) zFrame(15);
    translateFrame([10,1,12]) rotate([0,270,0]) replimat_three_point_hitch_plate();
    translateFrame([7.4,1,12]) rotate([0,270,0]) replimat_three_point_hitch_plate();
    translateFrame([10,1,0]) zFrame(15);
    translateFrame([7,0,3]) yFrame(3);
    translateFrame([9,0,1]) yFrame(3);
    translateFrame([6,1,12]) rotate([0,270,0]) replimat_nut_and_bolt(1);
    translateFrame([6,1,13]) rotate([0,270,0]) replimat_nut_and_bolt(1);
    translateFrame([6,1,14]) rotate([0,270,0]) replimat_nut_and_bolt(1);
    translateFrame([11,1,13]) rotate([0,90,0]) replimat_nut_and_bolt(1);
    translateFrame([11,1,14]) rotate([0,90,0]) replimat_nut_and_bolt(1);
    translateFrame([11,1,15]) rotate([0,90,0]) replimat_nut_and_bolt(1);
    color(Steel) translateFrame([7,2.5,13.5]) rotate([0,90,0]) cylinder(h=3*frame_width, d=7/8*inch);
    }        
}

replimat_three_point_hitch(1);