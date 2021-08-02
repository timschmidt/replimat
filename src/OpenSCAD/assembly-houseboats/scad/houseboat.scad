/*
 * @name Replimat House boat
 * @author Timothy Schmidt
 * @date 2021
 * @url https://wiki.replimat.org/wiki/House_boats
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <NopSCADlib/lib.scad>
include <NopSCADlib/vitamins/grid.scad>
use <barrel-cage.scad>
use <plate-rectangular.scad>

grid_translate([25,0,0])
rotate([0,270,0])
barrel_cage();

grid_translate([51,0,0])
rotate([0,270,0])
barrel_cage();

grid_translate([77,0,0])
rotate([0,270,0])
barrel_cage();

grid_translate([103,0,0])
rotate([0,270,0])
barrel_cage();

grid_translate([25,45,0])
rotate([0,270,0])
barrel_cage();

grid_translate([51,45,0])
rotate([0,270,0])
barrel_cage();

grid_translate([77,45,0])
rotate([0,270,0])
barrel_cage();

grid_translate([103,45,0])
rotate([0,270,0])
barrel_cage();

grid_translate([0,0,14]) grid_plate_stl(10,60);
grid_translate([15,0,14]) grid_plate_stl(10,60);
grid_translate([30,0,14]) grid_plate_stl(10,60);
grid_translate([45,0,14]) grid_plate_stl(10,60);
grid_translate([60,0,14]) grid_plate_stl(10,60);
grid_translate([75,0,14]) grid_plate_stl(10,60);
grid_translate([90,0,14]) grid_plate_stl(10,60);