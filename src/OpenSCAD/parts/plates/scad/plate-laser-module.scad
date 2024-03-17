/*
 * @name Replimat laser module to 4040 Extrusion adapter
 * @author Timothy Schmidt
 * @date 2020
 * @url http://www.github.com/timschmidt/replimat
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */


$fn=20;

linear_extrude(height=10){
difference(){
square([66,78]);

translate([10,5,0])
union(){
circle(d=4);
translate([17,0,0])
    circle(d=4);
translate([0,68,0])
    circle(d=4);
translate([17,68,0])
    circle(d=4);
}

translate([54,10,0])
circle(d=8.5);

translate([54,68,0])
circle(d=8.5);

}
}