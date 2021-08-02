/*
 * @name Replimat Bicycle rack
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>

// Vertical 
translateGrid([1,10,0]) grid_frame_z(25);
translateGrid([6,10,0]) grid_frame_z(25);
translateGrid([12,10,0]) grid_frame_z(25);
translateGrid([17,10,0]) grid_frame_z(25);
translateGrid([23,10,0]) grid_frame_z(25);
translateGrid([28,10,0]) grid_frame_z(25);

// Base
translateGrid([0,0,0]) grid_frame_y(20);
translateGrid([29,0,0]) grid_frame_y(20);
translateGrid([0,9,1]) grid_frame_x(30);
translateGrid([0,11,1]) grid_frame_x(30);

// Rail
translateGrid([0,9,24]) grid_frame_x(30);

// Nuts and Bolts
translateGrid([1,9,1]) yNutBolt(3);
translateGrid([6,9,1]) yNutBolt(3);
translateGrid([12,9,1]) yNutBolt(3);
translateGrid([17,9,1]) yNutBolt(3);
translateGrid([23,9,1]) yNutBolt(3);
translateGrid([28,9,1]) yNutBolt(3);
translateGrid([1,9,24]) yNutBolt(2);
translateGrid([6,9,24]) yNutBolt(2);
translateGrid([12,9,24]) yNutBolt(2);
translateGrid([17,9,24]) yNutBolt(2);
translateGrid([23,9,24]) yNutBolt(2);
translateGrid([28,9,24]) yNutBolt(2);
translateGrid([0,9,2]) zNutBolt(2);
translateGrid([0,11,2]) zNutBolt(2);
translateGrid([29,9,2]) zNutBolt(2);
translateGrid([29,11,2]) zNutBolt(2);
translateGrid([0,10,0]) xNutBolt(2);
translateGrid([30,11,0]) rotate([0,0,180]) xNutBolt(2);