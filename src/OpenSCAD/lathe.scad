/*
 * @name Replimat Lathe
 * @author Timothy Schmidt
 * @date 2013-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>

Frame_width = 3 * inch;
Frame_wall_thickness = 1/4 * inch;
Frame_hole_diameter = 3/4 * inch;

color(Steel) {

// ways
translateFrame([0,0,2]) xFrame(10);
translateFrame([0,2,2]) xFrame(10);

// way supports
translateFrame([1,0,0]) yFrame(3);
translateFrame([9,0,0]) yFrame(3);
translateFrame([1,0,1]) yFrame(3);
translateFrame([9,0,1]) yFrame(3);

// tailstock
translateFrame([6,0,1]) yFrame(3);
translateFrame([6,0,3]) yFrame(3);
translateFrame([7,1,1]) zFrame(6);
translateFrame([6,0,4]) xFrame(2);
translateFrame([6,2,4]) xFrame(2);

// headstock
translateFrame([0,1,0]) zFrame(7);

}
