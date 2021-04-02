/*
 * @name Replimat Clevis fastener
 * @author Timothy Schmidt
 * @date 2017-2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>

// clevis
translateFrame([0,0,2]) yFrame(3);
translateFrame([0,1,1]) xFrame(2);

// prongs
translateFrame([1,0,0]) zFrame(3);
translateFrame([1,2,0]) zFrame(3);

