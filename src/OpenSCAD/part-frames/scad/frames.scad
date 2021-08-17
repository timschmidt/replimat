/*
 * @name Replimat Frames standard sizes
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>

// Customizer values
segments=5; // [2,3,4,5,10,15,20,25,30,40,50]

//
// ! Single segment of frame tube aligned to the X axis for use in software tools and game engines.
//
module frame_tube_1_x_stl(){
    stl("frame_x"){
       grid_frame_x(1, tube); 
    }
}

//
// ! Single segment of frame tube aligned to the Y axis for use in software tools and game engines.
//
module frame_tube_1_y_stl(){
    stl("frame_tube_1_y"){
       grid_frame_y(1, tube); 
    }
}

//
// ! Single segment of frame tube aligned to the Z axis for use in software tools and game engines.
//
module frame_tube_1_z_stl(){
    stl("frame_tube_1_z"){
       grid_frame_z(1, tube); 
    }
}

//
// ! Single segment of frame extrusion aligned to the X axis for use in software tools and game engines.
//
module frame_extrusion_1_x_stl(){
    stl("frame_extrusion_1_x"){
       grid_frame_x(1, extrusion); 
    }
}

//
// ! Single segment of frame extrusion aligned to the Y axis for use in software tools and game engines.
//
module frame_extrusion_1_y_stl(){
    stl("frame_extrusion_1_y"){
       grid_frame_y(1, extrusion); 
    }
}

//
// ! Single segment of frame extrusion aligned to the Z axis for use in software tools and game engines.
//
module frame_extrusion_1_z_stl(){
    stl("frame_extrusion_1_z"){
       grid_frame_z(1, extrusion); 
    }
}

module main_assembly(){
    assembly("main"){
        
    grid_frame_x(segments, tube);
    }
}

if($preview)
    main_assembly();