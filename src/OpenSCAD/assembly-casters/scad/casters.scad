/*
 * @name Replimat Caster - Harbor Freight vitamin
 * @author Timothy Schmidt
 * @date 2021
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

module caster_stl(){
    stl("caster"){
        translate([38+19.05,23+19.05,94]) rotate([0,180,270]) import("../../../../bin/stl/HFT 61855 Caster v011.stl");
    }
}