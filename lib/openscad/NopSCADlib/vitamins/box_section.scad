//
// NopSCADlib Copyright Chris Palmer 2021
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
//! Box sections.
//
include <../utils/core/core.scad>
include <../utils/tube.scad>

include <../vitamins/sheets.scad>

function box_section_material(type)  = type[1]; //! Material description
function box_section_size(type)      = type[2]; //! Size
function box_section_thickness(type) = type[3]; //! Wall thickness
function box_section_fillet(type)    = type[4]; //! Fillet
function box_section_colour(type)    = type[5]; //! Colour
function box_section_colour2(type)   = type[6]; //! Colour2, for woven box section
function box_section_is_woven(type)  = !is_undef(type[6]); //! Box section is woven, eg carbon fiber

module box_section(type, length, center = true, indexed = false) {
    vitamin(str("box_section(", type[0], arg(length, 15), "): ", box_section_material(type), ", length ", length, "mm"));

    size = box_section_size(type);
    thickness = box_section_thickness(type);

    if (box_section_is_woven(type))
        translate_z(center ? 0 : length / 2) {
            rotate([0, -90, 90])
                for (z = [-size.y / 2, size.y / 2 - thickness])
                    translate_z(z)
                        woven_sheet(CF1, thickness, box_section_colour(type), box_section_colour2(type), length, size.x)
                            square([length, size.x], center=true);
            rotate([0, -90, 0])
                for (z = [-size.x / 2, size.x / 2 - thickness])
                    translate_z(z)
                        woven_sheet(CF1, thickness, box_section_colour(type), box_section_colour2(type), length, size.y)
                            square([length, size.y], center=true);
        }
    else if (indexed == true) {
        segments = length / size.x;
        frame_hole_radius = 6.05;
    
        color(box_section_colour(type))
        difference(){
            rectangular_tube([size.x, size.y, length], center, thickness, box_section_fillet(type));
        
            for(i = [0 : segments - 1]) {
                translate([0, min(size.x, size.y)/2 + 1, min(size.x, size.y) * i + min(size.x, size.y) / 2])
                rotate([90,0,0])
                cylinder(r=frame_hole_radius, h=max(size.x, size.y) + 2);

                translate([-min(size.x, size.y) / 2 - 1, 0, min(size.x, size.y) * i + min(size.x, size.y) / 2])
                rotate([0,90,0])
                cylinder(r=frame_hole_radius, h=max(size.x, size.y) + 2);
            }
        }
    }
    else
        color(box_section_colour(type))
            rectangular_tube([size.x, size.y, length], center, thickness, box_section_fillet(type));
}
