/*
 * @name Replimat Battery 18650
 * @author Timothy Schmidt
 * @date 2018
 * @url http://www.github.com/replimat-cad
 * @license http://www.gnu.org/licenses/agpl-3.0.en.html
 * @license https://www.tapr.org/TAPR_Open_Hardware_License_v1.0.txt
 */

module battery(){
  color("Blue") {
  cylinder(d=18,h=65);  
  } //color
}

module battery_long(){
  color("Blue"){
  translate([0,0,-1])
    cylinder(d=19,h=67);
  } //color
}