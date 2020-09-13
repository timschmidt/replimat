/*************************************
* Replimat Tri-joint             *
* (c) Timothy Schmidt 2020           *
* http://www.github.com/replimat-cad *
* License: GPLv3+ / TAPR OHL         *
*************************************/

include <MCAD/frame.scad>
include <MCAD/materials.scad>

frame_is_hollow = 0;

color(Pine) {

translateFrame([0,1,1]) xFrame(10);
translateFrame([1,0,0]) yFrame(10);
zFrame(10);

}