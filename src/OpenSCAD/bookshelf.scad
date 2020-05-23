/*
 * @name Replimat Bookshelf
 * @author Timothy Schmidt
 * @date 2013
 * @url http://www.github.com/replimat-cad
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/gridbeam.scad>
include <MCAD/materials.scad>

beam_is_hollow = 0;

color(Pine){

// uprights
zBeam(56);
translateBeam([31,0,0]) zBeam(50);
translateBeam([0,7,0]) zBeam(50);
translateBeam([31,7,0]) zBeam(50);

// cross braces
translateBeam([1,0,0]) yBeam(10);
translateBeam([30,0,0]) yBeam(10);

translateBeam([1,0,27]) yBeam(10);
translateBeam([30,0,27]) yBeam(10);

translateBeam([1,0,54]) yBeam(10);
translateBeam([30,0,54]) yBeam(10);

// shelf supports
translateBeam([0,1,1]) xBeam(30);
translateBeam([0,6,1]) xBeam(30);

translateBeam([0,1,10]) xBeam(30);
translateBeam([0,6,10]) xBeam(30);

translateBeam([0,1,19]) xBeam(30);
translateBeam([0,6,19]) xBeam(30);

translateBeam([0,1,28]) xBeam(30);
translateBeam([0,6,28]) xBeam(30);

translateBeam([0,1,37]) xBeam(30);
translateBeam([0,6,37]) xBeam(30);

translateBeam([0,1,46]) xBeam(30);
translateBeam([0,6,46]) xBeam(30);

translateBeam([0,1,55]) xBeam(30);
translateBeam([0,6,55]) xBeam(30);

// shelves
translateBeam([0,0,2]) topShelf(30,10,1);
translateBeam([0,0,11]) topShelf(30,10,1);
translateBeam([0,0,20]) topShelf(30,10,1);
translateBeam([0,0,29]) topShelf(30,10,1);
translateBeam([0,0,38]) topShelf(30,10,1);
translateBeam([0,0,47]) topShelf(30,10,1);
translateBeam([0,0,56]) topShelf(30,10,1);

}
