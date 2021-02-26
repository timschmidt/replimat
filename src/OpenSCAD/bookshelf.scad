/*
 * @name Replimat Bookshelf
 * @author Timothy Schmidt
 * @date 2013-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>

frame_is_hollow = true;

// uprights
zFrame(50);
translateFrame([29,0,0]) zFrame(50);
translateFrame([0,9,0]) zFrame(50);
translateFrame([29,9,0]) zFrame(50);

// cross braces
translateFrame([1,0,0]) yFrame(10);
translateFrame([28,0,0]) yFrame(10);

translateFrame([1,0,48]) yFrame(10);
translateFrame([28,0,48]) yFrame(10);

// shelf supports
translateFrame([0,1,1]) xFrame(30);
translateFrame([0,8,1]) xFrame(30);

translateFrame([0,1,9]) xFrame(30);
translateFrame([0,8,9]) xFrame(30);

translateFrame([0,1,19]) xFrame(30);
translateFrame([0,8,19]) xFrame(30);

translateFrame([0,1,29]) xFrame(30);
translateFrame([0,8,29]) xFrame(30);

translateFrame([0,1,39]) xFrame(30);
translateFrame([0,8,39]) xFrame(30);

translateFrame([0,1,48]) xFrame(30);
translateFrame([0,8,48]) xFrame(30);


// shelves
translateFrame([0,0,2]) topShelf(30,10,1);
translateFrame([0,0,10]) topShelf(30,10,1);
translateFrame([0,0,20]) topShelf(30,10,1);
translateFrame([0,0,30]) topShelf(30,10,1);
translateFrame([0,0,40]) topShelf(30,10,1);
translateFrame([0,0,49]) topShelf(30,10,1);
