/***********************************************
* OpenSCAD Replimat Frame Library              *
* (c) Timothy Schmidt 2013                     *
* http://www.github.com/timschmidt/replimat    *
* License: LGPL 2.1 or later                   *
***********************************************/

/* Todo:
 - implement "dxf" mode
 - implement hole cutout pattern - interference based on hole size, compatible with two sizes above and below the currently set size.
*/

// zFrame(segments) - create a vertical gridframe strut 'segments' long
// xFrame(segments) - create a horizontal gridframe strut along the X axis
// yFrame(segments) - create a horizontal gridframe strut along the Y axis
// zFrame(segments) - create a bolt 'segments' in length
// xFrame(segments)
// yFrame(segments)
// topShelf(width, depth, corners) - create a shelf suitable for use in gridframe structures width and depth in 'segments', corners == 1 notches corners
// bottomShelf(width, depth, corners) - like topShelf, but aligns shelf to underside of frames
// backBoard(width, height, corners) - create a backing board suitable for use in gridframe structures width and height in 'segments', corners == 1 notches corners
// frontBoard(width, height, corners) - like backBoard, but aligns board to front side of frames
// translateFrame([x, y, z]) - translate gridframe struts or shelves in X, Y, or Z axes in units 'segments'

// To render the DXF file from the command line:
// openscad -x connector.dxf -D'mode="dxf"' connector.scad
mode = "model";
//mode = "dxf";

use <../NopSCADlib/lib.scad>
include <../NopSCADlib/vitamins/extrusions.scad>
include <../NopSCADlib/vitamins/extrusion.scad>
include <units.scad>

/* inch and a half 8020 frame
frame_width = inch * 1.5;
frame_hole_diameter = inch * 21/64;
frame_hole_radius = frame_hole_diameter / 2;
frame_is_hollow = true;
frame_wall_thickness = inch * 1/8;
frame_shelf_thickness = inch * 1/4;
strip_width = 1 * inch + 3/8 * inch;
strip_thickness = 1/16 * inch;
*/

/* 40mm square tube
frame_width = 40;
frame_hole_diameter = 12;
frame_hole_radius = frame_hole_diameter / 2;
frame_is_hollow = false;
frame_wall_thickness = 3;
frame_shelf_thickness = 6;
strip_width = 35;
strip_thickness = 2;
frame_extrusion = 0;
*/

// 40mm aluminum T slot extrusion
frame_width = 40;
frame_hole_diameter = 12;
frame_hole_radius = frame_hole_diameter / 2;
frame_is_hollow = false;
frame_extrusion = 1;

module zFrame(segments) {
if (mode == "model") {
    difference() {
        if (frame_extrusion == 1) {
            translate([frame_width/2, frame_width/2, 0])
            extrusion(E4040, frame_width*segments, cornerHole = true, center=false);
        } else {
		cube([frame_width, frame_width, frame_width * segments]);
        }
		for(i = [0 : segments - 1]) {
			translate([frame_width / 2, frame_width + 1, frame_width * i + frame_width / 2])
			rotate([90,0,0])
			cylinder(r=frame_hole_radius, h=frame_width + 2);

			translate([-1, frame_width / 2, frame_width * i + frame_width / 2])
			rotate([0,90,0])
			cylinder(r=frame_hole_radius, h=frame_width + 2);
		}
        if (frame_is_hollow == true) {
            translate([frame_wall_thickness, frame_wall_thickness, -1])
            cube([frame_width - frame_wall_thickness * 2, frame_width - frame_wall_thickness * 2, frame_width * segments + 2]);
        }
    }
}

if (mode == "dxf") {

}
}

module xFrame(segments) {
if (mode == "model") {
	translate([0,0,frame_width])
	rotate([0,90,0])
	zFrame(segments);
}

if (mode == "dxf") {

}
}

module yFrame(segments) {
if (mode == "model") {
	translate([0,0,frame_width])
	rotate([-90,0,0])
	zFrame(segments);
}

if (mode == "dxf") {

}
}

module zBolt(segments) {
if (mode == "model") {

}

if (mode == "dxf") {

}
}

module xBolt(segments) {
if (mode == "model") {
}

if (mode == "dxf") {

}
}

module yBolt(segments) {
if (mode == "model") {
}

if (mode == "dxf") {

}
}

module translateFrame(v) {
	for (i = [0 : $children - 1]) {
		translate(v * frame_width) child(i);
	}
}

module topShelf(width, depth, corners) {
if (mode == "model") {
	difference() {
		cube([width * frame_width, depth * frame_width, frame_shelf_thickness]);

		if (corners == 1) {
		translate([-1,  -1,  -1])
		cube([frame_width + 2, frame_width + 2, frame_shelf_thickness + 2]);
		translate([-1, (depth - 1) * frame_width, -1])
		cube([frame_width + 2, frame_width + 2, frame_shelf_thickness + 2]);
		translate([(width - 1) * frame_width, -1, -1])
		cube([frame_width + 2, frame_width + 2, frame_shelf_thickness + 2]);
		translate([(width - 1) * frame_width, (depth - 1) * frame_width, -1])
		cube([frame_width + 2, frame_width + 2, frame_shelf_thickness + 2]);
		}
        
        for (j = [0 : width - 1]) {
            for (k = [0 : depth - 1]) {
                translate([frame_width / 2 + j * frame_width, frame_width / 2 + k * frame_width, -1])
                cylinder(h=frame_shelf_thickness+2, d=frame_hole_diameter);
            }
        }
	}
}

if (mode == "dxf") {

}
}

module bottomShelf(width, depth, corners) {
if (mode == "model") {
	translate([0,0,-frame_shelf_thickness])
	topShelf(width, depth, corners);
}

if (mode == "dxf") {

}
}

module  backBoard(width, height, corners) {
if (mode == "model") {
	translate([frame_width, 0, 0])
	difference() {
		cube([frame_shelf_thickness, width * frame_width, height * frame_width]);

		if (corners == 1) {
		translate([-1,  -1,  -1])
		cube([frame_shelf_thickness + 2, frame_width + 2, frame_width + 2]);
		translate([-1, -1, (height - 1) * frame_width])
		cube([frame_shelf_thickness + 2, frame_width + 2, frame_width + 2]);
		translate([-1, (width - 1) * frame_width, -1])
		cube([frame_shelf_thickness + 2, frame_width + 2, frame_width + 2]);
		translate([-1, (width - 1) * frame_width, (height - 1) * frame_width])
		cube([frame_shelf_thickness + 2, frame_width + 2, frame_width + 2]);
		}
	}
}

if (mode == "dxf") {

}
}

module frontBoard(width, height, corners) {
if (mode == "model") {
	translate([-frame_width - frame_shelf_thickness, 0, 0])
	backBoard(width, height, corners);
}

if (mode == "dxf") {

}
}

module zStrip(segments){
    
    
}

module xStrip(segments){
    difference(){
    cube([segments * frame_width, strip_width, strip_thickness]);
        for(i=[0:(segments*3)]){
            translate([i*1/2*inch, strip_width/2, -1])
            cylinder(h=strip_thickness + 2, d=frame_hole_diameter);
        } // for
    } // difference
}

module yStrip(segments){
    translate([strip_width,0,0])
	rotate([0,0,90])
	xStrip(segments);
}