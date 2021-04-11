/*
 * @name Replimat Pallet
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>

frame_is_hollow = true;

// Frame
translateFrame([0,0,0]) yFrame(20);
translateFrame([15,0,0]) yFrame(20);
translateFrame([29,0,0]) yFrame(20);
translateFrame([0,0,1]) xFrame(30);
translateFrame([0,10,1]) xFrame(30);
translateFrame([0,19,1]) xFrame(30);
    
// Deck
#translateFrame([0,0,2]) topShelf(30, 20, 0);