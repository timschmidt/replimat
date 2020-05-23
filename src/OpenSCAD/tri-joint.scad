/*************************************
* Replimat Tri-joint             *
* (c) Timothy Schmidt 2020           *
* http://www.github.com/replimat-cad *
* License: GPLv3+ / TAPR OHL         *
*************************************/

include <../MCAD/gridbeam.scad>
include <../MCAD/materials.scad>

beam_is_hollow = 0;

color(Pine) {

translateBeam([0,1,1]) xBeam(10);
translateBeam([1,0,0]) yBeam(10);
zBeam(10);

}