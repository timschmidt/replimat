/*
 * @name Replimat House boat
 * @author Timothy Schmidt
 * @date 2021
 * @url https://wiki.replimat.org/wiki/House_boats
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>
use <bolts.scad>
use <nuts.scad>
use <barrel-cage.scad>

translateFrame([25,0,0])
rotate([0,270,0])
barrel_cage();

translateFrame([51,0,0])
rotate([0,270,0])
barrel_cage();

translateFrame([77,0,0])
rotate([0,270,0])
barrel_cage();

translateFrame([103,0,0])
rotate([0,270,0])
barrel_cage();

translateFrame([25,50,0])
rotate([0,270,0])
barrel_cage();

translateFrame([51,50,0])
rotate([0,270,0])
barrel_cage();

translateFrame([77,50,0])
rotate([0,270,0])
barrel_cage();

translateFrame([103,50,0])
rotate([0,270,0])
barrel_cage();