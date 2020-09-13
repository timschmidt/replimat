/*
 * @name Replimat Desk
 * @author Timothy Schmidt
 * @date 2013
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>

frame_is_hollow = 0;

color(Pine) {

// Vertical 
zFrame(40);
translateFrame([31,0,0]) zFrame(40);
translateFrame([0,6,0]) zFrame(40);
translateFrame([31,6,0]) zFrame(40);

// Feet
translateFrame([1,0,1]) yFrame(14);
translateFrame([30,0,1]) yFrame(14);

// Shelving
translateFrame([0,1,2]) xFrame(32);
translateFrame([0,5,2]) xFrame(32);
translateFrame([0,0,3]) topShelf(32, 7, 1);

translateFrame([0,1,10]) xFrame(32);
translateFrame([0,5,10]) xFrame(32);
translateFrame([0,0,11]) topShelf(32, 7, 1);

translateFrame([1,0,19]) yFrame(14);
translateFrame([30,0,19]) yFrame(14);
translateFrame([0,13,20]) xFrame(32);
translateFrame([0,1,20]) xFrame(32);
translateFrame([0,0,21]) topShelf(32, 14, 0);

translateFrame([0,1,35]) xFrame(32);
translateFrame([0,5,35]) xFrame(32);
translateFrame([0,0,36]) topShelf(32, 7, 1);

translateFrame([16,1,28]) xFrame(16);
translateFrame([16,5,28]) xFrame(16);
translateFrame([16,0,28]) zFrame(8);
translateFrame([16,6,28]) zFrame(8);
translateFrame([16,0,29]) topShelf(16,7,1);
}
