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

module frame_extrusion_40x2_assembly()
  assembly("frame_extrusion_40x2"){
    extrusion(E4040, frame_width*2, cornerHole = true, center=false, indexed=true);
  }
  
module frame_extrusion_40x3_assembly()
  assembly("frame_extrusion_40x3"){
      extrusion(E4040, frame_width*3, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_40x4_assembly()
  assembly("frame_extrusion_40x4"){
    extrusion(E4040, frame_width*4, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_40x5_assembly()
  assembly("frame_extrusion_40x5"){
    extrusion(E4040, frame_width*5, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_40x10_assembly()
  assembly("frame_extrusion_40x10"){
    extrusion(E4040, frame_width*10, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_40x15_assembly()
  assembly("frame_extrusion_40x15"){
    extrusion(E4040, frame_width*15, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_40x20_assembly()
  assembly("frame_extrusion_40x20"){
    extrusion(E4040, frame_width*20, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_40x25_assembly()
  assembly("frame_extrusion_40x25"){
    extrusion(E4040, frame_width*25, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_40x30_assembly()
  assembly("frame_extrusion_40x30"){
    extrusion(E4040, frame_width*30, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_40x40_assembly()
  assembly("frame_extrusion_40x40"){
    extrusion(E4040, frame_width*40, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_40x50_assembly()
  assembly("frame_extrusion_40x50"){
    extrusion(E4040, frame_width*50, cornerHole = true, center=false, indexed=true);
  }

module frame_tube_40x2_assembly()
  assembly("frame_tube_40x2"){
      box_section(AL40x40x3, frame_width*2, center = false, indexed = true);
  }

module frame_tube_40x3_assembly()
  assembly("frame_tube_40x3"){
      box_section(AL40x40x3, frame_width*3, center = false, indexed = true);
  }

module frame_tube_40x4_assembly()
  assembly("frame_tube_40x4"){
    box_section(AL40x40x3, frame_width*4, center = false, indexed = true);
  }

module frame_tube_40x5_assembly()
  assembly("frame_tube_40x5"){
    box_section(AL40x40x3, frame_width*5, center = false, indexed = true);
  }

module frame_tube_40x10_assembly()
  assembly("frame_tube_40x10"){
    box_section(AL40x40x3, frame_width*10, center = false, indexed = true);
  }

module frame_tube_40x15_assembly()
  assembly("frame_tube_40x15"){
    box_section(AL40x40x3, frame_width*15, center = false, indexed = true);
  }

module frame_tube_40x20_assembly()
  assembly("frame_tube_40x20"){
    box_section(AL40x40x3, frame_width*20, center = false, indexed = true);
  }

module frame_tube_40x25_assembly()
  assembly("frame_tube_40x25"){
    box_section(AL40x40x3, frame_width*25, center = false, indexed = true);
  }

module frame_tube_40x30_assembly()
  assembly("frame_tube_40x30"){
    box_section(AL40x40x3, frame_width*30, center = false, indexed = true);
  }

module frame_tube_40x40_assembly()
  assembly("frame_tube_40x40"){
    box_section(AL40x40x3, frame_width*40, center = false, indexed = true);
  }

module frame_tube_40x50_assembly()
  assembly("frame_tube_40x50"){
    box_section(AL40x40x3, frame_width*50, center = false, indexed = true);
  }
  
// STLs

module frame_extrusion_40x1_z_stl()
  stl("frame_extrusion_40x1_z"){
    extrusion(E4040, frame_width*1, cornerHole = true, center=false, indexed=true);
  }
  
module frame_extrusion_40x1_x_stl()
  stl("frame_extrusion_40x1_x"){
    rotate([0,-90,0])
    extrusion(E4040, frame_width*1, cornerHole = true, center=false, indexed=true);
  }
  
module frame_extrusion_40x1_y_stl()
  stl("frame_extrusion_40x1_y"){
    rotate([-90,0,0])
    extrusion(E4040, frame_width*1, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_40x2_stl()
  stl("frame_extrusion_40x2"){
    extrusion(E4040, frame_width*2, cornerHole = true, center=false, indexed=true);
  }
  
module frame_extrusion_40x3_stl()
  stl("frame_extrusion_40x3"){
      extrusion(E4040, frame_width*3, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_40x4_stl()
  stl("frame_extrusion_40x4"){
    extrusion(E4040, frame_width*4, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_40x5_stl()
  stl("frame_extrusion_40x5"){
    extrusion(E4040, frame_width*5, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_40x10_stl()
  stl("frame_extrusion_40x10"){
    extrusion(E4040, frame_width*10, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_40x15_stl()
  stl("frame_extrusion_40x15"){
    extrusion(E4040, frame_width*15, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_40x20_stl()
  stl("frame_extrusion_40x20"){
    extrusion(E4040, frame_width*20, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_40x25_stl()
  stl("frame_extrusion_40x25"){
    extrusion(E4040, frame_width*25, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_40x30_stl()
  stl("frame_extrusion_40x30"){
    extrusion(E4040, frame_width*30, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_40x40_stl()
  stl("frame_extrusion_40x40"){
    extrusion(E4040, frame_width*40, cornerHole = true, center=false, indexed=true);
  }

module frame_extrusion_40x50_stl()
  stl("frame_extrusion_40x50"){
    extrusion(E4040, frame_width*50, cornerHole = true, center=false, indexed=true);
  }

module frame_tube_40x1_z_stl()
  stl("frame_tube_40x1_z"){
    box_section(AL40x40x3, frame_width*1, center = false, indexed = true);
  }
  
module frame_tube_40x1_x_stl()
  stl("frame_tube_40x1_x"){
    rotate([0,-90,0])
    box_section(AL40x40x3, frame_width*1, center = false, indexed = true);
  }
  
module frame_tube_40x1_y_stl()
  stl("frame_tube_40x1_y"){
    rotate([-90,0,0])
    box_section(AL40x40x3, frame_width*1, center = false, indexed = true);
  }

module frame_tube_40x2_stl()
  stl("frame_tube_40x2"){
      box_section(AL40x40x3, frame_width*2, center = false, indexed = true);
  }

module frame_tube_40x3_stl()
  stl("frame_tube_40x3"){
      box_section(AL40x40x3, frame_width*3, center = false, indexed = true);
  }

module frame_tube_40x4_stl()
  stl("frame_tube_40x4"){
    box_section(AL40x40x3, frame_width*4, center = false, indexed = true);
  }

module frame_tube_40x5_stl()
  stl("frame_tube_40x5"){
    box_section(AL40x40x3, frame_width*5, center = false, indexed = true);
  }

module frame_tube_40x10_stl()
  stl("frame_tube_40x10"){
    box_section(AL40x40x3, frame_width*10, center = false, indexed = true);
  }

module frame_tube_40x15_stl()
  stl("frame_tube_40x15"){
    box_section(AL40x40x3, frame_width*15, center = false, indexed = true);
  }

module frame_tube_40x20_stl()
  stl("frame_tube_40x20"){
    box_section(AL40x40x3, frame_width*20, center = false, indexed = true);
  }

module frame_tube_40x25_stl()
  stl("frame_tube_40x25"){
    box_section(AL40x40x3, frame_width*25, center = false, indexed = true);
  }

module frame_tube_40x30_stl()
  stl("frame_tube_40x30"){
    box_section(AL40x40x3, frame_width*30, center = false, indexed = true);
  }

module frame_tube_40x40_stl()
  stl("frame_tube_40x40"){
    box_section(AL40x40x3, frame_width*40, center = false, indexed = true);
  }

module frame_tube_40x50_stl()
  stl("frame_tube_40x50"){
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
    
    frame_extrusion_40x1_z_stl();  
    frame_extrusion_40x1_x_stl(); 
    frame_extrusion_40x1_y_stl();
      
    frame_extrusion_40x2_stl();
    frame_extrusion_40x3_stl();
    frame_extrusion_40x4_stl();
    frame_extrusion_40x5_stl();
    frame_extrusion_40x10_stl();
    frame_extrusion_40x15_stl();
    frame_extrusion_40x20_stl();
    frame_extrusion_40x25_stl();
    frame_extrusion_40x30_stl();
    frame_extrusion_40x40_stl();
    frame_extrusion_40x50_stl();
    
    frame_tube_40x1_z_stl();
    frame_tube_40x1_x_stl();
    frame_tube_40x1_y_stl();
      
    frame_tube_40x2_stl();
    frame_tube_40x3_stl();
    frame_tube_40x4_stl();
    frame_tube_40x5_stl();
    frame_tube_40x10_stl();
    frame_tube_40x15_stl();
    frame_tube_40x20_stl();
    frame_tube_40x25_stl();
    frame_tube_40x30_stl();
    frame_tube_40x40_stl();
    frame_tube_40x50_stl();

      
    translate([0*50, 0, 0]) frame_extrusion_40x2_assembly();
    translate([1*50, 0, 0]) frame_extrusion_40x3_assembly();
    translate([2*50, 0, 0]) frame_extrusion_40x4_assembly();
    translate([3*50, 0, 0]) frame_extrusion_40x5_assembly();
    translate([4*50, 0, 0]) frame_extrusion_40x10_assembly();
    translate([5*50, 0, 0]) frame_extrusion_40x15_assembly();
    translate([6*50, 0, 0]) frame_extrusion_40x20_assembly();
    translate([7*50, 0, 0]) frame_extrusion_40x25_assembly();
    translate([8*50, 0, 0]) frame_extrusion_40x30_assembly();
    translate([9*50, 0, 0]) frame_extrusion_40x40_assembly();
    translate([10*50, 0, 0]) frame_extrusion_40x50_assembly();
    
    translate([11*50, 0, 0]) frame_tube_40x2_assembly();
    translate([12*50, 0, 0]) frame_tube_40x3_assembly();
    translate([13*50, 0, 0]) frame_tube_40x4_assembly();
    translate([14*50, 0, 0]) frame_tube_40x5_assembly();
    translate([15*50, 0, 0]) frame_tube_40x10_assembly();
    translate([16*50, 0, 0]) frame_tube_40x15_assembly();
    translate([17*50, 0, 0]) frame_tube_40x20_assembly();
    translate([18*50, 0, 0]) frame_tube_40x25_assembly();
    translate([19*50, 0, 0]) frame_tube_40x30_assembly();
    translate([20*50, 0, 0]) frame_tube_40x40_assembly();
    translate([21*50, 0, 0]) frame_tube_40x50_assembly(); 
}

if($preview)
    main_assembly();