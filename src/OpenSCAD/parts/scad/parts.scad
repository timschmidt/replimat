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

frame_width=40;

module frame_extrusion_2_assembly()
  assembly("frame_extrusion_2"){
      extrusion(E4040, frame_width*2, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_3_assembly()
  assembly("frame_extrusion_3"){
      extrusion(E4040, frame_width*3, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_4_assembly()
  assembly("frame_extrusion_4"){
    extrusion(E4040, frame_width*4, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_5_assembly()
  assembly("frame_extrusion_5"){
    extrusion(E4040, frame_width*5, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_10_assembly()
  assembly("frame_extrusion_10"){
    extrusion(E4040, frame_width*10, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_15_assembly()
  assembly("frame_extrusion_15"){
    extrusion(E4040, frame_width*15, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_20_assembly()
  assembly("frame_extrusion_20"){
    extrusion(E4040, frame_width*20, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_25_assembly()
  assembly("frame_extrusion_25"){
    extrusion(E4040, frame_width*25, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_30_assembly()
  assembly("frame_extrusion_30"){
    extrusion(E4040, frame_width*30, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_40_assembly()
  assembly("frame_extrusion_40"){
    extrusion(E4040, frame_width*40, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_50_assembly()
  assembly("frame_extrusion_50"){
    extrusion(E4040, frame_width*50, cornerHole = true, center=false, indexed=true);
  }

module frame_tube_2_assembly()
  assembly("frame_tube_2"){
      box_section(AL40x40x3, frame_width*2, center = false, indexed = true);
  }

module frame_tube_3_assembly()
  assembly("frame_tube_3"){
      box_section(AL40x40x3, frame_width*3, center = false, indexed = true);
  }

module frame_tube_4_assembly()
  assembly("frame_tube_4"){
    box_section(AL40x40x3, frame_width*4, center = false, indexed = true);
  }

module frame_tube_5_assembly()
  assembly("frame_tube_5"){
    box_section(AL40x40x3, frame_width*5, center = false, indexed = true);
  }

module frame_tube_10_assembly()
  assembly("frame_tube_10"){
    box_section(AL40x40x3, frame_width*10, center = false, indexed = true);
  }

module frame_tube_15_assembly()
  assembly("frame_tube_15"){
    box_section(AL40x40x3, frame_width*15, center = false, indexed = true);
  }

module frame_tube_20_assembly()
  assembly("frame_tube_20"){
    box_section(AL40x40x3, frame_width*20, center = false, indexed = true);
  }

module frame_tube_25_assembly()
  assembly("frame_tube_25"){
    box_section(AL40x40x3, frame_width*25, center = false, indexed = true);
  }

module frame_tube_30_assembly()
  assembly("frame_tube_30"){
    box_section(AL40x40x3, frame_width*30, center = false, indexed = true);
  }

module frame_tube_40_assembly()
  assembly("frame_tube_40"){
    box_section(AL40x40x3, frame_width*40, center = false, indexed = true);
  }

module frame_tube_50_assembly()
  assembly("frame_tube_50"){
    box_section(AL40x40x3, frame_width*50, center = false, indexed = true);
  }

module main_assembly()
    assembly("main"){
    
      layout([40,40,40,40],10){
        if ($i == 0) {
          nut(M12_nut, true);
        } else {
          screw(M12_hex_screw, $i*frame_width+M12_nut_depth);
        }
      }
    
    translate([0*50, 0, 0]) frame_extrusion_2_assembly();
    translate([1*50, 0, 0]) frame_extrusion_3_assembly();
    translate([2*50, 0, 0]) frame_extrusion_4_assembly();
    translate([3*50, 0, 0]) frame_extrusion_5_assembly();
    translate([4*50, 0, 0]) frame_extrusion_10_assembly();
    translate([5*50, 0, 0]) frame_extrusion_15_assembly();
    translate([6*50, 0, 0]) frame_extrusion_20_assembly();
    translate([7*50, 0, 0]) frame_extrusion_25_assembly();
    translate([8*50, 0, 0]) frame_extrusion_30_assembly();
    translate([9*50, 0, 0]) frame_extrusion_40_assembly();
    translate([10*50, 0, 0]) frame_extrusion_50_assembly();
    
    translate([11*50, 0, 0]) frame_tube_2_assembly();
    translate([12*50, 0, 0]) frame_tube_3_assembly();
    translate([13*50, 0, 0]) frame_tube_4_assembly();
    translate([14*50, 0, 0]) frame_tube_5_assembly();
    translate([15*50, 0, 0]) frame_tube_10_assembly();
    translate([16*50, 0, 0]) frame_tube_15_assembly();
    translate([17*50, 0, 0]) frame_tube_20_assembly();
    translate([18*50, 0, 0]) frame_tube_25_assembly();
    translate([19*50, 0, 0]) frame_tube_30_assembly();
    translate([20*50, 0, 0]) frame_tube_40_assembly();
    translate([21*50, 0, 0]) frame_tube_50_assembly(); 
}

if($preview)
    main_assembly();