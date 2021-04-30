/*
 * @name Replimat Cargo cycle
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 * @todo pillow block bearings, bolts, axle, wheels
 */

include <MCAD/frame.scad>
include <MCAD/materials.scad>
use <axial-bearing.scad>
use <go-kart-drive.scad>

frame_is_hollow = true;

module cargo_cycle(){
translateFrame([1,2,7]) xFrame(15);
translateFrame([1,14,7]) xFrame(15);
translateFrame([5,1,6]) yFrame(15);
translateFrame([15,1,8]) yFrame(15);

translateFrame([17, 8, 8])
rotate([90,0,90])
axial_bearing();

// Wheel posts
//translateFrame([12,1,3]) zFrame(5);
//translateFrame([12,15,3]) zFrame(5);

translateFrame([18,2,7]) xFrame(15);
translateFrame([18,14,7]) xFrame(15);
translateFrame([28,1,6]) yFrame(15);
translateFrame([18,1,6]) yFrame(15);
    
translateFrame([17, 8, 6])
rotate([90,0,270])
axial_bearing();

translateFrame([3,-2.5,6])
go_kart_drive(22);
translateFrame([31,-2.5,6])
go_kart_drive(22);
}

translateFrame([0,0,0])
cargo_cycle();