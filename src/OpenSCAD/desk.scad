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
translateFrame([0,14,0]) zFrame(40);
translateFrame([29,5,0]) zFrame(40);
translateFrame([0,5,0]) zFrame(40);
translateFrame([29,14,0]) zFrame(40);

// Feet
translateFrame([1,0,0]) yFrame(15);
translateFrame([28,0,0]) yFrame(15);

// Shelving
translateFrame([0,13,1]) xFrame(30);
translateFrame([0,6,1]) xFrame(30);
translateFrame([0,5,2]) topShelf(30, 10, 1);

translateFrame([0,13,10]) xFrame(30);
translateFrame([0,6,10]) xFrame(30);
translateFrame([0,5,11]) topShelf(30, 10, 1);

translateFrame([1,0,20]) yFrame(15);
translateFrame([28,0,20]) yFrame(15);
translateFrame([0,13,19]) xFrame(30);
translateFrame([0,6,19]) xFrame(30);
translateFrame([0,0,21]) topShelf(30, 15, 0);

translateFrame([0,13,38]) xFrame(30);
translateFrame([0,6,38]) xFrame(30);
translateFrame([0,5,39]) topShelf(30, 10, 1);

translateFrame([15,13,29]) xFrame(15);
translateFrame([15,6,29]) xFrame(15);
translateFrame([15,14,29]) zFrame(10);
translateFrame([15,5,29]) zFrame(10);
translateFrame([15,5,30]) topShelf(15,10,1);
}
