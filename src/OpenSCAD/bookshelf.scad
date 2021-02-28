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
translateFrame([0,1,0]) zFrame(50);
translateFrame([31,1,0]) zFrame(50);
translateFrame([2,10,0]) zFrame(50);
translateFrame([29,10,0]) zFrame(50);

// cross braces
translateFrame([1,1,0]) yFrame(10);
translateFrame([30,1,0]) yFrame(10);

translateFrame([1,1,8]) yFrame(10);
translateFrame([30,1,8]) yFrame(10);

translateFrame([1,1,18]) yFrame(10);
translateFrame([30,1,18]) yFrame(10);

translateFrame([1,1,28]) yFrame(10);
translateFrame([30,1,28]) yFrame(10);

translateFrame([1,1,38]) yFrame(10);
translateFrame([30,1,38]) yFrame(10);

translateFrame([1,1,47]) yFrame(10);
translateFrame([30,1,47]) yFrame(10);

// shelf supports
translateFrame([1,2,1]) xFrame(30);
translateFrame([1,9,1]) xFrame(30);

translateFrame([1,2,9]) xFrame(30);
translateFrame([1,9,9]) xFrame(30);

translateFrame([1,2,19]) xFrame(30);
translateFrame([1,9,19]) xFrame(30);

translateFrame([1,2,29]) xFrame(30);
translateFrame([1,9,29]) xFrame(30);

translateFrame([1,2,39]) xFrame(30);
translateFrame([1,9,39]) xFrame(30);

translateFrame([1,2,48]) xFrame(30);
translateFrame([1,9,48]) xFrame(30);


// shelves
translateFrame([1,0,2]) topShelf(30,10,0);
translateFrame([1,0,10]) topShelf(30,10,0);
translateFrame([1,0,20]) topShelf(30,10,0);
translateFrame([1,0,30]) topShelf(30,10,0);
translateFrame([1,0,40]) topShelf(30,10,0);
translateFrame([1,0,49]) topShelf(30,10,0);
