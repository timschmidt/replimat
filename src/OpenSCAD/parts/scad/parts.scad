/*
 * @name Replimat Parts
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

//
//! Replimat parts arranged for viewing
//

include <NopSCADlib/lib.scad>

frame_extrusion=false;
frame_width=40;
segments=5;

module frame_extrusion_assembly(){
    assembly("frame_extrusion"){
        
    layout([40,40,40,40,40,40,40,40,40,40,40], 10){
        segments = [2,3,4,5,10,15,20,25,30,40,50];
        rotate([-90,0,0])
        extrusion(E4040, frame_width*segments[$i], cornerHole = true, center=false, indexed=true);
    }
}
}

module frame_tube_assembly(){
    assembly("frame_tube"){
        
    layout([40,40,40,40,40,40,40,40,40,40,40], 10){
        segments = [2,3,4,5,10,15,20,25,30,40,50];
        rotate([-90,0,0])
        box_section(AL40x40x3, frame_width*segments[$i], center = false, indexed = true);
    }
}
}
    
    
module main_assembly(){
    assembly("main"){
    
    layout([40,40,40,40],10){
    if ($i == 0) {nut(M12_nut, true);} else
        
    screw(M12_hex_screw, $i*frame_width+M12_nut_depth);
    }
    
    frame_extrusion_assembly();
    
    translate([11*50, 0, 0])
    frame_tube_assembly();
    
    
}
}

if($preview)
    main_assembly();

