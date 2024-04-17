//! 2D laser cut replimat frame
$pp1_colour = "grey";           // Override any global defaults here if required, see NopSCADlib/global_defs.scad.
include <NopSCADlib/lib.scad>   // Includes all the vitamins and utilities in NopSCADlib but not the printed parts.
include <NopSCADlib/printed/flat_hinge.scad> // Includes door hinges
include <NopSCADlib/utils/core/rounded_rectangle.scad>

//bend allowance=1.47*(bend radius+0.4thickness)
// 2mm thickness, 2.5 bend radius
bend_allowance_table = [
[2,2.5],
[3,3.5],
[4,5],
[5,6.35]
];
margin = 1.27;

module frame_half_dxf(holes = 15, frame_width = 40, thickness=2, tab=10)
    dxf("frame_half"){
        allowance_index = search(thickness, bend_allowance_table);
        bend_allowance = bend_allowance_table[allowance_index[0]][1];
        render_2D_sheet(Steel06, w = undef, d = undef)
            difference() {
                union(){
                translate([(frame_width + bend_allowance)/2, 0, 0])
                sheet_2D(Steel06, frame_width, frame_width * holes, [8,8,8,8]);
                translate([-(frame_width + bend_allowance)/2, 0, 0])
                sheet_2D(Steel06, frame_width, frame_width * holes, [8,8,8,8]);
                sheet_2D(Steel06, bend_allowance, frame_width * holes - 16, [8,8,8,8]);
                }
                for ( i = [1:holes])
                    translate([frame_width / 2 - bend_allowance / 2, frame_width * holes / 2 + frame_width / 2 - i * frame_width])
                    circle(r=4);
                
                for ( i = [1:holes])
                    translate([-frame_width / 2 + bend_allowance / 2, frame_width * holes / 2 + frame_width / 2 - i * frame_width])
                    circle(r=4);
                
                for ( i = [1:frame_width * holes / (tab * 2)])
                    translate([-frame_width - bend_allowance / 2, frame_width * holes /2 - i * (tab*2)])
                    rounded_rectangle([thickness, tab+margin], 0.5);
                
                for ( i = [1:frame_width * holes / (tab * 2)])
                    translate([frame_width + bend_allowance / 2, frame_width * holes /2 - i * (tab*2)+ tab])
                    rounded_rectangle([thickness, tab+margin], 0.5);

                //dogbone_rectangle(size = [3/4 * 25.4, 3 * 25.4], r = 1/8 * 25.4, center = true, xy_center = true, x_offset = 0, y_offset = 0);
            }
    }

//! Assembly instructions in Markdown format in front of each module that makes an assembly.
module main_assembly()
assembly("main") {
    frame_half_dxf();
}

if($preview)
    main_assembly();
