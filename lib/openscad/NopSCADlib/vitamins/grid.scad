//
// NopSCADlib Copyright Chris Palmer 2018
// nop.head@gmail.com
// hydraraptor.blogspot.com
//
// This file is part of NopSCADlib.
//
// NopSCADlib is free software: you can redistribute it and/or modify it under the terms of the
// GNU General Public License as published by the Free Software Foundation, either version 3 of
// the License, or (at your option) any later version.
//
// NopSCADlib is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
// without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
// See the GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License along with NopSCADlib.
// If not, see <https://www.gnu.org/licenses/>.
//

//
//! A grid system for using selected NopSCADlib parts.  More information and examples of use at wiki.replimat.org
//
include <NopSCADlib/utils/core/core.scad>
include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/screws.scad>
include <NopSCADlib/vitamins/nuts.scad>
include <NopSCADlib/vitamins/pillow_blocks.scad>

//
//! Define some constants
//
wood=1;
tube=2;
extrusion=3;
materials = ["wood", "tube", "extrusion"];
grid_frame_width = mm(40);

module grid_frame_z(segments=5, material=tube, width=grid_frame_width){
  if (width == 40 && material == wood){}
  if (width == 40 && material == tube)
    translate([width/2, width/2, 0])
    box_section(AL40x40x3, mm(width*segments), center=false, indexed=true);
  if (width == 40 && material == extrusion)
    translate([width/2, width/2, 0])
    extrusion(E4040, mm(width*segments), cornerHole=true, center=false, indexed=true);
 }

/*
module grid_frame(segments=5, material=tube, width=grid_frame_width){
  stl(str("frame_", materials[material], "_", width, "x", segments, "_z")){
    translate([0,0,width])
    rotate([0,90,0])
    grid_frame(segments, material, width);
  }
}
 */

module grid_frame_x(segments=5, material=tube, width=grid_frame_width){
    translate([0,0,width])
    rotate([0,90,0])
    grid_frame_z(segments, material, width);
}

module grid_frame_y(segments=5, material=tube, width=grid_frame_width){
    translate([0,0,width])
    rotate([-90,0,0])
    grid_frame_z(segments, material, width);
}

module grid_nut(){
  grid_translate([0.5,0.5,0])
  rotate([180,0,0])
  nut(M12_nut, true);
}

module grid_bolt_z(length, width=grid_frame_width){
  grid_translate([0.5,0.5,0])
  screw(M12_hex_screw, length*width+M12_nut_depth);
};

module grid_bolt_x(length, width=grid_frame_width){
    rotate([0,270,0])
    grid_bolt_z(length, width);
}

module grid_bolt_y(length, width=grid_frame_width){
    rotate([90,0,0])
    grid_bolt_z(length, width);
}

module grid_bolt_nut_z(length, width=grid_frame_width){
  grid_translate([0.5,0.5,0])
  screw(M12_hex_screw, length*width+M12_nut_depth);
  
  translate([0,0,-length*width])
  grid_nut();
};

module grid_bolt_nut_x(length, width=grid_frame_width){
    rotate([0,270,0])
    grid_bolt_nut_z(length, width);
}

module grid_bolt_nut_y(length, width=grid_frame_width){
    rotate([90,0,0])
    grid_bolt_nut_z(length, width);
}

module grid_plate_dxf(wide, deep, hole_radius=4.5, corner_radius=13, width=grid_frame_width){
    dxf(str("grid_plate",wide,"x",deep)){
        difference(){
            translate([1/2*wide*width, 1/2*deep*width, 0])
            hull(){
            // place 4 circles in the corners, with the given radius
            x=wide*width;
            y=deep*width;
            translate([(-x/2)+corner_radius, (-y/2)+(corner_radius), 0])
            circle(r=corner_radius);

            translate([(x/2)-corner_radius, (-y/2)+corner_radius, 0])
            circle(r=corner_radius);

            translate([(-x/2)+corner_radius, (y/2)-corner_radius, 0])
            circle(r=corner_radius);

            translate([(x/2)-corner_radius, (y/2)-corner_radius, 0])
            circle(r=corner_radius);
            }
    
            for(y=[0:deep-1])
            for(x=[0:wide-1])
                translate([x*width + 1/2*width, y*width + 1/2*width, 0])
                circle(r=hole_radius);   
        }
    }
}

module grid_plate_stl(wide, deep, hole_radius=4.5, corner_radius=13, width=grid_frame_width){
    stl(str("grid_plate",wide,"x",deep)){
        linear_extrude(mm(19))
        grid_plate_dxf(wide, deep, hole_radius=4.5, corner_radius=13, width=grid_frame_width);
    }
}

module grid_pillow_block(){
    //translate([70,19,36])
    translate([0,0,0])
    rotate([90, 0, 0])
    kp_pillow_block_assembly(UCP205_16, screw_type = M12_hex_screw, nut_type = M12_nut);
}

module grid_translate(v, width=grid_frame_width) {
	for (i = [0 : $children - 1]) {
		translate(v * width) children(i);
	}
}
