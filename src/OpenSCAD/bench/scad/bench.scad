/*
 * @name Replimat Bench
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

//
//! Basic bench built with standardized and fully reusable components.
//

include <frame.scad>
include <materials.scad>
use <bolts.scad>
use <plate-rectangular.scad>
include <NopSCADlib/lib.scad>

//
//! Assemble right legs and rear upright
//

module right_assembly(){
    assembly("right"){

    // Vertical 
    translateFrame([0,1,0]) zFrame(10);
    translateFrame([0,10,0]) zFrame(20);
    
    // Depth
    translateFrame([1,1,8]) yFrame(10);
    
    //Nuts and bolts
    translateFrame([0,1,8]) xNutBolt(2);
    translateFrame([0,10,8]) xNutBolt(2);
    }
}

//
//! Assemble left legs and rear upright
//

module left_assembly(){
    assembly("left"){
    
    //Vertical
    translateFrame([29,1,0]) zFrame(10);
    translateFrame([29,10,0]) zFrame(20);
    
    //Depth
    translateFrame([28,1,8]) yFrame(10);

    //Nuts and bolts
    translateFrame([30,2,8]) rotate([0,0,180]) xNutBolt(2);
    translateFrame([30,11,8]) rotate([0,0,180]) xNutBolt(2);
    }
}

//
//! Attach seats to support rails
//

module seat_assembly(){
    assembly("seat"){
    
    translateFrame([0,2,9]) xFrame(30);
    translateFrame([0,9,9]) xFrame(30);
    
    translateFrame([0,0,10]) replimat_plate(10, 10);
    translateFrame([10,0,10]) replimat_plate(10, 10);
    translateFrame([20,0,10]) replimat_plate(10, 10);
    
    translateFrame([0,1,9]) yNutBolt(2);
    translateFrame([1,11,9]) rotate([0,0,180]) yNutBolt(2);
    translateFrame([29,1,9]) yNutBolt(2);
    translateFrame([30,11,9]) rotate([0,0,180]) yNutBolt(2);
    
    translateFrame([1,2,10]) zNutBolt(2);
    translateFrame([1,9,10]) zNutBolt(2);
    translateFrame([9,2,10]) zNutBolt(1);
    translateFrame([9,9,10]) zNutBolt(1);
    translateFrame([10,2,10]) zNutBolt(1);
    translateFrame([10,9,10]) zNutBolt(1);
    translateFrame([19,2,10]) zNutBolt(1);
    translateFrame([19,9,10]) zNutBolt(1);
    translateFrame([20,2,10]) zNutBolt(1);
    translateFrame([20,9,10]) zNutBolt(1);
    
    translateFrame([28,2,10]) zNutBolt(2);
    translateFrame([28,9,10]) zNutBolt(2);
    }
}

//
//! Attach backrests to support rails
//

module back_assembly(){
    assembly("back"){
    
    translateFrame([0,9,11]) xFrame(30);
    translateFrame([0,9,19]) xFrame(30);
    translateFrame([0,9,11]) rotate([90,0,0]) replimat_plate(10, 10);
    translateFrame([10,9,11]) rotate([90,0,0]) replimat_plate(10, 10);
    translateFrame([20,9,11]) rotate([90,0,0]) replimat_plate(10, 10);
    
    translateFrame([0,9,11]) yNutBolt(2);
    translateFrame([0,9,19]) yNutBolt(2);
    translateFrame([9,9,11]) yNutBolt(1);
    translateFrame([9,9,19]) yNutBolt(1);
    translateFrame([10,9,11]) yNutBolt(1);
    translateFrame([10,9,19]) yNutBolt(1);
    translateFrame([19,9,11]) yNutBolt(1);
    translateFrame([19,9,19]) yNutBolt(1);
    translateFrame([20,9,11]) yNutBolt(1);
    translateFrame([20,9,19]) yNutBolt(1);
    
    translateFrame([29,9,11]) yNutBolt(2);
    translateFrame([29,9,19]) yNutBolt(2);
    }
}

//
//! Attach seat and back assemblies to side assembles with bolts
//

module main_assembly(){
    assembly("main"){
    
    right_assembly();
    left_assembly();
    seat_assembly();
    back_assembly();
    }
}

if($preview)
    main_assembly();