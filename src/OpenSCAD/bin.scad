/*
 * @name Replimat Bin
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>

frame_is_hollow = true;

// 2 x 3

module bin(){
// Deck
translateFrame([0,0,0]) topShelf(2, 4, 0);

// Sides
#translateFrame([0,0.175,0]) rotate([90,0,0]) topShelf(2, 2, 0);
translateFrame([0,4,0]) rotate([90,0,0]) topShelf(2, 2, 0);
translateFrame([0,0,2]) rotate([0,90,0]) topShelf(2, 4, 0);
#translateFrame([1.825,0,2]) rotate([0,90,0]) topShelf(2, 4, 0);
}

bin();