/*
 * @name Replimat Structure kit
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

use <nuts.scad>
include <MCAD/frame.scad>

module structure_kit(){
    translateFrame([0,0,0]) yFrame(2);
    translateFrame([2,0,0]) yFrame(2);
    translateFrame([4,0,0]) yFrame(2);
    translateFrame([6,0,0]) yFrame(2);
    translateFrame([8,0,0]) yFrame(2);

    translateFrame([0,3,0]) yFrame(3);
    translateFrame([2,3,0]) yFrame(3);
    translateFrame([4,3,0]) yFrame(3);
    translateFrame([6,3,0]) yFrame(3);
    translateFrame([8,3,0]) yFrame(3);
    
    translateFrame([0,7,0]) yFrame(4);
    translateFrame([2,7,0]) yFrame(4);
    translateFrame([4,7,0]) yFrame(4);
    translateFrame([6,7,0]) yFrame(4);
    translateFrame([8,7,0]) yFrame(4);
    
    translateFrame([0,12,0]) yFrame(5);
    translateFrame([2,12,0]) yFrame(5);
    translateFrame([4,12,0]) yFrame(5);
    translateFrame([6,12,0]) yFrame(5);
    translateFrame([8,12,0]) yFrame(5);
    translateFrame([10,12,0]) yFrame(5);
    
    translateFrame([0,18,0]) yFrame(10);
    translateFrame([2,18,0]) yFrame(10);
    translateFrame([4,18,0]) yFrame(10);
    translateFrame([6,18,0]) yFrame(10);
    translateFrame([8,18,0]) yFrame(10);
    translateFrame([10,18,0]) yFrame(10);
    
    translateFrame([0,29,0]) yFrame(15);
    translateFrame([2,29,0]) yFrame(15);
    translateFrame([4,29,0]) yFrame(15);
    translateFrame([6,29,0]) yFrame(15);
    
    translateFrame([12,0,0]) yFrame(20);
    translateFrame([14,0,0]) yFrame(20);
    translateFrame([16,0,0]) yFrame(20);
    translateFrame([18,0,0]) yFrame(20);
    
    translateFrame([12,21,0]) yFrame(25);
    translateFrame([14,21,0]) yFrame(25);
    translateFrame([16,21,0]) yFrame(25);
    translateFrame([18,21,0]) yFrame(25);
}

structure_kit();