/*
 * @name Replimat Farm robot
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>
use <../../assembly-solar-panels/scad/solar-panels.scad>
use <../../technique-wheels-and-axles/scad/go-kart-drive.scad>

/*
translate([0,inch(15), 0])
color("green")
scale([25.4,25.4,25.4])
import("../../../../bin/stl/Onion.stl");

translate([0,inch(30), 0])
color("green")
scale([25.4,25.4,25.4])
import("../../../../bin/stl/Cabbage.stl");

translate([0,inch(45), 0])
color("green")
scale([25.4,25.4,25.4])
import("../../../../bin/stl/Carrot.stl");

translate([0,inch(60), 0])
color("brown")
scale([25.4,25.4,25.4])
import("../../../../bin/stl/Potato.stl");
*/

module main_assembly()
  assembly("main"){
      
  //Plants
translate([0,inch(15), -420])
layout([inch(16),inch(16),inch(16),inch(16),inch(16),inch(16)])
color("green")
scale([25.4,25.4,25.4])
import("../../../../bin/stl/Carrot.stl");

translate([0,inch(30), -200])
layout([inch(16),inch(16),inch(16),inch(16),inch(16),inch(16)])
color("green")
scale([25.4,25.4,25.4])
import("../../../../bin/stl/Onion.stl");

translate([0,inch(45), 0])
layout([inch(16),inch(16),inch(16),inch(16),inch(16),inch(16)])
color("green")
scale([25.4,25.4,25.4])
import("../../../../bin/stl/Lettuce.stl");

translate([0,inch(60), 0])
layout([inch(16),inch(16),inch(16),inch(16),inch(16),inch(16)])
color("green")
scale([25.4,25.4,25.4])
import("../../../../bin/stl/Lettuce.stl");

translate([0,inch(75), 0])
layout([inch(16),inch(16),inch(16),inch(16),inch(16),inch(16)])
color("green")
scale([25.4,25.4,25.4])
import("../../../../bin/stl/Cabbage.stl");
      
// Vertical 
grid_translate([1,5,6]) grid_frame_z(40);
grid_translate([1,52,6]) grid_frame_z(40);
grid_translate([39,5,6]) grid_frame_z(40);
grid_translate([39,52,6]) grid_frame_z(40);

// Feet
grid_translate([0,5,6]) grid_frame_x(40);
grid_translate([0,53,6]) grid_frame_x(40);

grid_translate([2,4,45]) grid_frame_y(50);
grid_translate([50,4,45]) grid_frame_y(50);
grid_translate([25,4,45]) grid_frame_y(50);
grid_translate([26,4,45]) grid_frame_y(50);
grid_translate([1,53,44]) grid_frame_x(50);
grid_translate([1,4,44]) grid_frame_x(50);
    
// Cross bracing


    
    
// Solar panels
grid_translate([1,4,46]) replimat_solar_panel(2);
grid_translate([26,4,46]) replimat_solar_panel(2);

grid_translate([0,0,6]) half_drive(8);
grid_translate([0,60,6]) rotate([0,0,180]) half_drive(8);
grid_translate([40,0,6]) half_drive(8);
grid_translate([40,60,6]) rotate([0,0,180]) half_drive(8);
}

if($preview)
    main_assembly();